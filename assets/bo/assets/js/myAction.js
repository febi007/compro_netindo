var localCache = {
    data: {},
    remove  : (url)=> delete localCache.data[url],
    exist   : (url)=> localCache.data.hasOwnProperty(url) && localCache.data[url] !== null,
    get     : (url)=> localCache.data[url],
    set     : (url, cachedData, callback) =>{
        localCache.remove(url);
        localCache.data[url] = cachedData;
        if ($.isFunction(callback)) callback(cachedData);
    }

    // timeout : 30000
};

function validateDeleteHtml(url,id,any,callback){
    var currentPage = attrId(strActiveRows).val();
    var countPerPage= toInt(attrId(strCountPerPage).val());
    deleteData(url,id,()=>{
        if(countPerPage > 1 && any !== '')callback(currentPage,false);
        if(countPerPage > 1 && any === '')callback(currentPage,false);
        if(countPerPage === 1 && any !== '')callback(1,false);
        if(countPerPage === 1 && any === '')callback(1,false);
    });
}

function validateSaveHmtl(title,any,param,callback){
    var totalRows=isNumber(attrId(strTotalRows).val(),1);
    var searchName=title.toLowerCase().includes(any.toLowerCase());
    var currentPage=isNumber(attrId(strActiveRows).val(),1);
    if(param===strEdit){
        var getUrlEdit = base_url+sessionPageActive.replaceAll("_","/");
        localCache.remove(getUrlEdit+"/edit/"+attrId(strId).val());
        if(totalRows > 1 && !searchName) callback(currentPage,searchName);
        if(totalRows > 1 && searchName) callback(currentPage,searchName);
        if(totalRows === 1 && !searchName) callback(1,searchName);
        if(totalRows === 1 && searchName) callback(currentPage,searchName);
    }
    else{
        callback(1,searchName)
    }
}

function ajaxData(url, req, callback, isCache) {
    NProgress.configure({showSpinner: true});
    setButtonAction(false);
    if(!handleIsEmpty(req)) req=null;
    if(!handleIsEmpty(isCache)) isCache=true;
    var page=pageActiveName;
    var uri=url.split("/")[7];
    if(uri===undefined) uri = url.split("/")[6];
    var attrParam           = attrId("param");
    var attrModalTitle      = attrClass("modal-title");
    var attrInfoPagin       = attrId(`notedPagination${page}`);
    var attrResultContent   = attrId(`result-content-${page}`);
    $.ajax({
        url         : url,
        type        : "POST",
        dataType    :'JSON',
        data        : req,
        beforeSend  : ()=> {
            uri==="simpan" ? setButtonAction(true) : NProgress.start();
            var getJson=localCache.get(url);
            if(strSearch(url,"edit")){
                attrId(`${strModal}${pageActiveName}`).modal(strShow);
                attrParam.val("edit");
                attrModalTitle.text("Ubah "+ucWords(page));
                inShowModalMobile();
            }
            if (isCache&&localCache.exist(url)) {
                var resJson=getJson.responseJSON;
                NProgress.done();
                NProgress.remove();
                var segment     = url.split("/")[7];
                var idSelector  = url.split("/")[6];
                if(segment===undefined) idSelector  = url.split("/")[5];
                if(url.toLowerCase().includes("getAll".toLowerCase())) setSelectTemplate(resJson,idSelector);
                attrInfoPagin.html("Menampilkan Total "+resJson.no+" Dari "+resJson.totalRows+" Data");
                attrResultContent.html(resJson.result);
                var totalRows   = toInt(resJson.totalRows);
                var lastRows    = toInt(resJson.lastRows);
                var activeRows  = toInt(resJson.currentPages);
                setIsActivePaginationTable(totalRows,lastRows,activeRows,page);
                return false;
            }
            return true;
        },
        complete: (jqXHR, textStatus)=> {
            if(uri==="simpan") setButtonAction(false);
            if(isCache) localCache.set(url, jqXHR, function(res){});
            NProgress.done();
            NProgress.remove();
        },
        success: (res)=>{
            if(uri==='read'){
                setIsActivePaginationTable(res.totalRows,res.lastRows,res.currentPages,page);
                attrInfoPagin.html("Menampilkan Total "+res.no+" Dari "+res.totalRows+" Data");
            }
            attrResultContent.html(res.result);
            scrollToBottom();
            callback(res);
        },
        error: (jqXHR, exception, thrownError)=> handleErrorRequest(jqXHR, exception, thrownError)
    });
}
function ajaxView(url, req, callback, isUrl,isCache,isLoading){
    window["dataEdit_"+sessionPageActive] = [];
    if(!handleIsEmpty(req)) req=null;
    if(!handleIsEmpty(isUrl)) isUrl=true;
    if(!handleIsEmpty(isCache)) isCache=true;
    if(!handleIsEmpty(isLoading)) isLoading=true;
    var baseUrlAjax=isUrl?base_url + url:url;
    setButtonAction(false);
    $.ajax({
        url : baseUrlAjax,
        type: "POST",
        data: req,
        beforeSend: ()=>{
            if(isLoading) NProgress.start();
            if (localCache.exist(baseUrlAjax)) {
                NProgress.done();
                NProgress.remove();
                var checkPengaturan = strSearch(window.location.href,"pengaturan");
                if(checkPengaturan){
                    var checkUrlRead=strSearch(baseUrlAjax,"read");
                    if(checkUrlRead){
                        var checkUrlReadPage=strSearch(baseUrlAjax,"read/1");
                        var urlRead = baseUrlAjax.replaceAll("getView",checkUrlReadPage?"read/1":"read");
                        var getJsonRead=localCache.get(urlRead);
                        attrId("result-sub").html(getJsonRead.responseText);
                    }
                    else{
                        var getJsonView=localCache.get(baseUrlAjax);
                        attrId("result-content").html(getJsonView.responseText);
                    }
                }
                else{
                    var getJson=localCache.get(baseUrlAjax);
                    attrId("result-content").html(getJson.responseText);
                }
                return false;
            }
            return true;
        },
        complete: (jqXHR, textStatus) => {
            if(isCache) localCache.set(baseUrlAjax, jqXHR,(res)=>{});
            NProgress.done();NProgress.remove();
        },
        success:callback,
        error: (jqXHR, exception, thrownError)=> {setButtonAction(false);handleErrorRequest(jqXHR, exception, thrownError)}
    });
}
function ajaxFile(url, req, callback){
    if(!handleIsEmpty(req)) req=null;
    NProgress.configure({showSpinner: false});
    $.ajax({
        url         : url,
        type        : "POST",
        dataType    : "JSON",
        data        : req,
        mimeType    : "multipart/form-data",
        contentType : false,
        processData : false,
        beforeSend  : ()=>{
            var checkSave=url.toLowerCase().includes("simpan".toLowerCase());
            if(checkSave){
                localCache.remove(url.replaceAll("simpan","getAll"));
            }
            setButtonAction(true);
        },
        complete: (jqXHR, textStatus)=>setButtonAction(false),
        success: callback,
        error: (jqXHR, exception, thrownError)=> {setButtonAction(false);handleErrorRequest(jqXHR, exception, thrownError)}
    });
}
function deleteData(url,id,callback) {
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
    }).then((isConfirm)=> {
        if (isConfirm) {
            ajaxData(url, { id: id }, (res)=> {
                swal.close();
                if (res.status) {
                    callback();
                    notif("hapus");
                } else {
                    notif("error");
                }
            },false);
        }
    });
}
function handleErrorRequest(jqXHR, exception, thrownError){
    NProgress.done();
    NProgress.remove();
    var msg = '';
    if (jqXHR.status === 0) {
        msg = 'Tidak ada koneksi.\n Periksa jaringan.';
    } else if (jqXHR.status === 404) {
        msg = 'Halaman yang diminta tidak ditemukan. [404]';
    } else if (jqXHR.status === 500) {
        msg = 'Terjadi kesalahan server [500].';
    } else if (exception === 'parsererror') {
        msg = 'Permitaan data gagal [JSON]';
    } else if (exception === 'timeout') {
        msg = 'Kesalahan waktu habis.';
    } else if (exception === 'abort') {
        msg = 'Permintaan ajax dibatalkan.';
    } else {
        msg = 'Uncaught Error.\n' + jqXHR.responseText;
    }
    notif("error",msg)
}
function handleCacheEdit(url,callback,isCache){
    if(!handleIsEmpty(isCache)) isCache=true;
    var getId = url.split("/");
    var dataCache=localCache.get(url);
    if(dataCache!==undefined){
        var attrParam           = attrId("param");
        var attrModalTitle      = attrClass("modal-title");
        attrId(`${strModal}${pageActiveName}`).modal(strShow);
        attrParam.val("edit");
        attrModalTitle.text("Ubah "+ucWords(pageActiveName));
        inShowModalMobile();
        callback(dataCache.responseJSON);
    }
    else{
        ajaxData(url,null,(res)=>{
            this["dataEdit_"+sessionPageActive].push({"id":getId[getId.length-1]});
            this["dataEdit_"+sessionPageActive] = filterArray(this["dataEdit_"+sessionPageActive]);
            setStorage(`dataIdEdit_${sessionPageActive}`,JSON.stringify(this["dataEdit_"+sessionPageActive]));
            callback(res);
        },isCache);
    }


}
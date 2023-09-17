let getChild        = [];
let getParent       = [];
let defaultPage     = 'dashboard';
let pageActiveName  = defaultPage; // default page active
let Delta           = Quill.import('delta');
Quill.register({'modules/better-table': quillBetterTable}, true);
let sessionPageActive= "";

function loadView(parent,child,param){
    if(!handleIsEmpty(param)) param='';
    let pages       = parent;
    let folderSite  = attrId("folderSite");
    let methodSite  = attrId("methodSite");
    let resultView  = attrId("resultView");
    let isChild     = attrId("isChild");
    let wrapperPage = attrClass("wrapperPage");
    let activeText  = "";
    let urlActive   = '';
    let url         = '';

    if(!handleIsEmpty(child)&&child!==""){
        sessionPageActive = pages;
        pageActiveName  = pages;
        urlActive       = pages+"/getView";
        url             = pages;
        folderSite.html('<b class="main-color">'+ucWords(parent.replaceAll("-"," "))+'</b>');
        folderSite.addClass(activeText);
        methodSite.removeClass(activeText);
        methodSite.html("");
    }
    else{
        pageActiveName=child;
        sessionPageActive = `${pages}_${child}`;
        urlActive=pages+"/"+child+"/getView/1";
        url=pages+"/"+child;
        folderSite.removeClass(activeText);
        folderSite.html(ucWords(parent.replaceAll("-"," ")));
        isChild.removeClass(activeText);
        methodSite.addClass(activeText);
        methodSite.html('<i class="bx bx-chevrons-right"></i><b class="main-color">'+ucWords(child)+'</b>');
    }


    let nextURL   = base_url+url;
    let nextTitle = 'netindo';
    let nextState = { prevUrl: window.location.href , additionalInformation: 'Updated the URL with JS' };
    window.history.pushState(nextState, nextTitle, nextURL);
    window.history.replaceState(nextState, nextTitle, nextURL);
    let prevURL=window.history.state.prevUrl;
    if((!handleIsEmpty(param))||param==='load'){
        let urlBaseAjax=base_url+urlActive;
        $.ajax({
            async:true,
            cache: true,
            url:urlBaseAjax,
            type:"POST",
            beforeSend: function() {
                if (localCache.exist(urlBaseAjax)) {
                    let getJson=localCache.get(urlBaseAjax);
                    resultView.html(getJson.responseText);
                    setView(pages,child);
                    return false;
                }
                return true;
            },
            complete: function(jqXHR, textStatus) {
                localCache.set(urlBaseAjax, jqXHR, function(res){});
            },
            success:function(res){
                resultView.html(res);
                wrapperPage.attr("data-aos","fade-up");
                setView(pages,child);location.hash=""
            },
            error: function(jqXHR, exception, thrownError) {
                handleErrorRequest(jqXHR, exception, thrownError)
            }

        })
    }
}
function setView(pages,child){
    pageActiveName=!handleIsEmpty(child)?pages:child;
    getParent.push({'id':pages});
    getChild.push({'id':!handleIsEmpty(child)?pages:child});
    let isActive    = 'active';
    let isOpen      = 'open';
    let attrPages   = attrClass(pages);
    if(getChild.length>0){
        const resChild = filterArray(getChild);
        resChild.forEach(function(e){
            let dataChildId=e.id;
            let attrChildId=attrClass(dataChildId);
            if(!handleIsEmpty(child)){
                if(getParent.length>0){
                    const resParent = filterArray(getParent);
                    resParent.forEach(function(item){
                        let parentIdData    = item.id;
                        let parentIdSelector= attrClass(parentIdData);
                        parentIdSelector.removeClass(isOpen);
                        parentIdSelector.removeClass(isActive);
                        attrClass(`${parentIdData}-${dataChildId}`).removeClass(isActive);
                    })
                }
                timeOut(function(){
                    attrChildId.removeClass(isActive);
                    if(dataChildId === pages)attrPages.addClass(isActive);
                })
            }
            else{
                attrPages.addClass(isOpen);
                attrPages.addClass(isActive);
                attrChildId.removeClass(isActive);
                if(getParent.length>0){
                    const resParent = filterArray(getParent);
                    resParent.forEach(function(item){
                        let dataParentId    = item.id;
                        let parentIdSelector= attrClass(dataParentId);
                        parentIdSelector.removeClass(isActive);
                        attrClass(`${dataParentId}-${dataChildId}`).removeClass(isActive);
                    })
                }
                timeOut(function(){
                    attrClass(`${pages}-${dataChildId}`).removeClass(isActive);
                    if(dataChildId === child){
                        attrPages.addClass(isActive);
                        attrClass(`${pages}-${child}`).addClass(isActive);
                    }
                })
            }
        })
    }
    if(pages===defaultPage) renderChart();
}

function setIsActivePaginationTable(totalRows,lastRows,activeRows,page){
    attrId(`${strTotalRows}${page}`).val(totalRows);
    attrId(`${strLastRows}${page}`).val(lastRows);
    attrId(`${strActiveRows}${page}`).val(activeRows);
    attrId(`${strCurrentPage}${page}`).html(activeRows);
    attrId(`${strNextPage}${page}`).attr("disabled",totalRows <= lastRows);
    attrId(`${strPrevPage}${page}`).attr("disabled",activeRows === 1);
    attrId(`${strTotalAllData}`).val(totalRows);

}
function ValidateFileUpload(selector,res) {
    if(!handleIsEmpty(res)) res=strResultImage;
    let fuData = document.getElementById(selector);
    let FileUploadPath = fuData.value;
    if (FileUploadPath === '') {} else {
        let Extension = FileUploadPath.substring(FileUploadPath.lastIndexOf('.') + 1).toLowerCase();
        if (Extension === "ico" || Extension === "gif" || Extension === "png" || Extension === "bmp" || Extension === "jpeg" || Extension === "jpg"|| Extension === "webp"|| Extension === "avif") {
            if (fuData.files && fuData.files[0]) {
                let reader = new FileReader();
                reader.onload = function(e) {
                    attrId(res).attr('src', e.target.result);
                };
                reader.readAsDataURL(fuData.files[0]);
            }
            attrId(`error-${selector}`).text("");
        }
        else{
            attrId(`error-${selector}`).text("extension tidak diterima");
        }
    }
}
function notif(type,msg) {
    if(!handleIsEmpty(type)) type="success";
    if(!handleIsEmpty(msg)) msg="";
    toastr.options = {
        "closeButton"       : false,
        "debug"             : false,
        "newestOnTop"       : false,
        "progressBar"       : true,
        "positionClass"     : "toast-top-right",
        "preventDuplicates" : false,
        "onclick"           : null,
        "showDuration"      : "3000",
        "hideDuration"      : "1000",
        "timeOut"           : "5000",
        "extendedTimeOut"   : "300",
        "showEasing"        : "swing",
        "hideEasing"        : "linear",
        "showMethod"        : "fadeIn",
        "hideMethod"        : "fadeOut",
        iconClasses: {
            error   : 'bx bx-message-error',
            info    : 'bx bx-info-circle',
            success : 'bx bx-check-circle',
            warning : 'bx bx-info-circle'
        }
    };
    if (type === "success") {
        msg=handleIsEmpty(msg)?msg:"Data Berhasil Disimpan";
        toastr.options.timeOut = 1500; // 1.5s
        toastr.success(msg);
    } else if (type === "hapus") {
        msg=handleIsEmpty(msg)?msg:"Data Berhasil Dihapus";
        toastr.options.timeOut = 1500; // 1.5s
        toastr.success(msg);
    }else if (type === "error" || type === "failed") {
        msg=handleIsEmpty(msg)?msg:"Terjadi Kesalahan Server";
        toastr.options.timeOut = 1500; // 1.5s
        toastr.error(msg);
    }

}


function handleError() {
    return function(error, element) {
        if (element.attr("data-error") === "select-multiple") {
            return error.insertAfter(".error-select-multiple");
        }
        else if (element.attr("data-error") === "tag-multiple") {
            timeOut(function(){$("tags").focus();});
            return error.insertAfter(".error-tag-multiple");
        }
        else if (element.attr("data-error") === "file-upload") {
            return error.insertAfter(".error-file-upload");
        }
        else if (element.attr("name") === "file_upload[]") {
            return error.insertAfter(".label-file-upload");
        }
        else if (element.attr("name") === "deskripsi") {
            return error.insertBefore("textarea#deskripsi");
        } else {
            return error.insertBefore(element);
        }
    }
}
function setButtonAction(isNone){
    if(!handleIsEmpty(isNone)) isNone=false;
    if(isNone){
        attrClass("btn-loading").css({'display':"block"});
        attrClass("btn-save").css({'display':'none'})
    }
    else{
        attrClass("btn-loading").css({'display':"none"});
        attrClass("btn-save").css({'display':'block'})
    }
}
function setPrevImg(img,selector){
    if(!handleIsEmpty(selector)) selector=strResultImage;
    attrId(selector).attr("src",base_assets+img);
}
function setValueImg(img,pathImg,selector){
    if(!handleIsEmpty(selector)) selector=strFileUpload;
    toDataUrl(base_assets+img,function(x){
        const dT = new ClipboardEvent('').clipboardData ||  new DataTransfer();
        dT.items.add(new File([x], img.replaceAll(pathImg,""),{type: "image/jpeg"}));
        document.querySelector('#'+selector).files = dT.files;
    });
}
function showModal(id,labelFocus,page){

    delImage();
    inShowModalMobile();
    attrClass("err-deskripsi").text("");
    attrId(id).modal(strShow);
    setFocus(!handleIsEmpty(labelFocus)?'':labelFocus);
    setButtonAction(false);
    delForm(attrId(strFormInput));
    attrClass(strModalTitle).text(`Tambah ${ucWords(page)}`);
    attrId(strParam).val("add");
    attrName(`${strFileUploaded}[]`).val("");
    let dataSelect=attrClass("selectpicker");
    if(dataSelect.length>0){
        for(let i=0;i<dataSelect.length;i++){
            let isSelectMultiple=$(dataSelect[i]).attr("multiple");
            if(isSelectMultiple===undefined){
                let getId   = $(dataSelect[i]).attr("name");
                let getVal  = $(dataSelect[i][0]).attr('value');
                attrId(getId).selectpicker('val', getVal);
            }
        }
    }

}
function inShowModalMobile(){
    setTimeout(function(){
        let txtFullScreen="modal-fullscreen";
        let attrModalDialog=attrClass("modal-dialog");
        if(!attrModalDialog.hasClass(txtFullScreen)){
            let isMobile = window.matchMedia("only screen and (max-width: 760px)").matches;
            checkDevice()?attrModalDialog.addClass(txtFullScreen):attrModalDialog.removeClass(txtFullScreen);
        }
    },300)

}
function setValueSelect(id,val){
    attrId(id).selectpicker('val', val);
}
function setSelect(url,id,callback,isCache){
    if(!handleIsEmpty(isCache)) isCache=true;
    ajaxData(url,null,function(res){
        setSelectTemplate(res,id);
        if(typeof callback === "function"){
            callback(res);
        }
    },isCache)
}
function setSelectTemplate(res,id){
    let $select = attrId(id);
    $select.html('');
    $.each(res, function(index, value) {
        $select.append('<option value="'+value.id+ '" id="' + value.id+ '">' + value.nama+ '</option>');
    });
    $select.selectpicker('refresh');
}
function validateQuill(value,idx,maxChar){
    if(!isQuill(value,idx)){
        return false;
    }

    if(handleIsEmpty(maxChar)) {
        if(!validMinQuill(value,maxChar,idx)){
            return false;
        }
    }
    return true;
}
function isQuillEmpty(value,quilEditor) {
    let attrDesc="err-deskripsi";
    if(!isQuill()){
        attrClass(attrDesc).text("tidak boleh kosong");
        setTimeout(function(){quilEditor.focus();},300);
        return false;
    }

    else if(value.length < 50){
        attrClass(attrDesc).text("minimal 50 karakter");
        setTimeout(function(){quilEditor.focus();},300);
        return false;
    }
    attrClass(attrDesc).text('');
    return true;
}
function validMinQuill(value,maxChar,idx){
    let attrDesc="err-deskripsi";
    if(handleIsEmpty(idx)) attrDesc+=`-${idx}`;
    if(!handleIsEmpty(maxChar)) maxChar=100;
    if(value.replace(/<(.|\n)*?>/g, '').trim().length < maxChar && !value.includes("<img")){
        attrClass(attrDesc).text(`deskripsi harus lebih dari ${maxChar} huruf`);
        return false;
    }
    attrClass(attrDesc).text('');
    return true;
}
function isQuill(value,idx){
    let attrDesc="err-deskripsi";
    if(handleIsEmpty(idx)) attrDesc+=`-${idx}`;
    if(value.replace(/<(.|\n)*?>/g, '').trim().length === 0 && !value.includes("<img")){
        attrClass(attrDesc).text("tidak boleh kosong");
        return false;
    }
    attrClass(attrDesc).text('');
    return true;
}


function setCkeditor(id,label,theme){
    let quill_table;
    if(!handleIsEmpty(label)) label="Tulis sesuatu disini...";
    let quill =  new Quill(`#${id}`,{
        bounds: `#${id}`,
        placeholder: label,
        modules: {
            // table:true,
            // formula: 0,
            clipboard: {
                matchVisual: false,
                matchers: [['BR', lineBreakMatcher]]
            },
            toolbar: {
                container:[
                    [{font: []}],
                    [{header: [1, 2, 3, 4, 5, 6, false]}],
                    ["bold", "italic", "underline", "strike"],
                    [{list: "ordered"},{list: "bullet"},{indent: "-1"},{indent: "+1"}],
                    ["link", "image", "video"],
                    [{color: []},{background: []}],
                    [{script: "super"},{script: "sub"}],
                    ['blockquote', 'code-block'],
                    ["direction",{align: []}],
                    ["clean"]
                ]
            },
            // 'better-table': {
            //     operationMenu: {
            //         items: {
            //
            //         },
            //         color: {
            //             colors: ['green', 'red', 'yellow', 'blue', 'white'],
            //             text: 'Background Colors:'
            //         }
            //     }
            // },
            // keyboard: {
            //     bindings: quillBetterTable.keyboardBindings
            // }

        },
        theme: !handleIsEmpty(theme)?"snow":theme,
        handlers: {
            formula: function(value) {
                this.quill.theme.tooltip.edit('formula');
            },
            'link': function(value) {
                if (value) {
                    let href = prompt('Enter the URL');
                    this.quill.format('link', href);
                } else {
                    this.quill.format('link', false);
                }
            },
            image: function(value) {
                let fileInput = this.container.querySelector('input.ql-image[type=file]');
                if (fileInput === null) {
                    fileInput = document.createElement('input');
                    fileInput.setAttribute('type', 'file');
                    fileInput.setAttribute('accept', '*');
                    fileInput.classList.add('ql-image');
                    fileInput.addEventListener('change', function(){
                        if (fileInput.files !== null && fileInput.files[0] !== null) {
                            let reader = new FileReader();
                            reader.onload = function(e){
                                let range = this.quill.getSelection(true);
                                this.quill.updateContents(
                                    new Delta().retain(range.index).delete(range.length).insert({ image: e.target.result }),
                                    Emitter.sources.USER
                                );
                                fileInput.value = "";
                            }
                            reader.readAsDataURL(fileInput.files[0]);
                        }
                    });
                    this.container.appendChild(fileInput);
                }
                fileInput.click();
            },
            video: function(value) {
                this.quill.theme.tooltip.edit('video');
            }
        }
    });
    // quill_table = quill.getModule('better-table');
    // let htmlTable="";
    // htmlTable+='<span class="ql-formats">';
    // htmlTable+='<select id="actionTable" class="form-control">';
    // htmlTable+='<option value="">Table</option>';
    // htmlTable+='<option value="insertTable" id="insert_table">Buat Table</option>';
    // htmlTable+='<option value="hideBorder" id="border_hide">Hapus Border</option>';
    // htmlTable+='<option value="showBorder" id="border_show">Tampilkan Border</option>';
    // htmlTable+='</select>';
    // htmlTable+='</span>';
    // attrClass("ql-toolbar").html(htmlTable);
    // attrId("actionTable").on("change",function () {
    //     let val=$(this).val();
    //     if(val==="insertTable"){
    //         quill_table.insertTable(3, 3);
    //     }
    //     if(val==="hideBorder"){
    //         $("table.quill-better-table").css({"border":"none"});
    //         $("table.quill-better-table > tbody > tr > td").css({"border":"none"});
    //     }
    //     if(val==="showBorder"){
    //         $("table.quill-better-table").css({"border":"1px solid black"});
    //         $("table.quill-better-table > tbody > tr > td").css({"border":"1px solid black"});
    //     }
    // });
    quill.on('selection-change', function(range) { });
    return quill;

}
function setTags(attr,data){
    return new Tagify(document.querySelector(attr),{
        whitelist: data,
        dropdown: {
            maxItems: 20,
            classname: "tags-look",
            enabled: 0,
            closeOnSelect: false
        }
    });
}
function tempFieldImage(data){
    // return {no}
    let id      = `${strFileUpload}_${data.no}`;
    let resId   = `${strResultImage}_${data.no}`;
    let imgHtml = '';

    imgHtml+='<div class="d-flex justify-content-around mb-2" id="wrapInputImg_'+data.no+'">';
    imgHtml+='<input class="form-control" type="file" name="'+strFileUpload+'[]" id="'+id+'" onchange="return ValidateFileUpload(\''+id+'\',\''+resId+'\')" accept="image/png, image/jpeg, .webp, .avif"\>';
    imgHtml+='<img style="margin-left: 5px;height: 40px;border-radius: .375rem" src="'+base_assets+noImage+'" id="'+resId+'">';
    imgHtml+='</div>';

    // imgHtml+='<div class="col-9 col-xs-9 col-md-10 mb-1" id="wrapInputImg_'+data.no+'">';
    //
    // imgHtml+='</div>';
    // imgHtml+='<div class="col-3 col-xs-3 col-md-2 mb-1" id="wrapResultImg_'+data.no+'">';
    // imgHtml+='<img style="height: 40px;border-radius: .375rem" src="'+base_assets+noImage+'" id="'+resId+'">';
    // imgHtml+='</div>';
    imgHtml+='<input type="hidden" name="'+strFileUploaded+'[]" id="'+strFileUploaded+'_'+data.no+'" value=""/>';

    return imgHtml;
}
function checkDevice(){
    return window.matchMedia("only screen and (max-width: 760px)").matches;
}
function scrollToBottom(){
//        setTimeout(function(){$("html, body").animate({ scrollTop: $(document).height() }, 300);},300)
}
function isMoney(field, tipe){
    if(!handleIsEmpty(tipe)) tipe="-";
    let value = $("#"+field).val();
    if(value !== '' && value !== '0' && value !== 0){
        let min = value.split("-");
        let dec = value.split(".");
        let str;
        str = hapusSparator(dec[0],'-');
        str = hapusSparator(str,',').toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
        if(tipe==='-' && min[0]==='' && min[1]!==undefined){
            str = '-' + hapusmin(str);
        }
        if(dec[1]!==undefined){
            str = str + '.' + hapusmin(hapuskoma(dec[1]));
        }
        attrId(field).val(str);
    } else {
        attrId(field).val('');
    }
}
function hapusSparator(str,sparator){
    str = str.toString();
    while (str.search(sparator) >= 0) {
        str = (str + "").replace(sparator, '');
    }
    return str;
}
function timeOut(callback){
    setTimeout(function(){
        callback();
    },100)
}
function setFocus(labelFocus) {
    setTimeout(function(){
        attrId(labelFocus).focus();
    },600)
}
function attrId(attr){
    return $(`#${attr}`);
}
function attrClass(attr){
    return $(`.${attr}`);
}
function attrName(attr){
    return $(`input[name='${attr}']`);
}
function handleIsEmpty(data){
    return !(data === "" || data === null || data === undefined);

}
function ucWords(str){
    return (str + '').replace(/^([a-z])|\s+([a-z])/g, function ($1) {
        return $1.toUpperCase();
    });
}
function toInt(num){
    return parseInt(num,10);
}
function isNumber(num,setDefault){
    let isDefault = !handleIsEmpty(setDefault)?0:setDefault;
    return isNaN(toInt(num))?isDefault:toInt(num);
}
function filterArray(data){
    return Array.from(data.reduce((m, {id})=>m.set(id, [...(m.get(id) || [])]), new Map), ([id]) => ({id}));
}
function lineBreakMatcher() {
    let newDelta = new Delta();
    newDelta.insert({'break': ''});
    return newDelta;
}
function toDataUrl(url, callback) {
    let xhr = new XMLHttpRequest();
    xhr.onload = function() {
        callback(xhr.response);
    };
    xhr.open('GET', url);
    xhr.responseType = 'blob';
    xhr.send();
}
function getStorage(key){
    return localStorage.getItem(key);
}
function setStorage(key,val){
    return localStorage.setItem(key,val);
}
function rmStorage(key){
    return localStorage.removeItem(key)
}
function setIdSelect(id,data){
    attrId(id).val(data);
    setValueSelect(id,data);
}
function setFileImage(img,folder,idx){
    let strPrev     = strResultImage;
    let strFile     = strFileUpload;
    let strValFile  = strFileUploaded;

    if(handleIsEmpty(idx)){
        strPrev+=`_${idx}`;
        strFile+=`_${idx}`;
        strValFile+=`_${idx}`;
    }

    setPrevImg(img,strPrev);
    setValueImg(img,`${strUpload}/${folder}/`,strFile);
    attrId(strValFile).val(img);
}
function setQuill(quill,data){
    return quill.clipboard.dangerouslyPasteHTML(data);
}
function getAllTag(url,callback) {
    ajaxData(base_url+url+"getDataTag",null,function(res){
        callback(res);
    })
}
function setTagify(tag,data){
    return tag.addTags(JSON.parse(data));
}
function delQuill(quill){
    return quill.clipboard.dangerouslyPasteHTML('');
}
function delImage(){
    return setPrevImg(noImage);
}
function delTagify(tag){
    return tag.removeAllTags();
}
function delForm(formInput){
    attrClass("error").text("");
    formInput[0].reset();
    formInput.validate().resetForm();
}
function delValueSelect(id){
    return setValueSelect(id,[]);
}
function onOffQuill(param,id){
    this[param].on('selection-change', function(range) {setCssQuillEmpty(id,!range,param);});
}
function strSearch(str,search){
    return str.toLowerCase().includes(search.toLowerCase());
}
function setCssQuillEmpty(id,isTrue,param){
    if(isTrue){
        let strBorder="1px solid #444564";
        attrId(id).css({"border-top":"none"});
        attrId(id).css({"border-right":strBorder});
        attrId(id).css({"border-left":strBorder});
        attrId(id).css({"border-bottom":strBorder});
    }
    else{
        eval(param).focus();
        attrId(id).css({"border":"1px solid #696cff"});

    }
}
function initMap(zoom_, lat_, lng_, id_, param_,isPreview,fieldInput) {
    isPreview   = !handleIsEmpty(isPreview)?true:isPreview;
    zoom_   = !handleIsEmpty(zoom_)?18:zoom_;
    lat_    = !handleIsEmpty(lat_)?-6.8710632:lat_;
    lng_    = !handleIsEmpty(lng_)?107.5311649:lng_;
    id_     = !handleIsEmpty(id_)?"map":id_;
    param_  = !handleIsEmpty(param_)?"edit":param_;
    let pacInput="pac-input",longitude="longitude",latitude="latitude",alamat="alamat",txtAlamat="txtAlamat";
    if(!handleIsEmpty(fieldInput)){
        fieldInput={
            [pacInput]  : pacInput,
            [longitude] : longitude,
            [latitude]  : latitude,
            [alamat]    : alamat,
            [txtAlamat] : txtAlamat
        };
    }

    let uluru = {lat: lat_, lng: lng_};
    let map = new google.maps.Map(document.getElementById(id_), {
        zoom: zoom_,
        center: uluru
    });

    let geocoder = new google.maps.Geocoder;

    let marker = new google.maps.Marker({
        map: map
    });

    let input = document.getElementById(fieldInput[pacInput]);
    let searchBox = new google.maps.places.SearchBox(input);
    map.addListener('bounds_changed', function() {
        searchBox.setBounds(map.getBounds());
    });

    let markers = [];
    searchBox.addListener('places_changed', function() {
        let places = searchBox.getPlaces();

        if (places.length === 0) {
            return;
        }
        markers.forEach(function(marker) {
            marker.setMap(null);
        });
        markers = [];

        let bounds = new google.maps.LatLngBounds();
        places.forEach(function(place) {
            if (!place.geometry) {
                return;
            }

            markers.push(new google.maps.Marker({
                map     : map,
                title   : place.name,
                position: place.geometry.location
            }));
            console.log("place.geometry.viewport",place.geometry.viewport);
            if (place.geometry.viewport) {
                bounds.union(place.geometry.viewport);
                attrId(fieldInput[txtAlamat]).text(place.formatted_address);
                attrId(fieldInput[alamat]).val(place.formatted_address);
                attrId(fieldInput[latitude]).val(place.geometry.location.lat());
                attrId(fieldInput[longitude]).val(place.geometry.location.lng());
            } else {
                bounds.extend(place.geometry.location);
            }
        });
        isPreview && map.fitBounds(bounds);
    });

    if (param_ === 'set' || attrId("param").val()==='edit') {
        marker.setPosition(uluru);
    }

    google.maps.event.addListener(map, 'click', function(e) {
        if (param_ === 'edit') {
            let latLng = e.latLng;
            marker.setPosition(latLng);
            attrId(fieldInput[latitude]).val(latLng.lat());
            attrId(fieldInput[longitude]).val(latLng.lng());
            markers.forEach(function(marker) {
                marker.setMap(null);
            });
            geocoder.geocode({
                'latLng': latLng
            }, function (results, status) {
                if (status === google.maps.GeocoderStatus.OK) {
                    if (results[0]) {
                        attrId(fieldInput[alamat]).val(results[0].formatted_address);
                        attrId(fieldInput[txtAlamat]).text(results[0].formatted_address);
                        attrId(fieldInput[pacInput]).val("");
                    }
                }
            });
        }
    });
}
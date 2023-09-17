<div class="d-flex justify-content-around mb-3">
    <div class="input-group input-group-merge">
        <input onkeyup="return cari(event, $(this).val())" type="text" name="any" class="form-control" id="any<?=$pages?>" placeholder="Tulis sesuatu disini ..." aria-label="<?=$pages?>" aria-describedby="basic-icon-default-fullname2" />
        <span id="basic-icon-default-fullname2" class="input-group-text"><i class="bx bx-search"></i></span>
    </div>
    <button  style="margin-left:10px;" type="button" class="btn btn-primary" onclick="showModal('modal<?=$pages?>','<?=$focus?>','<?=ucwords($pages)?>')">
        <i class="bx bx-add-to-queue bx-sm"></i>
    </button>

</div>


<script>

    function refreshPage(page){
        var folder = attrId("folderSite").text().replaceAll(" ","-").toLowerCase();
        var url = folder===page ? `${page}/read/`:`${folder}/${page}/read/`;
        var checkPengaturan=page==="socmed";
        if(checkPengaturan){
            url =`socmed/read/1`;
            localCache.remove(`${base_url}${url}`);
        }
        else{
            var totalRows = isNumber(attrId(strTotalRows).val());
            for(let i=0;i<totalRows;i++){
                localCache.remove(`${base_url}${url}${i+1}`);
            }
        }

        if(!checkPengaturan){
            url+="1";
        }
        console.log(url)
        ajaxView(`${url}`,null,function(res){
            checkPengaturan?attrId("result-sub").html(res):resultContent.html(res);
        });
    }
</script>
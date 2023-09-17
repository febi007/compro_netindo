<div class="row">
    <div class="col-md-6">
        <div class="row">
            <div class="col mb-3"><?php inputForm(["label"=>$this->nama]) ?></div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3"><?php inputSelectMultiple(["label"=>$this->platform]) ?></div>
            <div class="col-md-6 mb-3"><?php inputSelect(["label"=>$this->kategori]) ?></div>
            <div class="col-md-6 mb-3"><?php inputSelect(["label"=>$this->model]) ?></div>
            <div class="col-md-6 mb-3"><?php statusForm() ?></div>
        </div>
        <div class="row">
            <div class="col mb-3">
                <div class="row mb-2">
                    <div class="col-8 col-xs-8 col-md-9">
                        <label for="nameBackdrop" class="form-label">Gambar <small> ( bisa upload lebih dari 1 ) </small></label>
                    </div>
                    <div class="col-4 col-xs-4 col-md-3 text-right">
                        <button type="button" onclick="delImage()" class="btn btn-primary btn-xs" style="float: right; margin-left: 5px"><i class="bx bx-trash-alt"></i></button>
                        <button type="button" onclick="addImage()" class="btn btn-primary btn-xs" style="float: right;"><i class="bx bx-plus"></i></button>
                    </div>
                </div>
                <div class="row" id="wrapImg" style="max-height: 140px;overflow-y: scroll;"></div>
            </div>
        </div>
    </div>
    <div class="col-md-6"><?php inputQuill(["label"=>$this->deskripsi]) ?></div>
</div>
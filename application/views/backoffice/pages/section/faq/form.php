
<div class="row">
    <div class="col mb-3"> <?php inputForm(["label"=>$this->judul]) ?></div>
</div>
<div class="row g-2">
    <div class="col-md-6">
        <div class="row">
            <div class="col-md-12">
                <label for="nameBackdrop" class="form-label"><?=ucwords($this->pertanyaan)?> <small class="error err-deskripsi-0"></small></label>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="row">
            <div class="col-md-9">
                <label for="nameBackdrop" class="form-label"><?=ucwords($this->jawaban)?> <small class="error err-deskripsi-1"></small></label>
            </div>
            <div class="col-md-3 text-right">
                <button type="button" onclick="delFaq()" class="btn btn-primary btn-xs" style="float: right; margin-left: 5px"><i class="bx bx-trash-alt"></i></button>
                <button type="button" onclick="addFaq()" class="btn btn-primary btn-xs" style="float: right;"><i class="bx bx-plus"></i></button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12" id="wrapperFaq" style="max-height: 330px;overflow-y: scroll;"></div>
</div>

<style>
    .ql-snow .ql-editor{
        min-height: 148px !important;
        max-height: 148px !important;
        background: #fff;
        overflow-y: scroll !important;
    }
</style>
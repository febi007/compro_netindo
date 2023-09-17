<div class="row">
    <div class="col-md-6">
        <div class="row mb-3">
            <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->nama]) ?></div>
            <div class="col-md-6 mb-3"><?php inputForm(["label"=>$this->harga,"isMoney"=>true]) ?></div>
            <div class="col-md-6 mb-3"><?php inputForm(["label"=>$this->hargaCoret,"isMoney"=>true]) ?></div>
            <div class="col-md-12 mb-3"><?php inputSelect(["label"=>$this->kategori]) ?></div>
            <div class="col-md-12"><?php inputSelectMultiple(["label"=>$this->model])?></div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="row mb-3">
            <div class="col-md-12 mb-3"><?php statusForm()?></div>
            <div class="col-md-12 mb-3"><?php inputImage([])?></div>
            <div class="col-md-12">
                <?php $label=$this->deskripsi; ?>
                <label for="nameBackdrop" class="form-label"><?=ucwords(str_replace("_"," ",$label))?></label>
                <textarea name="<?=$label?>" id="<?=$label?>" class="form-control" style="height: 124px;" ></textarea>
            </div>
        </div>
    </div>
    <div class="col-md-12"><?php inputTag(["label"=>$this->varian])?></div>
</div>
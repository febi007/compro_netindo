<div class="row mb-3">
    <div class="col-md-6">
        <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->judul]) ?></div>
        <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->link]) ?></div>
        <div class="col-md-12 mb-3"><?php statusForm() ?></div>
        <div class="col-md-12 mb-3"><?php inputImage([]) ?></div>
    </div>
    <div class="col-md-6">
        <?php $label=$this->deskripsi; ?>
        <label for="nameBackdrop" class="form-label"><?=ucwords($label)?></label>
        <textarea name="<?=$label?>" class="form-control" id="<?=$label?>" style="height: 296px;"></textarea>
    </div>

</div>
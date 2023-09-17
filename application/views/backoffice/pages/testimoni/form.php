<div class="row mb-3">
    <div class="col-md-5">
        <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->nama]) ?></div>
        <div class="col-md-12 mb-3"><?php inputSelect(["label"=>$this->partner]) ?></div>
        <div class="col-md-12 mb-3"><?php statusForm()?></div>
        <div class="col-md-12 mb-3"><?php inputImage([])?></div>
    </div>
    <div class="col-md-7">
        <?php inputQuill(["label"=>$this->deskripsi]) ?>
    </div>

</div>
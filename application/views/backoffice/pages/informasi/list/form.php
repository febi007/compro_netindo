<div class="row mb-3">
    <div class="col-md-6">
        <div class="row">
            <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->judul]) ?></div>
            <div class="col-md-12 mb-3">
                <div class="row">
                    <div class="col-md-6"><?php inputSelect(["label"=>$this->kategori]) ?></div>
                    <div class="col-md-6"><?php inputSelect(["label"=>$this->jenis])?></div>
                </div>
            </div>
            <div class="col-md-12 mb-3"><?php statusForm()?></div>
            <div class="col-md-12 mb-3"><?php inputImage([])?></div>
            <div class="col-md-12"><?php inputTag(["label"=>$this->tags])?></div>
        </div>
    </div>
    <div class="col-md-6"><?php inputQuill(["label"=>$this->deskripsi]) ?></div>
</div>
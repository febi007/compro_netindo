<div class="row mb-3">
    <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->nama]) ?></div>
    <div class="col-md-12 mb-3"><?php inputForm(["label"=>"warna","type"=>"color"]) ?></div>
    <div class="col-md-12 mb-3"><?php statusForm()?></div>
    <div class="col-md-12 mb-3"><?php inputSelect(["label"=>$this->kategori]) ?></div>
</div>
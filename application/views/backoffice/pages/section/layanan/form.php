<div class="row">
    <div class="col-md-6">
        <div class="row">
            <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->judul]) ?></div>
            <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->icon,"link"=>"https://www.flaticon.com/uicons","labelLink"=>"Lihat Icon"]) ?></div>
            <div class="col-md-12 mb-3"><?php statusForm()?></div>
            <div class="col-md-12 mb-3">
                <?php inputImage([]) ?>
            </div>
        </div>
    </div>
    <div class="col-md-6"><?php inputQuill(["label"=>$this->deskripsi]) ?></div>
</div>
<style>
    .ql-snow .ql-editor{
        min-height: 15.2em!important;
        max-height: 15.2em!important;
    }
</style>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/masonry/masonry.js"></script>

<?php $no=$data[$this->no]; if($row!=null): ?>
<div class="row" data-masonry='{"percentPosition": true }'>
    <?php foreach ($row as $val):$no++; $image=explode(",",$val[$this->gambar]); ?>
        <div class="col-md-6 col-lg-3 mb-4">
            <div class="card">
                <div class="card-header flex-grow-0">
                    <div class="d-flex">
                        <div class="d-flex w-100 flex-wrap align-items-center justify-content-between">
                            <div class="me-2 w-70" style="width: 70%">
                                <p class="mb-0"><?=strSubstring($val[$this->nama],35)?></p>
                            </div>
                            <div class="dropdown">
                                <button type="button" class="btn btn-label-primary btn-icon btn-sm dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
                                <ul class="dropdown-menu">
                                    <li> <a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-container swiper1" id="swiper-with-progress" style="z-index:1 !important;">
                    <div class="swiper-wrapper">
                        <?php foreach ($image as $key=>$item): ?>
                            <div class="swiper-slide" style="background-image: url('<?=$this->url.$item?>');background-position: center;background-size:contain;background-repeat: no-repeat">
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
                <div class="featured-date mt-n3 ms-2 rounded w-px-150 p-1" style="z-index:100!important;">
                    <?=status($val[$this->status])?>
                </div>
                <div class="card-body">
                    <p><?=strSubstring(strip_tags($val[$this->deskripsi]),100)?></p>
                    <div class="d-flex">
                        <span class="badge bg-label-primary"><?=$val[$this->namaKategori]?></span>
                        <span class="badge bg-label-info"><?=$val[$this->namaModel]?></span>
                    </div>
                    <div class="d-flex my-3">
                        <ul class="list-unstyled m-0 d-flex align-items-center avatar-group">
                            <?php foreach (decodeVariant($val[$this->platform],$this->platform) as $key=>$row): ?>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="<?=$row[$this->nama]?>" class="avatar pull-up">
                                    <img class="img-fluid rounded-circle bg-label-primary" src="<?=base_url().$row[$this->gambar]?>"/>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    <?php endforeach;?>
</div>
    <?php $this->load->view($this->paginHtml,$data); else: ?>
<div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i><?=$this->msgNoData?></p></div></div>
<?php endif; ?>

<script>
    var swiper1 = new Swiper('.swiper1', {
        paginationClickable: false,
        slidesPerView: "auto",
        pagination: {
            type: "progressbar",
            el: ".swiper-pagination"
        },
        parallax: true,
        autoplayDisableOnInteraction: false,
        fadeEffect: { crossFade: true },
        virtualTranslate: true,
        speed: 600,
        slidersPerView: 1,
        scrollbar: { el: '.swiper-scrollbar' },
        effect: "fade",
        cache:true
    });



</script>
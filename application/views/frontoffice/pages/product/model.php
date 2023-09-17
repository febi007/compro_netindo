<?php $url="https://templates.hibootstrap.com/solit/default/";?>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/masonry/masonry.js"></script>

<?php $this->load->view("frontoffice/component/headerPage",["controller"=>"Product","method"=>$category['nama']]) ?>

<?php if($model!=null): ?>
    <section class="promo-section ptb-50 bg-thin">
        <div class="container">
            <div class="row justify-content-center">
                <?php foreach ($model as $key=>$val):?>
                    <style>
                        #features-<?=$key+1?> .single-feature::before {
                            background: <?=$val["warna"]?>;
                            background: -webkit-gradient(linear, left bottom, left top, from(<?=$val["warna"]?>), to(<?$val["warna"]?>));
                            background: linear-gradient(0deg, <?=$val["warna"]?> 0%, <?=$val["warna"]?> 100%)
                        }
                        #features-<?=$key+1?> .single-feature::after {
                            background: <?=$val["warna"]?>;
                            background: -webkit-gradient(linear, left bottom, left top, from(<?=$val["warna"]?>), to(<?=$val["warna"]?>));
                            background: linear-gradient(0deg, <?=$val["warna"]?> 0%, <?=$val["warna"]?> 100%)
                        }
                        #features-<?=$key+1?> .single-feature .envy {
                            background: <?=$val["warna"]?>;
                            background: -webkit-gradient(linear, left bottom, left top, from(<?=$val["warna"]?>), to(<?=$val["warna"]?>));
                            background: linear-gradient(0deg, <?=$val["warna"]?> 0%,<?=$val["warna"]?> 100%)
                        }
                        #features-<?=$key+1?> .single-feature:hover .hover-overlay {
                            background: -webkit-gradient(linear, left bottom, left top, from(<?=$val["warna"]?>), to(<?=$val["warna"]?>));
                            background: linear-gradient(0deg, <?=$val["warna"]?> 0%, <?=$val["warna"]?> 100%)
                        }
                    </style>
                    <div class="col-6 col-lg-3 col-md-6 col-sm-6" id="features-<?=$key+1?>">
                        <a href="<?=base_url().'product/'.$val['slug_kategori'].'/'.$val['slug']?>">
                            <div class="single-feature">
                                <div class="single-feature-content">
                                    <i class="envy envy-code"></i>
                                    <h3 class="mt-3"><?=$val['nama']?></h3>
                                </div>
                                <div class="hover-overlay"></div>
                            </div>
                        </a>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

<?php else: $this->load->view("frontoffice/component/noData");endif;?>

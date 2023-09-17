
<?php $this->load->view("frontoffice/component/headerPage",["controller"=>$model,"method"=>$product["nama"]]) ?>

<?php $url="https://templates.hibootstrap.com/solit/default/";?>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/masonry/masonry.js"></script>


<section class="blog-details-section ptb-100 bg-thin">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="blog-details-desc">
                    <h2><?=$product['nama']?></h2>
                    <div class="image gallery-section ">
                        <div class="gallery-slider owl-carousel">
                            <?php foreach ($images as $val): ?>
                                <div class="gallery-item">
                                    <div class="gallery-image"><img src="<?=base_url().$val?>" alt="gallery-member" style="border-radius: 10px" /></div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>

                    <div class="content">
                        <p><?=$product['deskripsi'] ?></p>
                    </div>
                    <div class="article-share">
                        <div class="tags pb-3">
                            <?php foreach (decodeVariant($product["platform"],"platform") as $key=>$row): ?>
                                <a href="" style="justify-content: center;text-align: center"><img src="<?=base_url().$row['gambar']?>" alt=""> <?=$row['nama']?></a>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row" data-masonry='{"percentPosition": true }'>
                    <?php $this->load->view("frontoffice/component/cardProduct",['data'=>$releatedProduct]); ?>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <aside class="widget-area">

                    <section class="widget widget-categories">
                        <ul class="categorie-list">
                            <?php foreach ($rowModel as $val): ?>
                            <li class="pointer" onclick="goPage('<?=base_url().'product/'.$category.'/'.$val['slug']?>')">
                                <a href="javascript:void(0)"><?=$val['nama']?></a>
                                <span class="total"><?=$val['totalProduct']?></span>
                            </li>
                            <?php endforeach;?>
                        </ul>
                    </section>

                    <section class="widget widget-tag">
                        <div class="tags">
                            <?php foreach ($rowPlatform as $val): ?>
                            <a href="<?=base_url().'product/'.$category.'/'.$model.'?platform='.strtolower($val['nama']).'-'.base64_encode($val['id'])?>"> <img src="<?=base_url().$val['gambar']?>" alt=""> <?=$val['nama']?> </a>
                            <?php endforeach; ?>
                        </div>
                    </section>
                </aside>
            </div>
        </div>
    </div>
</section>


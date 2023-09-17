<?php $url="https://templates.hibootstrap.com/solit/default/";?>
<?php $this->load->view("frontoffice/component/headerPage",["controller"=>"Packet"]) ?>



<section class="pricing-section pricing-single pt-100 pb-70 bg-thin">
    <div class="container">
        <div class="section-title pb-100">
            <span class="subtitle">pricing packages</span>
            <h2>Choose Your Best Packages</h2>
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, numquam.
            </p>
        </div>
        <div class="row justify-content-center">
           <?php foreach ($row as $val) : ?>
            <div class="col-lg-4 pb-70">
                <div class="pricing-item-single">
                    <div class="pricing-item-content">
                        <div class="content-text">
                            <span class="label">premium</span>
                            <h2 class="price"><span>$</span>31.99</h2>
                            <p>monthly</p>
                        </div>
                        <div class="content-bg">
                            <img src="<?=$url?>assets/img/resource/icon_shape_8.png" alt="" />
                        </div>
                    </div>
                    <div class="pricing-item-list">
                        <ul class="mb-3">
                            <li><i class="envy envy-paper-plane"></i>25 Analytics Camping</li>
                            <li><i class="envy envy-paper-plane"></i>1,300 Keywords</li>
                            <li><i class="envy envy-paper-plane"></i>25 Social Media Reviews</li>
                            <li><i class="envy envy-paper-plane"></i>1 Free Optimization</li>
                            <li><i class="envy envy-paper-plane" style="color: #6a6377;"></i>24/7 Support</li>
                        </ul>
                        <a href="#" class="btn btn-solid">choose plan <i class="envy envy-right-arrow"></i></a>
                    </div>
                </div>

            </div>
            <?php endforeach; ?>

        </div>
    </div>
</section>
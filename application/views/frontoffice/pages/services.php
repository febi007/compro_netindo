<?php $url="https://templates.hibootstrap.com/solit/default/";?>


<?php $this->load->view("frontoffice/component/headerPage",["controller"=>"Services"]) ?>

<section class="feature-section single pt-100 bg-thin">
    <div class="container">
        <div class="section-title">
            <h2>Let’s Check Out The Features</h2>
            <p>Does any industry face a more complex audience journey and marketing sales process than B2B technology.Does any industry face a more complex audience.</p>
        </div>
        <div class="row pt-70">
            <?php foreach ($row as $val) : ?>
                <div class="col-lg-4 col-md-6 col-sm-12 pb-70">
                    <div class="item-single">
                        <div class="icon">
                            <i class="envy envy-magnify-glass2"></i>
                            <div class="icon-bg">
                                <img src="<?=$url?>assets/img/resource/icon_shape_b1.png" alt="icon_shape" />
                            </div>
                        </div>
                        <div class="item-content">
                            <h6><a href="service-details.html" target="_self">market research</a></h6>
                            <p>Strategy experience and analytical expertise combine to enable. Strate gy experience and ana.</p>
                            <a href="service-details.html" target="_self" class="btn btn-text-only">read more <i class="envy envy-right-arrow"></i></a>
                        </div>
                    </div>

                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>
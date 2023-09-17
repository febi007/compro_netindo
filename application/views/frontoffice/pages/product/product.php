<?php $url="https://templates.hibootstrap.com/solit/default/";?>
<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/masonry/masonry.js"></script>

<?php $this->load->view("frontoffice/component/headerPage",["controller"=>$category,"method"=>isset($_GET['platform'])&&$_GET['platform']!=null?$model.'-'.explode('-',$_GET['platform'])[0]:$model,"linkController"=>base_url()."product/".$category]) ?>
<?php if($product!=null): ?>
<section class="blog-grid ptb-50 bg-thin">
    <div class="container">
        <div class="row justify-content-center" data-masonry='{"percentPosition": true }'>
            <?php $this->load->view("frontoffice/component/cardProduct",['data'=>$product,'col'=>'col-lg-3']) ?>
        </div>
    </div>
</section>
<?php else: $this->load->view("frontoffice/component/noData"); endif; ?>
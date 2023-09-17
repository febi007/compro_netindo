<?php $this->load->view("frontoffice/component/headerPage",["controller"=>"Other","method"=>"tutorial"]) ?>

<?php $url="https://templates.hibootstrap.com/solit/default/";?>

<style>
    @media only screen and (max-width: 600px){
        /*Big smartphones [426px -> 600px]*/
    }
    @media only screen and (max-width: 425px){
        a.btnPlay{display: none}
    }
</style>

<section class="gallery-section ptb-100 bg-white">
    <div class="container">
        <div class="section-title">
            <h2>Video Tutorial Aplikasi Kasir (NPOS)</h2>
            <p>Kumpulan video tutorial aplikasi kasir (npos) kami untuk memudahkan anda apabila mengalami kesulitan</p>
        </div>
        <div class="row">
            <?php foreach ($video as $val): ?>
                <div class="col-6 col-xs-6 col-md-4 mb-4 pointer" onclick="goPage('https://www.youtube.com/watch?v=<?=$val["link"]?>','_blank')">
                    <div class="gallery-item" style="border-radius: 10px;box-shadow: 0 2px 25px 0 rgb(106 99 119 / 10%);">
                        <div class="gallery-image"><img src="<?=base_url().$val['gambar']?>" alt="gallery-member" /></div>
                        <a class="btnPlay" href="javascript:void(0)">
                            <div class="shadow ext-center" style="position: absolute;z-index: 3;width: 76px;height: 76px;border: 2px solid #fff;border-radius: 50%;top: 55%;left: 50%;transform: translate(-50%,-50%);cursor: pointer;display: flex;justify-content: center;align-items: center;">
                                <i class="bx bx-play bx-lg" style="color: whitesmoke"></i>
                            </div>
                        </a>
                        <div class="gallery-content">
                            <h3>
                                <a href="javascript:void(0)"><?=$val['judul']?></a>
                            </h3>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>

<?php $url="https://templates.hibootstrap.com/solit/default/";?>
<?php $urlCss = base_url().'assets/fo/css/';?>
<?php $urlJs = base_url().'assets/fo/js/';?>
<?php $kategori =[];$kategoriProduk = $this->M_crud->read_data("kategori","*");
foreach ($kategoriProduk as $row) {
    $kategori[]=["title"=>$row['nama'],"link"=>"product/".$row["slug"],"slug"=>$row['slug']];
}
?>
<link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/fonts/boxicons.css" />

<script>
    function backPage(){
        window.history.back();
    }
</script>
<!-- Bottom Navbar -->

<nav class="navbar navbar-dark bg-info navbar-expand fixed-bottom d-md-none d-lg-none d-xl-none" style="background-color:white!important">
    <ul class="navbar-nav nav-justified w-100">
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link" onclick="alert('dalam tahap pengembangan')">
                <i class="bx bx-home" style="font-size:28px;color:<?=$this->uri->segment(1)==''?'#6610f2':'black'?>"></i>
            </a>
        </li>
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link" onclick="alert('dalam tahap pengembangan')">
                <i class="bx bx-layout" style="font-size:28px;color:<?=$this->uri->segment(1)==''?'#6610f2':'black'?>"></i>
            </a>
        </li>
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link" onclick="alert('dalam tahap pengembangan')">
                <i class="bx bx-news" style="font-size:28px;color:<?=$this->uri->segment(1)==''?'#6610f2':'black'?>"></i>
            </a>
        </li>
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link" onclick="alert('dalam tahap pengembangan')">
                <i class="bx bx-purchase-tag" style="font-size:28px;color:<?=$this->uri->segment(1)==''?'#6610f2':'black'?>"></i>
            </a>
        </li>
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link" onclick="alert('dalam tahap pengembangan')">
                <i class="bx bx-menu" style="font-size:28px;color:<?=$this->uri->segment(1)==''?'#6610f2':'black'?>"></i>
            </a>
        </li>

    </ul>
</nav>
<header class="navbar-area nav-style-two">
    <div class="mobile-nav">
        <?php if($this->uri->segment(1) != ""): ?>
            <a href="javascript:void(0)" class="logo cta-btn" onclick="backPage()">
                <div class="search-btn btn btn-outline" style="top:4px">
                    <i class="envy envy-left-arrow"></i> Back
                </div>
            </a>
        <?php else: ?>
            <a href="<?=base_url()?>" class="logo">
                <img src="<?=base_url().$gambar[0]?>" alt="logo_light" style="max-height: 40px"  />
                <img src="<?=base_url().$gambar[0]?>" alt="logo-dark" style="max-height: 40px"  />
            </a>
        <?php endif; ?>
    </div>
    <div class="main-nav">
        <nav class="navbar navbar-expand-md navbar-light">
            <div class="container">
                <a class="navbar-brand" href="<?=base_url()?>">
                    <img src="<?=base_url().$gambar[0]?>" alt="logo_light" style="max-height: 50px" />
                    <img src="<?=base_url().$gambar[0]?>" alt="logo-dark" />
                </a>
                <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto">
                        <?php $menu = [
                            ["title"=>"Home","link"=>"","child"=>[]],
                            ["title"=>"Product","link"=>"product","child"=>$kategori],
                            ["title"=>"Packet","link"=>"packet","child"=>[]],
                            ["title"=>"Services","link"=>"services","child"=>[]],
                            ["title"=>"Blog","link"=>"blog","child"=>[]],
                            ["title"=>"Other","child"=>[
                                ["title"=>"Tutorial","link"=>"other/tutorial","slug"=>"tutorial"],
                                ["title"=>"Privacy Policy","link"=>"other/privacy-policy","slug"=>"privacy-policy"],
                                ["title"=>"About","link"=>"other/about","slug"=>"about"],
                                ["title"=>"FAQ","link"=>"other/faq","slug"=>"faq"],
                                ["title"=>"History","link"=>"other/history","slug"=>"history"],
                            ]],
                        ]; ?>

                        <?php $uri1=$this->uri->segment(1); foreach ($menu as $key=>$val): ?>
                            <?php if(count($val['child'] ) > 0):?>
                                <li class="nav-item">
                                    <a href="#" class="nav-link dropdown-toggle <?=$uri1==strtolower($val['title'])?'active':''?>"><?=$val['title']?></a>
                                    <ul class="dropdown-menu">
                                        <?php  $uri2=$this->uri->segment(2); foreach ($val['child'] as $row): ?>
                                            <li class="nav-item">
                                                <a href="<?=base_url().$row['link']?>" class="nav-link <?=$row['slug']==$uri2?'active':''?>"><?=$row['title']?></a>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                </li>
                            <?php else: ?>
                                <?php
                                $navActive="";
                                if($uri1==strtolower($val['title'])){
                                    $navActive="active";
                                }
                                ?>
                                <li class="nav-item">
                                    <a href="<?=base_url().$val['link']?>" class="nav-link <?=$navActive?>"><?=$val['title']?></a>
                                </li>
                            <?php endif;?>
                        <?php endforeach; ?>

                    </ul>
                    <div class="search-item cta-btn">
                        <div class="search-btn btn btn-outline">
                            <i class="envy envy-user"></i> Register
                        </div>

                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>
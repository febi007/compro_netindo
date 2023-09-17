<?php $url="https://templates.hibootstrap.com/solit/default/";?>
<?php $urlCss = base_url().'assets/fo/solit/css/';?>
<?php $urlJs = base_url().'assets/fo/solit/js/';?>
<!doctype html>
<html lang="zxx">
<head>
    <!--====== Required meta tags ======-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, maximum-scale=1">
    <meta name="theme-color" content="#ffffff">
    <meta name="description" content="<?=implode(",",$seo)?>">
    <!--====== Title ======-->
    <title><?=$pengaturan['nama']?> | <?=$pengaturan['slogan']?></title>
    <meta property="og:url" content="<?=base_url()?>">
    <meta property="og:type" content="website">
    <meta name="og:title" content="<?=$pengaturan['nama']?> | <?=$pengaturan['slogan']?>">
    <meta name="og:description" content="<?=implode(",",$seo)?>">
    <meta property="og:image" content="<?=base_url().$gambar[0]?>">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="twitter:domain" content="<?=base_url()?>">
    <meta property="twitter:url" content="<?=base_url()?>">
    <meta name="twitter:title" content="<?=$pengaturan['nama']?> | <?=$pengaturan['slogan']?>">
    <meta name="twitter:description" content="<?=implode(",",$seo)?>">
    <meta name="twitter:image" content="<?=base_url().$gambar[0]?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="<?=base_url().$gambar[1]?>">


    <link rel="stylesheet" href="<?=$urlCss?>bootstrap.min.css" />
    <link rel="stylesheet" href="<?=$urlCss?>fontawesome.min.css" />
    <link rel="stylesheet" href="<?=$urlCss?>envyicon.min.css" />
    <link rel="stylesheet" href="<?=$urlCss?>animate.min.css" />
    <link rel="stylesheet" href="<?=$urlCss?>magnific-popup.min.css" />
    <link rel="stylesheet" href="<?=$urlCss?>owl.carousel.min.css" />
    <link rel="stylesheet" href="<?=$urlCss?>meanmenu.min.css" />
    <link rel="stylesheet" href="<?=$urlCss?>style.css" />
    <link rel="stylesheet" href="<?=$urlCss?>responsive.css" />
    <link rel="stylesheet" href="<?=$urlCss?>theme-dark.css" />


    <script src="<?=$url?>assets/js/jquery.min.js"></script>

    <script src="<?=$url?>assets/js/jquery.min.js"></script>

    <script src="<?=$url?>assets/js/bootstrap.bundle.min.js"></script>

    <script src="<?=$url?>assets/js/jquery.magnific-popup.min.js"></script>

    <script src="<?=$url?>assets/js/owl.carousel.min.js"></script>

    <script src="<?=$url?>assets/js/meanmenu.min.js"></script>

    <script src="<?=$url?>assets/js/form-validator.min.js"></script>

    <script src="<?=$url?>assets/js/contact-form-script.js"></script>

    <script src="<?=$url?>assets/js/jquery.ajaxchimp.min.js"></script>

    <style>
        .pointer {
            cursor: pointer;
        }
    </style>
    <script>
        function goPage(val,blank=''){
            if(blank!==''){
                window.open(val,'_blank');
            }
            else{
                window.location.href=val;

            }

        }
    </script>
</head>
<body>

<!--<div class="preloader-main">-->
<!--    <div class="loader">-->
<!--        <div class="loader-dot"></div>-->
<!--        <div class="loader-dot"></div>-->
<!--        <div class="loader-dot"></div>-->
<!--    </div>-->
<!--</div>-->




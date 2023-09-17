

<!DOCTYPE html>

<html lang="en" class="light-style layout-navbar-fixed layout-menu-fixed " dir="ltr" data-theme="theme-default" data-assets-path="<?=base_url().'assets/bo'?>/assets/" data-template="vertical-menu-template">
<?php
$seo=[];
foreach (json_decode($this->session->seo,true) as $val){
    $seo[]=$val["value"];
}
?>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
    <meta name="description" content="<?=$this->session->slogan?>" />
    <meta name="title" content="<?=ucwords($this->session->nama)?>-<?=ucwords($title)?>" />
    <meta name="keywords" content="<?=implode(",",$seo)?>" />
    <meta property="og:url" content="<?=base_url()?>" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="<?=ucwords($this->session->nama)?>-<?=ucwords($title)?>" />
    <meta property="og:description" content="<?=$this->session->slogan?>" />
    <meta property="og:image" content="https://s3-ap-southeast-1.amazonaws.com/static.olsera.com/storefront/default/images/partner/pos-landscape@2x.jpg" />
    <title class="titleBar"><?=ucwords($this->session->nama)?>-<?=ucwords($title)?></title>
    <!-- Favicon -->
    <link rel="icon" class="iconSite" type="image/x-icon" href="<?=base_url().$this->session->icon?>" />
    <!-- Font Face -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Signika+Negative:wght@400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/fonts/boxicons.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/fonts/flag-icons.css" />
    <link href="https://unpkg.com/nprogress@0.2.0/nprogress.css" rel="stylesheet" />

    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/css/demo.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/css/myStyle.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/toastr/toastr.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/animate-css/animate.css">
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/tagify/tagify.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/bootstrap-select/bootstrap-select.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/quill/typography.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/quill/editor.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/libs/swiper/swiper.css" />
    <link rel="stylesheet" href="<?=base_url().'assets/bo'?>/assets/vendor/css/pages/ui-carousel.css" />
    <link rel="stylesheet" href="<?=base_url()?>assets/plugin/sweetalert2/sweetalert2-1.3.3.min.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/plugin/sweetalert2/sweetalert2-0.4.5.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">

    <script src="<?=base_url().'assets/bo'?>/assets/vendor/js/helpers.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/vendor/js/template-customizer.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/js/config.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/popper/popper.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/vendor/js/bootstrap.js"></script>

    <script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/quill/katex.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/quill/quill.js"></script>
    <script src="https://unpkg.com/nprogress@0.2.0/nprogress.js"></script>
    <script src="<?=base_url()?>assets/plugin/jquery-validation/jquery.validate.min.js"></script>
    <script src="<?=base_url()?>assets/plugin/jquery-validation/additional-methods.min.js"></script>
    <script src="<?=base_url()?>assets/plugin/sweetalert2/sweetalert2-1.3.3.min.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/js/site.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/js/myAction.js"></script>
    <script src="<?=base_url().'assets/bo'?>/assets/js/myString.js"></script>
    <script src="<?=$this->url.$this->assets?>assets/vendor/libs/swiper/swiper.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDqD1Z03FoLnIGJTbpAgRvjcchrR-NiICk&libraries=places" async defer></script>
    <script src="<?=$this->url.$this->assets?>assets/vendor/libs/jquery/jquery.autocomplete.js"></script>
    <link href="<?=base_url().'assets/bo/assets/vendor/libs/quill/'?>resources/quill-better-table.css" rel="stylesheet">
    <script src="<?=base_url().'assets/bo/assets/vendor/libs/quill/'?>resources/quill-better-table.min.js"></script>

    <script src="<?=base_url().'assets/bo'?>/assets/js/myJs.js"></script>

</head>
<script>
    let urlActive="";
    let noImage= "assets/no_image.png";
    let base_assets = "<?=base_url()?>";
    let pathName=window.location.pathname.split("/");
    let base_url = "<?=base_url().'backoffice/'?>";
    let dataIdEdit=[];

    function checkPath(){
        if(window.location.host==='ptnetindo.com'){
            loadView(pathName[2],handleIsEmpty(pathName[3])?pathName[3]:null,'load')
        }
        else{
            loadView(pathName[3],handleIsEmpty(pathName[4])?pathName[4]:null,'load')
        }
    }

    $(document).ready(function () {
        setButtonAction(false);
        if(isLogedIn()){
            getSite();
            attrClass("filter-option-inner-inner").html("");
            let validMsg=$.validator.messages;
            validMsg.currency = ' harus berupa angka';
            validMsg.email = ' tidak valid';
            validMsg.url = ' tidak valid';
            validMsg.required = ' tidak boleh kosong';
            validMsg.remote = ' telah digunakan';
            validMsg.equalTo = ' tidak cocok';
            validMsg.minlength = 'terlalu pendek';
            checkPath();

        }
    });
    window.onpopstate = function(e){
        if(e.state){
            window.history.pushState({"html":e.state.html},"", location.pathname);
            checkPath();
        }
    };
    function isLogedIn(){
        let sessId= "<?=$this->session->id?>";
        if(!handleIsEmpty(sessId)) window.location.href=base_url+"auth/logout";
        return true;
    }
</script>
<body>


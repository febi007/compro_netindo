


<?php foreach ($data as $val):$gambar=explode(",",$val['gambar']); $link=base_url().'product/'.$category.'/'.$model.'/'.$val['slug'] ?>
    <div class="col-6 col-xs-6 <?=isset($col)?$col:'col-lg-4'?> pointer" onclick="goPage('<?=$link?>')">
        <div class="blog-item-single" style="border-radius: 10px;box-shadow: 0 2px 25px 0 rgb(106 99 119 / 10%);">
            <div class="blog-item-img">
                <a href="javascript:void(0)">
                    <img src="<?=base_url().$gambar[0]?>" alt="blog-bg-image"/>
                </a>
            </div>
            <div class="blog-item-content" style="padding-left:10px;padding-right: 10px">
                <p><b><?=strSubstring($val['nama'],50)?></b> <br> <?=strSubstring(strip_tags($val['deskripsi']),50)?></p>
            </div>
        </div>
    </div>
<?php endforeach; ?>
<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo">
        <a href="<?=$this->url?>" class="app-brand-link" target="_blank">
              <span class="app-brand-logo demo">
                <img id="logoSite" src="" alt="" style="height: 60px;">
              </span>
        </a>
        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>

    <div class="menu-inner-shadow"></div>

    <ul class="menu-inner py-1">
        <?php $uriParent=$this->uri->segment(2);$uriChild=$this->uri->segment(3); $menu=[
            ['icon'=>'bx-chart','title'=>'Dashboard','child'=>[]],
            ['icon'=>'bx-cog','title'=>'Pengaturan','child'=>[]],
            ['icon'=>'bx-folder-open','title'=>'Master Data','child'=>[
                ['title'=>'Kategori'],
                ['title'=>'Platform'],
                ['title'=>'Model'],
                ['title'=>'Produk'],
                ['title'=>'Paket']
            ]],
            ['icon'=>'bx-user-voice','title'=>'Informasi','child'=>[
                ['title'=>'Daftar'],
                ['title'=>'Kategori'],
                ['title'=>'Jenis'],
            ]],
            ['icon'=>'bx-book-content','title'=>'Section','child'=>[
                ['title'=>'Banner'],
                ['title'=> 'Faq'],
                ['title'=>'Layanan'],
                ['title'=>'Video'],
            ]],
            ['icon'=>'bx-group','title'=>'Partner','child'=>[]],
            ['icon'=>'bx-happy-alt','title'=>'Testimoni','child'=>[]],
        ] ?>
        <?php foreach ($menu as $val): $titleParent=str_replace(" ","-",strtolower($val['title']));if(count($val['child'])==0):?>
            <li class="menu-item <?=$titleParent?>">
                <a href="javascript:void(0);" class="menu-link" onclick="loadView('<?=$titleParent?>',null)">
                    <i class="menu-icon tf-icons bx <?=$val['icon']?>"></i>
                    <div data-i18n="Analytics"><?=ucwords($val['title'])?></div>
                </a>
            </li>
        <?php else: ?>
            <li class="menu-item <?=$titleParent?>">
                <a href="javascript:void(0);" class="menu-link menu-toggle">
                    <i class="menu-icon tf-icons bx <?=$val['icon']?>"></i>
                    <div data-i18n="Account Settings"><?=$val['title']?></div>
                </a>
                <ul class="menu-sub">
                    <?php foreach ($val['child'] as $item):$titleChild=str_replace(" ","-",strtolower($item['title']));?>
                        <li class="menu-item <?=$titleParent.'-'.$titleChild?>">
                            <a href="javascript:void(0);" class="menu-link"  onclick="loadView('<?=$titleParent?>','<?=$titleChild?>')">
                                <div data-i18n="Account"><?=$item['title']=='Daftar'?'List':$item['title']?></div>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </li>
        <?php endif;endforeach; ?>
        <li class="menu-item">
            <a href="<?=$this->url.'backoffice/auth/logout'?>" class="menu-link">
                <i class="menu-icon tf-icons bx bx-power-off"></i>
                <div data-i18n="Analytics">Keluar</div>
            </a>
        </li>
    </ul>
</aside>

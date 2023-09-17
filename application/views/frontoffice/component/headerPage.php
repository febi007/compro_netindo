
<div class="page-title-area bg-thin">
    <div class="container">
        <div class="page-title-content">
            <h1><?=isset($method)?$method:$controller?></h1>
            <ul>
                <li class="item"><a href="<?=base_url()?>">Home</a></li>
                <li class="item"><a href="<?=isset($linkController)?$linkController:'#'?>"><?=$controller?></a></li>
                <?php if(isset($method)): ?>
                <li class="item"><a href="#"><?=$method?></a></li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
    <div class="shape">
        <span class="shape1"></span>
        <span class="shape2"></span>
        <span class="shape3"></span>
        <span class="shape4"></span>
    </div>
</div>

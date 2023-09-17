<?php
    $name = ucwords(str_replace("_"," ",isset($name)?$name:$label));
    $type = isset($type)?$type:"text";
?>
<?php if(isset($link)): ?>
<div class="d-flex justify-content-between">
    <label for="nameBackdrop" class="form-label"><?=$name?></label>
    <a href="<?=$link?>" target="_blank"><?=$labelLink?></a>
</div>
<?php else: ?>
    <label for="nameBackdrop" class="form-label"><?=$name?></label>
<?php endif; ?>
<?php if(isset($isMoney) && $isMoney): ?>
    <input type="text" name="<?=$label?>" id="<?=$label?>" class="form-control" placeholder="Masukan <?=$name?>" onkeyup="isMoney('<?=$label?>', '-');">
<?php else: ?>
    <input type="<?=$type?>" name="<?=$label?>" id="<?=$label?>" class="form-control" placeholder="Masukan <?=$name?>">
<?php endif; ?>

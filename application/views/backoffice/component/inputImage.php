<div class="row">
    <?php
        $label=$label==""?"":$this->fileUpload;
        $prevImage="result_image";
        $file=$label."ed";
        $name=$label;
        $txtHelp ="";
        $link ="";
        $fileHiddenId=$file;

        if(isset($dataImage)&&$dataImage!=null){
            $name.="_".$dataImage["index"];
            $prevImage.="_".$dataImage["index"];
            $label=$dataImage["name"];
            $txtHelp=$dataImage["txtHelp"];
            $link=$dataImage["link"];
            $fileHiddenId = $fileHiddenId."_".$dataImage["index"];
        }
    ?>
    <input type="hidden" name="<?=$file?>[]" id="<?=$fileHiddenId?>"/>
    <div class="col-md-12">
        <div class="d-flex justify-content-between">
            <div>
                <label for="nameBackdrop" class="form-label"><?=ucwords(str_replace("_"," ",$label))?> </label>
                <label class="error-file-upload"></label>
            </div>
            <?php if($link!=""): ?>
            <label for="nameBackdrop" class="form-label"><a href="<?=$link?>" target="_blank"><?=$txtHelp?></a></label>
            <?php endif; ?>
        </div>

        <div class="d-flex justify-content-around">
            <input data-error="file-upload" class="form-control" type="file" name="<?=$this->fileUpload?>[]" id="<?=$name?>" onchange="return ValidateFileUpload('<?=$name?>','<?=$prevImage?>')" accept="*">
            <img  style="margin-left:5px;max-height: 40px;border-radius: .375rem" src="<?=$this->noImage?>" id="<?=$prevImage?>">
        </div>
    </div>
</div>


<input type="hidden" id="totalRows" value="<?=$totalRows?>">
<input type="hidden" id="lastRows" value="<?=$lastRows?>">
<input type="hidden" id="activeRows" value="<?=$currentPages?>">
<input type="hidden" id="countPerPage" value="<?=$countPerPage?>">
<div class="row mt-3">
    <div class="col-xl">
        <div class="float-start">
            Menampilkan Total <?=$no+1?> Dari <?=$totalRows?> Data
        </div>
        <div class="float-end">
            <button class="btn btn-sm <?=$currentPages==1 ? 'btn-secondary' : 'btn-primary'?>" id="prevPage<?=$pages?>" onclick="prevLoad(1)" <?=$currentPages==1 ? 'disabled' : null?>><i class="bx bx-left-arrow"></i></button>
            <button class="btn btn-sm btn-secondary" id="pageHal<?=$pages?>" disabled><?=$currentPages?></button>
            <button class="btn btn-sm <?=$totalRows <= $lastRows ? 'btn-secondary' : 'btn-primary'?>" id="nextPage<?=$pages?>" onclick="nextLoad(1)" <?=$totalRows <= $lastRows ? 'disabled' : null?>><i class="bx bx-right-arrow bx-xs"></i></button>
        </div>
    </div>
</div>


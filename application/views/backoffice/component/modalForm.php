<div class="modal fade" id="modal<?=$selector;?>" data-bs-backdrop="static" tabindex="-1">
    <div class="modal-dialog <?=isset($modalScreen)?$modalScreen:''?>">
        <form class="modal-content form_input" id="form_input">
            <input type="hidden" name="<?=$this->id?>" id="<?=$this->id?>">
            <input type="hidden" name="<?=$this->param?>" id="<?=$this->param?>" value="add">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <?php $this->load->view("backoffice/pages/".$form) ?>
            </div>
            <div class="modal-footer"><?php buttonForm() ?></div>
        </form>
    </div>
</div>
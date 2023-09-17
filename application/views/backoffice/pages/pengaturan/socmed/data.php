<?php $no=$data[$this->no]; if($row!=null):?>
    <?php foreach ($row as $val): $no++;?>
    <div class="col-md-4">
        <div class="card card-action mb-3">
            <div class="card-body">
                <div class="d-flex align-items-start">
                    <div class="d-flex align-items-start">
                        <div class="me-3" style="background-image:url('<?=$this->url.$val[$this->gambar]?>'); background-size:contain;height: 40px;width: 50px;background-repeat:no-repeat;"></div>
                        <div class="me-2">
                            <a href="<?=$val[$this->link]?>" target="_blank"><h6 class="mb-0"><?=$val[$this->nama]?></h6></a>
                            <?=status($val[$this->status])?>
                        </div>
                    </div>
                    <div class="ms-auto">
                        <div class="dropdown">
                            <button type="button" class="btn btn-label-primary btn-icon btn-sm dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li> <a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a></li>
                                <li><a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach;else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i><?=$this->msgNoData?></p></div></div>
<?php endif; ?>

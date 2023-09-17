<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/masonry/masonry.js"></script>
<link rel="stylesheet" href="<?=base_url().'assets/fo/css/'?>flaticon.css">

<?php $no=$data[$this->no]; if($row!=null): ?>
    <div class="row">
        <?php foreach ($row as $val):$no++; ?>
            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card">
                    <div class="card-header flex-grow-0">
                        <div class="d-flex">
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between">
                                <div class="me-2">
                                    <p class="mb-0"><i class="flaticon-consulting"></i> <?=strSubstring($val[$this->judul],30)?></p>
                                </div>
                                <div class="dropdown">
                                    <button type="button" class="btn btn-label-primary btn-icon btn-sm dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
                                    <ul class="dropdown-menu">
                                        <li> <a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a></li>
                                        <li><a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a></li>
                                    </ul>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <img class="img-fluid" src="<?=$this->url.$val[$this->gambar]?>" alt="Card image cap" />
                    <div class="featured-date mt-n3 ms-2 rounded w-px-150 p-1" style="z-index:100!important;">
                        <?=status($val[$this->status])?>
                    </div>
                    <div class="card-body">
                        <p><?=strip_tags(strSubstring($val[$this->deskripsi],100))?></p>
                    </div>
                </div>
            </div>
        <?php endforeach;?>
    </div>
    <?php $this->load->view($this->paginHtml,$data); else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i><?=$this->msgNoData?></p></div></div>
<?php endif; ?>

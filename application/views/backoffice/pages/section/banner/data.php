<script src="<?=$this->url?>assets/bo/assets/vendor/libs/masonry/masonry.js"></script>

<?php $no=$data[$this->no];if($row!=null):?>
    <div class="row ">
        <?php foreach ($row as $index=>$val): $no++; $pageName=str_replace(' ','-',strtolower($val[$this->judul]))."-".$index ?>
            <div class="col-md-4 mb-2">
                <div class="card bg-dark border-0 text-white">
                    <img class="card-img img-fluid" src="<?=$this->url.$val[$this->gambar]?>" alt="Card image" style="height: 220px"/>
                    <div class="card-img-overlay" style="background-color: rgba(0, 0, 0, 0.7)">
                        <h5 class="card-title"><?=$val[$this->judul]?></h5>
                        <p class="card-text"><?=strSubstring($val[$this->deskripsi],200)?></p>
                        <div class="d-flex justify-content-between">
                            <p class="card-text" style="bottom: 0;"><?=status($val[$this->status])?></p>
                            <div class="dropdown">
                                <button class="btn btn-xs btn-icon btn-primary p-0" type="button" id="salesStatsID" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="bx bx-chevron-down"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="salesStatsID">
                                    <a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a>
                                    <a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?php $this->load->view($this->paginHtml,$data) ?>
        </div>
    </div>
<?php else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i> <?=$this->msgNoData?></p></div></div>
<?php endif; ?>

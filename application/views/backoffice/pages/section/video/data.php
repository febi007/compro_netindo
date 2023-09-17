<script src="<?=$this->url?>assets/bo/assets/vendor/libs/masonry/masonry.js"></script>

<?php $no=$data[$this->no];if($row!=null):?>
    <div class="row ">
        <?php foreach ($row as $index=>$val): $no++; $pageName=str_replace(' ','-',strtolower($val[$this->judul]))."-".$index ?>
            <div class="col-md-6 col-lg-4 mb-4">
                <div class="card">
                    <div class="card-header flex-grow-0">
                        <div class="d-flex">
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between">
                                <div class="me-2 w-70" style="width: 80%">
                                    <p class="mb-0"><?=strSubstring($val[$this->judul],50)?></p>
                                </div>
                                <div class="dropdown">
                                    <button class="btn btn-label-primary btn-icon btn-sm dropdown-toggle hide-arrow p-0" type="button" id="salesStatsID" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="bx bx-dots-vertical-rounded"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="eventList">
                                        <a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a>
                                        <a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <img class="img-fluid rounded"  src="<?=$this->url.$val[$this->gambar]?>" alt="Card image cap" />
                    <a href="https://www.youtube.com/watch?v=<?=$val[$this->link]?>" target="_blank">
                        <div class="shadow ext-center" style="position: absolute;z-index: 3;width: 76px;height: 76px;border: 2px solid #fff;border-radius: 50%;top: 55%;left: 50%;transform: translate(-50%,-50%);cursor: pointer;display: flex;justify-content: center;align-items: center;">
                            <i class="bx bx-play bx-lg" style="color: whitesmoke"></i>
                        </div>
                    </a>


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

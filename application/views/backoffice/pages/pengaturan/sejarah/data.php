<script src="<?=base_url().'assets/bo/assets/js/extended-ui-timeline.js'?>"></script>
<?php $no=$data[$this->no]; if($row!=null):?>
    <div class="row overflow-hidden">
        <div class="col-12">
            <ul class="timeline timeline-center mt-3">
                <?php foreach ($row as $key=>$val): $no++;?>
                    <li class="timeline-item mb-md-4 mb-5">
                        <span class="timeline-indicator timeline-indicator-success" data-aos="zoom-in" data-aos-delay="200">
                            <i class="bx bx-line-chart"></i>
                        </span>
                        <div class="timeline-event card p-0" data-aos="<?=$key%2===0?'fade-right':'fade-left'?>">
                            <div class="card-header d-flex justify-content-between  align-items-center">
                                <p class="m-1"><?=$val[$this->deskripsi]?> </p>
                                <div class="meta">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-label-primary btn-icon btn-sm dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
                                        <ul class="dropdown-menu">
                                            <li> <a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a></li>
                                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-event-time"><?=tglIndo($val[$this->tanggal],"month-year","-")?></div>
                        </div>
                        <div class="timeline-event-time">&nbsp;</div>
                    </li>
                <?php endforeach;?>
            </ul>
        </div>
    </div>
<?php $this->load->view($this->paginHtml,$data); else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i><?=$this->msgNoData?></p></div></div>
<?php endif; ?>


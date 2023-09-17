<?php $no=$data[$this->no];if($row!=null):?>
    <?php foreach ($row as $val): $no++; ?>
        <div class="col-lg-12 order-lg-3 col-12 order-4 mb-3">
            <div class="card">
                <div class="row">
                    <div class="col-sm-4 text-center flex align-items-center" style="cursor: pointer" onclick="ubah('<?=$val[$this->id]?>')">
                        <div style="background-attachment:;background-image: url('<?=$this->url.$val[$this->gambar]?>');background-size: cover;background-position:center;background-repeat: no-repeat;width: 100%;height: 100%;border-radius: 7px"></div>
                    </div>
                    <div class="col-sm-8">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <h5 class="card-title" style="cursor: pointer" onclick="ubah('<?=$val[$this->id]?>')"><?=strSubstring($val[$this->judul],50)?></h5>
                                <div class="dropdown">
                                    <button type="button" class="btn btn-label-primary btn-icon btn-sm dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li> <a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a></li>
                                        <li><a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a></li>
                                    </ul>
                                </div>

                            </div>
                            <p style="cursor: pointer" onclick="ubah('<?=$val[$this->id]?>')"><?=strip_tags(strSubstring($val[$this->deskripsi],300))?></p>
                            <span class="badge bg-label-danger"><?=$val[$this->kategori]?></span>
                            <span class="badge bg-label-info"><?=$val[$this->jenis]?></span>
                            <?=status($val[$this->status])?>
                            <p class="mt-2">
                                <?php if((array)count(json_decode($val[$this->tags],true)) > 0): foreach (json_decode($val[$this->tags],true) as $row): ?>
                                    <span class="badge bg-label-dark"><a href="javascript:void(0);"># <?=$row['value']?></a></span>
                                <?php endforeach; endif; ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; $this->load->view($this->paginHtml,$data);else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i> <?=$this->msgNoData?></p></div></div>
<?php endif; ?>

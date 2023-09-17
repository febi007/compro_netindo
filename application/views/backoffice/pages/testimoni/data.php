<?php $no=$data[$this->no]; if($row!=null):?>
    <div class="card">
        <div class="card-body">
            <div class="table-responsive text-nowrap">
                <table class="table table-borderless">
                    <thead>
                    <tr>
                        <th width="1%" class="text-center"><?=$this->no?></th>
                        <th width="1%" class="text-center">#</th>
                        <th><?=$this->nama?></th>
                        <th width="1%"><?=$this->partner?></th>
                        <th width="1%"><?=$this->status?></th>
                    </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    <?php foreach ($row as $val): $no++; $link=isEmpty($val[$this->linkPartner]) ?>
                        <tr>
                            <td width="1%" class="text-center"><?=$no?></td>
                            <td width="1%" class="text-center">
                                <div class="dropdown">
                                    <button type="button" class="btn btn-label-primary btn-icon btn-sm dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
                                    <ul class="dropdown-menu">
                                        <li> <a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a></li>
                                        <li><a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a></li>
                                    </ul>
                                </div>

                            </td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper avatar-group">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<?=$this->url.$val[$this->gambar]?>" class="me-3 rounded-circle"/>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column">
                                        <span class="fw-semibold"><?=$val[$this->nama]?></span>
                                        <small class="text-muted"><?=strSubstring(strip_tags($val[$this->deskripsi]),50)?></small>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper avatar-group">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<?=$this->url.$val[$this->gambarPartner]?>" class="me-3 rounded-circle"/>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column">
                                        <a target="<?php if(!$link) echo "_blank"; ?>" href="<?=!$link?$val[$this->linkPartner]:'javascript:void(0)'?>" class="text-body text-truncate">
                                            <span class="fw-semibold"><?=$val[$this->namaPartner]?></span>
                                        </a>
                                        <small class="text-muted">
                                            <?php
                                            $result=decodeVariant($val[$this->model],$this->model);
                                            $getLastIndex=count($result) - 1;
                                            foreach ($result as $key=>$row):
                                                $and=$row[$this->nama];
                                                if(count($result)>1){
                                                    $and=$row[$this->nama].",";
                                                    if($getLastIndex-1==$key)$and = $row[$this->nama];
                                                    if($getLastIndex == $key)$and = " & ".$row[$this->nama];
                                                }
                                                ?>
                                                <?=$and?>
                                            <?php endforeach; ?>
                                        </small>
                                    </div>
                                </div>


                            </td>
                            <td width="1%" ><?=status($val[$this->status])?></td>
                        </tr>
                        <?php $data[$this->no] = $no-1; endforeach;?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php $this->load->view($this->paginHtml,$data); else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i><?=$this->msgNoData?></p></div></div>
<?php endif; ?>

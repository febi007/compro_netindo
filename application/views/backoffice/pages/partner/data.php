<?php $no=$data[$this->no]; if($row!=null):?>
    <?php foreach ($row as $val): $no++; $link=isEmpty($val[$this->link]) ?>
        <div class="col-md-4">
            <div class="card card-action mb-3">
                <div class="card-body">
                    <div class="d-flex align-items-start">
                        <div class="d-flex align-items-start">
                            <div class="me-3">
                                <img src="<?=$this->url.$val[$this->gambar]?>" alt="Avatar" class="img-fluid" style="max-height: 40px" />
                            </div>
                            <div class="d-flex flex-column me-2">

                                <a target="<?php if(!$link) echo "_blank"; ?>" href="<?=!$link?$val[$this->link]:'javascript:void(0)'?>" class="text-body text-truncate">
                                    <span class="fw-semibold"><?=$val[$this->nama]?></span>
                                </a>
                                <small class="text-muted">
                                    <?php
                                    $result=decodeVariant($val[$this->model],$this->model);
                                    $getLastIndex=count($result) - 1;
                                    if(count($result) < 4){
                                        foreach ($result as $key=>$row):
                                            $and=$row[$this->nama];
                                            if(count($result)>1){
                                                $and=$row[$this->nama].",";
                                                if($getLastIndex-1==$key)$and = $row[$this->nama];
                                                if($getLastIndex == $key)$and = " & ".$row[$this->nama];
                                            }
                                        echo $and;
                                        endforeach;
                                    }
                                    else{
                                        $max=2;
                                        $getSisa=count($result)-$max;
                                        $and='';
                                        for($i=0;$i<$max;$i++){
                                            $row=$result[$i];
                                            $key=$i;
                                            if($max-1==$key) $and .= $row[$this->nama];
                                            else $and.=$row[$this->nama].",";
                                        }
                                        echo $and.' & '.$getSisa.' lainnya';
                                    }

                                    ?>

                                </small>
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
    <?php $data[$this->no] = $no-1; endforeach; $this->load->view($this->paginHtml,$data); else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i><?=$this->msgNoData?></p></div></div>
<?php endif; ?>

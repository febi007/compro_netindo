<?php $no=$data[$this->no]; if($row!=null):?>
    <div class="card">
        <div class="card-body">
            <div class="table-responsive text-nowrap">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th width="1%" class="text-center"><?=$this->no?></th>
                        <th width="1%" class="text-center">#</th>
                        <th><?=$this->nama?></th>
                        <th width="1%"><?=$this->status?></th>
                        <th width="1%"><?=$this->tglBuat?></th>
                    </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    <?php foreach ($row as $val): $no++; ?>
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
                            <td><?=$val[$this->nama]?></td>
                            <td width="1%" ><?=status($val[$this->status])?></td>
                            <td><?=$val[$this->tanggal]?></td>
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

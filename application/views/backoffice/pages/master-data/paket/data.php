<script src="<?=base_url().'assets/bo'?>/assets/vendor/libs/masonry/masonry.js"></script>

<?php $no=$data[$this->no];if($row!=null):?>

    <div class="row" data-masonry='{"percentPosition": true }'>
        <?php foreach ($row as $val): $no++; $isCoret=(int)$val[$this->hargaCoret] > 0; $harga=$isCoret?$val[$this->hargaCoret]:$val[$this->harga]; ?>
            <div class="col-lg-4 mb-4">
                <div class="card border border-primary">
                    <div class="card-body">
                        <div class="pricing-exclusive">
                            <span class="badge bg-label-primary"><?=$val[$this->namaKategori]?></span>
                        </div>
                        <h5 class="card-title fw-bold text-center text-uppercase mt-5"><?=$val[$this->nama]?></h5>
                        <div class="my-4 py-2 text-center" style="background-position:center;background-image: url('<?=$this->url.$val[$this->gambar]?>');background-size: contain;background-repeat: no-repeat;height: 80px">

                        </div>
                        <div class="text-center mb-4">
                            <div class="mb-2 d-flex justify-content-center">
                                <sup class="h5 pricing-currency mt-3 mb-0 me-1">Rp</sup>
                                <h2 class="price-toggle price-yearly fw-bold h1 mb-0"><?=number_format($harga)?></h2>
                                <h2 class="price-toggle price-monthly fw-bold h1 mb-0 d-none"><?=number_format($harga)?></h2>
                                <?php if($isCoret): ?>
                                    <sub class="h5 pricing-duration mt-auto mb-2 " style="text-decoration: line-through;margin-left: 5px"><?=number_format($val[$this->harga])?></sub>
                                <?php endif; ?>
                            </div>

                            <h5 class="card-title fw-bold text-center text-uppercase mt-3"><?=$val[$this->deskripsi]?> </h5>
                        </div>
                        <ul class="ps-3 pt-4 pb-2 list-unstyled">
                            <?php if((array)count(json_decode($val[$this->varian],true)) > 0): foreach (json_decode($val[$this->varian],true) as $row): ?>
                                <li class="mb-2"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span> <?=$row['value']?></li>
                            <?php endforeach; endif; ?>
                        </ul>
                        <button type="button" class="btn btn-primary w-100 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Pilihan</button>
                        <ul class="dropdown-menu">
                            <li><a href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')" class="dropdown-item d-flex align-items-center"><i class="bx bx-edit-alt me-2 scaleX-n1-rtl"></i>Ubah</a></li>
                            <li><a href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')" class="dropdown-item d-flex align-items-center"><i class="bx bx-trash me-2 scaleX-n1-rtl"></i>Hapus</a></li>
                            <?php if(strFind("SOFTWARE",$val[$this->namaKategori])): ?>
                                <li><a href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')" class="dropdown-item d-flex align-items-center"><i class="bx bx-layout me-2 scaleX-n1-rtl"></i>Lihat Produk</a></li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        <?php endforeach;?>
    </div>
    <?php  $this->load->view($this->paginHtml,$data);else:?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i> <?=$this->msgNoData?></p></div></div>
<?php endif; ?>

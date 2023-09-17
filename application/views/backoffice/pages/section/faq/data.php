<script>
    var pushActiv=[];
    var cek = <?=json_encode($row)?>;
    if(cek.length > 0){
        var row             = cek[0];
        var sessId          = getStorage(strId);
        var sessNama        = getStorage(strNama);
        var sessParamId     = getStorage(strParamId);
        var sessParamJudul  = getStorage(strParamJudul);
        !handleIsEmpty(sessNama)?pageActive('0',row[strJudul]+"-0"):pageActive(sessId,sessNama);
        !handleIsEmpty(sessParamId) ? setId(row[strId]) : setId(sessParamId)
        !handleIsEmpty(sessParamJudul) ? setJudul(row[strJudul]) : setJudul(sessParamJudul)
    }


    function pageActive(id,name){
        id      = id.replaceAll(" ","-").toLowerCase();
        name    = name.replaceAll(" ","-").toLowerCase();
        setStorage(strId,id);
        setStorage(strNama,name);
        pushActiv.push({[strId]:name});
        const res = filterArray(pushActiv);
        if(res.length>0){
            $("#list-"+name+"-list").addClass(strActive);
            $(".list-"+name).addClass(strActive);
            $(".list-"+name).addClass(strShow);
            for(let i=0;i<res.length;i++){
                if(name!==res[i].id){
                    $("#list-"+res[i].id+"-list").removeClass(strActive);
                    $(".list-"+res[i].id).removeClass(strActive);
                    $(".list-"+res[i].id).removeClass(strShow);
                }
            }
        }
    }
    function setId(id) {
        attrId(strParamId).val(id);
        setStorage(strParamId,id);
    }
    function setAction(id) {
        var paramId=attrId(strParamId).val();
        id==='ubah' ? ubah(paramId):hapus(paramId)
    }
    function setJudul(judul) {
        attrId(strNama).html(judul);
        setStorage(strParamJudul,judul);
    }
</script>

<?php $no=$data[$this->no];if($row!=null):?>
    <div class="card overflow-hidden">
        <div class="pricing-plans pb-sm-5 rounded-top">
            <div class="container py-4">
                <div class="row">
                    <div class="col-md-4">
                        <?php foreach ($row as $index=>$val): $no++; $pageName=str_replace(' ','-',strtolower($val[$this->judul]))."-".$index ?>
                            <div class="row mb-3 ">
                                <div class="col-12 mb-md-0">
                                    <div class="list-group">
                                        <a onclick="pageActive('<?=$index?>','<?=$pageName?>');setId('<?=$val[$this->id]?>');setJudul('<?=$val[$this->judul]?>')" class="list-group-item list-group-item-action btn btn-outline-secondary" id="list-<?=$pageName?>-list" href="javascript:void(0)" data-bs-toggle="list"><?=$val[$this->judul]?></a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <div class="col-md-8 d-flex justify-content-between">
                        <div>
                            <div class="d-flex mb-3 gap-3">
                                <div>
                                <span class="badge bg-label-primary rounded-2">
                                  <i class="bx bx-question-mark bx-xs"></i>
                                </span>
                                </div>
                                <div>
                                    <h4 class="mb-0">
                                        <span class="align-middle" id="nama">Payment</span>
                                    </h4>
                                </div>
                            </div>
                            <?php foreach ($row as $index=>$val): $pageName=str_replace(' ','-',strtolower($val[$this->judul]))."-".$index ?>
                                <div class="tab-content p-0">
                                    <?php foreach (json_decode($val[$this->deskripsi],true) as $key=>$row): ?>
                                        <div class="tab-pane fade list-<?=$pageName?>" id="list-<?=$pageName?>">
                                            <h5><?=$row[$this->pertanyaan]?></h5>
                                            <?=$row[$this->jawaban]?>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <div>
                            <input type="hidden" id="paramId">
                            <div class="dropdown" style="float: right;">
                                <button type="button" class="btn btn-label-primary btn-icon btn-sm dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
                                <ul class="dropdown-menu">
                                    <li> <a class="dropdown-item" href="javascript:void(0);" onclick="setAction('ubah')"><i class="bx bx-edit-alt me-2"></i> Ubah</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);" onclick="setAction('hapus')"><i class="bx bx-trash me-2"></i> Hapus</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12">

        <?php $this->load->view($this->paginHtml,$data) ?>

    </div>
<?php else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i> <?=$this->msgNoData?></p></div></div>
<?php endif; ?>

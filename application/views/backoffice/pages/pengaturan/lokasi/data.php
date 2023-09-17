<?php $no=$data[$this->no]; if($row!=null):?>
    <?php foreach ($row as $val): $no++;?>
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-header">
                    <div class="d-flex justify-content-between">
                        <span><i class="bx bx-map-pin"></i> <?=$val[$this->nama]?></span>
                        <div class="dropdown">
                            <button type="button" class="btn btn-label-primary btn-icon btn-xs dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded bx-xs"></i></button>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li><a class="dropdown-item" href="javascript:void(0);" onclick="ubah('<?=$val[$this->id]?>')"><i class="bx bx-edit-alt me-2"></i> Ubah</a></li>
                                <li><a class="dropdown-item" href="javascript:void(0);" onclick="hapus('<?=$val[$this->id]?>')"><i class="bx bx-trash me-2"></i> Hapus</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card-header"><div style="height: 208px;width: 100%;border-radius: 7px;" id="map-lokasi-<?=$val["id"]?>"></div></div>
                <div class="card-body"><p><?=$val[$this->alamat]?></p></div>
            </div>
        </div>
    <?php endforeach;else: ?>
    <div class="row"><div class="col-md-12"><p><i class="bx bx-info-circle"></i><?=$this->msgNoData?></p></div></div>
<?php endif; ?>



<script>
    $(document).ready(function(){
        console.log("bus");
        var row = <?=json_encode($row)?>;
        row.forEach(function(res){
            initMap(18,parseFloat(res["latitude"]),parseFloat(res["longitude"]),"map-lokasi-"+res["id"],"edit",false)
        })
    })

    attrId("pac-input").keypress(function (e) {
        if (e.keyCode === 13) {
            return false;
        }
    });

</script>
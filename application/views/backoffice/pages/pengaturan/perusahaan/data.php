<style>
    #map {height: 302px;width: 100%;border-radius: 7px;}
    .pac-container{border-radius: 7px;}
</style>
<div class="row">
    <div class="col-md-5">
        <div class="row">
            <input type="hidden" name="longitude" id="longitude">
            <input type="hidden" name="latitude" id="latitude">
            <input type="hidden" name="param" id="param" value="edit">
            <input type="hidden" name="id" id="id">
            <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->nama])?></div>
            <div class="col-md-12 mb-3"><?php inputForm(["label"=>$this->email])?></div>
            <?php $dataImage = [
                ["name"=>"Logo","index"=>0,"txtHelp"=>"","link"=>""],
                ["name"=>"favicon","index"=>1,"txtHelp"=>"generate favicon","link"=>"https://favicon.io/favicon-converter/#generate-from-image"]
            ]; for($i=0;$i<count($dataImage);$i++): ?>
                <div class="col-md-12 mb-3"><?php inputImage(["dataImage"=>$dataImage[$i]]) ?></div>
            <?php endfor; ?>
        </div>
    </div>
    <div class="col-md-7">
        <div class="row">
            <div class="col-md-12 mb-3"><?php inputTag(["label"=>$this->seo]) ?></div>
            <div class="col-md-12">
                <?php $label=$this->telepon; ?>
                <div class="d-flex justify-content-between">
                    <label for="nameBackdrop" class="form-label"><?=ucwords($label)?></label>
                    <label for="nameBackdrop" class="form-label"><a href="javascript:void(0)" onclick="handleAction('add')">Tambah</a></label>
                </div>
                <div id="wrapper-container"></div>
            </div>
        </div>
    </div>
</div>



<script>
    var noRow=0;
    var dataRow=[];
    var heightMap=304;
    var numberHeight=47;
    var data =  <?=json_encode($row)?>;
    var seoPerusahaan;
    document.querySelector(".tag").addEventListener('change', function(e){$(this).valid()});
    setAttribut();
    var dataTelepon;
    function setAttribut(){
        setSite(data);
        getSite();
        seoPerusahaan = setTags(".tag",JSON.parse(data.seo));
        var telepon=JSON.parse(data.telepon);
        var htmlTelepon="";
        var dataAttrId=["id","latitude","longitude","nama","email"];
        dataAttrId.forEach(function(row){attrId(row).val(data[row]);});
        var dataImage=data.gambar.split(",");
        dataImage.forEach(function(img,key){
            console.log(img);
            console.log(key);
            setFileImage(img,"pengaturan",key);
        });
        dataTelepon=telepon;
        telepon.forEach(function(res,key){
            noRow=key+1;
            dataRow.push(`data${key+1}`);
            htmlTelepon+=templateContainer();
            timeOut(function(){
                attrId(`telepon-${key+1}`).val(res);
            })
        });
        attrId("wrapper-container").html(htmlTelepon);
        timeOut(function(){
            attrId(`btnRow1`).prop("disabled", true);
            setTagify(seoPerusahaan,data.seo);
        })
    }
    function handleAction(param,idx){
        if(param==='add'){
            noRow+=1;
            dataRow.push(`data${noRow}`);
            timeOut(function(){
                if(dataRow.length>1){
                    heightMap=heightMap+numberHeight;
                    attrId("map").height(`${heightMap}`);
                }
                var html = templateContainer();
                attrId("wrapper-container").append(html);
                timeOut(function(){
                    $('#result-sub').animate({scrollTop: $("#telepon-"+noRow).offset().top}, 1000);
                    if(dataTelepon[noRow-1] !== undefined){
                        attrId(`telepon-${noRow}`).val(dataTelepon[noRow-1]);
                    }
                })

            });
        }
        else{
            noRow=noRow-1;
            var index = dataRow.indexOf(dataRow[noRow-1]);
            if (index !== -1) dataRow.splice(index, 1);
            timeOut(function(){
                heightMap=heightMap-numberHeight;
                attrId("map").height(`${heightMap}`);
                attrId(`wrapper-row-${idx}`).remove();
                $('#result-sub').animate({scrollTop: $("#telepon-"+noRow).offset().top}, 1000);

            });
        }
    }
    function templateContainer(){
        var html="";
        html+='<div class="input-group mb-2" id="wrapper-row-'+noRow+'">';
        html+='<input type="text" name="telepon[]" id="telepon-'+noRow+'" class="form-control" placeholder="masukan no telepon">';
        html+='<button class="btn btn-outline-primary" type="button" id="btnRow'+noRow+'" onclick="handleAction(\'del\',\''+noRow+'\')"><i class="bx bx-trash"></i></button>';
        html+='</div>';
        return html;
    }
    attrId("pac-input").keypress(function (e) {
        if (e.keyCode === 13) {
            return false;
        }
    });

</script>
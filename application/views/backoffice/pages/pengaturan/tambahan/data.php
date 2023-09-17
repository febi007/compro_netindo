<div id="deskripsi"></div>
<script>
    data        = <?=json_encode($row)?>;
    quillPrivacy = setCkeditor("deskripsi");
    if(data[strGambar]!=="") setFileImage(data[strGambar],strSection);
    setTimeout(function(){quillPrivacy.focus();},300);
    setQuill(quillPrivacy,data["deskripsi"]);
</script>

function setSite(data){
    localStorage.setItem('site', JSON.stringify(data));
}

function getSite(){
    var retrievedObject = localStorage.getItem('site');
    var res     =JSON.parse(retrievedObject);
    var img     = res.gambar.split(",");
    var nama    = res.nama;
    if(nama.length > 10) nama = nama.substr(0,10)+" ...";
    attrClass("titleSite").html(toCammelCase(nama));
    attrClass("titleBar").html("Backoffice - "+toCammelCase(res.nama));
    attrId("logoSite").attr('src', base_assets+img[0]);
    attrClass("iconSite").attr('href', base_assets+img[1]);
}

function toCammelCase(str){
    return (str + '').replace(/^([a-z])|\s+([a-z])/g, function ($1) {
        return $1.toUpperCase();
    });
}

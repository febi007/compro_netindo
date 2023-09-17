

<nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
    <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
        <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
            <i class="bx bx-menu bx-sm"></i>
        </a>
    </div>


    <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
        <!-- Search -->
        <div class="navbar-nav align-items-center">
            <div class="nav-item navbar-search-wrapper mb-0">
                <?php $uriParent=$this->uri->segment(2);$uriChild=$this->uri->segment(3);?>
                <span id="folderSite"></span>
                <span id="methodSite"></span>
            </div>
        </div>
        <!-- /Search -->
        <ul class="navbar-nav flex-row align-items-center ms-auto">
            <!-- Style Switcher -->
            <li class="nav-item me-2 me-xl-0">
                <a class="nav-link style-switcher-toggle hide-arrow" href="javascript:void(0);">
                    <i class='bx bx-sm'></i>
                </a>
            </li>
            <li class="nav-item me-2 me-xl-0">
                <a data-bs-toggle="tooltip" data-bs-offset="0,4" data-bs-placement="bottom" data-bs-html="true" title="<i class='tf-icons bx bx-rotate-left scaleX-n1-rtl bx-sm' ></i> <span>Refresh data</span>" class="nav-link " href="javascript:void(0);" onclick="reloadPage()">
                    <i class='tf-icons bx bx-rotate-left scaleX-n1-rtl bx-sm'></i>
                </a>
            </li>
        </ul>
    </div>


    <!-- Search Small Screens -->
    <div class="navbar-search-wrapper search-input-wrapper  d-none">
        <input type="text" class="form-control search-input container-xxl border-0" placeholder="Search..." aria-label="Search...">
        <i class="bx bx-x bx-sm search-toggler cursor-pointer"></i>
    </div>


</nav>

<script>
    function reloadPage() {

        var strogeId=getStorage(`dataIdEdit_${sessionPageActive}`);
        var dataEditId=strogeId===null||strogeId===undefined?[]:JSON.parse(getStorage(`dataIdEdit_${sessionPageActive}`));
        var page=pageActiveName;
        var folder = attrId("folderSite").text().replaceAll(" ","-").toLowerCase();
        var url = folder===page ? `${page}/${strRead}`:`${folder}/${page}/${strRead}`;
        var checkPengaturan=strSearch(window.location.href,"pengaturan");
        var baseUrlEdit="";
        if(checkPengaturan){
            url = urlActive;
            localCache.remove(base_url+urlActive);
        }
        else{
            var totalRows = isNumber(attrId(strTotalRows).val());
            if(dataEditId.length>0){
                baseUrlEdit =  url.replaceAll("read","edit");
                for(let i=0;i<dataEditId.length;i++) localCache.remove(`${base_url}${baseUrlEdit}${dataEditId[i]["id"]}`);
            }
            var anyField=attrId(`${strAny}${pageActiveName}`).val();
            for(let i=0;i<totalRows;i++) localCache.remove(`${base_url}${url}${i+1}${anyField!==""?'?any='+anyField:''}`);
        }
        if(!checkPengaturan) url+="1";
        ajaxView(`${url}`,null,(res)=>{
            if(dataEditId.length>0)rmStorage(`dataIdEdit_${sessionPageActive}`);
            this["dataEdit_"+sessionPageActive]=[];
            checkPengaturan?attrId("result-sub").html(res):resultContent.html(res);
        });
    }
</script>

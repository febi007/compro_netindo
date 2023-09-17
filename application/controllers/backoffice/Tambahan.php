<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 3/21/2022
 * Time: 9:48 PM
 */

class Tambahan extends MY_Controller
{

    public function getView($page){
        $data[$this->title] = "";
        $data["controller"]  = $page;
        return view("backoffice/pages/pengaturan/tambahan/index",$data);
    }


    public function read($page){
        $row                    = $this->M_crud->get_data("section",'*',"judul='$page'");
        $data[$this->pages]     = $page;
        return view("backoffice/pages/pengaturan/tambahan/data",['data'=>$data,'row'=>$row]);
    }

    public function simpan($page){
        $data[$this->deskripsi]  = _post($this->deskripsi);
        $configUpload       = upload("section",_post($this->fileUploaded),$_FILES[$this->fileUpload]);
        if($configUpload!=null)$data[$this->gambar]=$configUpload;
        $response[$this->status] = createData("section",$data,[$this->param=>"update",$this->id=>_post($this->id)]);
        echo json_encode($response);
    }
}
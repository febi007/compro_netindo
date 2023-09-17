<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 3/21/2022
 * Time: 9:48 PM
 */

class Perusahaan extends MY_Controller
{
    public function getView(){
        $data[$this->title] = "";
        return view("backoffice/pages/pengaturan/perusahaan/index",$data);
    }

    public function read(){
        $row                    = $this->M_crud->get_data($this->pengaturan,'*');
        $data[$this->pages]     = $this->perusahaan;
        return view("backoffice/pages/pengaturan/perusahaan/data",['data'=>$data,'row'=>$row]);
    }


    public function simpan(){
        $seo=[];
        foreach (json_decode(_post($this->seo),true) as $row){
            array_push($seo,$row);
        }
        $data[$this->seo]        = json_encode($seo);
        $data[$this->nama]  = _post($this->nama);
        $data[$this->email]  = _post($this->email);
        $data[$this->alamat]  = _post($this->alamat);
        $data[$this->longitude]  = _post($this->longitude);
        $data[$this->latitude]  = _post($this->latitude);
        $data[$this->telepon] = json_encode(_post($this->telepon)?_post($this->telepon):[]);
        $configUpload       = upload($this->pengaturan,_post($this->fileUploaded),$_FILES[$this->fileUpload]);
        if($configUpload!=null)$data[$this->gambar]=$configUpload;

        $response[$this->status] = createData($this->pengaturan,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
        echo json_encode($response);
    }
}
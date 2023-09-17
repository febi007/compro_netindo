<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Daftar extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->pathFile = $this->folder.$this->informasi.'/';
        $this->indexFile= $this->pathFile.$this->list.'/'.$this->index;
        $this->dataFile = $this->pathFile.$this->list.'/data';
        $this->tbl      = $this->informasi;
        $this->baseView = $this->informasi.'/'.$this->list;
    }

    public function index(){
        $data[$this->title] = $this->pathFile;
        $data[$this->page]  = $this->indexFile;
        view($this->layout,$data);
    }



    public function getView(){
        $data[$this->title] = $this->pathFile;
        $data["baseView"]   = $this->baseView;
        return view($this->indexFile,$data);
    }

    public function read($pages=1){
        $limit                  = $this->limit;
        $uriSegment             = $this->segment;
        $orLike                 = $this->judul." LIKE '%"._get($this->any)."%' ".handleOr([$this->tags,$this->deskripsi,$this->judul,$this->kategori,$this->jenis],_get($this->any));
        $where                  = _get($this->any) && _get($this->any) != null ? $orLike : '';
        $pagin                  = pagin($this->viewInformasi,$this->id,$where,$limit,$uriSegment);
        $row                    = $this->M_crud->read_data($this->viewInformasi,'*',$where,$this->id.' desc',null,$pagin[$this->perPage],$pagin[$this->start]);
        $data[$this->totalRows]      = (int)$pagin[$this->totalRows];
        $data[$this->lastRows]       = (int)$pages * (int)$pagin[$this->perPage];
        $data[$this->currentPages]   = (int)$pages;
        $data[$this->countPerPage]   = count($row);
        $data[$this->no]             = ($pages*$limit)-$limit;
        $data[$this->pages]          = $this->list;
        return view($this->dataFile,['data'=>$data,'row'=>$row]);
    }

    public function simpan(){
        $tags=[];
        foreach (json_decode(_post($this->tags),true) as $row){
            array_push($tags,$row);
        }
        $data[$this->judul]     = _post($this->judul);
        $data[$this->kategori]  = _post($this->kategori);
        $data[$this->jenis]     = _post($this->jenis);
        $data[$this->status]    = _post($this->status);
        $data[$this->deskripsi] = _post($this->deskripsi,false);
        $data[$this->slug]      = _slug($this->judul);
        $data[$this->tags]      = json_encode($tags);
        $configUpload=upload($this->tbl,_post($this->fileUploaded),$_FILES[$this->fileUpload]);
        if($configUpload!=null)$data[$this->gambar]=$configUpload;
        $response[$this->status] = createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=> _post($this->id)]);
        echo json_encode($response);
    }

    public function edit($id){
        $data=editData($this->tbl, $id);
        echo json_encode($data);
    }
    public function hapus(){
        $get_id     = $this->M_crud->get_data($this->tbl,'*',$this->id."='" .  _post($this->id) . "'");
        $resImage   = explode(",",$get_id[$this->gambar]);
        $where      = [$this->id =>  _post($this->id)];
        $result     = $this->M_crud->delete_data($this->tbl, $where);
        if($result)  foreach ($resImage as $val){unlink($val);}
        echo json_encode([$this->status => $result]);

    }

    public function check_column(){
        echo existColumn(["col"=>$this->judul,"table"=>$this->tbl,"action"=>$this->param]);
    }
    public function getDataTag(){
        echo json_encode(getTags($this->tbl,"tags"));
    }
}
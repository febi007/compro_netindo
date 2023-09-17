<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Banner extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->pathFile     = $this->pathSection;
        $this->tbl          = $this->banner;
        $this->indexFile    = $this->pathFile.$this->tbl.'/'.$this->index;
        $this->dataFile     = $this->pathFile.$this->tbl.'/data';
        $this->baseView = $this->section."/".$this->tbl;
    }

    public function index(){
        $data[$this->title] = $this->pathFile;
        $data[$this->page]  = $this->indexFile;
        view($this->layout,$data);
    }

    public function getView(){
        $data["baseView"]   = $this->baseView;
        $data[$this->title] = $this->pathFile;
        return view($this->indexFile,$data);
    }

    public function read($pages=1){
        $limit                  = 10;
        $uriSegment             = $this->segment;
        $orLike                 = $this->judul." LIKE '%"._get($this->any)."%' ".handleOr([$this->judul,$this->deskripsi],_get($this->any));
        $where                  = _get($this->any) && _get($this->any) != null ? $orLike : '';
        $pagin                  = pagin($this->tbl,$this->id,$where,$limit,$uriSegment);
        $row                    = $this->M_crud->read_data($this->tbl,'*',$where,$this->id.' asc',null,$pagin[$this->perPage],$pagin[$this->start]);
        $data[$this->totalRows]      = (int)$pagin[$this->totalRows];
        $data[$this->lastRows]       = (int)$pages * (int)$pagin[$this->perPage];
        $data[$this->currentPages]   = (int)$pages;
        $data[$this->countPerPage]   = count($row);
        $data[$this->no]             = ($pages*$limit)-$limit;
        $data[$this->pages]          = $this->tbl;
        return view($this->dataFile,['data'=>$data,'row'=>$row]);
    }

    public function simpan(){

        $data[$this->judul]     = _post($this->judul);
        $data[$this->deskripsi] = _post($this->deskripsi);
        $data[$this->status]    = _post($this->status);
        $data[$this->link]      = _post($this->link);
        $configUpload           = upload($this->tbl,_post($this->fileUploaded),$_FILES[$this->fileUpload]);
        if($configUpload!=null)$data[$this->gambar]=$configUpload;
        $response[$this->status] = createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
        echo json_encode($response);
    }

    public function edit($id){
        $data=editData($this->tbl,$id);
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
}
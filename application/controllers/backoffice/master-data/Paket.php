<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Paket extends My_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->tbl      = $this->paket;
        $this->pathFile = $this->folder.$this->masterData.'/';
        $this->indexFile= $this->pathFile.$this->tbl.'/'.$this->index;
        $this->dataFile = $this->pathFile.$this->tbl.'/data';
        $this->baseView = $this->masterData.'/'.$this->tbl;
    }

    public function index(){
        $data[$this->title] = $this->pathFile;
        $data[$this->page]  = $this->indexFile;
        view($this->layout,$data);
    }

    public function getView(){
        $data["baseView"] = $this->baseView;
        $data[$this->title] = $this->pathFile;
        return view($this->indexFile,$data);
    }
    public function read($pages=1){
        $limit                  = 9;
        $uriSegment             = $this->segment;
        $orLike                 = $this->nama." LIKE '%"._get($this->any)."%' ".handleOr([$this->deskripsi,$this->nama,$this->kategori,$this->varian],_get($this->any));
        $where                  = _get($this->any) && _get($this->any) != null ? $orLike : '';
        $pagin                  = pagin($this->viewPaket,$this->id,$where,$limit,$uriSegment);
        $row                    = $this->M_crud->read_data($this->viewPaket,'*',$where,$this->id.' desc',null,$pagin[$this->perPage],$pagin[$this->start]);
        $data[$this->totalRows]      = (int)$pagin[$this->totalRows];
        $data[$this->lastRows]       = (int)$pages * (int)$pagin[$this->perPage];
        $data[$this->currentPages]   = (int)$pages;
        $data[$this->countPerPage]   = count($row);
        $data[$this->no]             = ($pages*$limit)-$limit;
        $data[$this->pages]          = $this->paket;
        return view($this->dataFile,['data'=>$data,'row'=>$row]);
    }
    public function simpan(){
        $varian=[];
        foreach (json_decode(_post($this->varian),true) as $row){
            array_push($varian,$row);
        }
        $data[$this->model]        = json_encode(_post($this->model)?_post($this->model):[]);
        $data[$this->nama]          = _post($this->nama);
        $data[$this->deskripsi]     = _post($this->deskripsi);
        $data[$this->harga]         = _rplc(',','',_post($this->harga));
        $data[$this->hargaCoret]    = _rplc(',','',_post($this->hargaCoret));
        $data[$this->kategori]      = _post($this->kategori);
        $data[$this->status]        = _post($this->status);
        $data[$this->varian]        = json_encode($varian);
        $configUpload=upload($this->tbl,_post($this->fileUploaded),$_FILES[$this->fileUpload]);
        if($configUpload!=null)$data[$this->gambar]=$configUpload;
        $response[$this->status]=createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
        echo json_encode($response);
    }

    public function edit($id){
        $data=editData($this->tbl,$id);
        echo json_encode($data);
    }
    public function hapus(){
        $get_id     = $this->M_crud->get_data($this->tbl,$this->gambar,$this->id."='" . _post($this->id) . "'");
        $resImage   = explode(",",$get_id[$this->gambar]);
        $where      = [$this->id => _post($this->id)];
        $result     = $this->M_crud->delete_data($this->tbl, $where);
        if($result)foreach ($resImage as $val){unlink($val);}
        echo json_encode([$this->status => $result]);

    }
    public function check_column(){
        echo existColumn(["col"=>$this->nama,"table"=>$this->tbl,"action"=>$this->param]);
    }

    public function getDataTag(){
        $array2=getTags($this->tbl,$this->varian);
        echo json_encode($array2);
    }

}
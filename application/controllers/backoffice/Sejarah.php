<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 3/21/2022
 * Time: 9:48 PM
 */

class Sejarah extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->tbl      = $this->sejarah;
        $this->pathFile = $this->pathPengaturan;
        $this->indexFile= $this->pathFile.$this->tbl.'/'.$this->index;
        $this->dataFile = $this->pathFile.$this->tbl.'/'.'data';
        $this->baseView = $this->pengaturan.'/'.$this->tbl;
    }

    public function getView(){
        $data[$this->title] = $this->pathFile;
        $data["baseView"]  = $this->baseView;
        return view($this->indexFile,$data);
    }

    public function read($pages=1){
        $limit                  = 20;
        $uriSegment             = 4;
        $orLike                 = $this->deskripsi." LIKE '%"._get($this->any)."%' ".handleOr(null,_get($this->any));
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
        $data[$this->deskripsi]  = _post($this->deskripsi);
        $data[$this->tanggal]  = _post("waktu");
        $response[$this->status] = createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
        echo json_encode($response);
    }
    public function edit($id){
        $data=editData($this->tbl,$id);
        echo json_encode($data);
    }
    public function hapus(){
        $where      = [$this->id => _post($this->id)];
        $result     = $this->M_crud->delete_data($this->tbl, $where);
        echo json_encode([$this->status => $result]);
    }
    public function check_column(){
        echo existColumn(["col"=>$this->nama,"table"=>$this->tbl,"action"=>$this->param]);
    }
}
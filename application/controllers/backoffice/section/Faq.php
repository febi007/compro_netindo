<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Faq extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->pathFile = $this->folder.$this->section.'/';
        $this->tbl      = $this->faq;
        $this->indexFile= $this->pathFile.$this->tbl.'/'.$this->index;
        $this->dataFile = $this->pathFile.$this->tbl.'/data';
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
        $row                    = $this->M_crud->read_data($this->tbl,'*',$where,$this->id.' desc',null,$pagin[$this->perPage],$pagin[$this->start]);
        $data[$this->totalRows]      = (int)$pagin[$this->totalRows];
        $data[$this->lastRows]       = (int)$pages * (int)$pagin[$this->perPage];
        $data[$this->currentPages]   = (int)$pages;
        $data[$this->countPerPage]   = count($row);
        $data[$this->no]             = ($pages*$limit)-$limit;
        $data[$this->pages]          = $this->tbl;
        return view($this->dataFile,['data'=>$data,'row'=>$row]);
    }

    public function simpan(){
        $deskripsi=[];
        for($i=1;$i<(int)$_POST["no"]+1;$i++){
            $deskripsi[]=[
                $this->jawaban => $_POST["jawaban_".$i],
                $this->pertanyaan      => $_POST["pertanyaan_".$i]
            ];
        }
        $data[$this->judul]         = _rplc("?","",_post($this->judul));
        $data[$this->deskripsi]          = json_encode($deskripsi);
        $response[$this->status]    = createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
        echo json_encode($response);
    }

    public function edit($id){
        $data=editData($this->tbl,$id);
        echo json_encode($data);
    }

    public function hapus(){
        $where      = [$this->id => _post($this->id)];
        $response   = $this->M_crud->delete_data($this->tbl, $where);
        echo json_encode([$this->status => $response]);
    }

    public function check_column(){
        echo existColumn(["col"=>$this->judul,"table"=>$this->tbl,"action"=>$this->param]);
    }
}
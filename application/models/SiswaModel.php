<?php
 class SiswaModel extends CI_Model{

	function __construct()
	{
		parent::__construct();
	}
 	
 	function get(){
 		return $this->db->get('tb_siswa');
 	}

 	function findBy($id){
 		$this->db->where($id);
 		return $this->db->get('tb_siswa');
 	}

 	function add($data){
 		return $this->db->insert('tb_siswa',$data);
 	}
 	
 	function update($id,$data){
 		$this->db->where($id);
 		return $this->db->update('tb_siswa',$data);
 	}

 	function delete($id){
 		$this->db->where($id);
 		return $this->db->delete('tb_siswa');
 	}


	// additional
	public function cekUrut()
	{
		$query = $this->db->query("SELECT MAX(id) as urut_kode from tb_siswa");
		$hasil = $query->row();
		// print_r($hasil->urut_kode); exit();
		return $hasil->urut_kode;
	}
 }

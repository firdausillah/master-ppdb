<?php
 class SiswaModel extends CI_Model{

	function __construct()
	{
		parent::__construct();
	}
 	
 	function get(){
 		return $this->db->get('tb_siswa');
 	}

	function joinJurusan($id){
		$this->db->select('*');
		$this->db->from('tb_siswa');
		$this->db->join('tb_jurusan', 'tb_siswa.id = tb_siswa.id_jurusan', 'left');
		$this->db->where(['tb_siswa.id' => $id]);
		return $this->db->get();
	}

 	function findBy($id){
 		$this->db->where(['id' => $id]);
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

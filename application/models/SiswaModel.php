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
		$this->db->join('tb_jurusan', 'tb_jurusan.id = tb_siswa.id_jurusan', 'left');
		$this->db->where(['tb_siswa.id' => $id]);
		return $this->db->get();
	}

	function siswaJurusan(){
		$this->db->select('*');
		$this->db->from('tb_siswa');
		$this->db->join('tb_jurusan', 'tb_jurusan.id = tb_siswa.id_jurusan', 'right');
		return $this->db->get();
	}

	function joinPembawa(){
		// $this->db->select('tb_siswa.id as id ', 'kode_pendaftaran', 'nama', 'status', 'sekolah_asal', 'nama_lengkap as pembawa');
		$this->db->select('tb_siswa.id as id, kode_pendaftaran, nama, status, nama_asal_sekolah, nama_lengkap as pembawa');
		$this->db->from('tb_siswa');
		$this->db->join('tb_pembawa', 'tb_pembawa.id = tb_siswa.id_pembawa', 'left');
		$this->db->join('tb_asal_sekolah', 'tb_asal_sekolah.id = tb_siswa.sekolah_asal', 'left');
		return $this->db->get();
	}

	function joinPembawaSudah(){
		// $this->db->select('tb_siswa.id as id ', 'kode_pendaftaran', 'nama', 'status', 'sekolah_asal', 'nama_lengkap as pembawa');
		$this->db->select('tb_siswa.id as id, kode_pendaftaran, nama, status, nama_asal_sekolah, nama_lengkap as pembawa');
		$this->db->from('tb_siswa');
		$this->db->join('tb_pembawa', 'tb_pembawa.id = tb_siswa.id_pembawa', 'left');
		$this->db->join('tb_asal_sekolah', 'tb_asal_sekolah.id = tb_siswa.sekolah_asal', 'left');
		$this->db->where(['status' => 'Sudah Verifikasi']);
		return $this->db->get();
	}

	function joinPembawaBelum(){
		// $this->db->select('tb_siswa.id as id ', 'kode_pendaftaran', 'nama', 'status', 'sekolah_asal', 'nama_lengkap as pembawa');
		$this->db->select('tb_siswa.id as id, kode_pendaftaran, nama, status, nama_asal_sekolah, nama_lengkap as pembawa');
		$this->db->from('tb_siswa');
		$this->db->join('tb_pembawa', 'tb_pembawa.id = tb_siswa.id_pembawa', 'left');
		$this->db->join('tb_asal_sekolah', 'tb_asal_sekolah.id = tb_siswa.sekolah_asal', 'left');
		$this->db->where(['status' => 'Belum Verifikasi'] );
		$this->db->or_where(['status' => ''] );
		return $this->db->get();
	}

	function joinJurusanKode($kode){
		$this->db->select('*');
		$this->db->from('tb_siswa');
		$this->db->join('tb_jurusan', 'tb_jurusan.id = tb_siswa.id_jurusan', 'right');
		$this->db->join('tb_asal_sekolah', 'tb_asal_sekolah.id = tb_siswa.sekolah_asal', 'left');
		$this->db->where(['tb_siswa.kode_pendaftaran' => $kode]);
		return $this->db->get();
	}

 	function findBy($id){
 		$this->db->where(['id' => $id]);
 		return $this->db->get('tb_siswa');
 	}

 	function findByJurusan($id){
 		$this->db->where(['id_jurusan' => $id]);
 		return $this->db->get('tb_siswa');
 	}

 	function findByGen($id){
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

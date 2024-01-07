<?php
class OsisModel extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}

	function get()
	{
		// $this->db->order_by('urutan', 'ASC');
		return $this->db->get('tb_osis');
	}

	function joinJurusan()
	{
		$this->db->select('tb_osis.id as id, tb_osis.nama as nama, tb_osis.tahun_aktif as tahun_aktif, tb_osis.foto as foto, tb_jurusan.jurusan as jurusan');
		$this->db->from('tb_osis');
		$this->db->join('tb_jurusan', 'tb_jurusan.id = tb_osis.id_jurusan', 'left');
		// $this->db->where(['tb_osis.id_jurusan' => 'tb_jurusan.id']);
		return $this->db->get();
	}

	function findBy($id)
	{
		$this->db->where($id);
		return $this->db->get('tb_osis');
	}

	function add($data)
	{
		return $this->db->insert('tb_osis', $data);
	}

	function update($id, $data)
	{
		$this->db->where($id);
		return $this->db->update('tb_osis', $data);
	}

	function delete($id)
	{
		$this->db->where($id);
		return $this->db->delete('tb_osis');
	}

	function show($limit, $start)
	{
		$this->db->limit($limit, $start);
		$query = $this->db->get('tb_osis');

		if ($query->num_rows() > 0) {
			return $query->result();
		}
		return false;
	}
}

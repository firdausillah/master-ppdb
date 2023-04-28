<?php
class BeritaModel extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}

	function get()
	{
		return $this->db->get('tb_berita');
	}

	function findBy($id)
	{
		$this->db->where($id);
		return $this->db->get('tb_berita');
	}

	function add($data)
	{
		return $this->db->insert('tb_berita', $data);
	}

	function update($id, $data)
	{
		$this->db->where($id);
		return $this->db->update('tb_berita', $data);
	}

	function delete($id)
	{
		$this->db->where($id);
		return $this->db->delete('tb_berita');
	}

	function show($limit, $start)
	{
		$this->db->limit($limit, $start);
		$query = $this->db->get('tb_berita');

		if ($query->num_rows() > 0) {
			return $query->result();
		}
		return false;
	}
}

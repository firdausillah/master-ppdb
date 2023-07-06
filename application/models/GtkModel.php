<?php
class GtkModel extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}

	function get()
	{
		$this->db->order_by('urutan', 'ASC');
		return $this->db->get('tb_gtk');
	}

	function findBy($id)
	{
		$this->db->where($id);
		return $this->db->get('tb_gtk');
	}

	function add($data)
	{
		return $this->db->insert('tb_gtk', $data);
	}

	function update($id, $data)
	{
		$this->db->where($id);
		return $this->db->update('tb_gtk', $data);
	}

	function delete($id)
	{
		$this->db->where($id);
		return $this->db->delete('tb_gtk');
	}

	function show($limit, $start)
	{
		$this->db->limit($limit, $start);
		$query = $this->db->get('tb_gtk');

		if ($query->num_rows() > 0) {
			return $query->result();
		}
		return false;
	}
}

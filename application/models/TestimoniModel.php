<?php
class TestimoniModel extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}

	function get()
	{
		return $this->db->get('tb_testimoni');
	}

	function findBy($id)
	{
		$this->db->where($id);
		return $this->db->get('tb_testimoni');
	}

	function add($data)
	{
		return $this->db->insert('tb_testimoni', $data);
	}

	function update($id, $data)
	{
		$this->db->where($id);
		return $this->db->update('tb_testimoni', $data);
	}

	function delete($id)
	{
		$this->db->where($id);
		return $this->db->delete('tb_testimoni');
	}
}

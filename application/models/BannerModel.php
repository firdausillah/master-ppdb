<?php
class BannerModel extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}

	function get()
	{
		return $this->db->get('tb_banner');
	}

	function get_urutan()
	{
		$this->db->order_by('urutan', 'ASC');
		return $this->db->get('tb_banner');
	}

	function findBy($id)
	{
		$this->db->where($id);
		return $this->db->get('tb_banner');
	}

	function add($data)
	{
		return $this->db->insert('tb_banner', $data);
	}

	function update($id, $data)
	{
		$this->db->where($id);
		return $this->db->update('tb_banner', $data);
	}

	function delete($id)
	{
		$this->db->where($id);
		return $this->db->delete('tb_banner');
	}

	function show($limit, $start)
	{
		$this->db->limit($limit, $start);
		$query = $this->db->get('tb_banner');

		if ($query->num_rows() > 0) {
			return $query->result();
		}
		return false;
	}
}

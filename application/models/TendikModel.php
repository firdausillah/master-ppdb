<?php
 class TendikModel extends CI_Model{

	function __construct()
	{
		parent::__construct();
	}
 	
 	function get(){
 		return $this->db->get('tb_tendik');
 	}

 	function findBy($id){
 		$this->db->where($id);
 		return $this->db->get('tb_tendik');
 	}

 	function add($data){
 		return $this->db->insert('tb_tendik',$data);
 	}
 	
 	function update($id,$data){
 		$this->db->where($id);
 		return $this->db->update('tb_tendik',$data);
 	}

 	function delete($id){
 		$this->db->where($id);
 		return $this->db->delete('tb_tendik');
 	}
 }

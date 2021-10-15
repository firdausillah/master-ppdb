<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('GelombangModel', 'mGelombang');
		$this->load->model('JurusanModel', 'mJurusan');
	}

	public function index(){
		$data = [
			'gelombangs' => $this->mGelombang->get()->result(),
			'jurusans' => $this->mJurusan->get()->result()
		];
		// $this->session->set_flashdata('success', $data);
		$this->load->view('welcome_message', $data);
	}

	public function save(){
		// print_r($_POST['nama']);
		$data = $_POST;
		// exit();
		// $data = null;

		// if ($this->mGelombang->add($data)) {
		if ($data) {
			$this->session->set_flashdata('success', $data);
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('home'));
	}
}

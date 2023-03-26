<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('TendikModel', 'mTendik');
	}

	public function index(){
		redirect(base_url('profile/visi_misi'));
	}

	public function visi_misi(){
		$data = [
			'title' => 'Visi Misi',
			'content' => 'front/profile/visi_misi'
		];
		$this->load->view('layout_front/base', $data);
	}
	
	public function organisasi(){
		$data = [
			'title' => 'Struktur Organisasi',
			'content' => 'front/profile/organisasi'
		];
		$this->load->view('layout_front/base', $data);
	}

	public function guru_tendik(){
		$data = [
			'tendiks' => $this->mTendik->get()->result(),
			'title' => 'Guru dan Tenaga Kependidikan',
			'content' => 'front/profile/guru_tendik'
		];
		$this->load->view('layout_front/base', $data);
	}

}

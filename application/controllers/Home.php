<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('GelombangModel', 'mGelombang');
		$this->load->model('JurusanModel', 'mJurusan');
		$this->load->model('PersyaratanModel', 'mPersyaratan');
		$this->load->model('AsalSekolahModel', 'mAsalSekolah');
		$this->load->model('SiswaModel', 'mSiswa');
		$this->load->model('ProfileModel', 'mProfile');
		$this->load->model('BeritaModel');
		$this->load->model('BannerModel');
		$this->load->model('TestimoniModel');
	}

	public function index(){
		$data = [
			'gelombangs' => $this->mGelombang->get()->result(),
			'jurusans' => $this->mJurusan->get()->result(),
			'persyaratans' => $this->mPersyaratan->get()->result(),
			'asalsekolahs' => $this->mAsalSekolah->get()->result(),
			'profile' => $this->mProfile->findBy(['id' => 1])->row(),
			'berita' => $this->BeritaModel->show(10, 0),
			'banner' => $this->BannerModel->get_urutan()->result(),
			'testimoni' => $this->TestimoniModel->get()->result(),
			'title' => 'Home',
			'content' => 'front/landing_page/index'
		];
		// print_r($this->BeritaModel->show(10, 0)); exit();
		$this->load->view('layout_front/base', $data);
	}
}

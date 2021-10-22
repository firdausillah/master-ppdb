<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cetak extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('GelombangModel', 'mGelombang');
		$this->load->model('AuthModel', 'mAuth');
		$this->load->model('PersyaratanModel', 'mPersyaratan');
		$this->load->model('ProfileModel', 'mProfile');
		$this->load->model('Persyaratan_siswaModel');
		$this->load->model('SiswaModel', 'mSiswa');
	}

	public function bukti($kode_pendaftaran){

		// print_r($this->mSiswa->joinJurusanKode($kode_pendaftaran)->row()); exit();
		$data = [
			'siswa' => $this->mSiswa->joinJurusanKode($kode_pendaftaran)->row(),
			'profile' => $this->mProfile->findBy(['id' => 1])->row(),
			'persyaratan' => $this->mPersyaratan->get()->result(),
			'persyaratan_siswa' => $this->Persyaratan_siswaModel->leftJoinPersyaratan($this->session->userdata('id'))->result()
		];
		$this->load->view('cetak/bukti', $data);
	}
}

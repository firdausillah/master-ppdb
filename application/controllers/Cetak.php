<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cetak extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('GelombangModel', 'mGelombang');
		$this->load->model('AuthModel', 'mAuth');
		$this->load->model('PersyaratanModel', 'mPersyaratan');
		$this->load->model('SiswaModel', 'mSiswa');
	}

	public function bukti($id){
		$this->load->view('cetak/bukti');
	}
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galery extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('TendikModel', 'mTendik');
	}

	public function index(){
		$data = [
			'title' => 'Galery',
			'content' => 'front/galeri/index'
		];
		$this->load->view('layout_front/base', $data);
	}

}

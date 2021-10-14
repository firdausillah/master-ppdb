<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('GelombangModel', 'mGelombang');
	}


	public function index()
	{
		$data = [
			'gelombangs' => $this->mGelombang->get()->result()
		];

		$this->load->view('welcome_message', $data);
	}
}

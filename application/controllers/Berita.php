<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('BeritaModel');
	}

	public function index(){

		// BEGIN pagination
			$this->load->library('pagination');

			// konfigurasi pagination
			$config['base_url'] = base_url('berita');
			$config['total_rows'] =  $this->BeritaModel->get()->num_rows();
			$config['per_page'] = 12;
			// $config['num_links'] = 3;

			// Customisasi tampilan pagination
			$config['attributes'] = array('class' => 'page-link');
			$config['full_tag_open'] = '<nav><ul class="pagination justify-content-center">';
			$config['full_tag_close'] = '</ul></nav>';
			$config['first_link'] = 'First';
			$config['first_tag_open'] = '<li class="page-item">';
			$config['first_tag_close'] = '</li>';
			$config['last_link'] = 'Last';
			$config['last_tag_open'] = '<li class="page-item">';
			$config['last_tag_close'] = '</li>';
			$config['next_link'] = '&raquo;';
			$config['next_tag_open'] = '<li class="page-item">';
			$config['next_tag_close'] = '</li>';
			$config['prev_link'] = '&laquo;';
			$config['prev_tag_open'] = '<li class="page-item">';
			$config['prev_tag_close'] = '</li>';
			$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
			$config['cur_tag_close'] = '</a></li>';
			$config['num_tag_open'] = '<li class="page-item">';
			$config['num_tag_close'] = '</li>';

			// inisialisasi konfigurasi pagination
			$this->pagination->initialize($config);
		// END pagination

		$data = [
			'berita' => $this->BeritaModel->show($config['per_page'], $this->uri->segment(3)),
			'title' => 'Berita',
			'content' => 'front/berita/index'
		];
		// print_r($config);
		// exit();
		$this->load->view('layout_front/base', $data);
	}

	public function show($slug){

		$get_berita = $this->BeritaModel->findBy(['slug' => $slug])->row();

		$data = [
			'berita_r' => $get_berita,
			'berita' => $this->BeritaModel->show(10, 1),
			'title' => $get_berita->nama,
			'content' => 'front/berita/show'
		];
		// print_r($get_berita->nama);
		// exit();
		$this->load->view('layout_front/base', $data);
	}

}

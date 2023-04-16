<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('TendikModel', 'mTendik');
		$this->load->model('SarprasModel');
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

	public function sarpras(){

		$this->load->library('pagination');

		// konfigurasi pagination
		$config['base_url'] = base_url('profile/sarpras');
		$config['total_rows'] =  $this->SarprasModel->get()->num_rows();
		$config['per_page'] = 20;
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

		// ambil data dari database menggunakan limit dan offset
		// $data['products'] = $this->db->get('products', $config['per_page'], $this->uri->segment(3))->result();


		$data = [
			'sarpras' => $this->SarprasModel->show($config['per_page'], $this->uri->segment(4)),
			'title' => 'Sarana dan Prasarana',
			'content' => 'front/profile/sarpras'
		];
		// print_r($data);
		// exit();
		$this->load->view('layout_front/base', $data);
	}

}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('GelombangModel', 'mGelombang');
		$this->load->model('AuthModel', 'mAuth');
		$this->load->model('SiswaModel', 'mSiswa');
	}

	public function login_siswa(){
		$nohp	= $this->input->post('nohp');
		$password	= $this->input->post('password');

		$where = [
			'nohp' => $nohp,
			'password' => $password
		];

		$cek = $this->mAuth->cekLogin('tb_siswa', $where)->num_rows();

		if ($cek > 0) {

			$data_siswa = $this->mAuth->cekLogin('tb_siswa', $where)->row();
			
			print_r($data_siswa->nama);
			$data_session = [
				'id' => $data_siswa->id,
				'nama' => $data_siswa->nama,
				'nohp' => $data_siswa->nohp,
				'status' => 'login',
			];

			$this->session->set_userdata($data_session);
			$this->session->set_flashdata('flash', 'Anda berhasil login');
			redirect('siswa/dashboard');
		} else {
			$this->session->set_flashdata('error', 'Nomor Telepon atau Password salah!');
			redirect('home');
		}
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect(base_url('home'));
	}
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('ProfileModel');
        $this->load->model('SiswaModel');
        $this->load->model('JurusanModel');

        if ($this->session->userdata('role') != 'admin') {
            redirect(base_url("auth/login"));
        }
    }

    public function index()
    {
        $jurusan = $this->JurusanModel->get()->result();
        // $jurusan = $this->SiswaModel->siswaJurusan()->result();
        
        // print_r(count($jurusan));
        // exit();
        
        // for ($i=0; $i < count($jurusan); $i++) {
            //     $a[] = $this->SiswaModel->findByJurusan($jurusan[$i]->id)->result();
            // $a[] = $jurusan[$i]->id;
            // }
        $siswa = $this->SiswaModel->get()->result();
        $verifikasi = $this->SiswaModel->joinPembawaSudah()->result();
        $belum_verifikasi = $this->SiswaModel->joinPembawaBelum()->result();

        // print_r(count($verifikasi));
        // exit();

        $data = [
            'title' => 'Dashboard',
            'profile' => $this->ProfileModel->findBy(['id' => 1])->row(),
            'siswa' => $siswa,
            'verifikasi' => count($verifikasi),
            'belum_verifikasi' => count($belum_verifikasi),
            'content' => 'admin/dashboard'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

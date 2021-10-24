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
        // $siswa = $this->SiswaModel->get()->result();
        $jurusan = $this->JurusanModel->get()->result();
        // $jurusan = $this->SiswaModel->siswaJurusan()->result();

        // print_r(count($jurusan));
        // exit();

        // for ($i=0; $i < count($jurusan); $i++) {
        //     $a[] = $this->SiswaModel->findByJurusan($jurusan[$i]->id)->result();
        //     // $a[] = $jurusan[$i]->id;
        // }

        // print_r($a);
        // exit();

        $data = [
            'title' => 'Dashboard',
            'profile' => $this->ProfileModel->findBy(['id' => 1])->row(),
            'content' => 'admin/dashboard'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

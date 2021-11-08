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

        foreach ($jurusan as $keyJur => $jur) {
            $a = $this->SiswaModel->findByJurusan($jur->id)->result();

            $b[] = (object)['jurusan' => $jur->jurusan, 'siswa' => count($a)];
        }

        // exit();
        $perjurusan = $b;
        $siswa = $this->SiswaModel->get()->result();
        $verifikasi = $this->SiswaModel->joinPembawaSudah()->result();
        $belum_verifikasi = $this->SiswaModel->joinPembawaBelum()->result();


        $data = [
            'title' => 'Dashboard',
            'profile' => $this->ProfileModel->findBy(['id' => 1])->row(),
            'siswa' => $siswa,
            'perjurusan' => $perjurusan,
            'verifikasi' => count($verifikasi),
            'belum_verifikasi' => count($belum_verifikasi),
            'content' => 'admin/dashboard'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

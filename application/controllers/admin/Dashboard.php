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

        // print_r($jurusan[1]);

        // foreach ($jurusan as $keyJur => $jur) {
        //     $a = $this->SiswaModel->findByJurusan($jur->id)->result();
        //     // print_r($a);
        //     foreach ($a as $keySis => $siswa) {

        //         if ($siswa->jk == 'Laki-laki') {
        //             $l = count($siswa->jk);
        //         }

        //         $s = [$siswa->nama, $siswa->id_jurusan];
        //         $j = [$jur->jurusan, $s];
        //     }
        //     // print_r($j);
        // }


        // for ($i=0; $i < count($jurusan); $i++) {
        //     $a[$i] = $this->SiswaModel->findByJurusan($jurusan[$i]->id)->result();
        //     // print_r($a[$i]);
        //     // $b = $a[$i][0]->nama;

        //     for ($j=0; $j < count($a[$i]); $j++) {
        //         $b[] = [$jurusan[$i]->jurusan, $a[$i][$j]->id_jurusan, $a[$i][$j]->nama];
        //     }
        //     $jur = [$jurusan[$i]->jurusan, $b];

        // }
        // print_r($this->SiswaModel->getAll()->result());
        
        // exit();
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

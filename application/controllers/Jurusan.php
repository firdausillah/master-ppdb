<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jurusan extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('TendikModel', 'mTendik');
    }

    public function teknik_sepeda_motor()
    {
        $data = [
            'title' => 'Teknik Sepeda Motor',
            'content' => 'front/jurusan/tsm'
        ];
        $this->load->view('layout_front/base', $data);
    }

    public function teknik_alat_berat()
    {
        $data = [
            'title' => 'Teknik Alat Berat',
            'content' => 'front/jurusan/tab'
        ];
        $this->load->view('layout_front/base', $data);
    }

    public function agribisnis_pengolahan_hasil_pertanian()
    {
        $data = [
            'title' => 'Agribisnis Pengolahan Hasil Pertanian',
            'content' => 'front/jurusan/aphp'
        ];
        $this->load->view('layout_front/base', $data);
    }

    public function manajemen_perkantoran_lembaga_bisnis()
    {
        $data = [
            'title' => 'Manajemen Perkantoran Lembaga Bisnis',
            'content' => 'front/jurusan/mplb'
        ];
        $this->load->view('layout_front/base', $data);
    }

    public function akuntansi_dan_keuangan_lembaga()
    {
        $data = [
            'title' => 'Akuntansi dan Keuangan Lembaga',
            'content' => 'front/jurusan/akl'
        ];
        $this->load->view('layout_front/base', $data);
    }

    public function perhotelan()
    {
        $data = [
            'title' => 'Perhotelan',
            'content' => 'front/jurusan/ph'
        ];
        $this->load->view('layout_front/base', $data);
    }
}

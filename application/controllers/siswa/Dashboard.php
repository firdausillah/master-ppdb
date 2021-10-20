<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('status') != "login") {
            $this->session->set_flashdata('error', 'Silahkan Login');
            redirect(base_url("home"));
        }

        $this->load->model('SiswaModel');
        $this->load->model('PersyaratanModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Dashboard Siswa',
            'content' => 'siswa/dashboard',
            'siswa' => $this->SiswaModel->findBy($this->session->userdata('id'))->row(),
            'persyaratan' => $this->PersyaratanModel->get()->result()
        ];

        $this->load->view('layout_siswa/base', $data);
    }
}

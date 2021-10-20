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
    }

    public function index()
    {
        $data = [
            'title' => 'Dashboard Siswa',
            'content' => 'siswa/dashboard'
        ];

        $this->load->view('layout_siswa/base', $data);
    }
}

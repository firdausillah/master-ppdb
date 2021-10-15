<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pekerjaan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('PekerjaanModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Pekerjaan',
            'pekerjaan' => $this->PekerjaanModel->get()->result(),
            'content' => 'admin/pekerjaan/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Syarat extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('PersyaratanModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Syarat',
            'syarat' => $this->PersyaratanModel->get()->result(),
            'content' => 'admin/persyaratan/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

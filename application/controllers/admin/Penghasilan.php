<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penghasilan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('PenghasilanModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Penghasilan',
            'penghasilan' => $this->PenghasilanModel->get()->result(),
            'content' => 'admin/penghasilan/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

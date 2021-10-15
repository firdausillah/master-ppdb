<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Marketing extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('PembawaModel');
    }


    public function index()
    {
        $data = [
            'title' => 'Marketing',
            'marketing' => $this->PembawaModel->get()->result(),
            'content' => 'admin/marketing/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

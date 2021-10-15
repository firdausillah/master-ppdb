<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Gelombang extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('GelombangModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Gelombang',
            'gelombang' => $this->GelombangModel->get()->result(),
            'content' => 'admin/gelombang/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

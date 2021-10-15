<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jurusan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('JurusanModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Jurusan',
            'jurusan' => $this->JurusanModel->get()->result(),
            'content' => 'admin/jurusan/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

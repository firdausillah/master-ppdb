<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pendidikan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('PendidikanModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Pendidikan',
            'pendidikan' => $this->PendidikanModel->get()->result(),
            'content' => 'admin/pendidikan/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

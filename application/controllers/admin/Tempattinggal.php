<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tempattinggal extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('TempattinggalModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Tempattinggal',
            'tempattinggal' => $this->TempattinggalModel->get()->result(),
            'content' => 'admin/tempattinggal/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

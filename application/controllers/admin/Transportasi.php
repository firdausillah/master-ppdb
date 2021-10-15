<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Transportasi extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('TransportasiModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Transportasi',
            'transportasi' => $this->TransportasiModel->get()->result(),
            'content' => 'admin/transportasi/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('status') != "login") {
            redirect(base_url("home"));
        }
    }

    public function index()
    {
        $data = [
            'title' => 'Dashboard',
            'content' => 'dashboard'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

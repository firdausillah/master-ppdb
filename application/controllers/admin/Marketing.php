<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Marketing extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Marketing',
            'content' => 'marketing'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pekerjaan extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Pekerjaan',
            'content' => 'Pekerjaan'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penghasilan extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Penghasilan',
            'content' => 'penghasilan'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

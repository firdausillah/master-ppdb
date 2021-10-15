<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Transportasi extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Transportasi',
            'content' => 'transportasi'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

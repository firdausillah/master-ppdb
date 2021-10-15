<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pendidikan extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Pendidikan',
            'content' => 'pendidikan'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

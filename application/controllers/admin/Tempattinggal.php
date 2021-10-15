<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tempattinggal extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Tempattinggal',
            'content' => 'tempattinggal'
        ];

        $this->load->view('layout_admin/base', $data);
    }
}

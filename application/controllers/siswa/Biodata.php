<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Biodata extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Biodata Siswa',
            'content' => 'siswa/biodata/index'
        ];

        $this->load->view('layout_siswa/base', $data);
    }
}

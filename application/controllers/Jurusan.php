<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jurusan extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('TendikModel', 'mTendik');
    }

    public function teknik_sepeda_motor()
    {
        $data = [
            'title' => 'Teknik Sepeda Motor',
            'content' => 'front/jurusan/tsm'
        ];
        $this->load->view('layout_front/base', $data);
    }
}

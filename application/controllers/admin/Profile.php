<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('ProfileModel');

        if ($this->session->userdata('role') != 'admin') {
            redirect(base_url("auth/login"));
        }
    }


    public function index()
    {
        $data = [
            'title' => 'Edit Profile',
            'profile' => $this->ProfileModel->findBy(['id' => 1])->row(),
            'content' => 'admin/profile/edit'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function update()
    {
        $data = [
            'profile' => $this->input->post('Profile'),

        ];

        if ($this->ProfileModel->update(['id' => 1], $data)) {
            $this->session->set_flashdata('flash', 'Data berhasil diupdate');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }

        redirect(base_url('admin/profile'));
    }

}

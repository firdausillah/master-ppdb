<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Sarpras extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('SarprasModel');

        if ($this->session->userdata('role') != 'admin') {
            redirect(base_url("auth/login"));
        }
    }

    public function index()
    {
        $data = [
            'title' => 'Sarpras',
            'sarpras' => $this->SarprasModel->get()->result(),
            'content' => 'admin/sarpras/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
    public function save()
    {
        $data = [
            'sarpras' => $this->input->post('sarpras'),

        ];

        if ($this->SarprasModel->add($data)) {
            $this->session->set_flashdata('flash', 'Data berhasil dimasukan');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }

        redirect(base_url('admin/sarpras'));
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Edit sarpras',
            'sarpras' => $this->SarprasModel->findBy(['id' => $id])->row(),
            'content' => 'admin/sarpras/edit'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function update($id)
    {
        $data = [
            'sarpras' => $this->input->post('sarpras'),

        ];

        if ($this->SarprasModel->update(['id' => $id], $data)) {
            $this->session->set_flashdata('flash', 'Data berhasil diupdate');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }

        redirect(base_url('admin/sarpras'));
    }

    public function delete($id)
    {
        if ($this->SarprasModel->delete(['id' => $id])) {
            $this->session->set_flashdata('flash', 'Data berhasil dihapus');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/sarpras');
    }
}

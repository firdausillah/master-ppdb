<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Testimoni extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('TestimoniModel');

        if ($this->session->userdata('role') != 'admin') {
            redirect(base_url("auth/login"));
        }
    }

    public function index()
    {
        $data = [
            'title' => 'Testimoni',
            'testimoni' => $this->TestimoniModel->get()->result(),
            'content' => 'admin/testimoni/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Tambah Testimoni',
            'content' => 'admin/testimoni/form'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Edit Testimoni',
            'testimoni' => $this->TestimoniModel->findBy(['id' => $id])->row(),
            'content' => 'admin/testimoni/form'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function save()
    {
        if (!$this->input->post('slug')) {
            $slug = slugify($this->input->post('alumni_nama'));
        } else {
            $slug = $this->input->post('slug');
        }

        $data = [
            'slug' => $slug,
            'alumni_nama' => $this->input->post('alumni_nama'),
            'tahun_lulus' => $this->input->post('tahun_lulus'),
            'is_active' => 1,
            'keterangan' => $this->input->post('keterangan')
        ];

        if (empty($id)) {
            unset($id);
            if ($this->TestimoniModel->add($data)) {
                $this->session->set_flashdata('flash', 'Data berhasil dimasukan');
                redirect(base_url('admin/testimoni'));
            }
            exit($this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan'));
        } else {
            if ($this->TestimoniModel->update(['id' => $id], $data)) {
                $this->session->set_flashdata('flash', 'Data berhasil diupdate');
                redirect(base_url('admin/testimoni'));
            }
            exit($this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan'));
        }
    }

    public function delete($id)
    {
        if ($this->TestimoniModel->delete(['id' => $id])) {
            $this->session->set_flashdata('flash', 'Data berhasil dihapus');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/Testimoni');
    }
}

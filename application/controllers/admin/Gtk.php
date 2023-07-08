<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Gtk extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('GtkModel');
        $this->load->helper('slug');
        $this->load->helper('upload_foto');

        if ($this->session->userdata('role') != 'superadmin') {
            redirect(base_url("auth/login"));
        }
    }

    public function index()
    {
        $data = [
            'title' => 'gtk',
            'gtk' => $this->GtkModel->get()->result(),
            'content' => 'admin/gtk/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Tambah Gtk',
            'content' => 'admin/gtk/form',
            'cropper' => 'admin/gtk/cropper'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Edit Gtk',
            'gtk' => $this->GtkModel->findBy(['id' => $id])->row(),
            'content' => 'admin/gtk/form',
            'cropper' => 'admin/gtk/cropper'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function save()
    {
        // print_r($this->input->post()); exit();
        if(!$this->input->post('slug')){
            $slug = slugify($this->input->post('nama_tendik'));
        } else{
            $slug = $this->input->post('slug');
        }
        $id = $this->input->post('id');
        $file_foto = $this->input->post('file_foto');
        $folderPath = './uploads/img/gtk/';
        $foto = $this->input->post('gambar'); //jika upload berhasil akan di replace oleh function save_foto()

        if ($file_foto) {
            $foto = save_foto($file_foto,
                $slug,
                $folderPath
                // return $foto -> nama_tendik foto
            );
        }

        $data = [
            'slug' => $slug,
            'nama_tendik' => $this->input->post('nama_tendik'),
            'foto' => $foto,
            'is_active' => 1,
            'urutan' => $this->input->post('urutan'),
            'keterangan' => $this->input->post('keterangan')
        ];
        
        if (empty($id)) {
            unset($id);
            if ($this->GtkModel->add($data)){
                $this->session->set_flashdata('flash', 'Data berhasil dimasukan');
                redirect(base_url('admin/Gtk'));
            } exit($this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan'));
        } else {
            if ($this->GtkModel->update(['id' => $id], $data)){
                $this->session->set_flashdata('flash', 'Data berhasil diupdate');
                redirect(base_url('admin/Gtk'));
            } exit($this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan'));
        }
    }


    public function delete($id)
    {
        $data = $this->GtkModel->findBy(['id' => $id])->row();
        @unlink(FCPATH . 'uploads/img/gtk/' . $data->foto);

        if ($this->GtkModel->delete(['id' => $id])) {
            $this->session->set_flashdata('flash', 'Data berhasil dihapus');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/Gtk');
    }
}

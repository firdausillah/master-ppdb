<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Banner extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('BannerModel');
        $this->load->helper('slug');
        $this->load->helper('upload_foto');

        if ($this->session->userdata('role') != 'admin') {
            redirect(base_url("auth/login"));
        }
    }

    public function index()
    {
        $data = [
            'title' => 'Banner',
            'banner' => $this->BannerModel->get()->result(),
            'content' => 'admin/banner/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Tambah Banner',
            'content' => 'admin/banner/form',
            'cropper' => 'admin/banner/cropper',
            'aspect' => '300/100'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Edit Banner',
            'banner' => $this->BannerModel->findBy(['id' => $id])->row(),
            'content' => 'admin/banner/form',
            'cropper' => 'admin/banner/cropper',
            'aspect' => '300/100'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function save()
    {
        // print_r($this->input->post()); exit();
        if(!$this->input->post('slug')){
            $slug = slugify($this->input->post('nama'));
        } else{
            $slug = $this->input->post('slug');
        }
        $id = $this->input->post('id');
        $file_foto = $this->input->post('file_foto');
        $folderPath = './uploads/img/banner/';
        $foto = $this->input->post('gambar'); //jika upload berhasil akan di replace oleh function save_foto()

        if ($file_foto) {
            $foto = save_foto($file_foto,
                $slug,
                $folderPath
                // return $foto -> nama foto
            );
        }

        $data = [
            'slug' => $slug,
            'nama' => $this->input->post('nama'),
            'foto' => $foto,
            'is_active' => 1,
            'keterangan' => $this->input->post('keterangan')
        ];
        
        if (empty($id)) {
            unset($id);
            if ($this->BannerModel->add($data)){
                $this->session->set_flashdata('flash', 'Data berhasil dimasukan');
                redirect(base_url('admin/banner'));
            } exit($this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan'));
        } else {
            if ($this->BannerModel->update(['id' => $id], $data)){
                $this->session->set_flashdata('flash', 'Data berhasil diupdate');
                redirect(base_url('admin/banner'));
            } exit($this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan'));
        }
    }

    public function delete($id)
    {
        $data = $this->BannerModel->findBy(['id' => $id])->row();
        @unlink(FCPATH . 'uploads/img/banner/' . $data->foto);

        if ($this->BannerModel->delete(['id' => $id])) {
            $this->session->set_flashdata('flash', 'Data berhasil dihapus');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/banner');
    }
}

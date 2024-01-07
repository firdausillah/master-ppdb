<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Osis extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('OsisModel');
        $this->load->model('JurusanModel');
        $this->load->helper('slug');
        $this->load->helper('upload_foto');

        if ($this->session->userdata('role') != 'superadmin') {
            redirect(base_url("auth/login"));
        }
    }

    public function index()
    {
        $data = [
            'title' => 'osis',
            'osis' => $this->OsisModel->joinJurusan()->result(),
            'content' => 'admin/osis/table'
        ];
        // print_r($this->OsisModel->joinJurusan()->result()); exit();

        $this->load->view('layout_admin/base', $data);
    }

    public function add()
    {
        $jurusan = $this->JurusanModel->get()->result();

        $data = [
            'title' => 'Tambah Osis',
            'content' => 'admin/osis/form',
            'cropper' => 'admin/osis/cropper',
            'jurusan' => $jurusan,
            'aspect' => '3/4'
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function edit($id)
    {
        $jurusan = $this->JurusanModel->get()->result();

        $data = [
            'title' => 'Edit Osis',
            'osis' => $this->OsisModel->findBy(['id' => $id])->row(),
            'content' => 'admin/osis/form',
            'cropper' => 'admin/osis/cropper',
            'jurusan' => $jurusan,
            'aspect' => '3/4'
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
        $folderPath = './uploads/img/osis/';
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
            'nama' => $this->input->post('nama'),
            'foto' => $foto,
            'is_active' => 1,
            'tahun_aktif' => $this->input->post('tahun_aktif'),
            'id_jurusan' => $this->input->post('id_jurusan')
        ];
        
        if (empty($id)) {
            unset($id);
            if ($this->OsisModel->add($data)){
                $this->session->set_flashdata('flash', 'Data berhasil dimasukan');
                redirect(base_url('admin/osis'));
            } exit($this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan'));
        } else {
            if ($this->OsisModel->update(['id' => $id], $data)){
                $this->session->set_flashdata('flash', 'Data berhasil diupdate');
                redirect(base_url('admin/osis'));
            } exit($this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan'));
        }
    }


    public function delete($id)
    {
        $data = $this->OsisModel->findBy(['id' => $id])->row();
        @unlink(FCPATH . 'uploads/img/osis/' . $data->foto);

        if ($this->OsisModel->delete(['id' => $id])) {
            $this->session->set_flashdata('flash', 'Data berhasil dihapus');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/osis');
    }
}

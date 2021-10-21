<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('SiswaModel');
        $this->load->model('JurusanModel');
        $this->load->model('PekerjaanModel');
        $this->load->model('PembawaModel');
        $this->load->model('PendidikanModel');
        $this->load->model('PenghasilanModel');
        $this->load->model('TempattinggalModel');
        $this->load->model('TransportasiModel');
        $this->load->model('PersyaratanModel');
        $this->load->model('Persyaratan_siswaModel');

        if ($this->session->userdata('role') != 'admin') {
            redirect(base_url("auth/login"));
        }
    }

    public function index()
    {
        print_r($this->session->userdata('role')); exit();
        $data = [
            'title' => 'Data Siswa',
            'siswa' => $this->SiswaModel->get()->result(),
            'content' => 'admin/siswa/table'
        ];

        $this->load->view('layout_admin/base', $data);
    }
    public function save()
    {
        $data = [
            'siswa' => $this->input->post('siswa'),

        ];

        if ($this->SiswaModel->add($data)) {
            $this->session->set_flashdata('flash', 'Data berhasil dimasukan');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }

        redirect(base_url('admin/siswa'));
    }

    public function edit($id)
    {
        $siswa = $this->SiswaModel->findBy($id)->row();
        $jurusan = $this->JurusanModel->get()->result();
        $pekerjaan = $this->PekerjaanModel->get()->result();
        $pembawa = $this->PembawaModel->get()->result();
        $pendidikan = $this->PendidikanModel->get()->result();
        $penghasilan = $this->PenghasilanModel->get()->result();
        $tempattinggal = $this->TempattinggalModel->get()->result();
        $transportasi = $this->TransportasiModel->get()->result();
        $persyaratan = $this->PersyaratanModel->get()->result();
        $persyaratan_siswa = $this->Persyaratan_siswaModel->leftJoinPersyaratan($id)->result();

        // if (isset($persyaratan_siswa[1]->id_siswa)) {
        // // if ($persyaratan_siswa->id_siswa && $persyaratan_siswa->id_persyaratan != null) {
        //     echo 'ada';
        // } else{
        //     echo 'kosong';
        // }
        // print_r($persyaratan_siswa[1]);
        // print_r($persyaratan_siswa); exit();

        $data = [
            'title' => 'Edit Data Siswa',
            'content' => 'admin/siswa/edit',
            'siswa' => $siswa,
            'jurusan' => $jurusan,
            'pekerjaan' => $pekerjaan,
            'pembawa' => $pembawa,
            'pendidikan' => $pendidikan,
            'penghasilan' => $penghasilan,
            'tempattinggal' => $tempattinggal,
            'transportasi' => $transportasi,
            'persyaratan' => $persyaratan,
            'persyaratan_siswa' => $persyaratan_siswa
        ];

        $this->load->view('layout_admin/base', $data);
    }

    public function update($id)
    {
        $data = [
            'siswa' => $this->input->post('siswa'),
        ];

        if ($this->SiswaModel->update(['id' => $id], $data)) {
            $this->session->set_flashdata('flash', 'Data berhasil diupdate');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }

        redirect(base_url('admin/siswa'));
    }

    public function savePribadi($id)
    {

        $data = [
            'kode_pendaftaran'    => $this->input->post('kode_pendaftaran'),
            'password'    => $this->input->post('password'),
            'nama'    => $this->input->post('nama'),
            'jk'        => $this->input->post('jk'),
            'nisn'    => $this->input->post('nisn'),
            'nik_siswa'  => $this->input->post('nik_siswa'),
            'no_kk'  => $this->input->post('no_kk'),
            'tempatlahir_siswa'  => $this->input->post('tempatlahir_siswa'),
            'tgllahir_siswa'        => $this->input->post('tgllahir_siswa'),
            'noakte_lahir'    => $this->input->post('noakte_lahir'),
            'tinggi_badan'    => $this->input->post('tinggi_badan'),
            'berat_badan'      => $this->input->post('berat_badan'),
            'agama'  => $this->input->post('agama'),
            'kewarganegaraan'      => $this->input->post('kewarganegaraan'),
            'alamat_siswa'    => $this->input->post('alamat_siswa'),
            'rt'        => $this->input->post('rt'),
            'nohp'    => $this->input->post('nohp'),
            'rw'        => $this->input->post('rw'),
            'dusun'  => $this->input->post('dusun'),
            'desa'    => $this->input->post('desa'),
            'kec'      => $this->input->post('kec'),
            'kodepos'      => $this->input->post('kodepos'),
            'tempat_tinggal'        => $this->input->post('tempat_tinggal'),
            'moda_transportasi'  => $this->input->post('moda_transportasi'),
            'anak_berapa'      => $this->input->post('anak_berapa'),
            'punya_kip'  => $this->input->post('punya_kip'),
            'sekolah_asal'    => $this->input->post('sekolah_asal'),
            'id_jurusan'        => $this->input->post('id_jurusan')
        ];

        if ($this->SiswaModel->update(['id' => $id], $data)) {
            $this->session->set_flashdata('flash', 'Data berhasil disimpan');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/siswa/edit/'.$id.'?page=pribadi');
    }

    public function saveAyah($id)
    {

        $data = [
            'nama_ayah' => $this->input->post('nama_ayah'),
            'nik_ayah'  => $this->input->post('nik_ayah'),
            'tgllahir_ayah' => $this->input->post('tgllahir_ayah'),
            'pendidikan_ayah'   => $this->input->post('pendidikan_ayah'),
            'pekerjaan_ayah'    => $this->input->post('pekerjaan_ayah'),
            'penghasilan_ayah'  => $this->input->post('penghasilan_ayah')
        ];

        if ($this->SiswaModel->update(['id' => $id], $data)) {
            $this->session->set_flashdata('flash', 'Data berhasil disimpan');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/siswa/edit/'.$id.'?page=ayah');
    }

    public function saveIbu($id)
    {

        $data = [
            'nama_ibu' => $this->input->post('nama_ibu'),
            'nik_ibu'  => $this->input->post('nik_ibu'),
            'tgllahir_ibu' => $this->input->post('tgllahir_ibu'),
            'pendidikan_ibu'   => $this->input->post('pendidikan_ibu'),
            'pekerjaan_ibu'    => $this->input->post('pekerjaan_ibu'),
            'penghasilan_ibu'  => $this->input->post('penghasilan_ibu')
        ];

        if ($this->SiswaModel->update(['id' => $id], $data)) {
            $this->session->set_flashdata('flash', 'Data berhasil disimpan');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/siswa/edit/'.$id.'?page=ibu');
    }

    public function saveWali($id)
    {

        $data = [
            'nama_wali' => $this->input->post('nama_wali'),
            'nik_wali'  => $this->input->post('nik_wali'),
            'tgllahir_wali' => $this->input->post('tgllahir_wali'),
            'pendidikan_wali'   => $this->input->post('pendidikan_wali'),
            'pekerjaan_wali'    => $this->input->post('pekerjaan_wali'),
            'penghasilan_wali'  => $this->input->post('penghasilan_wali')
        ];

        if ($this->SiswaModel->update(['id' => $id], $data)) {
            $this->session->set_flashdata('flash', 'Data berhasil disimpan');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/siswa/edit/'.$id.'?page=wali');
    }

    public function savePersyaratan($id){
        $persyaratan_siswa = $this->Persyaratan_siswaModel->leftJoinPersyaratan($id)->result();
        $persyaratan = $this->PersyaratanModel->get()->result();

        $status = $_POST['status'];
        $id_siswa = $_POST['id_siswa'];
        $id_persyaratan = $_POST['id_persyaratan'];

        for ($i=0; $i < count($persyaratan) ; $i++) {
            $data[] = ['status' => $status[$i], 'id_siswa' => $id_siswa[$i], 'id_persyaratan' => $id_persyaratan[$i]];
        }
        // echo "<pre>";
        // print_r($_POST);
        // echo "</pre>";
        // echo "<pre>";
        // print_r($data);
        // echo "</pre>";
        // exit();

        for ($j=0; $j < count($persyaratan); $j++) { 
            if (isset($persyaratan_siswa[$j]->id_siswa)) {
                $this->Persyaratan_siswaModel->update($persyaratan_siswa[$j]->id_siswa, $persyaratan_siswa[$j]->id_persyaratan, $data[$j]);
                // echo '<br>';
                // echo 'update';
                // echo '<br>';
                // echo $data[$j]['id_siswa'] . $data[$j]['id_persyaratan'];
                // echo '  =  ';
                // echo $persyaratan_siswa[$j]->id_siswa . $persyaratan_siswa[$j]->id_persyaratan;
            } else{
                $this->Persyaratan_siswaModel->add($data[$j]);
                // echo '<br>';
                // echo 'add';
                // echo '<br>';
                // echo $data[$j]['id_siswa'] . $data[$j]['id_persyaratan'];
                // echo '  =  ';
            }
        }

        $ver = ['status' => $this->input->post('verifikasi')];
        // echo "<pre>";
        // print_r($data); 
        // echo "</pre>";
        // exit();
        
        $this->SiswaModel->update(['id' => $id], $ver);

        $this->session->set_flashdata('flash', 'Data berhasil disimpan');
        redirect('admin/siswa/edit/' . $id . '?page=persyaratan');
    }

    public function delete($id)
    {
        if ($this->SiswaModel->delete(['id' => $id])) {
            $this->session->set_flashdata('flash', 'Data berhasil dihapus');
        } else {
            $this->session->set_flashdata('flash', 'Oops! Terjadi suatu kesalahan');
        }
        redirect('admin/siswa');
    }
}

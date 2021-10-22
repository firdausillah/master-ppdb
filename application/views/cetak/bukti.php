<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Cetak Bukti Pendaftaran <?= $siswa->nama ?></title>
</head>

<body>
    <section id="cetak">
        <div class="container pt-5 py-5">
            <div class="row justify-content-center mb-4">
                <div class="col-md-12 text-center">
                    <h4>BUKTI PENDAFTARAN PPDB ONLINE <?= $profile->nama_sekolah ?></h4>
                </div>
            </div>
            <button class="btn btn-secondary d-print-none" onclick="window.print()">Print</button>
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-bordered table-sm">
                        <tbody>
                            <tr>
                                <td colspan="1" class="text-center" style="width: 10%;"><img src="<?= base_url('assets/img/logo.png') ?>" height="90px" alt=""></td>
                                <td colspan="4" style="width: 20%;">
                                    <h5>PENERIMAAN PESERTA DIDIK BARU</h5>
                                    <h5><?= $profile->nama_sekolah ?></h5>
                                    <h5>TAHUN AJARAN <?= $profile->tahun_ajaran ?></h5>
                                </td>
                                <td colspan="3" style="width: 20%;">
                                    <h4>PPDB</h4>
                                    <h4>ONLINE</h4>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="1" class="text-center"><img src="<?= base_url('uploads/img/siswa/' . $siswa->foto) ?>" height="90px" alt=""></td>
                                <td colspan="4">
                                    <span>TANDA BUKTI PENDAFTARAN</span><br>
                                    <span>PENERIMAAN PESERTA DIDIK BARU</span><br>
                                    <span>TAHUN AJARN <?= $profile->tahun_ajaran ?></span>
                                </td>
                                <td colspan="3">
                                    <span><?= $profile->nama_sekolah ?> Menyatakan</span>
                                    <span>Dokumen ini adalah Bukti Sah Pendaftaran</span>
                                    <span>Peneriman Peserta Didik Baru</span>
                                    <span>TAHUN AJARAN <?= $profile->tahun_ajaran ?></span>
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td colspan="8">Info Pendaftaran</td>
                            </tr>
                            <tr class="text-center">
                                <td colspan="3" style="width: 20%;">Kode Pendaftaran</td>
                                <td colspan="2" style="width: 20%;">Tanggal Pendaftaran</td>
                                <td colspan="3" style="width: 20%;">jurusan</td>
                            </tr>
                            <tr class="text-center">
                                <td colspan="3" style="width: 20%;"><?= $siswa->kode_pendaftaran ?></td>
                                <td colspan="2" style="width: 20%;"><?= $siswa->tgl_daftar ?></td>
                                <td colspan="3" style="width: 20%;"><?= $siswa->id_jurusan ?></td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="table table-bordered table-sm">
                        <tbody>
                            <tr class="text-center">
                                <td colspan="4" style="width: 50%;">Biodata Siswa</td>
                                <td colspan="4" style="width: 50%;">Alamat</td>
                            </tr>
                            <tr class="">
                                <td colspan="2" style="width: 20%;">Gelombang Daftar</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->kode_pendaftaran ?></td>
                                <td colspan="2" style="width: 20%;">RT / RW</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->rt . ' / ' . $siswa->rw ?></td>
                            </tr>
                            <tr class="">
                                <td colspan="2" style="width: 20%;">Nama Lengkap</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->nama ?></td>
                                <td colspan="2" style="width: 20%;">Dusun</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->dusun ?></td>
                            </tr>
                            <tr class="">
                                <td colspan="2" style="width: 20%;">Tempat Lahir</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->tempatlahir_siswa ?></td>
                                <td colspan="2" style="width: 20%;">Desa</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->desa ?></td>
                            </tr>
                            <tr class="">
                                <td colspan="2" style="width: 20%;">Tanggal Lahir</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->tgllahir_siswa ?></td>
                                <td colspan="2" style="width: 20%;">Kecamatan</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->kec ?></td>
                            </tr>
                            <tr class="">
                                <td colspan="2" style="width: 20%;">Jenis Kelamin</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->jk ?></td>
                                <td colspan="2" style="width: 20%;">Kabupaten</td>
                                <td colspan="2" style="width: 30%;">Banyuwangi</td>
                            </tr>
                            <tr class="">
                                <td colspan="2" style="width: 20%;">Sekolah Asal</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->sekolah_asal ?></td>
                                <td colspan="2" style="width: 20%;">No. HP</td>
                                <td colspan="2" style="width: 30%;"><?= $siswa->nohp ?></td>
                            </tr>
                            <tr>
                                <td colspan="8" class="text-center">Data Orang tua</td>
                            </tr>
                            <tr>
                                <td colspan="3">Nama Ayah Kandung</td>
                                <td colspan="5"><?= $siswa->nama_ayah ?></td>
                            </tr>
                            <tr>
                                <td colspan="3">Nama Ibu Kandung</td>
                                <td colspan="5"><?= $siswa->nama_ibu ?></td>
                            </tr>
                            <tr>
                                <td colspan="3">No. Hp Wali</td>
                                <td colspan="5"><?= $siswa->nohp_wali ?></td>
                            </tr>
                            <tr>
                                <td colspan="8" class="text-center">Warning! Siswa yang di terima pada gelombang ini, namun belum daftar ulang sesuai jadwal yang di tentukan, maka akan membayar daftar ulang sesuai ketentuan gelombang berikutnya. </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <table class="table table-bordered table-sm my-0">
                        <thead>
                            <tr>
                                <th>Persyaratan</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($persyaratan as $key => $syarat) : ?>
                                <tr>
                                    <td><?= $syarat->persyaratan ?> <br>
                                        <small class="text-info"><?= $syarat->satuan ?> Lembar</small>
                                    </td>
                                    <td>
                                        <?php if (isset($persyaratan_siswa[$key]->id_siswa)) :
                                            if ($persyaratan_siswa[$key]->id_siswa . $persyaratan_siswa[$key]->id_persyaratan != null && $persyaratan_siswa[$key]->status == 1) : ?>
                                                <span class="text-success">Sudah Lengkap</span>
                                            <?php else : ?>
                                                <span class="text-danger">Belum Lengkap</span>
                                            <?php endif ?>
                                        <?php else : ?>
                                            <span class="text-danger">Belum Lengkap</span>
                                        <?php endif ?>
                                    </td>
                                </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row d-flex justify-content-end">
                <div class="col-4">
                    <span>Banyuwangi, <?= date('d F Y') ?></span><br>
                    <span>Pendaftar</span><br>
                    <p class="pt-5 mt-2"><?= $siswa->nama ?></p>
                </div>
            </div>
        </div>
    </section>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
</body>

</html>
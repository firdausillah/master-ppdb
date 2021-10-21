<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>

<body>
    <section id="cetak">
        <div class="container pt-5 py-5">
            <div class="row justify-content-center">
                <div class="col-md-12 text-center">
                    <h4>BUKTI PENDAFTARAN SISWA BARU</h4>
                    <h4>SMK PGRI PESANGGARAN</h4>
                    <h4>TAHUN PELAJARAN 2021-2022</h4>
                </div>
            </div>
            <hr>
            <button class="btn btn-secondary d-print-none" onclick="window.print()">Print</button>
            <div class="row">
                <div class="col-md-6">
                    <table class="table table-borderless">
                        <tbody>
                            <tr>
                                <td>Kode Pendaftaran</td>
                                <td>:</td>
                                <td style="width:60%"><?= $siswa->kode_pendaftaran ?></td>
                            </tr>
                            <tr>
                                <td>Nama Lengkap</td>
                                <td>:</td>
                                <td><?= $siswa->nama ?></td>
                            </tr>
                            <tr>
                                <td>NIK</td>
                                <td>:</td>
                                <td><?= $siswa->nik_siswa ?></td>
                            </tr>
                            <tr>
                                <td>Nomor HP</td>
                                <td>:</td>
                                <td><?= $siswa->nohp ?></td>
                            </tr>
                            <tr>
                                <td>Jurusan Pilihan</td>
                                <td>:</td>
                                <td><?= $siswa->jurusan ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <p>Siswa tersebut dinyatakan sudah mendaftar dan <span class="text-uppercase"> <u><?= $siswa->status == 1 ? 'Sudah verifikasi' : 'belum verifikasi' ?></u> </span> kelengkapan datanya oleh admin, dengan persyaratan berikut : </p>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <table class="table my-0">
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
            <hr>
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
                <div class="container-fluid p-0">

                    <div class="row mb-2 mb-xl-3">
                        <div class="col-auto d-none d-sm-block">
                            <h3><?= $title ? $title : 'Judul Page' ?></h3>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <!-- <div class="card-header">
                                        HEADER
                                    </div> -->
                                    <div class="card-body">
                                        <?php
                                        if (isset($_GET['page'])) {
                                            $page = $_GET['page'];
                                        } else {
                                            $page = 'pribadi';
                                        }
                                        ?>
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link <?= $page == 'pribadi' ? 'active' : ''; ?>" data-toggle="tab" href="#pribadi">Data Pribadi</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link <?= $page == 'ayah' ? 'active' : ''; ?>" data-toggle="tab" href="#ayah">Data Ayah</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link <?= $page == 'ibu' ? 'active' : ''; ?>" data-toggle="tab" href="#ibu">Data Ibu</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link <?= $page == 'wali' ? 'active' : ''; ?>" data-toggle="tab" href="#wali">Data Wali</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link <?= $page == 'persyaratan' ? 'active' : ''; ?>" data-toggle="tab" href="#persyaratan">Data persyaratan</a>
                                            </li>
                                        </ul>

                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div id="pribadi" class="container tab-pane <?= $page == 'pribadi' ? 'active' : 'fade'; ?>"><br>
                                                <form action="<?= base_url('admin/siswa/savePribadi') ?>" method="POST">
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="kode_pendaftaran">Kode Pendaftaran <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" name="kode_pendaftaran" id="kode_pendaftaran" value="<?= $siswa->kode_pendaftaran ?>" required placeholder="" disabled>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="password">Password <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" name="password" id="password" value="<?= $siswa->password ?>" required placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nama">Nama Lengkap <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" name="nama" id="nama" value="<?= $siswa->nama ?>" required placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="jk">Jenis Kelamin</label>
                                                            <!-- <input type="text" class="form-control" name="jk" id="jk" value="<?= $siswa->jk ?>" placeholder=""> -->
                                                            <select class="form-control" name="jk" id="jk">
                                                                <option value="">Pilih</option>
                                                                <option <?= $siswa->jk == 'Laki-Laki' ? 'selected' : '' ?> value="Laki-laki">Laki-laki</option>
                                                                <option <?= $siswa->jk == 'Perempuan' ? 'selected' : '' ?> value="Perempuan">Perempuan</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nisn">NISN</label>
                                                            <input type="number" class="form-control" name="nisn" id="nisn" value="<?= $siswa->nisn ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nik_siswa">NIK <span class="text-danger">*</span></label>
                                                            <input type="number" class="form-control" name="nik_siswa" id="nik_siswa" value="<?= $siswa->nik_siswa ?>" required placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="no_kk">Nomor Kartu Keluarga <span class="text-danger">*</span></label>
                                                            <input type="number" class="form-control" name="no_kk" id="no_kk" value="<?= $siswa->no_kk ?>" required placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="tempatlahir_siswa">Tempat lahir</label>
                                                            <input type="text" class="form-control" name="tempatlahir_siswa" id="tempatlahir_siswa" value="<?= $siswa->tempatlahir_siswa ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="tgllahir_siswa">Tanggal Lahir</label>
                                                            <input type="date" class="form-control" name="tgllahir_siswa" id="tgllahir_siswa" value="<?= $siswa->tgllahir_siswa ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="noakte_lahir">Nomor Akte Kelahiran</label>
                                                            <input type="number" class="form-control" name="noakte_lahir" id="noakte_lahir" value="<?= $siswa->noakte_lahir ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="tinggi_badan">Tinggi Badan (cm)</label>
                                                            <input type="number" class="form-control" name="tinggi_badan" id="tinggi_badan" value="<?= $siswa->tinggi_badan ?>" placeholder="cm">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="berat_badan">Berat Badan (kg)</label>
                                                            <input type="number" class="form-control" name="berat_badan" id="berat_badan" value="<?= $siswa->berat_badan ?>" placeholder="kg">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="agama">Agama</label>
                                                            <select class="form-control" name="agama" id="agama">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <option value="Islam" <?= $siswa->agama == 'Islam' ? 'selected' : '' ?>>Islam</option>
                                                                <option value="Kristen/Protestan" <?= $siswa->agama == 'Kristen/protestan' ? 'selected' : '' ?>>Kristen/Protestan</option>
                                                                <option value="Katholik" <?= $siswa->agama == 'Katholik' ? 'selected' : '' ?>>Katholik</option>
                                                                <option value="Hindu" <?= $siswa->agama == 'Hindu' ? 'selected' : '' ?>>Hindu</option>
                                                                <option value="Budha" <?= $siswa->agama == 'Budha' ? 'selected' : '' ?>>Budha</option>
                                                                <option value="Khong Hu Cu" <?= $siswa->agama == 'Khong Hu Cu' ? 'selected' : '' ?>>Khong Hu Cu</option>
                                                                <option value="Kepercayaan Kpd Tuhan YME" <?= $siswa->agama == 'Kepercayaan Kpd Tuhan YME' ? 'selected' : '' ?>>Kepercayaan Kpd Tuhan YME</option>
                                                            </select>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="kewarganegaraan">Kewarganegaraan</label>
                                                            <input type="text" class="form-control" name="kewarganegaraan" id="kewarganegaraan" value="<?= $siswa->kewarganegaraan ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nohp">Nomor HP <span class="text-danger">*</span></label>
                                                            <input type="number" class="form-control" name="nohp" id="nohp" value="<?= $siswa->nohp ?>" required placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="alamat_siswa">Alamat Lengkap</label>
                                                            <input type="text" class="form-control" name="alamat_siswa" id="alamat_siswa" value="<?= $siswa->alamat_siswa ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="rt">RT</label>
                                                            <input type="text" class="form-control" name="rt" id="rt" value="<?= $siswa->rt ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="rw">RW</label>
                                                            <input type="text" class="form-control" name="rw" id="rw" value="<?= $siswa->rw ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="dusun">Dusun</label>
                                                            <input type="text" class="form-control" name="dusun" id="dusun" value="<?= $siswa->dusun ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="desa">Desa</label>
                                                            <input type="text" class="form-control" name="desa" id="desa" value="<?= $siswa->desa ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="kec">Kecamatan</label>
                                                            <input type="text" class="form-control" name="kec" id="kec" value="<?= $siswa->kec ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="kodepos">Kodepos</label>
                                                            <input type="text" class="form-control" name="kodepos" id="kodepos" value="<?= $siswa->kodepos ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="tempat_tinggal">Tempat Tinggal</label>
                                                            <select class="form-control" name="tempat_tinggal">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($tempattinggal as $tinggal) : ?>
                                                                    <option value="<?= $tinggal->id ?>" <?= $siswa->tempat_tinggal == $tinggal->id ? 'selected' : '' ?>><?= $tinggal->tempattinggal ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="moda_transportasi">Moda Transportasi</label>
                                                            <select class="form-control" name="moda_transportasi">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($transportasi as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->moda_transportasi == $val->id ? 'selected' : '' ?>><?= $val->transportasi ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="anak_berapa">Anak ke-</label>
                                                            <input type="number" class="form-control" name="anak_berapa" id="anak_berapa" value="<?= $siswa->anak_berapa ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="punya_kip">Kartu Indonesia Pintar (KIP)</label>
                                                            <select class="form-control" name="punya_kip">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <option value="Ya" <?= $siswa->punya_kip == 'Ya' ? 'selected' : '' ?>>Ya</option>
                                                                <option value="Tidak" <?= $siswa->punya_kip == 'Tidak' ? 'selected' : '' ?>>Tidak</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="sekolah_asal">Sekolah Asal <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" name="sekolah_asal" id="sekolah_asal" value="<?= $siswa->sekolah_asal ?>" required placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="id_jurusan">Jurusan <span class="text-danger">*</span></label>
                                                            <select class="form-control" name="id_jurusan" id="id_jurusan">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($jurusan as $key => $jur) : ?>
                                                                    <option value="<?= $jur->id ?>" <?= $siswa->id_jurusan == $jur->id ? 'selected' : '' ?>><?= $jur->jurusan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-12 text-right">
                                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div id="ayah" class="container tab-pane <?= $page == 'ayah' ? 'active' : 'fade'; ?>"><br>
                                                <form action="<?= base_url('admin/siswa/saveAyah') ?>" method="POST">
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nama_ayah">Nama Ayah</label>
                                                            <input type="text" class="form-control" name="nama_ayah" id="nama_ayah" value="<?= $siswa->nama_ayah ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nik_ayah">NIK Ayah</label>
                                                            <input type="number" class="form-control" name="nik_ayah" id="nik_ayah" value="<?= $siswa->nik_ayah ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="tgllahir_ayah">Tanggal Lahir Ayah</label>
                                                            <input type="date" class="form-control" name="tgllahir_ayah" id="tgllahir_ayah" value="<?= $siswa->tgllahir_ayah ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="pendidikan_ayah">Pendidikan Ayah</label>
                                                            <!-- <input type="text" class="form-control" name="pendidikan_ayah" id="pendidikan_ayah" value="<?= $siswa->pendidikan_ayah ?>" placeholder=""> -->
                                                            <select class="form-control" name="pendidikan_ayah">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($pendidikan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->pendidikan_ayah == $val->id ? 'selected' : '' ?>><?= $val->pendidikan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="pekerjaan_ayah">Pekerjaan Ayah</label>
                                                            <!-- <input type="text" class="form-control" name="pekerjaan_ayah" id="pekerjaan_ayah" value="<?= $siswa->pekerjaan_ayah ?>" placeholder=""> -->
                                                            <select class="form-control" name="pekerjaan_ayah">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($pekerjaan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->pekerjaan_ayah == $val->id ? 'selected' : '' ?>><?= $val->pekerjaan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="penghasilan_ayah">Penghasilan Ayah</label>
                                                            <!-- <input type="text" class="form-control" name="penghasilan_ayah" id="penghasilan_ayah" value="<?= $siswa->penghasilan_ayah ?>" placeholder=""> -->
                                                            <select class="form-control" name="penghasilan_ayah">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($penghasilan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->penghasilan_ayah == $val->id ? 'selected' : '' ?>><?= $val->penghasilan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-12 text-right">
                                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div id="ibu" class="container tab-pane <?= $page == 'ibu' ? 'active' : 'fade'; ?>"><br>
                                                <form action="<?= base_url('admin/siswa/saveIbu') ?>" method="POST">
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nama_ibu">Nama Ibu</label>
                                                            <input type="text" class="form-control" name="nama_ibu" id="nama_ibu" value="<?= $siswa->nama_ibu ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nik_ibu">NIK Ibu</label>
                                                            <input type="number" class="form-control" name="nik_ibu" id="nik_ibu" value="<?= $siswa->nik_ibu ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="tgllahir_ibu">Tanggal Lahir Ibu</label>
                                                            <input type="date" class="form-control" name="tgllahir_ibu" id="tgllahir_ibu" value="<?= $siswa->tgllahir_ibu ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="pendidikan_ibu">Pendidikan Ibu</label>
                                                            <!-- <input type="text" class="form-control" name="pendidikan_ibu" id="pendidikan_ibu" value="<?= $siswa->pendidikan_ibu ?>" placeholder=""> -->
                                                            <select class="form-control" name="pendidikan_ibu">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($pendidikan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->pendidikan_ibu == $val->id ? 'selected' : '' ?>><?= $val->pendidikan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="pekerjaan_ibu">Pekerjaan Ibu</label>
                                                            <!-- <input type="text" class="form-control" name="pekerjaan_ibu" id="pekerjaan_ibu" value="<?= $siswa->pekerjaan_ibu ?>" placeholder=""> -->
                                                            <select class="form-control" name="pekerjaan_ibu">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($pekerjaan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->pekerjaan_ibu == $val->id ? 'selected' : '' ?>><?= $val->pekerjaan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="penghasilan_ibu">Penghasilan Ibu</label>
                                                            <!-- <input type="text" class="form-control" name="penghasilan_ibu" id="penghasilan_ibu" value="<?= $siswa->penghasilan_ibu ?>" placeholder=""> -->
                                                            <select class="form-control" name="penghasilan_ibu">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($penghasilan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->penghasilan_ibu == $val->id ? 'selected' : '' ?>><?= $val->penghasilan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-12 text-right">
                                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div id="wali" class="container tab-pane <?= $page == 'wali' ? 'active' : 'fade'; ?>"><br>
                                                <form action="<?= base_url('admin/siswa/saveWali') ?>" method="POST">
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nama_wali">Nama Wali</label>
                                                            <input type="text" class="form-control" name="nama_wali" id="nama_wali" value="<?= $siswa->nama_wali ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="nik_wali">NIK Wali</label>
                                                            <input type="number" class="form-control" name="nik_wali" id="nik_wali" value="<?= $siswa->nik_wali ?>" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="tgllahir_wali">Tanggal Lahir Wali</label>
                                                            <input type="date" class="form-control" name="tgllahir_wali" id="tgllahir_wali" value="<?= $siswa->tgllahir_wali ?>" placeholder="">
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="pendidikan_wali">Pendidikan Wali</label>
                                                            <!-- <input type="text" class="form-control" name="pendidikan_wali" id="pendidikan_wali" value="<?= $siswa->pendidikan_wali ?>" placeholder=""> -->
                                                            <select class="form-control" name="pendidikan_wali">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($pendidikan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->pendidikan_wali == $val->id ? 'selected' : '' ?>><?= $val->pendidikan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="pekerjaan_wali">Pekerjaan Wali</label>
                                                            <!-- <input type="text" class="form-control" name="pekerjaan_wali" id="pekerjaan_wali" value="<?= $siswa->pekerjaan_wali ?>" placeholder=""> -->
                                                            <select class="form-control" name="pekerjaan_wali">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($pekerjaan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->pekerjaan_wali == $val->id ? 'selected' : '' ?>><?= $val->pekerjaan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                        <div class="mb-3 col-md-6">
                                                            <label class="form-label" for="penghasilan_wali">Penghasilan Wali</label>
                                                            <!-- <input type="text" class="form-control" name="penghasilan_wali" id="penghasilan_wali" value="<?= $siswa->penghasilan_wali ?>" placeholder=""> -->
                                                            <select class="form-control" name="penghasilan_wali">
                                                                <option value="">----Pilih Di Sini----</option>
                                                                <?php foreach ($penghasilan as $val) : ?>
                                                                    <option value="<?= $val->id ?>" <?= $siswa->penghasilan_wali == $val->id ? 'selected' : '' ?>><?= $val->penghasilan ?></option>
                                                                <?php endforeach ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-12 text-right">
                                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div id="persyaratan" class="container tab-pane <?= $page == 'persyaratan' ? 'active' : 'fade'; ?>"><br>
                                                <form action="<?= base_url('admin/siswa/savePersyaratan/' . $siswa->id) ?>" method="POST">
                                                    <?php foreach ($persyaratan as $key => $val) : ?>
                                                        <div class="row">
                                                            <div class="mb-3 col-md-6">
                                                                <label class="form-label" for=""><?= $val->persyaratan . ' <small class="text-success">' . $val->satuan . ' Lembar</small>' ?></label>
                                                                <select class="form-control" disabled name="status[]" id="">
                                                                    <option value="">----Belum dicek----</option>
                                                                    <?php if (isset($persyaratan_siswa[$key]->id_siswa)) : ?>
                                                                        <option <?= $persyaratan_siswa[$key]->id_siswa . $persyaratan_siswa[$key]->id_persyaratan != null && $persyaratan_siswa[$key]->status == 0 ? 'selected' : '' ?> value="0">Belum</option>
                                                                        <option <?= $persyaratan_siswa[$key]->id_siswa . $persyaratan_siswa[$key]->id_persyaratan != null && $persyaratan_siswa[$key]->status == 1 ? 'selected' : '' ?> value="1">Sudah</option>
                                                                    <?php else : ?>
                                                                        <option value="0">Belum</option>
                                                                        <option value="1">Sudah</option>
                                                                    <?php endif ?>

                                                                </select>
                                                                <input type="hidden" name="id_siswa[]" value="<?= $siswa->id ?>">
                                                                <input type="hidden" name="id_persyaratan[]" value="<?= $val->id ?>">
                                                            </div>
                                                        </div>
                                                    <?php endforeach ?>
                                                    <div class="mb-3 col-md-6">
                                                        <label class="form-label" for="verifikasi">Status Verifikasi</label>
                                                        <select class="form-control" disabled name="verifikasi">
                                                            <option value="">----Belum dicek----</option>
                                                            <option value="Sudah Verifikasi" <?= $siswa->status == "Sudah Verifikasi" ? 'selected' : '' ?>>Sudah Verifikasi</option>
                                                            <option value="Belum Verifikasi" <?= $siswa->status == "Belum Verifikasi" ? 'selected' : '' ?>>Belum Verifikasi</option>
                                                        </select>
                                                    </div>
                                                    <!-- <div class="row">
                                                        <div class="mb-3 col-md-12 text-right">
                                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                                        </div>
                                                    </div> -->
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
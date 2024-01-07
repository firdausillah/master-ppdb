<div class="container-fluid p-0">

    <div class="row mb-2 mb-xl-3">
        <div class="col-auto d-none d-sm-block">
            <h3><?= $title ? $title : 'Judul Page' ?></h3>
        </div>

    </div>
    <div class="row">
        <div class="col-12 col-lg-12 col-xxl-9 d-flex">
            <div class="card flex-fill">
                <?= form_open_multipart(base_url('admin/osis/save')) ?>
                <input type="hidden" name="id" value="<?= @$osis->id ?>">
                <!-- <input type="hidden" name="foto" value="<?= @$osis->foto ?>"> -->
                <input type="hidden" name="slug" value="<?= @$osis->slug ?>">
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label">Nama</label>
                        <input type="input" class="form-control" name="nama" value="<?= @$osis->nama ?>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="id_jurusan">Jurusan <span class="text-danger">*</span></label>
                        <select class="form-control" name="id_jurusan" id="id_jurusan">
                            <option value="">----Pilih Di Sini----</option>
                            <?php foreach ($jurusan as $key => $jur) : ?>
                                <option value="<?= $jur->id ?>" <?= @$osis->id_jurusan == $jur->id ? 'selected' : '' ?>><?= $jur->jurusan ?></option>
                            <?php endforeach ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tahun Aktif</label>
                        <input type="input" class="form-control" name="tahun_aktif" value="<?= @$osis->tahun_aktif ?>">
                    </div>
                    <div class="mb-3">
                        <!-- <label class="form-label">Gambar</label> -->
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-label" for="">Foto Profile</label>
                                    <input class="form-control foto" type="file" name="foto">
                                    <input type="hidden" class="form-control foto" type="input" name="file_foto" id="file_foto">
                                    <input type="hidden" class="form-control" value="<?= @$osis->foto ?>" name="gambar">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img src="<?= base_url('uploads/img/osis/' . @$osis->foto) ?>" height="200px" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" card-footer text-right">
                    <a href="<?= base_url() ?>admin/osis" class="btn btn-secondary btn-sm">Kembali</a>
                    <button type="submit" class="btn btn-success btn-sm">Simpan</button>
                </div>
                </form>
            </div>
        </div>
    </div>

</div>
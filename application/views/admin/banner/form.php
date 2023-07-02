<div class="container-fluid p-0">

    <div class="row mb-2 mb-xl-3">
        <div class="col-auto d-none d-sm-block">
            <h3><?= $title ? $title : 'Judul Page' ?></h3>
        </div>

    </div>
    <div class="row">
        <div class="col-12 col-lg-12 col-xxl-9 d-flex">
            <div class="card flex-fill">
                <?= form_open_multipart(base_url('admin/banner/save')) ?>
                <input type="hidden" name="id" value="<?= @$banner->id ?>">
                <!-- <input type="hidden" name="foto" value="<?= @$banner->foto ?>"> -->
                <input type="hidden" name="slug" value="<?= @$banner->slug ?>">
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label">Judul</label>
                        <input type="input" class="form-control" name="nama" value="<?= @$banner->nama ?>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Gambar</label>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-label" for="">Banner</label>
                                    <input class="form-control foto" type="file" name="foto">
                                    <input type="hidden" class="form-control foto" type="input" name="file_foto" id="file_foto">
                                    <input type="hidden" class="form-control" value="<?= @$banner->foto ?>" name="gambar">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img src="<?= base_url('uploads/img/banner/' . @$banner->foto) ?>" height="200px" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">keterangan</label>
                        <!-- <input type="text" class="form-control" name="keterangan" "> -->
                        <textarea name="keterangan" class="form-control" id="editor" cols="30" rows="10"><?= @$banner->keterangan ?></textarea>
                    </div>


                </div>
                <div class=" card-footer text-right">
                    <a href="<?= base_url() ?>admin/banner" class="btn btn-secondary btn-sm">Kembali</a>
                    <button type="submit" class="btn btn-success btn-sm">Simpan</button>
                </div>
                </form>
            </div>
        </div>
    </div>

</div>
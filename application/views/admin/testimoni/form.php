<div class="container-fluid p-0">

    <div class="row mb-2 mb-xl-3">
        <div class="col-auto d-none d-sm-block">
            <h3><?= $title ? $title : 'Judul Page' ?></h3>
        </div>

    </div>
    <div class="row">
        <div class="col-12 col-lg-12 col-xxl-9 d-flex">
            <div class="card flex-fill">
                <?= form_open_multipart(base_url('admin/testimoni/save')) ?>
                <input type="hidden" name="id" value="<?= @$testimoni->id ?>">
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label">Nama Alumni</label>
                        <input type="input" class="form-control" name="alumni_nama" value="<?= @$testimoni->alumni_nama ?>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tahun Lulus</label>
                        <input type="number" class="form-control" name="tahun_lulus" value="<?= @$testimoni->tahun_lulus ?>" min="1970">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Testimoni</label>
                        <textarea name="keterangan" class="form-control" id="editor" cols="30" rows="10"><?= @$testimoni->keterangan ?></textarea>
                    </div>


                </div>
                <div class=" card-footer text-right">
                    <a href="<?= base_url() ?>admin/testimoni" class="btn btn-secondary btn-sm">Kembali</a>
                    <button type="submit" class="btn btn-success btn-sm">Simpan</button>
                </div>
                </form>
            </div>
        </div>
    </div>

</div>
<div class="container-fluid p-0">

    <div class="row mb-2 mb-xl-3">
        <div class="col-auto d-none d-sm-block">
            <h3><?= $title ? $title : 'Judul Page' ?></h3>
        </div>

    </div>
    <div class="row">
        <div class="col-12 col-lg-12 col-xxl-9 d-flex">
            <div class="card flex-fill">
                <?= form_open_multipart(base_url('admin/user/update/' . $user->id)) ?>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label">Nama</label>
                        <input type="text" class="form-control" name="nama" value="<?= $user->nama ?>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" class="form-control" name="username" value="<?= $user->username ?>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="text" class="form-control" name="password" value="<?= $user->password ?>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Role</label>
                        <select class="form-control" name="role" id="role" required>
                            <option value="">----Pilih Di Sini----</option>
                            <option value="superadmin" <?= $user->role == 'superadmin' ? 'selected' : '' ?>>Super Admin</option>
                            <option value="adminppdb" <?= $user->role == 'adminppdb' ? 'selected' : '' ?>>Admin PPDB</option>
                            <option value="adminberita" <?= $user->role == 'adminberita' ? 'selected' : '' ?>>Admin Berita</option>
                        </select>
                    </div>
                </div>
                <div class="card-footer text-right">
                    <a href="<?= base_url() ?>admin/user" class="btn btn-secondary btn-sm">Kembali</a>
                    <button type="submit" class="btn btn-success btn-sm">Simpan</button>
                </div>
                </form>
            </div>
        </div>
    </div>

</div>
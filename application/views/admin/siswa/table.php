<div class="container-fluid p-0">

    <div class="row mb-2 mb-xl-3">
        <div class="col-auto d-none d-sm-block">
            <h3><?= $title ? $title : 'Judul Page' ?></h3>
        </div>

    </div>
    <div class="row">
        <div class="col-12 col-lg-12 d-flex">
            <div class="card flex-fill">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="myTable" class="table table-sm p-3">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th class="text-midle">Kode pendaftaran</th>
                                    <th class="text-midle">Nama Pendaftar</th>
                                    <th class="d-none d-xl-table-cell">Nomor HP</th>
                                    <th class="text-midle">Status</th>
                                    <th class="text-midle">Asal Sekolah</th>
                                    <th class="text-midle">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($siswa as $no => $s) : ?>
                                    <tr>
                                        <td><?= $no + 1; ?></td>
                                        <td><?= $s->kode_pendaftaran ?></td>
                                        <td><?= $s->nama ?></td>
                                        <td class="d-none d-xl-table-cell"><?= $s->nohp ?></td>
                                        <td>
                                            <a href="" data-toggle="modal" data-target="#exampleModal">
                                                <span class="btn btn-success btn-pill btn-sm">Diterima</span>
                                            </a>
                                        </td>
                                        <td><?= $s->sekolah_asal ?></td>
                                        <td>
                                            <a href="<?= base_url('admin/siswa/delete/' . $s->id) ?>" class="btn btn-success btn-sm tombol-hapus"><i class="fa fa-print"></i></a>
                                            <a href="<?= base_url('admin/siswa/edit/' . $s->id . '?page=pribadi') ?>" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                            <a href="<?= base_url('admin/siswa/delete/' . $s->id) ?>" class="btn btn-danger btn-sm tombol-hapus"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                <?php endforeach ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ubah Status</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open_multipart('admin/syarat/save') ?>
            <div class="modal-body">
                <div class="mb-3 row">
                    <label class="col-form-label col-sm-2 text-sm-right">Pilih Status</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Default radio
                        </label>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-form-label col-sm-2 text-sm-right">Keterangan</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="satuan" required>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            </form>
        </div>
    </div>
</div>
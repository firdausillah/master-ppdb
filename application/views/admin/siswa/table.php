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
                                            <a href="" data-toggle="modal" data-target=".bd-example-modal-sm">
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

<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">Ubah Status</div>
            <div class="modal-body">
                <div class="card-body">
                    <div class="text-center">
                        <label class="form-check form-check-inline">
                            <input class="form-check-input" checked="" type="radio" name="inline-radios-example" value="option1">
                            <span class="form-check-label">
                                Diterima
                            </span>
                        </label>
                        <label class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="inline-radios-example" value="option2">
                            <span class="form-check-label">
                                Ditolak
                            </span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>
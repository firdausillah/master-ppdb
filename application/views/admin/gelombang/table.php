<div class="container-fluid p-0">

    <div class="row mb-2 mb-xl-3">
        <div class="col-auto d-none d-sm-block">
            <h3><?= $title ? $title : 'Judul Page' ?></h3>
        </div>

    </div>
    <div class="row">
        <div class="col-12 col-lg-12 col-xxl-9 d-flex">
            <div class="card flex-fill">
                <div class="card-header">
                    <h5 class="card-title">Bordered Table</h5>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                        Tambah Gelombang Pendaftaran
                    </button>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th class="text-midle">Gelombang</th>
                            <th class="text-midle">Tanggal dibuka</th>
                            <th class="text-midle">Tanggal ditutup</th>
                            <th class="text-midle">Status</th>
                            <th class="text-midle">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($gelombang as $no => $gel) : ?>
                            <tr>
                                <td><?= $no + 1; ?></td>
                                <td>Gelombang ke-<?= $gel->gelombang ?></td>
                                <td class="d-none d-xl-table-cell"><?= $gel->tgl_buka ?></td>
                                <td class="d-none d-xl-table-cell"><?= $gel->tgl_tutup ?></td>
                                <td><?= $gel->status == 1 ? '<span class="badge bg-success"> Dibuka </span>' : '<span class="badge bg-danger"> Ditutup </span>' ?></td>
                                <td class="d-none d-md-table-cell">
                                    aksi
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Gelombang Pendaftaran</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label class="form-label">Gelombang</label>
                    <textarea class="form-control" rows="1"></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Tgl di Buka</label>
                    <textarea class="form-control" rows="1"></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Tgl di Tutup</label>
                    <textarea class="form-control" rows="1"></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Status</label>
                    <textarea class="form-control" rows="1"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
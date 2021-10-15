<div class="card">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?></h5>
        <div class="text-right">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                Tambah persyaratan
            </button>
        </div>
    </div>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th style="width:2%;">No</th>
                <th style="width:40%;">Persyaratan</th>
                <th style="width:40%;">Keterangan</th>
                <th>Action</th>

            </tr>
        </thead>
        <tbody>
            <?php foreach ($syarat as $s => $sy) : ?>
                <tr>
                    <td><?= $s + 1; ?></td>
                    <td class="text-midle"><?= $sy->nama_syarat; ?></td>
                    <td class="text-midle"><?= $sy->satuan; ?></td>
                    <td></td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Persyaratan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="mb-3 row">
                    <label class="col-form-label col-sm-2 text-sm-right">Persyaratan</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-form-label col-sm-2 text-sm-right">Keterangan</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
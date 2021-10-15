<div class="card">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?></h5>
        <div class="text-right">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                Tambah Pekerjaan
            </button>
        </div>
    </div>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th style="width:2%;">No</th>
                <th class="text-center" style="width:80%;">Pekerjaan Orang Tua</th>
                <th class="text-center">Action</th>

            </tr>
        </thead>
        <tbody>
            <?php foreach ($pekerjaan as $p => $kerja) : ?>
                <tr>
                    <td><?= $p + 1; ?></td>
                    <td class="text-midle"><?= $kerja->nama_pekerjaan; ?></td>

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
                <h5 class="modal-title" id="exampleModalLabel"> Tambah Pekerjaan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="mb-3 row">
                    <label class="col-form-label col-sm-2 text-sm-right">Pekerjaan</label>
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
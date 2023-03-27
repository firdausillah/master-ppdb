<div class="card">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?></h5>
        <div class="text-right">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Tambah sarpras
            </button>
        </div>
    </div>

    <table id="myTable" class="table table-bordered table-responsive p-3">
        <thead>
            <tr>
                <th style="width:2%;">No</th>
                <th class="text-center" style="width:80%;">sarpras Orang Tua</th>
                <th class="text-center">Action</th>

            </tr>
        </thead>
        <tbody>
            <?php foreach ($sarpras as $p => $value) : ?>
                <tr>
                    <td><?= $p + 1; ?></td>
                    <td class="text-midle"><?= $value->nama; ?></td>
                    <td>
                        <a href="<?= base_url('admin/sarpras/edit/' . $value->id) ?>" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                        <a href="<?= base_url('admin/sarpras/delete/' . $value->id) ?>" class="btn btn-danger btn-sm tombol-hapus"><i class="fa fa-trash"></i></a>

                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"> Tambah sarpras</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <?= form_open_multipart('admin/sarpras/save') ?>
            <div class="modal-body">
                <div class="mb-3 row">
                    <label class="col-form-label col-sm-2 text-sm-right">sarpras</label>
                    <div class="col-sm-10">
                        <input type="text" name="sarpras" class="form-control" required>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            </form>
        </div>
    </div>
</div>
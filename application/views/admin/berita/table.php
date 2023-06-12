<div class="container-fluid p-0">

    <div class="row mb-2 mb-xl-3">
        <div class="col-auto d-none d-sm-block">
            <h3><?= $title ? $title : 'Judul Page' ?></h3>
        </div>

    </div>
    <div class="row">
        <div class="col-12 col-lg-12 d-flex">
            <div class="card flex-fill">
                <div class="card-header">
                    <div class="text-right">
                        <a href="<?= base_url('admin/berita/add') ?>" class="btn btn-primary">
                            Tambah Berita
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="myTable" class="table table-sm p-3">
                            <thead>
                                <tr>
                                    <th style="width:2%;">No</th>
                                    <th>Berita</th>
                                    <th>Foto</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($berita as $c => $sar) : ?>
                                    <tr>
                                        <td><?= $c + 1; ?></td>
                                        <td><?= $sar->nama; ?></td>
                                        <td><img src="<?= base_url('uploads/img/berita/' . $sar->foto) ?>" height="100px" alt=""></td>
                                        <td>
                                            <a href="<?= base_url('admin/berita/edit/' . $sar->id) ?>" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                            <a href="<?= base_url('admin/berita/delete/' . $sar->id) ?>" class="btn btn-danger btn-sm tombol-hapus"><i class="fa fa-trash"></i></a>
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
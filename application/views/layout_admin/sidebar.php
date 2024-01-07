<nav id="sidebar" class="sidebar js-sidebar">
    <div class="sidebar-content js-simplebar" data-simplebar="init">
        <div class="simplebar-wrapper" style="margin: 0px;">
            <div class="simplebar-height-auto-observer-wrapper">
                <div class="simplebar-height-auto-observer"></div>
            </div>
            <div class="simplebar-mask">
                <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                    <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: 100%; overflow: hidden scroll;">
                        <?php if ($this->session->userdata('role') == 'superadmin') : ?>
                            <div class="simplebar-content" style="padding: 0px;">
                                <a class="sidebar-brand text-center" href="index.html">
                                    <span class="align-middle">ADMIN PANEL</span>
                                </a>

                                <div class="sidebar-user">
                                    <div class="d-flex justify-content-center">
                                        <div class="flex-grow-1 ps-2">
                                            <a class="sidebar-user-title dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                                <?= $this->session->userdata('nama') ?>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-start">
                                                <a class="dropdown-item" href="<?= base_url('cetak/exportexcel') ?>">Export Excel</a>
                                                <a class="dropdown-item" href="<?= base_url('admin/log_user') ?>">Log Aktifitas User</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="<?= base_url('auth/logout') ?>">Log out</a>
                                            </div>

                                            <div class="sidebar-user-subtitle"><?= $this->session->userdata('role') ?></div>
                                        </div>
                                    </div>
                                </div>

                                <ul class="sidebar-nav">
                                    <li class="sidebar-header">
                                        Pages
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link dashboard" href="<?= site_url('admin/dashboard') ?>">
                                            <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-item">
                                        <a data-bs-target="#master" data-bs-toggle="collapse" class="sidebar-link collapsed" aria-expanded="false">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle align-middle">
                                                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                                                <polyline points="22 4 12 14.01 9 11.01"></polyline>
                                            </svg> <span class="align-middle">Master</span>
                                        </a>
                                        <ul id="master" class="sidebar-dropdown list-unstyled collapse" data-parent="#sidebar">
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/jurusan">Jurusan</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/gelombang">Gelombang Pendaftaran</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/syarat">Syarat Pendaftaran</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/marketing">Marketing</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/tempattinggal">Tempat Tinggal</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/transportasi">Moda Transportasi</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/pendidikan">Pendidikan</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/pekerjaan">Pekerjaan</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/penghasilan">Penghasilan Orang Tua</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/asalsekolah">Asal Sekolah</a></li>
                                        </ul>
                                    </li>

                                    <li class="sidebar-item">
                                        <a data-bs-target="#siswa" data-bs-toggle="collapse" class="sidebar-link collapsed" aria-expanded="false">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-corner-right-down align-middle">
                                                <polyline points="10 15 15 20 20 15"></polyline>
                                                <path d="M4 4h7a4 4 0 0 1 4 4v12"></path>
                                            </svg> <span class="align-middle">Siswa</span>
                                        </a>
                                        <ul id="siswa" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar" style="">
                                            <li class="sidebar-item">
                                                <a data-bs-target="#ppdb" data-bs-toggle="collapse" class="sidebar-link" aria-expanded="true">PPDB</a>
                                                <ul id="ppdb" class="sidebar-dropdown list-unstyled collapse" data-parent="#sidebar">
                                                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url('admin/siswa') ?>">Semua Siswa</a></li>
                                                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url('admin/siswa/sudahverifikasi') ?>">Siswa Diverifikasi</a></li>
                                                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url('admin/siswa/belumverifikasi') ?>">Siswa Belum Verifikasi</a></li>
                                                </ul>
                                            </li>
                                            <li class="sidebar-item">
                                                <a data-bs-target="#multi-3" data-bs-toggle="collapse" class="sidebar-link collapsed" aria-expanded="false">Three Levels</a>
                                                <ul id="multi-3" class="sidebar-dropdown list-unstyled collapse">
                                                    <li class="sidebar-item">
                                                        <a data-bs-target="#multi-3-1" data-bs-toggle="collapse" class="sidebar-link collapsed" aria-expanded="false">Item 1</a>
                                                        <ul id="multi-3-1" class="sidebar-dropdown list-unstyled collapse">
                                                            <li class="sidebar-item">
                                                                <a class="sidebar-link" href="#">Item 1</a>
                                                            </li>
                                                            <li class="sidebar-item">
                                                                <a class="sidebar-link" href="#">Item 2</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li class="sidebar-item">
                                                        <a class="sidebar-link" href="#">Item 2</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link berita" href="<?= site_url('admin/berita') ?>">
                                            <i class="fa fa-newspaper" aria-hidden="true"></i> <span class="align-middle">Berita</span>
                                        </a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link gtk" href="<?= site_url('admin/gtk') ?>">
                                            <i class="fa fa-users" aria-hidden="true"></i> <span class="align-middle">GTK</span>
                                        </a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link user" href="<?= site_url('admin/user') ?>">
                                            <i class="align-middle" data-feather="user"></i> <span class="align-middle">User</span>
                                        </a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link profile" href="<?= site_url('admin/profile') ?>">
                                            <i class="align-middle" data-feather="file"></i> <span class="align-middle">Profile</span>
                                        </a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link osis" href="<?= site_url('admin/osis') ?>">
                                            <i class="align-middle" data-feather="users"></i> <span class="align-middle">Osis</span>
                                        </a>
                                    </li>
                                    <li class="sidebar-header">
                                        Front
                                    </li>
                                    <li class="sidebar-item">
                                        <a data-bs-target="#home" data-bs-toggle="collapse" class="sidebar-link collapsed" aria-expanded="false">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle align-middle">
                                                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                                                <polyline points="22 4 12 14.01 9 11.01"></polyline>
                                            </svg> <span class="align-middle">Home</span>
                                        </a>
                                        <ul id="home" class="sidebar-dropdown list-unstyled collapse" data-parent="#sidebar">
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/banner">Banner</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/testimoni">Testimoni Alumni</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/sarpras">Sarpras</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        <?php endif ?>
                        <?php if ($this->session->userdata('role') == 'adminberita') : ?>
                            <div class="simplebar-content" style="padding: 0px;">
                                <a class="sidebar-brand text-center" href="index.html">
                                    <span class="align-middle">ADMIN PANEL</span>
                                </a>

                                <div class="sidebar-user">
                                    <div class="d-flex justify-content-center">
                                        <div class="flex-grow-1 ps-2">
                                            <a class="sidebar-user-title dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                                <?= $this->session->userdata('nama') ?>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-start">
                                                <a class="dropdown-item" href="<?= base_url('auth/logout') ?>">Log out</a>
                                            </div>

                                            <div class="sidebar-user-subtitle"><?= $this->session->userdata('role') ?></div>
                                        </div>
                                    </div>
                                </div>

                                <ul class="sidebar-nav">
                                    <li class="sidebar-header">
                                        Pages
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link berita" href="<?= site_url('admin/berita') ?>">
                                            <i class="fa fa-newspaper" aria-hidden="true"></i> <span class="align-middle">Berita</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        <?php endif ?>
                        <?php if ($this->session->userdata('role') == 'adminppdb') : ?>
                            <div class="simplebar-content" style="padding: 0px;">
                                <a class="sidebar-brand text-center" href="index.html">
                                    <span class="align-middle">ADMIN PANEL</span>
                                </a>

                                <div class="sidebar-user">
                                    <div class="d-flex justify-content-center">
                                        <div class="flex-grow-1 ps-2">
                                            <a class="sidebar-user-title dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                                <?= $this->session->userdata('nama') ?>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-start">
                                                <a class="dropdown-item" href="<?= base_url('auth/logout') ?>">Log out</a>
                                            </div>

                                            <div class="sidebar-user-subtitle"><?= $this->session->userdata('role') ?></div>
                                        </div>
                                    </div>
                                </div>

                                <ul class="sidebar-nav">
                                    <li class="sidebar-header">
                                        Pages
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link dashboard" href="<?= site_url('admin/dashboard') ?>">
                                            <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                                        </a>
                                    </li>
                                    <li class="sidebar-item">
                                        <a data-bs-target="#siswa" data-bs-toggle="collapse" class="sidebar-link collapsed" aria-expanded="false">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-corner-right-down align-middle">
                                                <polyline points="10 15 15 20 20 15"></polyline>
                                                <path d="M4 4h7a4 4 0 0 1 4 4v12"></path>
                                            </svg> <span class="align-middle">Siswa</span>
                                        </a>
                                        <ul id="siswa" class="sidebar-dropdown list-unstyled collapse" data-parent="#sidebar">
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url('admin/siswa') ?>">Semua Siswa</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url('admin/siswa/sudahverifikasi') ?>">Siswa Diverifikasi</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url('admin/siswa/belumverifikasi') ?>">Siswa Belum Verifikasi</a></li>
                                        </ul>
                                    </li>
                                    <li class="sidebar-item">
                                        <a class="sidebar-link berita" href="<?= base_url() ?>admin/marketing">
                                            <i class="fa fa-users" aria-hidden="true"></i> <span class="align-middle">Marketing</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <div class="simplebar-placeholder" style="width: auto; height: 1373px;"></div>
        </div>
        <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
            <div class="simplebar-scrollbar" style="width: 0px; display: none;"></div>
        </div>
        <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
            <div class="simplebar-scrollbar" style="height: 314px; transform: translate3d(0px, 0px, 0px); display: block;"></div>
        </div>
    </div>
</nav>
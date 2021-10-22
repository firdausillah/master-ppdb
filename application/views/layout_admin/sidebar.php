<nav id="sidebar" class="sidebar">
    <div class="sidebar-content js-simplebar">
        <a class="sidebar-brand text-center" href="<?= base_url() ?>assets/index.html">
            <span class="align-middle">SMK PGRI PESANGGARAN</span>
        </a>

        <ul class="sidebar-nav">
            <li class="sidebar-header">
                Pages
            </li>

            <li class="sidebar-item <?= $this->uri->segment(2) == 'dashboard' ? 'active' : '' ?>">
                <a class="sidebar-link" href="<?= base_url() ?>admin/dashboard">
                    <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a data-target="#forms" data-toggle="collapse" class="sidebar-link">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle align-middle">
                        <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                        <polyline points="22 4 12 14.01 9 11.01"></polyline>
                    </svg> <span class="align-middle">Data Master</span>
                </a>
                <ul id="forms" class="sidebar-dropdown list-unstyled collapse " data-parent="#sidebar">
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/jurusan">Jurusan</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/gelombang">Gelombang Pendaftaran</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/syarat">Syarat Pendaftaran</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/marketing">Marketing</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/tempattinggal">Tempat Tinggal</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/transportasi">Moda Transportasi</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/pendidikan">Pendidikan</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/pekerjaan">Pekerjaan</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="<?= base_url() ?>admin/penghasilan">Penghasilan Orang Tua</a></li>
                </ul>
            </li>

            <li class="sidebar-item <?= $this->uri->segment(2) == 'siswa' ? 'active' : '' ?>">
                <a class="sidebar-link" href="<?= base_url() ?>admin/siswa">
                    <i class="align-middle" data-feather="users"></i> <span class="align-middle">Siswa</span>
                </a>
            </li>
            <li class="sidebar-item <?= $this->uri->segment(2) == 'user' ? 'active' : '' ?>">
                <a class="sidebar-link" href="<?= base_url() ?>admin/user">
                    <i class="align-middle" data-feather="user"></i> <span class="align-middle">User</span>
                </a>
            </li>

        </ul>

    </div>
</nav>
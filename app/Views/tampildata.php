
<section class="latest-podcast-section d-flex align-items-center justify-content-center pb-5" id="section_2" style="padding-top: 100px; background-color:#E0DBD8;">
    <div class="container">
        <div class="col-lg-12 col-12 mt-5 mb-4 mb-lg-4">
            <div class="custom-block d-flex flex-column" style="background-color:#FAF5F1; border-radius:16px; box-shadow:0 4px 10px rgba(0,0,0,0.1);">

                <ul class="nav nav-tabs mb-4" id="inputTabs" role="tablist">
                  <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="produk-tab" data-bs-toggle="tab" data-bs-target="#produk-table" type="button" role="tab" >Tabel Produk</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="kategori-tab" data-bs-toggle="tab" data-bs-target="#kategori-table" type="button" role="tab" >Tabel Kategori</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="paket-tab" data-bs-toggle="tab" data-bs-target="#paket-table" type="button" role="tab" >Tabel Paket</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="metode-tab" data-bs-toggle="tab" data-bs-target="#metode-table" type="button" role="tab" >Tabel Metode</button>
                </li>
            </ul>

            <!-- Tab Content -->
            <div class="tab-content" id="inputTabsContent">


                <!-- Produk Table -->
                <div class="tab-pane fade show active" id="produk-table" role="tabpanel">
                    <a href="<?= base_url('home/formdatas')?>" class="btn btn-success mb-3" style="align-self: flex-start; background-color:#292F36; border:none;">
                        <i class="fa fa-user-plus me-1"></i> + Tambah Produk
                    </a>            
                    <table id="productTable" class="table table-hover datatable" style="background-color: #ffffff; border-radius: 10px; overflow: hidden;">
                        <thead style="background-color:#A41F13; color:#ffffff;">
                            <tr>
                                <th>No<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search No"></th>
                                <th>Foto<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search Foto"></th>
                                <th>Produk<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search Produk"></th>
                                <th>Kategori<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search Kategori"></th>
                                <th>Status<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search Status"></th>
                                <th>Harga<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search Harga">
                                    <th>Modal<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search Modal"></th>
                                    <?php if (session()->get('level') == 1 || session()->get('level') == 2 || session()->get('level') == 3 || session()->get('level') == 4) { ?>
                                    <th>Aksi</th>
                                <?php } ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $ms = 1;
                            foreach ($produk as $key => $value) {
                                ?>
                                <tr style="background-color: white;" onmouseover="this.style.backgroundColor='darkwhite'; this.style.color='black';" onmouseout="this.style.backgroundColor='white'; this.style.color='';">
                                    <td><?= $ms++ ?></td>
                                    <td><img src="<?=base_url('images/'.$value->foto);?>" style="max-height: 80px; border-radius: 5px;"></td>
                                    <td><?= $value->nama_produk ?></td>
                                    <td><?= $value->nama_kategori ?></td>
                                    <td><?= $value->status ?></td>
                                    <td><?= $value->harga ?></td>
                                    <td><?= $value->harga_modal ?></td>
                                    <?php if (session()->get('level') == 1 || session()->get('level') == 2 || session()->get('level') == 3 || session()->get('level') == 4) { ?>
                                        <td>
                                            <a href="<?= base_url('home/edit_produk/'.$value->id_produk)?>" class="btn btn-warning btn-sm" style="background-color:#edb047; border:none;">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            <a class="btn btn-danger btn-sm delete-btn" href="<?= base_url('home/hapus_produk/' . $value->id_produk) ?>" style="background-color:#8F7A6E; border:none;" onclick="return confirm('Are you sure?');">
                                                <i class="fa fa-trash"></i>
                                            </a>
                                            <?php if (session()->get('level') == 1) { ?>
                                                <a href="<?= base_url('admin/detailproduk/' . $value->id_produk) ?>" class="btn btn-sm btn-info detail-btn">
                                                    <i class="fa fa-circle-info"></i>
                                                </a>
                                            <?php } ?>
                                        </td>
                                    <?php } ?>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>

                <!-- Kategori Table -->
                <div class="tab-pane fade" id="kategori-table" role="tabpanel">
                    <a href="<?= base_url('home/formdatas')?>" class="btn btn-success mb-3" style="align-self: flex-start; background-color:#292F36; border:none;">
                        <i class="fa fa-user-plus me-1"></i> + Tambah Kategori
                    </a>            
                    <table id="kategoriTable" class="table table-hover datatable" style="background-color: #ffffff; border-radius: 10px; overflow: hidden;">
                        <thead style="background-color:#A41F13; color:#ffffff;">
                            <tr>
                                <th>No<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search Username"></th>
                                <th>Kategori<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search Email"></th>
                                <?php if (session()->get('level')==1 || session()->get('level')== 2) { ?>
                                    <th>Aksi</th>
                                <?php } ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $ms = 1;
                            foreach ($kategori as $key => $value) {
                                ?>
                                <tr style="background-color: white;" onmouseover="this.style.backgroundColor='darkwhite'; this.style.color='black';" onmouseout="this.style.backgroundColor='white'; this.style.color='';">
                                    <td><?= $ms++ ?></td>
                                    <td><?= $value->nama_kategori ?></td>
                                    <?php if (session()->get('level') == 1 || session()->get('level') == 2) { ?>
                                        <td>
                                            <a href="<?= base_url('home/edit_kategori/'.$value->id_kategori)?>" class="btn btn-warning btn-sm" style="background-color:#edb047; border:none;">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            <a class="btn btn-danger btn-sm delete-btn" href="<?= base_url('home/hapus_kategori/' . $value->id_kategori) ?>" style="background-color:#8F7A6E; border:none;" onclick="return confirm('Are you sure?');">
                                                <i class="fa fa-trash"></i>
                                            </a>
                                            <?php if (session()->get('level') == 1) { ?>
                                                <a href="<?= base_url('admin/detailkategori/' . $value->id_kategori) ?>" class="btn btn-sm btn-info detail-btn">
                                                    <i class="fa fa-circle-info"></i>
                                                </a>
                                            <?php } ?>
                                        </td>
                                    <?php } ?>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>

                <!-- Paket Table -->
                <div class="tab-pane fade" id="paket-table" role="tabpanel">
                    <a href="<?= base_url('home/formdatas')?>" class="btn btn-success mb-3" style="align-self: flex-start; background-color:#292F36; border:none;">
                        <i class="fa fa-user-plus me-1"></i> + Tambah Paket
                    </a>            
                    <table id="paketTable" class="table table-hover datatable" style="background-color: #ffffff; border-radius: 10px; overflow: hidden;">
                       <thead style="background-color:#A41F13; color:#ffffff;">
                        <tr>
                            <th>No</th>
                            <th>Nama Paket</th>
                            <th>Deskripsi</th>
                            <th>Harga</th>
                            <th>Isi Produk</th> <!-- Tambahan -->
                            <?php if (session()->get('level') == 1 || session()->get('level') == 2 || session()->get('level') == 3 || session()->get('level') == 4) { ?>
                            <th>Aksi</th>
                        <?php } ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $ms = 1; foreach ($paket as $value): ?>
                        <tr style="background-color: white;" onmouseover="this.style.backgroundColor='darkwhite'; this.style.color='black';" onmouseout="this.style.backgroundColor='white'; this.style.color='';">
                            <td><?= $ms++ ?></td>
                            <td><?= $value['nama_paket'] ?></td>
                            <td><?= $value['deskripsi'] ?></td>
                            <td>Rp <?= number_format($value['harga_paket'], 0, ',', '.') ?></td>
                            <td>
                                <?php foreach ($value['produk'] as $item): ?>
                                    • <?= $item ?><br>
                                <?php endforeach; ?>
                            </td>
                            <?php if (session()->get('level') == 1 || session()->get('level') == 2 || session()->get('level') == 3 || session()->get('level') == 4) { ?>
                            <td>
                                <a href="<?= base_url('home/edit_paket/'.$value['id_paket'])?>" class="btn btn-warning btn-sm" style="background-color:#edb047; border:none;">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="<?= base_url('home/hapus_paket/'.$value['id_paket'])?>" class="btn btn-danger btn-sm delete-btn" style="background-color:#8F7A6E; border:none;" onclick="return confirm('Are you sure?');">
                                    <i class="fa fa-trash"></i>
                                </a>
                                <?php if (session()->get('level') == 1) { ?>
                                                <a href="<?= base_url('admin/detailpaket/'.$value['id_paket']) ?>" class="btn btn-sm btn-info detail-btn">
                                                    <i class="fa fa-circle-info"></i>
                                                </a>
                                            <?php } ?>
                            </td>
                        <?php } ?>
                        </tr>
                    <?php endforeach; ?>
                </tbody>

            </table>
        </div>

        <!-- Paket Table -->
        <div class="tab-pane fade" id="metode-table" role="tabpanel">
            <a href="<?= base_url('home/formdatas')?>" class="btn btn-success mb-3" style="align-self: flex-start; background-color:#292F36; border:none;">
                <i class="fa fa-user-plus me-1"></i> + Tambah Metode
            </a>            
            <table id="metodeTable" class="table table-hover datatable" style="background-color: #ffffff; border-radius: 10px; overflow: hidden;">
             <thead style="background-color:#A41F13; color:#ffffff;">
                <tr>
                    <th>No</th>
                    <th>Nama Metode</th>
                    <th>No. Tujuan</th>
                    <?php if (session()->get('level') == 1 || session()->get('level') == 2) { ?>
                    <th>Aksi</th>
                <?php } ?>
                </tr>
            </thead>
            <tbody>
                <?php $ms = 1; foreach ($metode as $value): ?>
                <tr style="background-color: white;" onmouseover="this.style.backgroundColor='darkwhite'; this.style.color='black';" onmouseout="this.style.backgroundColor='white'; this.style.color='';">
                    <td><?= $ms++ ?></td>
                    <td><?= $value->nama_metode?></td>
                    <td><?= $value->kode?></td>
                    <?php if (session()->get('level') == 1 || session()->get('level') == 2) { ?>
                        <td>
                            <a href="<?= base_url('home/edit_metode/'.$value->id_metode)?>" class="btn btn-warning btn-sm" style="background-color:#edb047; border:none;">
                                <i class="fa fa-edit"></i>
                            </a>
                            <a class="btn btn-danger btn-sm delete-btn" href="<?= base_url('admin/killmetode/' . $value->id_metode )?>" style="background-color:#8F7A6E; border:none;" onclick="return confirm('Are you sure?');">
                                <i class="fa fa-trash"></i>
                            </a>
                            <?php if (session()->get('level') == 1) { ?>
                                <a href="<?= base_url('admin/detailmetode/'.$value->id_metode) ?>" class="btn btn-sm btn-info detail-btn">
                                    <i class="fa fa-circle-info"></i>
                                </a>
                            <?php } ?>
                        </td>
                <?php } ?>
                </tr>
            <?php endforeach; ?>
        </tbody>

    </table>
</div>


</div>




</div>
</div>  
</section>

</main>

<!-- DataTables CSS -->
<!-- jQuery (Load First) -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- DataTables CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">

<!-- DataTables JS (Must be after jQuery) -->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<script src="<?= base_url('js/bootstrap.bundle.min.js'); ?>"></script>


<script>
    $(document).ready(function () {
        var table = $('#productTable').DataTable({
            "pageLength": 5, // Show only 5 rows at a time
            "lengthMenu": [5, 10, 25, 50], // Allow user to change row limit
            "ordering": true, // Enable column sorting
            "searching": true // Enable global search
        });

        // Add individual column search
        $('#productTable thead th').each(function () {
            var title = $(this).text().trim();
            if (title !== 'Aksi') {
                $(this).html(title + '<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search ' + title + '">');
            }
        });

        // Apply column search
        table.columns().every(function () {
            var that = this;
            $('input', this.header()).on('keyup change', function () {
                if (that.search() !== this.value) {
                    that.search(this.value).draw();
                }
            });
        });
    });
    $(document).ready(function () {
        var table = $('#kategoriTable').DataTable({
            "pageLength": 5, // Show only 5 rows at a time
            "lengthMenu": [5, 10, 25, 50], // Allow user to change row limit
            "ordering": true, // Enable column sorting
            "searching": true // Enable global search
        });

        // Add individual column search
        $('#kategoriTable thead th').each(function () {
            var title = $(this).text().trim();
            if (title !== 'Aksi') {
                $(this).html(title + '<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search ' + title + '">');
            }
        });

        // Apply column search
        table.columns().every(function () {
            var that = this;
            $('input', this.header()).on('keyup change', function () {
                if (that.search() !== this.value) {
                    that.search(this.value).draw();
                }
            });
        });
    });


    $(document).ready(function () {
        var table = $('#paketTable').DataTable({
            "pageLength": 5, // Show only 5 rows at a time
            "lengthMenu": [5, 10, 25, 50], // Allow user to change row limit
            "ordering": true, // Enable column sorting
            "searching": true // Enable global search
        });

        // Add individual column search
        $('#paketTable thead th').each(function () {
            var title = $(this).text().trim();
            if (title !== 'Aksi') {
                $(this).html(title + '<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search ' + title + '">');
            }
        });

        // Apply column search
        table.columns().every(function () {
            var that = this;
            $('input', this.header()).on('keyup change', function () {
                if (that.search() !== this.value) {
                    that.search(this.value).draw();
                }
            });
        });
    });

     $(document).ready(function () {
        var table = $('#metodeTable').DataTable({
            "pageLength": 5, // Show only 5 rows at a time
            "lengthMenu": [5, 10, 25, 50], // Allow user to change row limit
            "ordering": true, // Enable column sorting
            "searching": true // Enable global search
        });

        // Add individual column search
        $('#metodeTable thead th').each(function () {
            var title = $(this).text().trim();
            if (title !== 'Aksi') {
                $(this).html(title + '<br><input type="text" class="form-control form-control-sm column-search" placeholder="Search ' + title + '">');
            }
        });

        // Apply column search
        table.columns().every(function () {
            var that = this;
            $('input', this.header()).on('keyup change', function () {
                if (that.search() !== this.value) {
                    that.search(this.value).draw();
                }
            });
        });
    });
</script>

</body>

</html>
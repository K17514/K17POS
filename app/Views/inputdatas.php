
<section class="d-flex align-items-center justify-content-center pb-5" style="padding-top: 100px; background-color: #E0DBD8;">
  <div class="container">
    <div class="col-lg-12 col-12 mt-5 mb-4 mb-lg-4">
      <div class="d-flex flex-column" style="background-color: #FAF5F1; padding: 2rem; border-radius: 10px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); color: #292F36;">
        
        <!-- Nav Tabs -->
        <ul class="nav nav-tabs mb-4" id="inputTabs" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="produk-tab" data-bs-toggle="tab" data-bs-target="#produk-form" type="button" role="tab" >Tambah Produk</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="kategori-tab" data-bs-toggle="tab" data-bs-target="#kategori-form" type="button" role="tab" >Tambah Kategori</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="paket-tab" data-bs-toggle="tab" data-bs-target="#paket-form" type="button" role="tab">Tambah Paket</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="paket-tab" data-bs-toggle="tab" data-bs-target="#metode-form" type="button" role="tab">Tambah Metode</button>
          </li>
        </ul>

        <!-- Tab Content -->
        <div class="tab-content" id="inputTabsContent">


          <!-- Produk Form -->
          <div class="tab-pane fade show active" id="produk-form" role="tabpanel">
            <h3 style="font-weight: bold; margin-bottom: 1.5rem; color: #292F36;">Tambah Produk</h3>
            <form action="<?= base_url('home/input_produk') ?>" method="POST" enctype="multipart/form-data">
              <div class="mb-3">
                <label for="nama_produk" class="form-label">Nama Produk</label>
                <input type="text" class="form-control" id="nama_produk" name="nama_produk" required>
              </div>
              <label for="editor" class="form-label"> Deskripsi</label>
              <div id="editor"class="h-40 border rounded mb-2"></div>
              <input type="hidden" name="deskripsi" id="hiddenDeskripsi" required>
              <div class="mb-3">
                <label for="kategori" class="form-label">Kategori</label>
                <select class="form-control" name="kategori">
                  <option>--Pilih Kategori</option>
                  <?php 
                  foreach ($kategori as $key => $value) {
                  ?>
                  <option value="<?=$value->id_kategori?>"><?=$value->nama_kategori?></option>
                  <?php 
                } 
                ?>
                </select>
              </div>

              <div class="mb-3">
                <label for="temperatur" class="form-label">Temperatur (Khusus Minuman)</label>
                <select class="form-control" name="temperatur">
                  <option value="">--Pilih Temperatur</option>
                  <option value="(Panas)">Panas</option>
                  <option value="(Dingin)">Dingin</option>
                </select>
              </div>

              <div class="mb-3">
                <label for="status" class="form-label">Status</label>
                <select class="form-control" name="status">
                  <option>--Pilih Status</option>
                  <option value="Tersedia">Tersedia</option>
                  <option value="Kosong">Kosong</option>
                </select>
              </div>
              <div class="mb-3">
                <label for="harga" class="form-label">Harga</label>
                <input type="number" class="form-control" id="harga" name="harga" required>
              </div>
              <div class="mb-3">
                <label for="harga" class="form-label">Harga Modal</label>
                <input type="number" class="form-control" id="harga_modal" name="harga_modal" required>
              </div>
              <div class="mb-3">
                <label for="foto_produk" class="form-label">Foto Produk</label>
                <input type="file" class="form-control" id="foto_produk" name="foto_produk" required>
              </div>
              <button type="submit" class="btn btn-success" style="background-color: #A41F13">Simpan</button>
            </form>
          </div>

          <!-- Kategori Form -->
          <div class="tab-pane fade" id="kategori-form" role="tabpanel">
            <h3 style="font-weight: bold; margin-bottom: 1.5rem;">Tambah Kategori</h3>
            <form action="<?= base_url('home/input_kategori') ?>" method="POST" enctype="multipart/form-data">
              <div class="mb-3">
                <label for="nama_kategori" class="form-label">Nama Kategori</label>
                <input type="text" class="form-control" id="nama_kategori" name="nama_kategori" required>
              </div>
              <div class="mb-3">
                <label for="icon_kategori" class="form-label">Icon kategori</label>
                <input type="file" class="form-control" id="icon_kategori" name="icon_kategori" required>
              </div>
              <button type="submit" class="btn btn-primary" style="background-color: #A41F13">Simpan</button>
            </form>
          </div>

          <!-- Paket Form -->
          <div class="tab-pane fade" id="paket-form" role="tabpanel">
            <h3 style="font-weight: bold; margin-bottom: 1.5rem;">Tambah Paket</h3>
            <form action="<?= base_url('home/input_paket') ?>" method="POST">
              <div class="mb-3">
                <label for="nama_paket" class="form-label">Nama Paket</label>
                <input type="text" class="form-control" id="nama_paket" name="nama_paket" required>
              </div>

              <label for="editorPaket" class="form-label">Deskripsi Paket</label>
              <div id="editorPaket" class="h-40 border rounded mb-2"></div>
              <input type="hidden" name="deskripsi" id="hiddenDeskripsiPaket" required>

              <div class="mb-3">
                <label for="harga_paket" class="form-label">Harga Paket</label>
                <input type="number" class="form-control" id="harga_paket" name="harga_paket" required>
              </div>

              <div class="mb-3">
                <label class="form-label">Isi Produk dalam Paket</label>
                <div id="produk-container">
                  <div class="row mb-2">
                    <div class="col-md-8">
                      <select class="form-control" name="produk_ids[]">
                        <option value="">-- Pilih Produk --</option>
                        <?php foreach ($produk as $item): ?>
                          <option value="<?= $item->id_produk ?>"> <?= $item->nama_produk ?> - Rp <?= number_format($item->harga, 0, ',', '.') ?></option>
                        <?php endforeach; ?>
                      </select>
                    </div>
                    <div class="col-md-3">
                      <input type="number" name="jumlah[]" class="form-control" placeholder="Jumlah" required>
                    </div>
                    <div class="col-md-1">
                      <button type="button" class="btn btn-danger btn-remove">-</button>
                    </div>
                  </div>
                </div>
                <button type="button" class="btn btn-secondary mt-2" id="add-produk">+ Tambah Produk</button>
              </div>

              <button type="submit" class="btn btn-success mt-3" style="background-color: #A41F13;">Simpan Paket</button>
            </form>
          </div>


          <!-- Kategori Form -->
          <div class="tab-pane fade" id="metode-form" role="tabpanel">
            <h3 style="font-weight: bold; margin-bottom: 1.5rem;">Tambah Metode</h3>
            <form action="<?= base_url('home/input_metode') ?>" method="POST" enctype="multipart/form-data">
              <div class="mb-3">
                <label for="nama_metode" class="form-label">Nama Metode</label>
                <input type="text" class="form-control" id="nama_metode" name="nama_metode" required>
              </div>
              <div class="mb-3">
                <label for="kode_tujuan" class="form-label">Kode Tujuan</label>
                <input type="text" class="form-control" id="kode_tujuan" name="kode_tujuan" required>
              </div>
              <button type="submit" class="btn btn-primary" style="background-color: #A41F13">Simpan</button>
            </form>
          </div>

        </div>

      </div>
    </div>
  </div>
</section>
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function () {
  // Quill Editor Produk
  var quill = new Quill('#editor', {
    theme: 'snow',
    placeholder: 'Write the description...',
    modules: {
      toolbar: [
        [{ header: [1, 2, false] }],
        ['bold', 'italic', 'underline'],
        [{ list: 'ordered' }, { list: 'bullet' }],
        ['link'],
        ['clean'],
      ]
    }
  });

  // Handle form produk
  document.querySelector("#produk-form form").addEventListener("submit", function () {
    document.getElementById("hiddenDeskripsi").value = quill.root.innerHTML;
  });


  // Quill Editor Paket
  var quillPaket = new Quill('#editorPaket', {
    theme: 'snow',
    placeholder: 'Tulis deskripsi paket...',
    modules: {
      toolbar: [
        [{ header: [1, 2, false] }],
        ['bold', 'italic', 'underline'],
        [{ list: 'ordered' }, { list: 'bullet' }],
        ['link'],
        ['clean'],
      ]
    }
  });

  // Handle form paket
  document.querySelector("#paket-form form").addEventListener("submit", function () {
    document.getElementById("hiddenDeskripsiPaket").value = quillPaket.root.innerHTML;
  });


  // Dynamic Produk List
  const container = document.getElementById("produk-container");
  const addBtn = document.getElementById("add-produk");

  addBtn.addEventListener("click", function () {
    const row = document.createElement("div");
    row.className = "row mb-2";
    row.innerHTML = `
      <div class="col-md-8">
        <select class="form-control" name="produk_ids[]">
          <option value="">-- Pilih Produk --</option>
          <?php foreach ($produk as $item): ?>
            <option value="<?= $item->id_produk ?>"> <?= $item->nama_produk ?> - Rp <?= number_format($item->harga, 0, ',', '.') ?></option>
          <?php endforeach; ?>
        </select>
      </div>
      <div class="col-md-3">
        <input type="number" name="jumlah[]" class="form-control" placeholder="Jumlah" required>
      </div>
      <div class="col-md-1">
        <button type="button" class="btn btn-danger btn-remove">-</button>
      </div>
    `;
    container.appendChild(row);
  });

  container.addEventListener("click", function (e) {
    if (e.target.classList.contains("btn-remove")) {
      e.target.closest(".row").remove();
    }
  });
});

</script>


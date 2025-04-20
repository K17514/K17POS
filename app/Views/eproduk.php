<section class="d-flex align-items-center justify-content-center pb-5" style="padding-top: 100px; background-color: #E0DBD8;">
  <div class="container">
    <div class="col-lg-12 col-12 mt-5 mb-4 mb-lg-4">
      <div class="d-flex flex-column" style="background-color: #FAF5F1; padding: 2rem; border-radius: 10px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); color: #292F36;">
        
        <h3 style="color: #292F36; font-weight: bold; margin-bottom: 1.5rem;">Edit Produk</h3>
        
        <form action="<?= base_url('home/simpan_produk') ?>" method="POST" enctype="multipart/form-data">
          <table style="width: 100%;">
            <tr>
              <td style="padding-bottom: 10px;"><label for="nama_produk" style="font-weight: 500; color: #292F36;">Nama Produk</label></td>
              <td style="padding-bottom: 10px;">
                <input type="text" class="form-control" id="nama_produk" name="nama_produk" value="<?= $child->nama_produk ?>" style="border: 1px solid #8F7A6E; border-radius: 8px; padding: 0.6rem; width: 100%;">
              </td>
            </tr>
            <tr>
              <td style="padding-bottom: 10px;"><label for="kategori" style="font-weight: 500; color: #292F36;">Kategori</label></td>
              <td style="padding-bottom: 10px;">
                <select class="form-control" name="kategori">
                  <option disabled>--Pilih Kategori</option>
                  <?php 
                  foreach ($kategori as $key => $value) {
                    $selected = ($value->id_kategori == $child->id_kategori) ? 'selected' : '';
                    ?>
                    <option value="<?=$value->id_kategori?>" <?= $selected ?>><?=$value->nama_kategori?></option>
                    <?php 
                  } 
                  ?>
                </select>

              </td>
            </tr>
            <tr>
              <td style="padding-bottom: 10px;"><label for="status" style="font-weight: 500; color: #292F36;">Status</label></td>
              <td style="padding-bottom: 10px;">
                <select class="form-control" name="status">
                  <option disabled>--Pilih Status</option>
                  <option value="tersedia" <?= ($child->status == 'Tersedia') ? 'selected' : '' ?>>Tersedia</option>
                  <option value="kosong" <?= ($child->status == 'Kosong') ? 'selected' : '' ?>>Kosong</option>
                </select>

              </td>
            </tr>
            <tr>
              <td style="padding-bottom: 10px;"><label for="harga" style="font-weight: 500; color: #292F36;">Harga</label></td>
              <td style="padding-bottom: 10px;">
                <input type="text" class="form-control" id="harga" name="harga" value="<?= $child->harga ?>" style="border: 1px solid #8F7A6E; border-radius: 8px; padding: 0.6rem; width: 100%;">
              </td>
            </tr>
            <tr>
              <td style="padding-bottom: 10px;"><label for="foto" style="font-weight: 500; color: #292F36;">Foto Produk</label></td>
              <td style="padding-bottom: 10px;">
                <input type="file" class="form-control" id="foto" name="foto" style="border: 1px solid #8F7A6E; border-radius: 8px; padding: 0.6rem; width: 100%;">
              </td>
            </tr>
            <tr>
              <td></td>
              <td style="padding-top: 10px;">
                <input type="hidden" value="<?= $child->id_produk ?>" name="id">
                <button type="submit" class="btn" style="background-color: #A41F13; color: white; border: none; padding: 0.5rem 1rem; border-radius: 6px; font-weight: 600;">Simpan</button>
                <button type="reset" class="btn" style="background-color: #8F7A6E; color: white; border: none; padding: 0.5rem 1rem; border-radius: 6px;">Reset</button>
                <button type="button" class="btn" style="background-color: #8F7A6E; color: white; border: none; padding: 0.5rem 1rem; border-radius: 6px;" onclick="window.history.back()">Kembali</button>
              </td>
            </tr>
          </table>
        </form>
        
      </div>
    </div>
  </div>
</section>

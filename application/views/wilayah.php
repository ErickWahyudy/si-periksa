<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Data Wilayah Indonesia</title>
</head>
<body>

  <form id="wilayahForm">
    <label for="provinsi">Provinsi:</label>
    <select id="provinsi" onchange="populateKabupaten()">
      <!-- Pilihan Provinsi akan diisi secara dinamis dari API -->
    </select>

    <br>

    <label for="kabupaten">Kabupaten/Kota:</label>
    <select id="kabupaten" onchange="populateKecamatan()" disabled>
      <option value=''>Pilih Kabupaten/Kota</option>
    </select>

    <br>

    <label for="kecamatan">Kecamatan:</label>
    <select id="kecamatan" onchange="populateKelurahan()" disabled>
      <option value=''>Pilih Kecamatan</option>
    </select>

    <br>

    <label for="kelurahan">Kelurahan:</label>
    <select id="kelurahan" disabled>
      <option value=''>Pilih Kelurahan</option>
    </select>
  </form>

  <script>
    const provinsiSelect = document.getElementById("provinsi");
    const kabupatenSelect = document.getElementById("kabupaten");
    const kecamatanSelect = document.getElementById("kecamatan");
    const kelurahanSelect = document.getElementById("kelurahan");

    // URL API wilayah Indonesia
    const provinsiApiUrl = "https://kanglerian.github.io/api-wilayah-indonesia/api/provinces.json";

    // Mengambil data wilayah provinsi dari API
    fetch(provinsiApiUrl)
      .then(response => response.json())
      .then(data => populateProvinsi(data));

    function populateProvinsi(data) {
      // Bersihkan opsi sebelum menambahkan yang baru
      provinsiSelect.innerHTML = "<option value=''>Pilih Provinsi</option>";

      // Tambahkan opsi provinsi dari data API
      data.forEach(provinsi => {
        const option = document.createElement("option");
        option.value = provinsi.id;
        option.text = provinsi.name;
        provinsiSelect.appendChild(option);
      });
    }

    function populateKabupaten() {
      const selectedProvinsi = provinsiSelect.value;

      // Cek apakah provinsi telah dipilih
      if (!selectedProvinsi) {
        alert("Pilih provinsi terlebih dahulu.");
        // Atur dropdown lainnya menjadi default
        kabupatenSelect.innerHTML = "<option value=''>Pilih Kabupaten/Kota</option>";
        kecamatanSelect.innerHTML = "<option value=''>Pilih Kecamatan</option>";
        kelurahanSelect.innerHTML = "<option value=''>Pilih Kelurahan</option>";
        // Nonaktifkan dropdown lainnya
        kabupatenSelect.disabled = true;
        kecamatanSelect.disabled = true;
        kelurahanSelect.disabled = true;
        return;
      }

      // URL API wilayah kabupaten/kota
      const kabupatenApiUrl = `https://kanglerian.github.io/api-wilayah-indonesia/api/regencies/${selectedProvinsi}.json`;

      // Mengambil data wilayah kabupaten/kota dari API
      fetch(kabupatenApiUrl)
        .then(response => response.json())
        .then(data => {
          // Bersihkan opsi sebelum menambahkan yang baru
          kabupatenSelect.innerHTML = "<option value=''>Pilih Kabupaten/Kota</option>";

          // Tambahkan opsi kabupaten/kota dari data API
          data.forEach(kabupaten => {
            const option = document.createElement("option");
            option.value = kabupaten.id;
            option.text = kabupaten.name;
            kabupatenSelect.appendChild(option);
          });

          // Aktifkan dropdown kabupaten
          kabupatenSelect.disabled = false;
        });
    }

    function populateKecamatan() {
      const selectedKabupaten = kabupatenSelect.value;

      // Cek apakah kabupaten/kota telah dipilih
      if (!selectedKabupaten) {
        alert("Pilih kabupaten/kota terlebih dahulu.");
        // Atur dropdown lainnya menjadi default
        kecamatanSelect.innerHTML = "<option value=''>Pilih Kecamatan</option>";
        kelurahanSelect.innerHTML = "<option value=''>Pilih Kelurahan</option>";
        // Nonaktifkan dropdown lainnya
        kecamatanSelect.disabled = true;
        kelurahanSelect.disabled = true;
        return;
      }

      // URL API wilayah kecamatan
      const kecamatanApiUrl = `https://kanglerian.github.io/api-wilayah-indonesia/api/districts/${selectedKabupaten}.json`;

      // Mengambil data wilayah kecamatan dari API
      fetch(kecamatanApiUrl)
        .then(response => response.json())
        .then(data => {
          // Bersihkan opsi sebelum menambahkan yang baru
          kecamatanSelect.innerHTML = "<option value=''>Pilih Kecamatan</option>";

          // Tambahkan opsi kecamatan dari data API
          data.forEach(kecamatan => {
            const option = document.createElement("option");
            option.value = kecamatan.id;
            option.text = kecamatan.name;
            kecamatanSelect.appendChild(option);
          });

          // Aktifkan dropdown kecamatan
          kecamatanSelect.disabled = false;
        });
    }

    function populateKelurahan() {
      const selectedKecamatan = kecamatanSelect.value;

      // Cek apakah kecamatan telah dipilih
      if (!selectedKecamatan) {
        alert("Pilih kecamatan terlebih dahulu.");
        // Atur dropdown kelurahan menjadi default
        kelurahanSelect.innerHTML = "<option value=''>Pilih Kelurahan</option>";
        // Nonaktifkan dropdown kelurahan
        kelurahanSelect.disabled = true;
        return;
      }

      // URL API wilayah kelurahan
      const kelurahanApiUrl = `https://kanglerian.github.io/api-wilayah-indonesia/api/villages/${selectedKecamatan}.json`;

      // Mengambil data wilayah kelurahan dari API
      fetch(kelurahanApiUrl)
        .then(response => response.json())
        .then(data => {
          // Bersihkan opsi sebelum menambahkan yang baru
          kelurahanSelect.innerHTML = "<option value=''>Pilih Kelurahan</option>";

          // Tambahkan opsi kelurahan dari data API
          data.forEach(kelurahan => {
            const option = document.createElement("option");
            option.value = kelurahan.id;
            option.text = kelurahan.name;
            kelurahanSelect.appendChild(option);
          });

          // Aktifkan dropdown kelurahan
          kelurahanSelect.disabled = false;
        });
    }
  </script>

</body>
</html>

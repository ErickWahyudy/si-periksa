<?php $this->load->view('template/header'); ?>
<?= $this->session->flashdata('pesan') ?>

<?php
// Fungsi untuk membandingkan umur dari dua data
function compareUmur($a, $b) {
    $tgl_lahir_a = new DateTime($a['tgl_lahir']);
    $tgl_lahir_b = new DateTime($b['tgl_lahir']);
    
    // Menggunakan diff() untuk mendapatkan selisih umur
    $umur_a = $tgl_lahir_a->diff(new DateTime())->y;
    $umur_b = $tgl_lahir_b->diff(new DateTime())->y;

    // Mengembalikan perbandingan umur
    return $umur_a - $umur_b;
}

// Memisahkan data menjadi dua kelompok berdasarkan umur
$data_umur_diatas_60 = array_filter($data, function ($periksa) {
    $umur = $periksa['umur'];
    return $umur >= 60;
});

$data_umur_dibawah_60 = array_filter($data, function ($periksa) {
    $umur = $periksa['umur'];
    return $umur < 60;
});

// Mengurutkan kelompok umur di atas 60 tahun berdasarkan umur terbesar
usort($data_umur_diatas_60, function ($a, $b) {
    $umur_a = umur(new DateTime($a['tgl_lahir']));
    $umur_b = umur(new DateTime($b['tgl_lahir']));
    return $umur_b - $umur_a;
});

// // Mengurutkan kelompok umur di bawah 60 tahun berdasarkan id_periksa
// usort($data_umur_dibawah_60, function ($a, $b) {
//     return $a['id_periksa'] - $b['id_periksa'];
// });

// Menggabungkan kedua kelompok data
$data = array_merge($data_umur_diatas_60, $data_umur_dibawah_60);

?>

<div id="target-div">

<?php if ($tgl_periksa == null || $tgl_periksa < date('Y-m-d')): ?>
    <div class="x_content">
        <div class="row">
            <div class="col-sm-12">
                <div class="card-box table-responsive">
                    <a href="<?= base_url('pasien/periksa/add_periksa') ?>" class="btn btn-warning"><i class="fa fa-plus"></i>
                        Daftar Periksa Sekarang !</a> <br><br>
                    <div class="box-body">
                        <div class="alert alert-info">
                            <h4><i class="icon fa fa-warning"></i> Perhatian !</h4>
                            anda belum membuat antrian baru, silahkan klik tombol Daftar Periksa untuk membuat antrian
                            baru
                        </div>
                        <!-- tata cara daftar periksa -->
                        <div class="alert alert-info">
                            <h4><i class="icon fa fa-info"></i> Tata Cara Daftar Periksa Baru </h4>
                            <ol>
                                <li>Klik tombol Daftar Periksa Sekarang</li>
                                <li>Isi form pendaftaran periksa sesuai perintah</li>
                                <li>Klik tombol Simpan</li>
                            </ol>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php elseif ($tgl_periksa == date('Y-m-d')): ?>
    <div class="row">
        <div class="col-md-12 col-sm-12 ">
            <div class="x_panel">
                <div class="x_title">
                    <h5>Antrian Periksa <?= tgl_indo($kode_tgl) ?> </h5>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card-box table-responsive">
                                <table id="" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th width="10%">No Antrian</th>
                                            <th>Nama</th>
                                            <th>Umur</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <?php $no=1; foreach($data as $periksa): ?>
                                    <tr>  
                                        <?php if ($this->session->userdata['id_pasien'] == $periksa['id_pasien']): ?>
                                            <td style="background-color: #A52A2A; color: white;"><?= $no ?></td>
                                            <td style="background-color: #A52A2A; color: white;"><?= $periksa['nama'] ?></td>
                                            <td style="background-color: #A52A2A; color: white;"><?= $periksa['umur'] ?></td>
                                            <td style="background-color: #A52A2A; color: white;">
                                                <?php if ($periksa['status'] == 'BL') { ?>
                                                    <span class="btn btn-warning">Dalam Antrian</span>
                                                <?php } else if ($periksa['status'] == 'D') { ?>
                                                    <span class="btn btn-info">Diperiksa</span>
                                                <?php } else if ($periksa['status'] == 'S') { ?>
                                                    <span class="btn btn-success">Sudah Diperiksa</span>
                                                <?php } else if ($periksa['status'] == 'BTL') { ?>
                                                    <span class="btn btn-danger">Batal Diperiksa</span>
                                                <?php } ?>
                                            </td>
                                        <?php else: ?>
                                            <td><?= $no ?></td>
                                            <td><?= $periksa['nama'] ?></td>
                                            <td><?= $periksa['umur'] ?></td>
                                            <td>
                                                <?php if ($periksa['status'] == 'BL') { ?>
                                                    <span class="btn btn-warning">Dalam Antrian</span>
                                                <?php } else if ($periksa['status'] == 'D') { ?>
                                                    <span class="btn btn-info">Diperiksa</span>
                                                <?php } else if ($periksa['status'] == 'S') { ?>
                                                    <span class="btn btn-success">Sudah Diperiksa</span>
                                                <?php } else if ($periksa['status'] == 'BTL') { ?>
                                                    <span class="btn btn-danger">Batal Diperiksa</span>
                                                <?php } ?>
                                            </td>
                                        <?php endif; ?>
                                        
                                        </td>
                                    </tr>
                                    <?php $no++; endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->
            </div>
        </div>
    </div>

<?php elseif ($tgl_periksa > date('Y-m-d')): ?>
    <div class="row">
        <div class="col-md-12 col-sm-12 ">
            <div class="x_panel">
                <div class="x_title">
                    <h5>Antrian Periksa <?= tgl_indo($tgl_periksa) ?> </h5>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card-box table-responsive">
                                <table id="" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th width="10%">No Antrian</th>
                                            <th>Nama</th>
                                            <th>Umur</th>
                                        </tr>
                                    </thead>
                                    <?php $no=1; foreach($antrian_berikut as $periksa): ?>
                                    <tr>  
                                        <?php if ($this->session->userdata['id_pasien'] == $periksa['id_pasien']): ?>
                                            <td style="background-color: #A52A2A; color: white;"><?= $no ?></td>
                                            <td style="background-color: #A52A2A; color: white;"><?= $periksa['nama'] ?></td>
                                            <td style="background-color: #A52A2A; color: white;"><?= $periksa['umur'] ?></td>
                                        <?php else: ?>
                                            <td><?= $no ?></td>
                                            <td><?= $periksa['nama'] ?></td>
                                            <td><?= $periksa['umur'] ?></td>
                                        <?php endif; ?>
                                        
                                        </td>
                                    </tr>
                                    <?php $no++; endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->
            </div>
        </div>
    </div>

<?php endif; ?>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $(document).ready(function() {
    setInterval(function() {
    $("#target-div").load(location.href + " #target-div>*", "");
    }, 1000);
    });
</script>
<?php $this->load->view('template/footer'); ?>

<?php

//format tgl indonesia
function tgl_indo($tanggal)
{
    $bulan = array(
        1 => 'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember');

    $pecahkan = explode('-', $tanggal);

    // variabel pecahkan 0 = tanggal
    // variabel pecahkan 1 = bulan
    // variabel pecahkan 2 = tahun

    return $pecahkan[2] . ' ' . $bulan[(int)$pecahkan[1]] . ' ' . $pecahkan[0];
}

function umur($tgl_lahir)
{
    $tgl_sekarang = new DateTime();
    $umur_tahun = $tgl_lahir->diff($tgl_sekarang)->y;
    $umur_bulan = $tgl_lahir->diff($tgl_sekarang)->m;
    $umur_hari = $tgl_lahir->diff($tgl_sekarang)->d;
    $total_tahun = $umur_tahun;
    
    return $total_tahun;
}
?>
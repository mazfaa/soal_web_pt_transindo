<?php

require_once 'connection.php';

$data = [];

if (empty($_GET)) {
  $sql = 'SELECT * FROM `tb_pasien`';
  $query = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_array($query)) {
    $data[] = [
      'id' => $row['id'],
      'norec' => $row['norec'],
      'statusenabled' => $row['statusenabled'],
      'jeniskelamin' => $row['jeniskelamin'],
      'tglregistrasi' => $row['tglregistrasi'],
      'nocm' => $row['nocm'],
      'nocmfk' => $row['nocmfk'],
      'noregistrasi' => $row['noregistrasi'],
      'namaruangan' => $row['namaruangan'],
      'namapasien' => $row['namapasien'],
      'kelompokpasien' => $row['kelompokpasien'],
      'namarekanan' => $row['namarekanan'],
      'namadokter' => $row['namadokter'],
      'tglpulang' => $row['tglpulang'],
      'statuspasien' => $row['statuspasien'],
      'norec_pa' => $row['norec_pa'],
      'objectasuransipasienfk' => $row['objectasuransipasienfk'],
      'pgid' => $row['pgid'],
      'objectruanganlastfk' => $row['objectruanganlastfk'],
      'nosep' => $row['nosep'],
      'norec_br' => $row['norec_br'],
      'nostruklastfk' => $row['nostruklastfk'],
      'noreservasi' => $row['noreservasi'],
      'kelasditanggung' => $row['kelasditanggung'],
      'namakelas' => $row['namakelas'],
      'tgllahir' => $row['tgllahir'],
      'objectdepartmenfk' => $row['objectdepartmenfk'],
      'objectkelasfk' => $row['objectkelasfk'],
      'deptid' => $row['deptid'],
      'ppkrujukan' => $row['ppkrujukan'],
      'istelemedicine' => $row['istelemedicine'],
      'jaminankhusus' => $row['jaminankhusus'],
      'noidentitas' => $row['noidentitas'],
      'statusschedule' => $row['statusschedule'],
      'isdiagnosis' => $row['isdiagnosis'],
    ];
  }
} else if (isset($_GET['ruangan'])) {
  $sql = "SELECT namaruangan, COUNT(namapasien) AS jumlahpasien FROM `tb_pasien` WHERE namaruangan LIKE '%" . filter_var($_GET['ruangan'], FILTER_SANITIZE_URL) . "%'";
  $query = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_array($query)) {
    $data[] = [
      'namaruangan' => $row['namaruangan'],
      'jumlahpasien' => $row['jumlahpasien'],
    ];
  }
} else if (isset($_GET['dokter'])) {
  $sql = "SELECT namadokter, COUNT(namapasien) AS jumlahpasien FROM `tb_pasien` WHERE namadokter LIKE '%" . filter_var($_GET['dokter'], FILTER_SANITIZE_URL) . "%'";
  $query = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_array($query)) {
    $data[] = [
      'namadokter' => $row['namadokter'],
      'jumlahpasien' => $row['jumlahpasien'],
    ];
  }
} else if (isset($_GET['pasien'])) {
  $sql = "SELECT COUNT(namapasien) AS jumlah_huruf_nama_pasien FROM `tb_pasien` WHERE namapasien LIKE '%" . filter_var($_GET['pasien'], FILTER_SANITIZE_URL) . "%'";
  $query = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_array($query)) {
    $data[] = [
      'jumlah_huruf_nama_pasien' => $row['jumlah_huruf_nama_pasien'],
    ];
  }
} else if (isset($_GET['reg'])) {
  $sql = "SELECT namapasien, tglregistrasi FROM `tb_pasien` WHERE namapasien LIKE '%" . filter_var($_GET['reg'], FILTER_SANITIZE_URL) . "%'";
  $query = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_array($query)) {
    $data[] = [
      'namapasien' => $row['namapasien'],
      'tglregistrasi' => $row['tglregistrasi'],
    ];
  }
}

echo json_encode($data);
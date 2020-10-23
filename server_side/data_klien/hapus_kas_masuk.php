<?php 
require_once '../../koneksi/conn.php';
$id = $conn->real_escape_string($_GET['id']);

$sql=$conn->query("DELETE FROM data_klien WHERE id='$id' ");
if ($sql) {
    echo json_encode(array("status" => TRUE));
}
?>
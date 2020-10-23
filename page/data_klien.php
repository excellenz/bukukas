<?php 
require_once '../koneksi/conn.php'; 
$query = $conn->query("SELECT * FROM data_klien ORDER BY tanggal DESC");
?>
<div class="container-fluid">
    <div class="row bg-title">
        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
            <h4 class="page-title">Data Klien</h4> </div>
        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
            <ol class="breadcrumb">
                <li><a href="#">Data Klien</a></li>
            </ol>
        </div>
        <!-- /.col-lg-12 -->
    </div>
     <div class="row">
        <div class="col-sm-12">
            <div class="white-box">
                <div class="row">
                    <div class="col-sm-6">
                        <h3 class="box-title">Data Klien</h3>
                    </div>
                    <div class="col-sm-6">
                        <button class="btn btn-success btn-sm pull-right" onclick="tambah()">Tambah</button>                    
                        <button class="btn btn-warning btn-sm pull-right" onclick="laporan()" style="margin-right: 5px;">Laporan Data Klien</button>
                    </div>
                </div>
                
                
                <div class="table-responsive">
                    <table class="table" id="dataku">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Klien: Layanan</th>
                                <th>Harga</th>
                                <th>Jatuh Tempo</th>
                                <th>Opt</th>                                
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            $no=1;
                            while ($row=$query->fetch_assoc()) { ?>
                            <tr>
                                <td><?=$no++; ?></td>
                                <td><?=$row['nama'] ?></td>
                                <td><?= "Rp. ".number_format($row['jumlah']); ?></td>
                                <td><?=$row['tanggal'] ?></td>
                                <td>
                                    <button class="btn btn-warning btn-sm" onclick="edit_data_klien('<?=$row['id'] ?>')"> <i class="fa fa-pencil"></i> </button>
                                    <button class="btn btn-danger btn-sm" onclick="hapus_data_klien('<?=$row['id'] ?>')"> <i class="fa fa-trash-o"></i> </button>
                                </td>
                            </tr>

                            
                            <?php 
                            // $total=$total+$row['jumlah'];
                            }
                        ?>
                            
                        </tbody>
                        <!-- <tr>
                            <th colspan="2" >Estimasi Total Dana Masuk</th>
                            <td align="left"><b><?= "Rp. ".number_format($total); ?></b></td>
                        </tr> -->
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- modal -->
<div class="modal fade" id="modal_form"  tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal form-material" id="form">
            <div class="form-group">
                <label class="col-md-12">Klien: Layanan</label>
                <div class="col-md-12">
                     <input type="hidden" id="id" name="id"/> 
                    <input type="text" name="nama" id="nama" placeholder="Nama Donatur" class="form-control form-control-line">
                    <span class="help-block"></span>
                </div>                   
            </div>
            <div class="form-group">
                <label for="jumlah" class="col-md-12">Harga</label>
                <div class="col-md-12">
                    <input type="number" placeholder="Jumlah" class="form-control form-control-line" name="jumlah" id="jumlah"> 
                    <span class="help-block"></span>
                </div>
            </div>
            <div class="form-group">
                <label for="jumlah" class="col-md-12">Jatuh Tempo</label>
                <div class="col-md-12">
                    <input type="date" placeholder="Tanggal" class="form-control form-control-line" name="tanggal" id="tanggal"> 
                    <span class="help-block"></span>
                </div>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" id="btnSave" class="btn btn-primary" onclick="save()">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- endmodal -->

<script>
$('#dataku').dataTable();

let save_method;
function tambah() {
    save_method = 'add';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string
    $('#modal_form').modal('show'); 
    $('.modal-title').text('Tambah Data Klien'); 
}
function save(){
    $('#btnSave').text('saving...'); //change button text
    $('#btnSave').attr('disabled',true); //set button disable 
    let url;

    if(save_method == 'add') {
        url = "server_side/data_klien/tambah_kas_masuk.php";
    } else {
        url = "server_side/data_klien/edit_kas_masuk.php";
    }

    // ajax adding data to database

    let formData = new FormData($('#form')[0]);
    $.ajax({
        url : url,
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "JSON",
        success: function(data)
        {

            if(data.status) //if success close modal and reload ajax table
            {
                $('#modal_form').modal('hide');
                 // delay 1 detik
                  setTimeout(function() { $('#kontenku').load('page/data_klien.php'); }, 1000);
                
            }else{
                for (let i = 0; i < data.inputerror.length; i++){
                    $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error'); //select parent twice to select div form-group class and add has-error class
                    $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]); //select span help-block class set text error string
                }
            }
            $('#btnSave').text('save'); //change button text
            $('#btnSave').attr('disabled',false); //set button enable


        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error adding / update data');
        }
    });
}
function edit_data_klien(id){
    save_method = 'update';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string


    //Ajax Load data from ajax
    $.ajax({
        url : "server_side/data_klien/get_data_masuk.php?id="+id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {

            $('#id').val(data.id);
            $('#nama').val(data.nama);
            $('#jumlah').val(data.jumlah);
            $('#tanggal').val(data.tanggal);
            $('#modal_form').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('Edit Data Klien '); // Set title to Bootstrap modal title


        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
}

function hapus_data_klien(id)
{
    if(confirm('Kamu Yakin hapus data ini?'))
    {
        // ajax delete data to database
        $.ajax({
            url : "server_side/data_klien/hapus_kas_masuk.php?id="+id,
            type: "GET",
            dataType: "JSON",
            success: function(data)
            {
                setTimeout(function() { $('#kontenku').load('page/data_klien.php'); }, 1000);
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error deleting data');
            }
        });

    }
}
function laporan() {
    $('#kontenku').load('page/laporan_data_klien.php');
}

</script>
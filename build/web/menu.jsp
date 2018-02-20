<%-- 
    Document   : menu
    Created on : Feb 19, 2018, 4:44:54 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IDVer</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">	
        <link rel="stylesheet" href="css/dataTables.bootstrap.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <!--<link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
        <!--<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>-->
        <style>
        h1{
                margin: 30px 0;
                padding: 0 200px 15px 0;
                border-bottom: 1px solid #E5E5E5;
            }
                .bs-example{
                margin: 20px;
            }
        .center{
            font-size: 90px;
             }
        input[type=checkbox] {
          margin-right: 5px;
          width: 14px;
          height: 14px;
          border-radius: 2px;
          background-color: #ffffff;
          border: solid 1px #979797;
        }
        .Dengan-menyetujui-S{
          width: 475px;
          height: 60px;
          font-family: Lato;
          font-size: 12px;
          text-align: center;
          color: #797979;
        }
        .clearfix::after {

            margin-right: -40px;
        }
        .cancelbtn {
          width: 550px;
          height: 32px;
          border-radius: 27px;
          background-color: #e26161;
          color: #ffffff;
          margin-right: 70px;
          text-align: center;
        }
        </style>
    </head>
    <body>
        <nav>
            <ul>
                <li ><i><a href="index.jsp"><img src="img/user-login-image.png" width="45px;">&nbsp;ID<i>Ver</i></a></i></li>

                <div id="menu-kanan"><li><a href="index.jsp">LOG OUT</a></li></div>

            </ul>
        </nav>
        <div class="notif" >
            
        </div>

        <div class="tengah">
            <div id="menu-verifikasi">
                <input type="submit" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myModal" value="Request Verifikasi">
            </div>            
            <input type="text" name="search" placeholder="Cari MSISDN">
            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
                    <!-- konten modal-->
                    <div class="modal-content">
                    	<!-- heading modal -->
			<div class="modal-header">
                        	<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- body modal -->
			<div class="modal-body">
                            <p> 
                            <!-- isi modal -->
                                <div class="bs-example">
                                    <h5><center>Tambah Request Baru</center></h5>
                                    <form  class="form-horizontal" >
                                        <div class="form-group">
                                <!--            <label class="control-label col-xs-3" for="inputEmail">MSISDN:</label>-->
                                            <div class="col-xs-12">
                                                <label>MSISDN</label>
                                                <input type="email" class="form-control" id="inputEmail" placeholder="081XXXXXX">
                                            </div>
                                        </div>
                                           <div class="form-group">
                                            <div class="col-xs-4"><label>Alamat Rumah</label>
                                                <select class="form-control">

                                                    <option>Kota</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-4"><label>kec</label>
                                                <select class="form-control">
                                                    <option>Kecamatan</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-4"><label>Kel</label>
                                                <select class="form-control">
                                                    <option>Keluarahan</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                <!--            <label class="control-label col-xs-3">Alamat Kantor</label>-->
                                            <div class="col-xs-4"><label>Alamat Kantor</label>
                                                <select class="form-control">
                                                    <option>Kota</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-4"><label>Kec</label>
                                                <select class="form-control">
                                                    <option>kecamatan</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-4"><label>Kel</label>
                                                <select class="form-control">
                                                    <option>Keluarahan</option>
                                                </select>
                                            </div>
                                        </div>
                                       <input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dengan menyetujui S&K, pemohon aplikasi Pinjaman Produk X Bank X<center> memberikan persetujuan untuk dilakukannya verifikasi atas data pemohon oleh PT Telekomunikasi Seluler (Telkomsel) yang bekerjasama dengan PT Bank X, untuk kemudian hasilnya diserahkan kepada PT Bank X</center>
                                        <br>
                                        <div class="form-group">
                                <!--
                                            <div class="col-xs-offset-4 col-xs-8">
                                                <input type="submit" class="btn btn-primary" value="Request Verifikasi">
                                            </div>
                                -->
                                            <div class="clearfix">

                                      <button type="button" class="cancelbtn" onclick="location.href = 'result.php';">Request Verifikasi</button>
                                    </div>
                                        </div>
                                    </form>
                                </div>        
                            </p>
				</div>
				<!-- footer modal -->
				<div class="modal-footer">
					
				</div>
			</div>
		</div>
            </div>
            <div class="tengah">
            <h4 class="text-center">Daftar Verifikasi</h4>
            <div class="box-body table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>MSISDN</th>
                            <th>Request Time</th>
                            <th>Home Address</th>
                            <th>Work Address</th>
                            <th>Completed Time</th>
                            <th>Score</th>
                        </tr>
                    </thead>
                    <style>
                    .table td { 
                        border-top: none !important;
                        border-left: none !important;
                        border: none !important;
                    }
                    .table th{
                        color: #c3c3c3;
                    }
                    </style>
                    <tbody>
                                                       
                    </tbody>
                </table>
            </div><!-- /.box-body -->
            </div>
        </div>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.js"></script>	
         <script type="text/javascript">
            $(function() {
                $('#example1').dataTable({
                     "ordering": true,
        "info":     false,
        "searching": false,
        "bFilter": false,
       " autoWidth": false,
        "entries": false,
                    "paging": false,
        "scrollCollapse" : false,
                     scrollX : false,
//                    "overflow-y": hidden
                });
            });
        </script>
                            
    </body>
</html>

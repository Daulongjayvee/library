<?php 
session_start();
error_reporting(0);
include('includes/config.php');

if(strlen($_SESSION['alogin']) == 0) {
    header('location:index.php');
} else {
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Manage Issued Books</title>
<!-- BOOTSTRAP CORE STYLE -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME STYLE -->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- DATATABLE STYLE -->
<link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<!-- CUSTOM STYLE -->
<link href="assets/css/style.css" rel="stylesheet" />
<!-- GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
<!--MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Manage Issued Books</h4>
            </div>
            <div class="row">
                <?php if($_SESSION['error']!= ""):?>
                    <div class="col-md-6">
                        <div class="alert alert-danger">
                            <strong>Error :</strong> <?php echo htmlentities($_SESSION['error']);?>
                            <?php unset($_SESSION['error']);?>
                        </div>
                    </div>
                <?php endif;?>

                <?php if($_SESSION['msg']!= ""):?>
                    <div class="col-md-6">
                        <div class="alert alert-success">
                            <strong>Success :</strong> <?php echo htmlentities($_SESSION['msg']);?>
                            <?php unset($_SESSION['msg']);?>
                        </div>
                    </div>
                <?php endif;?>

                <?php if($_SESSION['delmsg']!= ""):?>
                    <div class="col-md-6">
                        <div class="alert alert-success">
                            <strong>Success :</strong> <?php echo htmlentities($_SESSION['delmsg']);?>
                            <?php unset($_SESSION['delmsg']);?>
                        </div>
                    </div>
                <?php endif;?>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Issued Books
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Student Name</th>
                                        <th>Book Name</th>
                                        <th>ISBN</th>
                                        <th>Issued Date</th>
                                        <th>Return Date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $sql = "SELECT tblstudents.FullName, tblbooks.BookName, tblbooks.ISBNNumber, tblissuedbookdetails.IssuesDate, tblissuedbookdetails.ReturnDate, tblissuedbookdetails.id as rid FROM tblissuedbookdetails JOIN tblstudents ON tblstudents.StudentId=tblissuedbookdetails.StudentId JOIN tblbooks ON tblbooks.id=tblissuedbookdetails.BookId ORDER BY tblissuedbookdetails.id DESC";
                                    $query = $dbh->prepare($sql);
                                    $query->execute();
                                    $results = $query->fetchAll(PDO::FETCH_OBJ);
                                    $cnt = 1;
                                    if ($query->rowCount() > 0) {
                                        foreach ($results as $result) {
                                           ?>
                                            <tr class="odd gradeX">
                                                <td class="center"><?php echo htmlentities($cnt);?></td>
                                                <td class="center"><?php echo htmlentities($result->FullName);?></td>
                                                <td class="center"><?php echo htmlentities($result->BookName);?></td>
                                                <td class="center"><?php echo htmlentities($result->ISBNNumber);?></td>
                                                <td class="center"><?php echo htmlentities($result->IssuesDate);?></td>
                                                <td class="center"><?php echo htmlentities($result->ReturnDate);?></td>
                                                <td class="center">
                                                    <a href="updateIssueBookDetails.php?rid=<?php echo htmlentities($result->rid);?>">
                                                        <button class="btn btn-primary"><i class="fa fa-external-link-square"></i> View</button>
                                                    </a>
                                                </td>
                                            </tr>
                                            <?php
                                            $cnt++;
                                        }
                                    }
                                   ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- CONTENT-WRAPPER SECTION END-->

<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME -->
<!-- CORE JQUERY -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="assets/js/bootstrap.js"></script>
<!-- DATATABLE SCRIPTS -->
<script src="assets/js/dataTables/jquery.dataTables.js"></script>
<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="assets/js/custom.js"></script>
</body>
</html>
<?php 
}
?>

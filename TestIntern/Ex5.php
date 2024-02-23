<!DOCTYPE html>
<html lang="en">
<head>

<?php
$host ="localhost";
$user ="root";
$pwd ="";
$db = "ex5";
$conn = mysqli_connect($host,$user,$pwd,$db);
if (!$conn)
{
    echo "error connection";
}
mysqli_set_charset($conn,"utf8");
error_reporting(0);
?>


    <meta charset="UTF-8">
    <meta name="viewport" content="width =device-width , initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>แบบทดสอบ</title>

</head>

<body>

<br>
<div class="container text-center">
  <div class="row align-items-center">
    <div class="col-12">
 

    <?php 
    $sql = "SELECT document.DocumentNo,document.ReferenceNo,document.DocumentDate,document.Subject,suuser.EmployeeName,fnexpensedocument.DifferenceAmount
    FROM document
    LEFT JOIN suuser
    ON document.RequesterID = suuser.UserID
    LEFT JOIN fnexpensedocument
    ON document.DocumentID = fnexpensedocument.ExpenseID
    ";
    
    $quser = mysqli_query($conn,$sql);
    ?>

    <table class="table table-bordered">
    <thead>
        <tr>
            <th style="width:10%" scope="col">เลขที่เอกสาร</th>
            <th style="width:10%" scope="col">เลขที่ใบเบิก</th>
            <th style="width:10%" scope="col">วันที่เอกสาร</th>
            <th style="width:15%" scope="col">เรื่อง</th>
            <th style="width:10%" scope="col">ผู้ออกเอกสาร</th>
            <th style="width:10%" scope="col">ผู้ขอเบิก</th>
            <th style="width:5%" scope="col">จำนวนเงิน(บาท)</th>

        </tr>
    </thead>
<br>
    <tbody>
        <?php
        while($rs = mysqli_fetch_array($quser)){
        ?>
        <tr>
            <td><?php echo $rs['DocumentNo'];?></td>
            <td><?php echo $rs['ReferenceNo'];?></td>
            <td><?php echo $rs['DocumentDate'];?></td>
            <td><?php echo $rs['Subject'];?></td>
            <td><?php echo $rs['EmployeeName'];?></td>
            <td><?php echo $rs['EmployeeName'];?></td>
            <td><?php echo $rs['DifferenceAmount'];?></td>
        </tr>
        <?php
            }
        ?>
    </tbody>
  </table>
    </div>
  </div>
</div>


</body>
</html>
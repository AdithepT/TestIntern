<!DOCTYPE html>
<html lang="en">
<head>

<?php
$host ="localhost";
$user ="root";
$pwd ="";
$db = "ex3";
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
    $sql = "SELECT * , SUM(UnitPrice * Quantity) AS TotalPrice
    FROM order_details
    GROUP BY OrderID
    HAVING SUM(UnitPrice * Quantity) > 10000";
    $quser = mysqli_query($conn,$sql);
    ?>




    <table class="table table-bordered">
    <thead>
        <tr>
            <th style="width:10%" scope="col">OrderID</th >
            <th style="width:15%" scope="col">ProductID</th >
            <th style="width:10%" scope="col">UnitPrice</th >
            <th style="width:10%" scope="col">Quantity</th >
            <th style="width:10%" scope="col">TotalPrice</th >

        </tr>
    </thead>
<br>
    <tbody>
        <?php
        while($rs = mysqli_fetch_array($quser)){
        ?>
        <tr>
            <td><?php echo $rs['OrderID'];?></td>
            <td><?php echo $rs['ProductID'];?></td>
            <td><?php echo $rs['UnitPrice'];?></td>
            <td><?php echo $rs['Quantity'];?></td>
            <td><?php echo $rs['TotalPrice'];?></td>
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
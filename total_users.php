?php
    $host = "localhost";
    $username = "root";
    $password = "";
    $db = "redlock-db";
    $port = "7077";
    $con = new mysqli($host,$username,$password,$db,$port);
    if($con->connect_error){
        die("Failed connect to database");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <style>
    table, th, td {
    border: 2px solid;
    border-collapse: collapse;
    padding: 5px;
    text-align: center;
    }
</style>
</head>

<body>
    <table>
   
    <?php 

    $qry = "SELECT * FROM user";
    $res = $con->query($qry);
    $count = 0;
    while($row = $res->fetch_assoc()){
        $count = $count + 1;
    ?>

    
    <?php 
    }
    echo "Jumlah users : " . $count;
    ?>
    </table>
</body>
</html>

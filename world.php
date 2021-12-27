<?php
/* 
$host = 'localhost';
$username = 'lab5_user';
$password = 'password123';
$dbname = 'world'; 
*/

$host = 'sql3.freemysqlhosting.net';
$username = 'sql3461562';
$password = '4rrHcdJQ6N';
$dbname = 'sql3461562';

$conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
$lookup = filter_input(INPUT_GET,"lookup",FILTER_SANITIZE_STRING);
$country = strtoupper(filter_input(INPUT_GET,"country",FILTER_SANITIZE_STRING));
$sql = "";

if($lookup==="countries"){$sql = "SELECT * FROM $lookup where name like '%$country%' order by name asc";}
else{
  $sql = "SELECT ci.name, ci.district, ci.population FROM $lookup ci join countries co on ci.country_code = co.code where co.name like '%$country%' order by ci.name asc";
}

$stmt = $conn->query($sql);

$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

if($lookup=="countries"){
  if($country==""){$caption="List Of All Countries";}
  else{$caption="Country Information for Countries matching '<strong>$country</strong>'";}
}
else{
  if($country==""){$caption="City Information For All Countries";}
  else{$caption="City Information for Countries matching '<strong>$country</strong>'"; }
}
?>

<div id="caption"> <em><caption><?=$caption?></caption></em> </div>

<div class="table">
<table>

<?php if($lookup=="countries"){?>
  
  <tbody>
  <?php foreach($results as $row): ?>
    <tr>
      <td><?= $row['name']; ?></td>
      <td><?= $row['continent']; ?></td>
      <td><?= $row['independence_year']; ?></td>
      <td><?= $row['head_of_state']; ?></td>
    </tr>
  <?php endforeach; ?>
  </tbody>
  <thead>
    <tr>
      <th>Name</td>
      <th>Continent</th>
      <th>Independence</th>
      <th>Head of State</th>
    </tr>
  </thead>
  
<?php } else{ ?>

  <tbody>
  <?php foreach($results as $row): ?>
    <tr>
      <td><?= $row['name']; ?></td>
      <td><?= $row['district']; ?></td>
      <td><?= $row['population']; ?></td>
    </tr>
  <?php endforeach; ?>
  </tbody>
  <thead>
    <tr>
      <th>Name</th>
      <th>District</th>
      <th>Population</th>
    </tr>
  </thead>

<?php } ?>
</table>
</div>
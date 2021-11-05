<?php
$host = 'localhost';
$username = 'lab5_user';
$password = 'password123';
$dbname = 'world';

$conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
$lookup = filter_input(INPUT_GET,"lookup",FILTER_SANITIZE_STRING);
$country = filter_input(INPUT_GET,"country",FILTER_SANITIZE_STRING);
$sql = "";

if($lookup==="countries"){
  $sql = "SELECT * FROM $lookup where name like '%$country%'";
} else{
  $sql = "SELECT ci.name, ci.district, ci.population FROM $lookup ci join countries co on ci.country_code = co.code where co.name like '%$country%'";
}

$stmt = $conn->query($sql);

$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<table>
<?php if($lookup=="countries"){?>

  <thead>
    <tr>
      <td>Name</td>
      <td>Continent</td>
      <td>Independence</td>
      <td>Head of State</td>
    </tr>
  </thead>
  <tbody>
  <?php foreach($results as $row): ?>
    <tr>
      <td><?= $row['name']; ?></td>
      <td><?= $row['continent']; ?></td>
      <td><?= $row['independence_year']; ?></td>
      <td><?= $row['head_of_state']; ?></td>
    </tr>
  <?php 
  endforeach; ?>
  </tbody>
  <caption>General Information for list of Countries</caption>

<?php } else{ ?>

  <thead>
    <tr>
      <td>Name</td>
      <td>District</td>
      <td>Population</td>
    </tr>
  </thead>
  <tbody>
  <?php foreach($results as $row): ?>
    <tr>
      <td><?= $row['name']; ?></td>
      <td><?= $row['district']; ?></td>
      <td><?= $row['population']; ?></td>
    </tr>
  <?php 
  endforeach; ?>
  </tbody>
  <caption>City Information for list of Countries</caption>
<?php }
  ?>
</table>
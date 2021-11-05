<?php
$host = 'localhost';
$username = 'lab5_user';
$password = 'password123';
$dbname = 'world';

$conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);

$country = filter_input(INPUT_GET,"country",FILTER_SANITIZE_STRING);
$stmt = $conn->query("SELECT * FROM countries where name like '%$country%'");

$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<?php 

if(sizeof($results)>=1){?>
<table>
  <caption>Information table for list of countries</caption>
  <thead>
    <tr>
      <td>Name</td>
      <td>Continent</td>
      <td>Independence</td>
      <td>Head of State</td>
    </tr>
  </thead>
  <?php foreach($results as $row): ?>
    <tbody>
    <tr>
      <td><?= $row['name']; ?></td>
      <td><?= $row['continent']; ?></td>
      <td><?= $row['independence_year']; ?></td>
      <td><?= $row['head_of_state']; ?></td>
    </tr>
  <?php 
  endforeach; ?>
  </tbody>
  </table>
<?php } else{
  // code
}
  ?>

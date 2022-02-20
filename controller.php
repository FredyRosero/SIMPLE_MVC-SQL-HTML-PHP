<?php
$mysqli = new mysqli("127.0.0.1", "user", "password", "test");
$result = $mysqli->query("CALL `readAll`()");
$rows = [];
if ($result->num_rows > 0) while($row = $result->fetch_assoc()) $rows[] = $row;
$mysqli->close();
print json_encode($rows);
?>
<?php
/**
 * Created by IntelliJ IDEA.
 * User: Tom
 * Date: 26.11.2015
 * Time: 18:04
 */
$_db_host = "localhost";
$_db_username = "root";
$_db_passwort = "";
$_db_datenbank = "eportfolio";

include('functions.php');

if (isset($_GET['id_b'])) {
    $_student = getStudent($_GET['id_b'], $_db_host, $_db_username, $_db_passwort, $_db_datenbank);
    $_courses = getCourses($_GET['id_b'], $_db_host, $_db_username, $_db_passwort, $_db_datenbank);
    $_daten = mysqli_fetch_array( $_student, MYSQLI_ASSOC);

}

?>

<html>
<head>
    <title>Student <?php echo $_daten['MatNr']; ?></title>
</head>
<body>
<div id="info">
    <h1>Data of Student <?php echo $_daten['MatNr']; ?></h1>
    <p>Matrikelnummer: <?php echo $_daten['MatNr']; ?></p>
    <p>Name: <?php echo $_daten['name']; ?></p>
    <p>Email: <?php echo $_daten['email']; ?></p>
</div>
<div id="courses">
    <h3>Courses</h3>
    <table border="0">
        <thead>
        <th style="text-align: left">Cours</th>
        <th>Room</th>
        </thead>
        <?php

        while ($zeile = mysqli_fetch_array( $_courses, MYSQLI_ASSOC)) {
            echo "<tr>";
            echo "<td>" . $zeile['name'] . "</td>";
            echo "<td>" . $zeile['room'] . "</td>";
            echo "</tr>";
        }
        ?>
    </table>
</div>
<button onclick="location.href='index.php'">back</button>
</body>
</html>

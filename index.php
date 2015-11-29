<?php

include('functions.php');

$_db_host = "localhost";
$_db_username = "root";
$_db_passwort = "";
$_db_datenbank = "eportfolio";

if (isset($_GET['id_d'])) {
    delete($_GET['id_d'], $_db_host, $_db_username, $_db_passwort, $_db_datenbank);
}
?>

<html>
    <head>
        <title>Studentenverzeichnis</title>
    </head>
    <body style="align-content: center">
    <h1>Studentenverzeichnis</h1>
        <div id="users">
            <table border="0.5">
                <thead>
                <th>Matrikelnummer</th>
                <th>Name</th>
                <th>Email</th>
                </thead>
                <?php
                    $db_erg = onLoad($_db_host, $_db_username, $_db_passwort, $_db_datenbank);
                    while ($zeile = mysqli_fetch_array( $db_erg, MYSQLI_ASSOC)) {
                        $_link = "location.href='index.php?id_d=" . $zeile['MatNr'] . "'";
                        $_link2 = "location.href='info.php?id_b=" . $zeile['MatNr'] . "'";

                        echo "<tr>";
                        echo "<td>" . $zeile['MatNr'] . "</td>";
                        echo "<td>" . $zeile['name'] . "</td>";
                        echo "<td>" . $zeile['email'] . "</td>";
                        echo '<td><button onclick="' . $_link . '">Delete</button></td>';
                        echo '<td><button onclick="' . $_link2 . '">View Curses</button></td>';
                        echo "</tr>";
                    }
                mysqli_free_result( $db_erg );
                ?>
            </table>
        </div>
        <div id="ergebnis">
        </div>
    </body>
</html>

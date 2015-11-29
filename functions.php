<?php
/**
 * Created by IntelliJ IDEA.
 * User: Tom
 * Date: 26.11.2015
 * Time: 18:01
 */
    function onLoad($_db_host, $_db_username, $_db_passwort, $_db_datenbank)
    {

        $db_link = mysqli_connect(
            $_db_host,
            $_db_username,
            $_db_passwort,
            $_db_datenbank
        );

        $sql = "SELECT * FROM users";

        $db_erg = mysqli_query($db_link, $sql);
        if (!$db_erg) {
            die('Ungültige Abfrage: ' . mysqli_error());
        }
        return $db_erg;
    }

    function delete($id, $_db_host, $_db_username, $_db_passwort, $_db_datenbank) {
        $db_link = mysqli_connect (
            $_db_host,
            $_db_username,
            $_db_passwort,
            $_db_datenbank
        );
        $sql = "DELETE FROM matcours WHERE MatNr = " .$id.";";
        $sql1 = "DELETE FROM users WHERE MatNr = " .$id.";";

        $db_erg = mysqli_query( $db_link, $sql );
        $db_erg1 = mysqli_query( $db_link, $sql1 );
        if ( ! $db_erg ||  ! $db_erg1 )
        {
            die('Ungültige Abfrage: ' . mysqli_error());
        }
    }

    function getStudent($_MatNR, $_db_host, $_db_username, $_db_passwort, $_db_datenbank)
    {
        $db_link = mysqli_connect(
            $_db_host,
            $_db_username,
            $_db_passwort,
            $_db_datenbank
        );

        $sql = "SELECT * FROM users WHERE MatNr=$_MatNR;";

        $db_erg = mysqli_query($db_link, $sql);
        if (!$db_erg) {
            die('Ungültige Abfrage: ' . mysqli_error());
        }
        return $db_erg;
    }

    function getCourses($_MatNr, $_db_host, $_db_username, $_db_passwort, $_db_datenbank)
    {
        $db_link = mysqli_connect(
            $_db_host,
            $_db_username,
            $_db_passwort,
            $_db_datenbank
        );

        $sql = "SELECT courses.name, courses.room FROM courses, matcours WHERE courses.CoursNr = matcours.CoursNr AND matcours.MatNr = $_MatNr;";

        $db_erg = mysqli_query($db_link, $sql);
        if (!$db_erg) {
            die('Ungültige Abfrage: ' . mysqli_error());
        }
        return $db_erg;
    }
?>
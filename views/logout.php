<?php
session_start();
session_destroy();
echo 'Vous avez été déconnecté. <a href="http://absences/views/login.php"> Revenir en arrière </a>';
<?php

define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'db_rumah_sakit');

$conn = mysqli_connect(HOST, USER, PASS, DB) or die('Unable to Connect');
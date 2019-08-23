<?php
/*	$data = array('login' => 'xyz', 'password' => 'pass1');
	echo http_build_query($data);
	*/
	$data = json_decode(file_get_contents('php://input'), true);
	$pwd = $data['password'];

	try {
		if (strlen($pwd)>2)
			echo 'true';
		else 
			echo $pwd;
		exit;
 	} catch (Exception $e) {
	}
	echo 'exception';
?>
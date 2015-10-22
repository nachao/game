<?php

	inclu
	SplClassLoader.php

	$server = new \Wrench\BasicServer('ws://localhost:8000', array(
	    'allowed_origins' => array(
	        'mysite.com',
	        'mysite.dev.localdomain'
	    )
	));
	$server->registerApplication('echo', new \Wrench\Examples\EchoApplication());
	$server->registerApplication('chat', new \My\ChatApplication());
	$server->run();

?>
<?php

namespace Demo;


class ViewUtil {


	public function render($_ScriptPath_, $_Data_=array())
	{

		if (!file_exists($_ScriptPath_)) {
			throw new Exception("File Not Exists :" . $_ScriptPath_);

			return;
		}



		try {

			include($_ScriptPath_);

		} catch (Exception $e){

			throw $e;
		}

	}


	public function renderStr($_ScriptPath_, $_Data_=array())
	{

		ob_start();
		ob_clean();
		$this->render($_ScriptPath_, $_Data_);
		$str = ob_get_contents();
		ob_end_clean();
		return $str;

	}


}

/*

## Link

* https://www.php.net/manual/en/function.include.php
* https://www.php.net/manual/en/function.ob-get-contents.php
* https://www.php.net/manual/en/ref.outcontrol.php


*/

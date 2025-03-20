#!/usr/bin/env php
<?php

	require_once(__DIR__ . '/lib/init.php');

class App {

	protected $_Lang = 'en_US';

	public function setLang ($val)
	{

		$this->_Lang = $val;

		return $this;
	}

	protected $_List = array();

	protected $_TemplateFilePath = '';

	protected $_TmpDirPath = '';

	protected $_TargetDirPath = '';

	protected $_TargetFileName = 'hotkey-tips.tsv';


	protected function is_even ($val)
	{

		$val = intval($val);

		if ($val % 2 === 1) {
			return false;
		}

		return true;
	}

	public function createList ()
	{
		$rtn = '';

		foreach ((array) $this->_List as $key => $item) {

			$rtn .= '"';
			$rtn .= $item['Keybind'];
			$rtn .= '"';
			$rtn .= "\t";
			$rtn .= '"';
			$rtn .= $item['Action'];
			$rtn .= '"';
			$rtn .= PHP_EOL;

		}

		return $rtn;
	}

	public function run ()
	{
		$this->preRun();
		$this->doRun();
		$this->postRun();
	}

	protected function preRun ()
	{
		$this->_List = include(__DIR__ . '/share/locale/' . $this->_Lang . '/db/list.php');

		$this->_TemplateFilePath = __DIR__ . '/share/locale/' . $this->_Lang . '/view/gen-tsv.view.php';

		$this->_TmpDirPath = __DIR__ . '/tmp';

		$this->_TargetDirPath = $this->_TmpDirPath . '/locale/' . $this->_Lang;

		return;
	}

	protected function postRun ()
	{
		return;
	}

	protected function doRun ()
	{

		$target_file_name = $this->_TargetFileName;

		$target_dir_path = $this->_TargetDirPath;

		$target_file_path = $target_dir_path . '/' . $target_file_name;

		if (!file_exists($target_dir_path)) {
			if (!mkdir($target_dir_path, 0777, true)) {
				die('Failed to create directories...');
			}
		}



		$template_file_path = $this->_TemplateFilePath;

		$data = array();
		$data['List'] = $this->createList();

		$view = new \Demo\ViewUtil;

		$content = $view->renderStr($template_file_path, $data);

		file_put_contents($target_file_path, $content);

		chmod($target_file_path, 0644);

	}

}




function __main__ ()
{
	$lang_list = array(
		'en_US',
		'zh_TW'
	);

	foreach ((array) $lang_list as $key => $lang) {

		(new App)
			->setLang($lang)
			->run();

	}

}

__main__();

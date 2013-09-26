<?php

class JE_ProductModelOrder extends JModel
{
	public function getItem()
	{
		$itemModel = JModel::getInstance('Detail', 'JE_ProductModel');
		
		$item = $itemModel->getItem();
		
//		var_dump($item);
		
		return $item;
	}
}
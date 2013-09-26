<?php

class Je_ProductModelHome extends JModel
{
	public function getItems()
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		$query->select('*')
				->from('#__je_products')
				->where('state = 1')
				->where('sticky = 1')
				->order('id DESC');
		$db->setQuery($query);
		
		$rs = $db->loadObjectList();
		
		if ($db->getErrorMsg())
			die($db->getErrorMsg ());
				
		return $rs;
	}
}
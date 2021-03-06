<?php
/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */


defined('_JEXEC') or die;
?>

<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" class='<jdoc:include type="pageclass" />'>

  <head>
    <jdoc:include type="head" />
    <?php $this->loadBlock ('head') ?>
  </head>

  <body>

  <div id="banner-top" class="absolute"></div>
  <div id="banner-bottom"></div>
  
    <div id="main-content">
    	<?php $this->loadBlock ('header') ?>
    
	    <?php #$this->loadBlock ('mainnav') ?>
	    
	    <div id="top-menu">
	    	
	    </div>
	
	    <?php #$this->loadBlock ('spotlight-1') ?>
	
		<div id="main-body-content">
			<?php $this->loadBlock ('mainbody') ?>
		</div>
	    
	    
	    <?php #$this->loadBlock ('spotlight-2') ?>
	    
	    <?php #$this->loadBlock ('navhelper') ?>
	    
	    <?php $this->loadBlock ('footer') ?>
    </div>
    
  </body>

</html>
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
    
    <script type="text/javascript" src="<?php echo JURI::base(); ?>/media/hoathuyanh/fancybox/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo JURI::base(); ?>/media/hoathuyanh/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />
	
	<script type="text/javascript">
	<!--
	jQuery(document).ready(function($) {
		$('.fancybox').fancybox({'maxWidth': 600, 'maxHeight': 400});
	});
	//-->
	</script>
  </head>

  <body>

    <div id="main-body-content">
    	<?php $this->loadBlock ('header') ?>
    
	    <?php $this->loadBlock ('mainnav') ?>
	
	    <?php $this->loadBlock ('spotlight-1') ?>
	
	    <?php $this->loadBlock ('mainbody') ?>
	    
	    <?php $this->loadBlock ('spotlight-2') ?>
	    
	    <?php $this->loadBlock ('navhelper') ?>
	    
	    <?php $this->loadBlock ('footer') ?>
    </div>
    
  </body>

</html>
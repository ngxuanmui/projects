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

// read folder
$footerGallery =array();
$footerGalleryUrl = JURI::base() .  '/images/gallery/hinh-anh-be/';
$filePath	= JPATH_ROOT . DS . 'images' . DS . 'gallery' . DS . 'hinh-anh-be' . DS;
$dir = opendir($filePath);
while ($file = readdir($dir)) {
	if (preg_match("/.png/i",$file) || preg_match("/.jpg/i",$file) || preg_match("/.gif/i",$file) ) {
		$footerGallery[] = $file;
	}
}
?>

<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" class='<jdoc:include type="pageclass" />'>

  <head>
    <jdoc:include type="head" />
    <?php $this->loadBlock ('head') ?>
  </head>

  <body class="relative">
  
  	<div id="banner-top" class="absolute"></div>
  

   <div id="main-content">
    <?php $this->loadBlock ('header') ?>
    
    <?php #$this->loadBlock ('mainnav') ?>
    
    <jdoc:include type="modules" name="top-menu" style="xhtml" />

    <?php $this->loadBlock ('spotlight-1') ?>

    <div class="main-body-content">
    	<?php $this->loadBlock ('mainbody') ?>
    </div>
    
    <div class="box-1 relative">
    	<div class="icons hinh-anh-be"></div>
    	<div class="slider">
				<ul class="footer-slider">
					<?php 
					while (sizeof($footerGallery) != 0):
						$img = array_pop($footerGallery);
					?>
					<li><img src="<?php echo $footerGalleryUrl . $img; ?>" /></li>
					<?php endwhile; ?>
				</ul>
				<div class="clr"></div>
			</div>
    	<div class="icons absolute dia-chi-truong-mam-non"></div>
    </div>
    
    <?php $this->loadBlock ('spotlight-2') ?>
    
    <?php #$this->loadBlock ('navhelper') ?>
    
    <?php $this->loadBlock ('footer') ?>
    </div>
    
    <div id="banner-bottom" class="absolute"></div>
  </body>

</html>
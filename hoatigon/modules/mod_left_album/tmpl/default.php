<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_left_album
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

$string =array();
$galleryUrl = JURI::base() .  '/images/gallery/chuong-trinh-ngoai-khoa/';
$filePath	= JPATH_ROOT . DS . 'images' . DS . 'gallery' . DS . 'chuong-trinh-ngoai-khoa' . DS;
$dir = opendir($filePath);
while ($file = readdir($dir)) {
	if (preg_match("/.png/",$file) || preg_match("/.jpg/",$file) || preg_match("/.gif/",$file) ) {
		$string[] = $file;
	}
}

$newImage =array();
$newImageUrl = JURI::base() .  '/images/gallery/';
$filePath	= JPATH_ROOT . DS . 'images' . DS . 'gallery' . DS;
$dir = opendir($filePath);
while ($file = readdir($dir)) {
	if (preg_match("/.png/",$file) || preg_match("/.jpg/",$file) || preg_match("/.gif/",$file) ) {
		$newImage[] = $file;
	}
}
?>

<div class="left-album box bg round relative">
	<div class="icons anh-moi fltrgt"></div>
	<div class="clr"></div>
	<div class="new-album-container relative">
		<ul class="new-image-slider">
			<?php 
			while (sizeof($newImage) != 0):
				$img = array_pop($newImage);
			?>
			<li><img src="<?php echo $newImageUrl . $img; ?>" /></li>
			<?php endwhile; ?>
		</ul>
		<span class="new-album-frame icons absolute"></span>
	</div>
	<div class="icons txt-chuong-trinh-ngoai-khoa"></div>
	<div class="icons anh-chuong-trinh-ngoai-khoa">
		<ul class="chuong-trinh-ngoai-khoa">
			<?php 
			while (sizeof($string) != 0):
				$img = array_pop($string);
			?>
			<li><img src="<?php echo $galleryUrl . $img; ?>" /></li>
			<?php endwhile; ?>
		</ul>
	</div>
	
	<div class="icons absolute xoay-tren"></div>
</div>

<script type="text/javascript">
<!--
jQuery(function($){
	$('.new-image-slider').bxSlider({
		  maxSlides: 1,
		  moveSlides: 1,
		  slideWidth: 194,
		  slideMargin: 0,
		  pager: false,
		  auto: true,
		  controls: false
	}).reloadSlider();

	$('.chuong-trinh-ngoai-khoa').bxSlider({
		  maxSlides: 1,
		  moveSlides: 1,
		  slideWidth: 190,
		  slideMargin: 0,
		  pager: false,
		  auto: true,
		  controls: false,
		  mode: 'fade'
	}).reloadSlider();
});
//-->
</script>
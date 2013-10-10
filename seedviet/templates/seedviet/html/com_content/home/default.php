<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');

// Create shortcuts to some parameters.
$params		= $this->item->params;
$images = json_decode($this->item->images);
$urls = json_decode($this->item->urls);

$floatIntro = $images->float_intro ? $images->float_intro : 'left';

// var_dump($images);
?>

<div class="article-title">
	<?php if ($images->image_intro): ?>
	<img src="<?php echo JURI::base() . $images->image_intro; ?>" style="float: <?php echo $floatIntro;?>; margin-right: 10px;" />
	<?php endif; ?>
	<h1>
		<?php echo $this->item->title; ?>
		<?php if ($this->item->title_alias): ?>
		<span><?php echo $this->item->title_alias; ?></span>
		<?php endif; ?>
	</h1>
</div>

<div class="clr"></div>

<div class="article-content">
	<?php echo $this->item->text; ?>
	
	<?php echo $this->item->event->afterDisplayContent; ?>
</div>

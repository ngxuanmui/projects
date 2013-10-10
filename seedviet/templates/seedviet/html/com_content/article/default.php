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
$canEdit	= $this->item->params->get('access-edit');
$user		= JFactory::getUser();

?>

<div class="article-title">
	<h1>
		<?php echo $this->item->title; ?>
		<?php if ($this->item->title_alias): ?>
		<span><?php echo $this->item->title_alias; ?></span>
		<?php endif; ?>
	</h1>
</div>

<div class="clr"></div>

<?php if ($images->image_intro): ?>
<div style="text-align: center;">
	<img src="<?php echo JURI::base() . $images->image_intro; ?>" />
</div>

<div class="clr"></div>
<?php endif; ?>

<div class="article-content">
	<?php echo $this->item->text; ?>
	
	<?php echo $this->item->event->afterDisplayContent; ?>
</div>
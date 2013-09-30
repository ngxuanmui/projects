<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_latest
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

?>
<div class="icons top-box-latest-news"></div>
<div class="right-latest-news">
	<ul class="latestnews<?php echo $moduleclass_sfx; ?>">
	<?php
	foreach ($list as $item) :
		$images = json_decode($item->images);
	
// 	var_dump($images);
	?>
		<li>
			<a href="<?php echo $item->link; ?>">
				<?php if ($images->image_intro): ?>
					<img src="<?php echo $images->image_intro; ?>" style="width: 64px; float: left; margin-right: 10px;" />
				<?php endif; ?>
				<?php echo $item->title; ?>
			</a>
		</li>
	<?php endforeach; ?>
	</ul>
</div>
<div class="icons bottom-box-latest-news"></div>


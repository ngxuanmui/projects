<?php
// no direct access
defined('_JEXEC') or die;

jimport('joomla.application.module.helper');

$items = $this->items;
?>

<ul>
<?php 
foreach ($items as $key => $item): 
	$images = unserialize($item->images);

	$firstImage = '';

	if (!empty($images))
	{
		$firstImage = $images[0];
	}
?>
	<li>
		<h3><?php echo $item->name; ?></h3>
		<p class="price"><strike><?php echo $item->price; ?></strike></p>
		<p class="price"><?php echo $item->promotion_price; ?></p>
		
		<?php 
		require_once JPATH_ROOT . DS . 'jelibs/classes/util.class.php';
		
		$pathUpload = JPATH_ROOT . DS . PATH_TO_IMAGE;
		$pathThumb = JPATH_ROOT . DS . 'images/je_products/thumbs/' . THUMB_WIDTH_LIST . DS;
		
		$thumb = JEUtil::thumb($item->images, $pathUpload, $pathThumb, THUMB_WIDTH_LIST, THUMB_HEIGHT_LIST);
		?>
		
		<a title="<?php echo $item->name; ?>" href="<?php echo JRoute::_(JE_ProductHelperRoute::getDetailRoute($item->id, $item->catid, $item->alias)); ?>">
			<span class="img">
				<img alt="<?php echo $item->alias; ?>" src="images/je_products/thumbs/<?php echo THUMB_WIDTH_LIST . '/' . $thumb[0]; ?>">
			</span>
		</a>
		
	</li>
<?php endforeach; ?>
</ul>
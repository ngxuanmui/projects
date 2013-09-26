<?php
// No direct access
defined('_JEXEC') or die;
$item = $this->item;
?>

<?php 
require_once JPATH_ROOT . DS . 'jelibs/classes/util.class.php';

/*
$file 		= JPATH_ROOT . DS . 'images/je_products/upload/' . $item->images;
$thumbFile 	= JPATH_ROOT . DS . 'images/je_products/detail/' . $item->images;

JEUtil::resizeImage($file, $thumbFile, THUMB_WIDTH, null, false);
*/
$pathUpload = JPATH_ROOT . DS . 'images/je_products/upload/';
$pathThumb = JPATH_ROOT . DS . 'images/je_products/detail/';

$thumb = JEUtil::thumb($item->images, $pathUpload, $pathThumb, NEW_THUMB_WIDTH, null, false);
?>

<div>
	<h1><?php echo $item->name;?></h1>
	
	<div class="detail-image">
		<?php foreach ($thumb as $img): ?>
		<img alt="<?php echo $item->alias; ?>" src="images/je_products/thumbs/<?php echo NEW_THUMB_WIDTH . '/' . $img; ?>" />
		<?php endforeach; ?>
	</div>
		
	<div class="grid_13">
		
		<p>Giá cũ: <?php echo $item->price; ?></p>
		<p>Giá mới: <?php echo $item->promotion_price; ?></p>
		
		<div class="box-header">Thông tin</div>
		
		<div class="description">
			<?php echo $item->description; ?>
		</div>
		
		<?php if($item->note): ?>
		Ghi chú: <?php echo nl2br($item->note); ?>
		<?php endif; ?>
	</div>
	
	<div class="grid_6 last">
		
		<?php if(!empty($this->otherProducts)): ?>
		<div class="box-header">Thông tin khác</div>
		
		<ul class="other-product">
			<?php foreach ($this->otherProducts as $i => $item): ?>
			<li>
				<?php 
				/*
				require_once JPATH_ROOT . DS . 'jelibs/classes/util.class.php';
				
				$file 		= JPATH_ROOT . DS . 'images/je_products/upload/' . $item->images;
				$thumbFile 	= JPATH_ROOT . DS . 'images/je_products/thumbs/thumb_' . $item->images;
				
				JEUtil::resizeImage($file, $thumbFile);
				*/
				
				$pathUpload = JPATH_ROOT . DS . 'images/je_products/upload/';
				$pathThumb = JPATH_ROOT . DS . 'images/je_products/thumbs/';
				
				$thumb = JEUtil::thumb($item->images, $pathUpload, $pathThumb, 220, 60);
				
				?>
				
				<?php $location = ($item->location_name == 'all-location') ? 'Toàn Quốc' : $item->location_name; ?>
				
				<a title="<?php echo $location . ': ' . $item->name; ?>" href="<?php echo JRoute::_('index.php?option=com_je_product&view=detail&id='. $item->id.':'.$item->alias); ?>">
					<img alt="<?php echo $item->alias; ?>" src="images/je_products/thumbs/<?php echo @$thumb[0]; ?>">
					<strong><?php echo $location; ?></strong>: <?php echo $item->name;?>
				</a>
			</li>
			<?php endforeach; ?>
		</ul>
		
		<?php endif; ?>
	</div>
</div>

<div class="clr"></div>
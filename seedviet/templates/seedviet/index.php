<?php
/**
 * @package                Joomla.Site
 * @subpackage	Templates.beez_20
 * @copyright        Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license                GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

$app				= JFactory::getApplication();
$doc				= JFactory::getDocument();

$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/reset.css', $type = 'text/css', $media = 'screen,projection');
$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/text.css', $type = 'text/css', $media = 'screen,projection');
$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/layout.css', $type = 'text/css', $media = 'screen,projection');
$doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/general.css', $type = 'text/css', $media = 'screen,projection');
// $doc->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/print.css', $type = 'text/css', $media = 'print');

// $doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/md_stylechanger.js', 'text/javascript');
// $doc->addScript($this->baseurl.'/templates/'.$this->template.'/javascript/hide.js', 'text/javascript');

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
<jdoc:include type="head" />

<!--[if lte IE 6]>

<![endif]-->

<!--[if IE 7]>
<![endif]-->

</head>

<body>
	<div class="container">
	
		<div id="header" class="relative">
			<div id="main-menu" class="absolute">
				<jdoc:include type="modules" name="main-menu" />
			</div>
		</div>
		
		<div class="grid-wraper round-conners-10">
			
			<div id="component-content">
				<jdoc:include type="message" />
				
				<?php 
				$jInput = JFactory::getApplication()->input;
				
				$option = $jInput->getString('option', 'com_content');
				$view = $jInput->getString('view', 'home');
				
				if ($view != 'camera'):
				?>
				
				<div class="grid-left fltlft">
					<div class="menu-categories bg-content round-conners-5 relative">
						<span class="txt-category fltrgt"></span>
						<div class="clr"></div>
						<jdoc:include type="modules" name="left-menu" />
						<div id="left-menu-flower-1" class="absolute"></div>
					</div>
					
					<div class="left-module bg-content round-conners-5 relative">
						<a href="<?php echo JRoute::_('index.php?option=com_phocagallery&view=category&Itemid=136', false); ?>" class="txt-album fltrgt"></a>
						<div class="clr"></div>
						<jdoc:include type="modules" name="left-album" />
						<a href="<?php echo JRoute::_('index.php?option=com_youtubegallery&Itemid=135', false); ?>" class="video-store"></a>
						<div id="left-menu-flower-2" class="absolute"></div>
					</div>
					
					<div class="left-module bg-content round-conners-5">
						<a href="<?php echo JRoute::_('index.php?option=com_phocagallery&view=category&Itemid=137', false); ?>" class="txt-baby-exam fltrgt"></a>
						<div class="clr"></div>
						<jdoc:include type="modules" name="left-baby-exam" />
					</div>
					<div class="left-module bg-content round-conners-5 relative stat-container">
						<span class="support-online absolute"></span>
						<a href="ymsgr:sendIM?muinx" class="left-nick-yahoo">
							<img src="http://opi.yahoo.com/online?u=muinx&amp;m=g&amp;t=2" alt="Yahoo Messenger" title="Yahoo Messenger" />
						</a>
						<div class="txt-mobile-support"></div>
						<div class="clr"></div>
						<div style="margin: 10px auto; width: 165px;">
							<!-- Histats.com  START  (standard)-->
							<script type="text/javascript">document.write(unescape("%3Cscript src=%27http://s10.histats.com/js15.js%27 type=%27text/javascript%27%3E%3C/script%3E"));</script>
							<a href="http://www.histats.com" target="_blank" title="web stats" ><script  type="text/javascript" >
							try {Histats.start(1,2448433,4,406,165,100,"00011101");
							Histats.track_hits();} catch(err){};
							</script></a>
							<noscript><a href="http://www.histats.com" target="_blank"><img  src="http://sstatic1.histats.com/0.gif?2448433&101" alt="web stats" border="0"></a></noscript>
							<!-- Histats.com  END  -->
						</div>
					</div>
				</div>
				<div class="grid-right fltrgt">
					<div class="content bg-content round-conners-10">
						<jdoc:include type="component" />
						
					</div>
				</div>
				
				<?php else: ?>
				
				<div class="grid-full fltrgt">
					<div class="content bg-content round-conners-10">
						<jdoc:include type="component" />
					</div>
				</div>
				
				<?php endif; ?>
				
				<div class="clr"></div>
			</div>
			
		</div>
	</div>
		
		<div id="footer" class="relative">
			<div class="footer-content">
				<p>Trường mầm non chất lượng cao SeedViet</p>
				<p>Địa chỉ: Thanh Liệt, Thanh Trì, Hà Nội</p>
				<p>Điện thoại: 0918.685.085</p>
			</div>
			<div class="img-left-bottom absolute"></div>
			<div class="img-right-bottom absolute"></div>
		</div>
	<jdoc:include type="modules" name="debug" />
</body>
</html>

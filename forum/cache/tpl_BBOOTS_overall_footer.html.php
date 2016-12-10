<?php if (!defined('IN_PHPBB')) exit; ?><footer role="contentinfo"> <!-- Footer block -->
		<div id="footerContent"> <!-- About us , links, twitter, recent posts layout -->
			<div class="row">
				<div class="col-md-3 col-sm-6 recent-row">
					<div class="side-segment"><h3><?php echo ((isset($this->_rootref['L_RECENT_TOPICS'])) ? $this->_rootref['L_RECENT_TOPICS'] : ((isset($user->lang['RECENT_TOPICS'])) ? $user->lang['RECENT_TOPICS'] : '{ RECENT_TOPICS }')); ?></h3></div>
                   <?php $this->_tpl_include('recent_topics_body.html'); ?>

				</div>
				
				<div class="col-md-3 col-sm-6 recent-row">
					<div class="side-segment"><h3><?php echo ((isset($this->_rootref['L_TWITTER'])) ? $this->_rootref['L_TWITTER'] : ((isset($user->lang['TWITTER'])) ? $user->lang['TWITTER'] : '{ TWITTER }')); ?></h3></div>
				   <div id="example1"></div>
				</div>
				
				<div class="col-md-3 col-sm-6 recent-row">
					<div class="side-segment"><h3><?php echo ((isset($this->_rootref['L_FAVORITES'])) ? $this->_rootref['L_FAVORITES'] : ((isset($user->lang['FAVORITES'])) ? $user->lang['FAVORITES'] : '{ FAVORITES }')); ?></h3></div>
					<ul class="navList">
						<li><a href="#"><i class="fa fa-home"></i> <?php echo ((isset($this->_rootref['L_HOME'])) ? $this->_rootref['L_HOME'] : ((isset($user->lang['HOME'])) ? $user->lang['HOME'] : '{ HOME }')); ?></a></li>
						<li><a href="#"><i class="fa fa-picture-o"></i> <?php echo ((isset($this->_rootref['L_GALLERY'])) ? $this->_rootref['L_GALLERY'] : ((isset($user->lang['GALLERY'])) ? $user->lang['GALLERY'] : '{ GALLERY }')); ?></a></li>
						<li><a href="<?php echo (isset($this->_rootref['U_MEMBERLIST'])) ? $this->_rootref['U_MEMBERLIST'] : ''; ?>"><i class="fa fa-group"></i> <?php echo ((isset($this->_rootref['L_MEMBERLIST'])) ? $this->_rootref['L_MEMBERLIST'] : ((isset($user->lang['MEMBERLIST'])) ? $user->lang['MEMBERLIST'] : '{ MEMBERLIST }')); ?></a></li>
						<li><a href="#"><i class="fa fa-comments"></i> <?php echo ((isset($this->_rootref['L_CHAT'])) ? $this->_rootref['L_CHAT'] : ((isset($user->lang['CHAT'])) ? $user->lang['CHAT'] : '{ CHAT }')); ?></a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o"></i> <?php echo ((isset($this->_rootref['L_STATISTICS'])) ? $this->_rootref['L_STATISTICS'] : ((isset($user->lang['STATISTICS'])) ? $user->lang['STATISTICS'] : '{ STATISTICS }')); ?></a></li>
						<?php if (! $this->_rootref['S_IS_BOT']) {  ?><li><a href="<?php echo (isset($this->_rootref['U_DELETE_COOKIES'])) ? $this->_rootref['U_DELETE_COOKIES'] : ''; ?>"><i class="fa fa-trash-o"></i> <?php echo ((isset($this->_rootref['L_DELETE_COOKIES'])) ? $this->_rootref['L_DELETE_COOKIES'] : ((isset($user->lang['DELETE_COOKIES'])) ? $user->lang['DELETE_COOKIES'] : '{ DELETE_COOKIES }')); ?></a></li><?php } ?>

					</ul>
				</div>
				
				<div class="col-md-3 col-sm-6 recent-row">
				   <div class="side-segment"><h3><?php echo ((isset($this->_rootref['L_ABOUT'])) ? $this->_rootref['L_ABOUT'] : ((isset($user->lang['ABOUT'])) ? $user->lang['ABOUT'] : '{ ABOUT }')); ?></h3></div>
					<p><?php echo ((isset($this->_rootref['L_ABOUT_PART_ONE'])) ? $this->_rootref['L_ABOUT_PART_ONE'] : ((isset($user->lang['ABOUT_PART_ONE'])) ? $user->lang['ABOUT_PART_ONE'] : '{ ABOUT_PART_ONE }')); ?></p> 
					<p><?php echo ((isset($this->_rootref['L_ABOUT_PART_TWO'])) ? $this->_rootref['L_ABOUT_PART_TWO'] : ((isset($user->lang['ABOUT_PART_TWO'])) ? $user->lang['ABOUT_PART_TWO'] : '{ ABOUT_PART_TWO }')); ?></p>
				   <blockquote>
                    <p><span><?php echo ((isset($this->_rootref['L_BB'])) ? $this->_rootref['L_BB'] : ((isset($user->lang['BB'])) ? $user->lang['BB'] : '{ BB }')); ?></span><?php echo ((isset($this->_rootref['L_BOOTS'])) ? $this->_rootref['L_BOOTS'] : ((isset($user->lang['BOOTS'])) ? $user->lang['BOOTS'] : '{ BOOTS }')); ?></p>
                     <small><cite title="Source Title"><?php echo ((isset($this->_rootref['L_ABOUT_PART_THREE'])) ? $this->_rootref['L_ABOUT_PART_THREE'] : ((isset($user->lang['ABOUT_PART_THREE'])) ? $user->lang['ABOUT_PART_THREE'] : '{ ABOUT_PART_THREE }')); ?> <i class="fa fa-map-marker"></i></cite></small>
                   </blockquote>
				</div>
				
			</div>
		</div> <!-- About us , links, twitter, recent posts layout -->
		
	<div class="row bottomLinks"> <!-- Credit, links and copyright block do not remove please -->
	  <div class="col-md-12">
		<div class="pull-left">
		  <small><?php echo ((isset($this->_rootref['L_POWERED'])) ? $this->_rootref['L_POWERED'] : ((isset($user->lang['POWERED'])) ? $user->lang['POWERED'] : '{ POWERED }')); ?> <a href="http://www.phpbb.com/" title="Forum Software &copy; phpBB&reg; Group" target="_blank"><i aria-hidden="true" class="icon-moon-forphp"></i></a> <i aria-hidden="true" class="icon-moon-bootstrap"></i> <i aria-hidden="true" class="icon-moon-html5"></i> <i aria-hidden="true" class="icon-moon-css3"></i> <i aria-hidden="true" class="icon-moon-forjq"></i> <i aria-hidden="true" class="icon-moon-less_c"></i> <a href="http://validator.w3.org/check?uri=http%3A%2F%2Fsitesplat.com%2Fdemo%2FphpBB3%2Findex.php" title="Conform to W3C HTML5 Standard" target="_blank"> <i aria-hidden="true" class="icon-moon-w3c"></i></a> </small>
		</div>
		
		<div class="pull-right">
		  <small><?php echo ((isset($this->_rootref['L_HANDCRAFTED'])) ? $this->_rootref['L_HANDCRAFTED'] : ((isset($user->lang['HANDCRAFTED'])) ? $user->lang['HANDCRAFTED'] : '{ HANDCRAFTED }')); ?>&nbsp;<i class="fa fa-heart rosso"></i> <?php echo ((isset($this->_rootref['L_AND'])) ? $this->_rootref['L_AND'] : ((isset($user->lang['AND'])) ? $user->lang['AND'] : '{ AND }')); ?> <i class="fa fa-coffee"></i> <?php echo ((isset($this->_rootref['L_BY'])) ? $this->_rootref['L_BY'] : ((isset($user->lang['BY'])) ? $user->lang['BY'] : '{ BY }')); ?> <a href="#" title="APC MEGAPHONE" target="_blank">SiteSplat</a> &copy;SiteSplat 2013</small>
		</div>
	   </div> 
	</div> <!-- Credit, links and copyright block do not remove please -->
</footer>
	
	  </main>
	</div><!-- page-body id in header -->
  </div> <!-- padding_0_40 in header -->
 </div> <!-- content-forum in header -->
</div> <!-- wrap - corners container in header -->

<a id="totop" class="topstyle" href="" onclick="return false;" style="display:none;"><i class="fa fa-chevron-up"></i></a>

<div class="container">
  <div class="copyright">
	<small class="pull-left">
		<?php if ($this->_rootref['TRANSLATION_INFO']) {  echo (isset($this->_rootref['TRANSLATION_INFO'])) ? $this->_rootref['TRANSLATION_INFO'] : ''; } if ($this->_rootref['DEBUG_OUTPUT']) {  echo (isset($this->_rootref['DEBUG_OUTPUT'])) ? $this->_rootref['DEBUG_OUTPUT'] : ''; } ?><!-- <?php echo ((isset($this->_rootref['L_BBOOTS_VERSION'])) ? $this->_rootref['L_BBOOTS_VERSION'] : ((isset($user->lang['BBOOTS_VERSION'])) ? $user->lang['BBOOTS_VERSION'] : '{ BBOOTS_VERSION }')); ?> -->
	</small>
	<small class="pull-right">
		<?php echo (isset($this->_rootref['S_TIMEZONE'])) ? $this->_rootref['S_TIMEZONE'] : ''; ?>

	</small>
  </div>
</div>

<div class="space10"></div> 

<div> 
	<?php if (! $this->_rootref['S_IS_BOT']) {  echo (isset($this->_rootref['RUN_CRON_TASK'])) ? $this->_rootref['RUN_CRON_TASK'] : ''; } ?>

</div> 

<!-- injected via a module or an include -->
<script>
    // some function that depends on bootstrap and jquery
	head.ready(function () {
	   $('.footable').footable();$.fn.tooltip&&$('[rel="tooltip"]').tooltip();$(".selectpicker").selectpicker();$(".selectpicker, .mchat-ttp").tooltip("disable");$(".btn-group [title]").tooltip({container:"body"});twitterFetcher.fetch("391407906655965184","example1",3,true,false);var totop=$("#totop");totop.click(function(){$("html, body").stop(true,true).animate({scrollTop:0},500);return false});$(window).scroll(function(){if($(this).scrollTop()>600){totop.fadeIn()}else{totop.fadeOut()}});$("button[data-loading-text]").click(function(){var e=$(this);e.button("loading");setTimeout(function(){e.button("reset")},3e3)});jQuery(function(e){e("a").tooltip({html:true,container:"body"})});
       $('.listen_click').on('click',function(){$('.target-status').toggleClass('fa fa-arrow-down fa fa-arrow-up');});
	   $('.listen_menu').on('click',function(){$(this).toggleClass('fa fa-align-justify fa fa-list');});
	});
</script>
<!-- Google Analytics: change UA-XXXXXXXX-X to be your site's ID. -->

</body>
</html>
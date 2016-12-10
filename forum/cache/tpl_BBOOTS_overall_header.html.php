<?php if (!defined('IN_PHPBB')) exit; ?><!DOCTYPE html>
<html dir="<?php echo (isset($this->_rootref['S_CONTENT_DIRECTION'])) ? $this->_rootref['S_CONTENT_DIRECTION'] : ''; ?>" lang="<?php echo (isset($this->_rootref['S_USER_LANG'])) ? $this->_rootref['S_USER_LANG'] : ''; ?>">
<head>
<meta charset="<?php echo (isset($this->_rootref['S_CONTENT_ENCODING'])) ? $this->_rootref['S_CONTENT_ENCODING'] : ''; ?>">
<meta name="author" content="SiteSplat | www.sitesplat.com">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Set the viewport width to device width for mobile -->
<meta name="Description" content=""> <!-- Set Your forum description here inside the "" tag -->
<meta name="Keywords" content=""> <!-- Set Your forum keywords here inside the "" tag and make sure they are separated by a comma -->
<meta name="application-name" content="BBOOTS"><!-- WIN8 Tiles setup -->
<meta name="msapplication-TileColor" content="#ffffff"><!-- WIN8 Tiles setup --><!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<?php echo (isset($this->_rootref['META'])) ? $this->_rootref['META'] : ''; ?>

<title><?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?> <?php if ($this->_rootref['S_IN_MCP']) {  echo ((isset($this->_rootref['L_MCP'])) ? $this->_rootref['L_MCP'] : ((isset($user->lang['MCP'])) ? $user->lang['MCP'] : '{ MCP }')); ?> <?php } else if ($this->_rootref['S_IN_UCP']) {  echo ((isset($this->_rootref['L_UCP'])) ? $this->_rootref['L_UCP'] : ((isset($user->lang['UCP'])) ? $user->lang['UCP'] : '{ UCP }')); ?> <?php } echo (isset($this->_rootref['PAGE_TITLE'])) ? $this->_rootref['PAGE_TITLE'] : ''; ?></title>

<?php if ($this->_rootref['S_ENABLE_FEEDS']) {  if ($this->_rootref['S_ENABLE_FEEDS_OVERALL']) {  ?><link rel="alternate" type="application/atom+xml" title="<?php echo ((isset($this->_rootref['L_FEED'])) ? $this->_rootref['L_FEED'] : ((isset($user->lang['FEED'])) ? $user->lang['FEED'] : '{ FEED }')); ?> - <?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?>" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>" /><?php } if ($this->_rootref['S_ENABLE_FEEDS_NEWS']) {  ?><link rel="alternate" type="application/atom+xml" title="<?php echo ((isset($this->_rootref['L_FEED'])) ? $this->_rootref['L_FEED'] : ((isset($user->lang['FEED'])) ? $user->lang['FEED'] : '{ FEED }')); ?> - <?php echo ((isset($this->_rootref['L_FEED_NEWS'])) ? $this->_rootref['L_FEED_NEWS'] : ((isset($user->lang['FEED_NEWS'])) ? $user->lang['FEED_NEWS'] : '{ FEED_NEWS }')); ?>" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>?mode=news" /><?php } if ($this->_rootref['S_ENABLE_FEEDS_FORUMS']) {  ?><link rel="alternate" type="application/atom+xml" title="<?php echo ((isset($this->_rootref['L_FEED'])) ? $this->_rootref['L_FEED'] : ((isset($user->lang['FEED'])) ? $user->lang['FEED'] : '{ FEED }')); ?> - <?php echo ((isset($this->_rootref['L_ALL_FORUMS'])) ? $this->_rootref['L_ALL_FORUMS'] : ((isset($user->lang['ALL_FORUMS'])) ? $user->lang['ALL_FORUMS'] : '{ ALL_FORUMS }')); ?>" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>?mode=forums" /><?php } if ($this->_rootref['S_ENABLE_FEEDS_TOPICS']) {  ?><link rel="alternate" type="application/atom+xml" title="<?php echo ((isset($this->_rootref['L_FEED'])) ? $this->_rootref['L_FEED'] : ((isset($user->lang['FEED'])) ? $user->lang['FEED'] : '{ FEED }')); ?> - <?php echo ((isset($this->_rootref['L_FEED_TOPICS_NEW'])) ? $this->_rootref['L_FEED_TOPICS_NEW'] : ((isset($user->lang['FEED_TOPICS_NEW'])) ? $user->lang['FEED_TOPICS_NEW'] : '{ FEED_TOPICS_NEW }')); ?>" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>?mode=topics" /><?php } if ($this->_rootref['S_ENABLE_FEEDS_TOPICS_ACTIVE']) {  ?><link rel="alternate" type="application/atom+xml" title="<?php echo ((isset($this->_rootref['L_FEED'])) ? $this->_rootref['L_FEED'] : ((isset($user->lang['FEED'])) ? $user->lang['FEED'] : '{ FEED }')); ?> - <?php echo ((isset($this->_rootref['L_FEED_TOPICS_ACTIVE'])) ? $this->_rootref['L_FEED_TOPICS_ACTIVE'] : ((isset($user->lang['FEED_TOPICS_ACTIVE'])) ? $user->lang['FEED_TOPICS_ACTIVE'] : '{ FEED_TOPICS_ACTIVE }')); ?>" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>?mode=topics_active" /><?php } if ($this->_rootref['S_ENABLE_FEEDS_FORUM'] && $this->_rootref['S_FORUM_ID']) {  ?><link rel="alternate" type="application/atom+xml" title="<?php echo ((isset($this->_rootref['L_FEED'])) ? $this->_rootref['L_FEED'] : ((isset($user->lang['FEED'])) ? $user->lang['FEED'] : '{ FEED }')); ?> - <?php echo ((isset($this->_rootref['L_FORUM'])) ? $this->_rootref['L_FORUM'] : ((isset($user->lang['FORUM'])) ? $user->lang['FORUM'] : '{ FORUM }')); ?> - <?php echo (isset($this->_rootref['FORUM_NAME'])) ? $this->_rootref['FORUM_NAME'] : ''; ?>" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>?f=<?php echo (isset($this->_rootref['S_FORUM_ID'])) ? $this->_rootref['S_FORUM_ID'] : ''; ?>" /><?php } if ($this->_rootref['S_ENABLE_FEEDS_TOPIC'] && $this->_rootref['S_TOPIC_ID']) {  ?><link rel="alternate" type="application/atom+xml" title="<?php echo ((isset($this->_rootref['L_FEED'])) ? $this->_rootref['L_FEED'] : ((isset($user->lang['FEED'])) ? $user->lang['FEED'] : '{ FEED }')); ?> - <?php echo ((isset($this->_rootref['L_TOPIC'])) ? $this->_rootref['L_TOPIC'] : ((isset($user->lang['TOPIC'])) ? $user->lang['TOPIC'] : '{ TOPIC }')); ?> - <?php echo (isset($this->_rootref['TOPIC_TITLE'])) ? $this->_rootref['TOPIC_TITLE'] : ''; ?>" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>?f=<?php echo (isset($this->_rootref['S_FORUM_ID'])) ? $this->_rootref['S_FORUM_ID'] : ''; ?>&amp;t=<?php echo (isset($this->_rootref['S_TOPIC_ID'])) ? $this->_rootref['S_TOPIC_ID'] : ''; ?>" /><?php } } ?><!-- phpBB Premium style name: BBOOTS (3.0.2) @SiteSplat.com --><!-- CSS files start here-->
<link href="<?php echo (isset($this->_rootref['T_STYLESHEET_LINK'])) ? $this->_rootref['T_STYLESHEET_LINK'] : ''; ?>" rel="stylesheet">
<!-- Google free font here -->
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
<!-- CSS files --><!-- Scripts start here after the jquery.js -->
<script src="//cdnjs.cloudflare.com/ajax/libs/headjs/1.0.3/head.min.js"></script>
<script>
// this loads jquery asyncrounously & in parallel
head.load("//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js", "<?php echo (isset($this->_rootref['T_THEME_PATH'])) ? $this->_rootref['T_THEME_PATH'] : ''; ?>/bootstrap/js/bootstrap.min.js", "<?php echo (isset($this->_rootref['T_THEME_PATH'])) ? $this->_rootref['T_THEME_PATH'] : ''; ?>/bootstrap/js/bootstrap-select.min.js", "<?php echo (isset($this->_rootref['T_SUPER_TEMPLATE_PATH'])) ? $this->_rootref['T_SUPER_TEMPLATE_PATH'] : ''; ?>/forum_fn.js", "<?php echo (isset($this->_rootref['T_THEME_PATH'])) ? $this->_rootref['T_THEME_PATH'] : ''; ?>/js/twitterFetcher_v10_min.js", "<?php echo (isset($this->_rootref['T_THEME_PATH'])) ? $this->_rootref['T_THEME_PATH'] : ''; ?>/footable/js/footable.min.js");
</script>
<script>
function find_username(e){popup(e,760,570,"_usersearch");return false}var jump_page="<?php echo ((isset($this->_rootref['LA_JUMP_PAGE'])) ? $this->_rootref['LA_JUMP_PAGE'] : ((isset($this->_rootref['L_JUMP_PAGE'])) ? addslashes($this->_rootref['L_JUMP_PAGE']) : ((isset($user->lang['JUMP_PAGE'])) ? addslashes($user->lang['JUMP_PAGE']) : '{ JUMP_PAGE }'))); ?>:";var on_page="<?php echo (isset($this->_rootref['ON_PAGE'])) ? $this->_rootref['ON_PAGE'] : ''; ?>";var per_page="<?php echo (isset($this->_rootref['PER_PAGE'])) ? $this->_rootref['PER_PAGE'] : ''; ?>";var base_url="<?php echo (isset($this->_rootref['A_BASE_URL'])) ? $this->_rootref['A_BASE_URL'] : ''; ?>";var style_cookie="phpBBstyle";var style_cookie_settings="<?php echo (isset($this->_rootref['A_COOKIE_SETTINGS'])) ? $this->_rootref['A_COOKIE_SETTINGS'] : ''; ?>";var onload_functions=new Array;var onunload_functions=new Array;window.onload=function(){for(var i=0;i<onload_functions.length;i++){eval(onload_functions[i])}};window.onunload=function(){for(var i=0;i<onunload_functions.length;i++){eval(onunload_functions[i])}}
</script>
<?php if (! $this->_rootref['S_IS_BOT'] && $this->_rootref['S_USER_LOGGED_IN'] && $this->_rootref['S_USER_PM_POPUP'] && $this->_rootref['S_DISPLAY_PM'] && ( $this->_rootref['S_USER_NEW_PRIVMSG'] || $this->_rootref['S_USER_UNREAD_PRIVMSG'] )) {  ?>

<script>
// lets load and call the function only if there is PM in the inbox
head.load("<?php echo (isset($this->_rootref['T_THEME_PATH'])) ? $this->_rootref['T_THEME_PATH'] : ''; ?>/js/jquery.cookie.min.js");
head.ready('jquery.cookie.min.js', function() {
$("#message1").toggleClass("in");var expires=new Date();expires.setMinutes(expires.getMinutes()+5);$("a.dismiss").click(function(){$.cookie("pmStatus","hidden",{expires:expires,path:"/"})});var pmStatus=$.cookie("pmStatus");if(pmStatus=="hidden"){$(".notifier-box").hide()};
});
</script>
<?php } ?>


</head>
<body id="phpbb" class="section-<?php echo (isset($this->_rootref['SCRIPT_NAME'])) ? $this->_rootref['SCRIPT_NAME'] : ''; ?> <?php echo (isset($this->_rootref['S_CONTENT_DIRECTION'])) ? $this->_rootref['S_CONTENT_DIRECTION'] : ''; ?>">
<div id="wrap" class="corners container">
  <!-- start content -->
  <div id="content-forum">
    <div class="padding_0_40">
	<section class="social-top">
		<div class="pull-right">
			<a title="Google+" data-original-title="" href="#1"><i class="fa fa-google-plus-square google-plus-color"></i></a>
			<a title="Facebook" data-original-title="" href="#5"><i class="fa fa-facebook-square facebook-color"> </i></a>
		    <a title="Twitter" data-original-title="" href="#6"><i class="fa fa-twitter-square twitter-color"> </i></a>
			<a title="rss" data-original-title="" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>"><i class="fa fa-rss-square rss-color"> </i></a>
		</div>
    </section>
	
<!-- Header block -->
    <header class="header" role="banner"> 
     <div class="topArea"> <!-- Logo block -->
	  <div class="leftArea">
		<div class="logo-transition">
		 <a class="logo" href="<?php echo (isset($this->_rootref['U_INDEX'])) ? $this->_rootref['U_INDEX'] : ''; ?>" title=""><span><?php echo ((isset($this->_rootref['L_BB'])) ? $this->_rootref['L_BB'] : ((isset($user->lang['BB'])) ? $user->lang['BB'] : '{ BB }')); ?></span><?php echo ((isset($this->_rootref['L_BOOTS'])) ? $this->_rootref['L_BOOTS'] : ((isset($user->lang['BOOTS'])) ? $user->lang['BOOTS'] : '{ BOOTS }')); ?></a>
		</div>
		 <p class="site-info"><?php echo (isset($this->_rootref['SITE_DESCRIPTION'])) ? $this->_rootref['SITE_DESCRIPTION'] : ''; ?> <i class="fa fa-umbrella"></i></p>
		<div class="clearfix"></div>
	  </div>  
	   <?php $this->_tpl_include('navigation.html'); ?>

     </div>
    </header> 
<!-- Header block --><!-- Subheader block -->
    <section class="subheader">
      <div class="clearfix">
	    <div class="fxicon">
			<?php if ($this->_rootref['SCRIPT_NAME'] == ("faq")) {  ?><i class="fa fa-question-circle"></i>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("search")) {  ?><i class="fa fa-search"></i>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("memberlist")) {  ?><i class="fa fa-users"></i>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("ucp")) {  ?><i class="fa fa-cogs"></i>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("viewtopic")) {  ?><i class="fa fa-comments"></i>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("viewforum")) {  ?><i class="fa fa-puzzle-piece"></i>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("posting")) {  ?><i class="fa fa-pencil"></i>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("mcp")) {  ?><i class="fa fa-medkit"></i>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("elements")) {  ?><i class="fa fa-smile-o"></i>
			<?php } else { ?>

			  <i class="fa fa-home"></i>
			<?php } ?>

		</div>
		
	    <ul class="index-pos pull-left">
            <?php if ($this->_rootref['SCRIPT_NAME'] == ("faq")) {  ?><li class="index-title"><h1><?php echo ((isset($this->_rootref['L_FAQ'])) ? $this->_rootref['L_FAQ'] : ((isset($user->lang['FAQ'])) ? $user->lang['FAQ'] : '{ FAQ }')); ?></h1></li><li class="index-sub"><?php echo ((isset($this->_rootref['L_CAPTION_FAQ'])) ? $this->_rootref['L_CAPTION_FAQ'] : ((isset($user->lang['CAPTION_FAQ'])) ? $user->lang['CAPTION_FAQ'] : '{ CAPTION_FAQ }')); ?></li>
	          <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("search")) {  ?><li class="index-title"><h1><?php echo ((isset($this->_rootref['L_SEARCH'])) ? $this->_rootref['L_SEARCH'] : ((isset($user->lang['SEARCH'])) ? $user->lang['SEARCH'] : '{ SEARCH }')); ?></h1></li><li class="index-sub"><?php echo ((isset($this->_rootref['L_CAPTION_SEARCH'])) ? $this->_rootref['L_CAPTION_SEARCH'] : ((isset($user->lang['CAPTION_SEARCH'])) ? $user->lang['CAPTION_SEARCH'] : '{ CAPTION_SEARCH }')); ?></li>
	          <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("memberlist")) {  ?><li class="index-title"><h1><?php echo ((isset($this->_rootref['L_MEMBERS_CAP'])) ? $this->_rootref['L_MEMBERS_CAP'] : ((isset($user->lang['MEMBERS_CAP'])) ? $user->lang['MEMBERS_CAP'] : '{ MEMBERS_CAP }')); ?></h1></li><li class="index-sub"><?php echo ((isset($this->_rootref['L_CAPTION_MEMBERS'])) ? $this->_rootref['L_CAPTION_MEMBERS'] : ((isset($user->lang['CAPTION_MEMBERS'])) ? $user->lang['CAPTION_MEMBERS'] : '{ CAPTION_MEMBERS }')); ?></li>
	          <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("ucp")) {  ?><li class="index-title"><h1><?php echo ((isset($this->_rootref['L_UCP_CAP'])) ? $this->_rootref['L_UCP_CAP'] : ((isset($user->lang['UCP_CAP'])) ? $user->lang['UCP_CAP'] : '{ UCP_CAP }')); ?></h1></li><li class="index-sub"><?php echo ((isset($this->_rootref['L_CAPTION_UCP'])) ? $this->_rootref['L_CAPTION_UCP'] : ((isset($user->lang['CAPTION_UCP'])) ? $user->lang['CAPTION_UCP'] : '{ CAPTION_UCP }')); ?></li>
	          <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("viewtopic")) {  ?><li class="index-title"><h1><?php echo ((isset($this->_rootref['L_VIEWTOPIC_CAP'])) ? $this->_rootref['L_VIEWTOPIC_CAP'] : ((isset($user->lang['VIEWTOPIC_CAP'])) ? $user->lang['VIEWTOPIC_CAP'] : '{ VIEWTOPIC_CAP }')); ?></h1></li><li class="index-sub"><?php echo ((isset($this->_rootref['L_CAPTION_VIEWTOPIC'])) ? $this->_rootref['L_CAPTION_VIEWTOPIC'] : ((isset($user->lang['CAPTION_VIEWTOPIC'])) ? $user->lang['CAPTION_VIEWTOPIC'] : '{ CAPTION_VIEWTOPIC }')); ?></li>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("viewforum")) {  ?><li class="index-title"><h1><?php echo (isset($this->_rootref['FORUM_NAME'])) ? $this->_rootref['FORUM_NAME'] : ''; ?></h1></li><li class="index-sub"><?php if ($this->_rootref['FORUM_DESC']) {  echo (isset($this->_rootref['FORUM_DESC'])) ? $this->_rootref['FORUM_DESC'] : ''; } else { echo ((isset($this->_rootref['L_CAPTION_VIEWFORUM'])) ? $this->_rootref['L_CAPTION_VIEWFORUM'] : ((isset($user->lang['CAPTION_VIEWFORUM'])) ? $user->lang['CAPTION_VIEWFORUM'] : '{ CAPTION_VIEWFORUM }')); } ?></li>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("posting")) {  ?><li class="index-title"><h1><?php echo ((isset($this->_rootref['L_POSTINGS_CAP'])) ? $this->_rootref['L_POSTINGS_CAP'] : ((isset($user->lang['POSTINGS_CAP'])) ? $user->lang['POSTINGS_CAP'] : '{ POSTINGS_CAP }')); ?></h1></li><li class="index-sub"><?php echo ((isset($this->_rootref['L_CAPTION_POSTINGS'])) ? $this->_rootref['L_CAPTION_POSTINGS'] : ((isset($user->lang['CAPTION_POSTINGS'])) ? $user->lang['CAPTION_POSTINGS'] : '{ CAPTION_POSTINGS }')); ?></li>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("mcp")) {  ?><li class="index-title"><h1><?php echo ((isset($this->_rootref['L_MCP'])) ? $this->_rootref['L_MCP'] : ((isset($user->lang['MCP'])) ? $user->lang['MCP'] : '{ MCP }')); ?></h1></li><li class="index-sub"><?php echo ((isset($this->_rootref['L_MCP_CAPTION'])) ? $this->_rootref['L_MCP_CAPTION'] : ((isset($user->lang['MCP_CAPTION'])) ? $user->lang['MCP_CAPTION'] : '{ MCP_CAPTION }')); ?></li>
			  <?php } else if ($this->_rootref['SCRIPT_NAME'] == ("elements")) {  ?><li class="index-title"><h1><?php echo ((isset($this->_rootref['L_BOOTSTRAP_ELEMENT'])) ? $this->_rootref['L_BOOTSTRAP_ELEMENT'] : ((isset($user->lang['BOOTSTRAP_ELEMENT'])) ? $user->lang['BOOTSTRAP_ELEMENT'] : '{ BOOTSTRAP_ELEMENT }')); ?></h1></li><li class="index-sub"><?php echo ((isset($this->_rootref['L_BOOTSTRAP_ELEMENT_CAPTION'])) ? $this->_rootref['L_BOOTSTRAP_ELEMENT_CAPTION'] : ((isset($user->lang['BOOTSTRAP_ELEMENT_CAPTION'])) ? $user->lang['BOOTSTRAP_ELEMENT_CAPTION'] : '{ BOOTSTRAP_ELEMENT_CAPTION }')); ?></li>
			<?php } else { ?>

			  <li class="index-title"><h1><?php echo ((isset($this->_rootref['L_HOME'])) ? $this->_rootref['L_HOME'] : ((isset($user->lang['HOME'])) ? $user->lang['HOME'] : '{ HOME }')); ?></h1></li>
              <li class="index-sub"><?php echo ((isset($this->_rootref['L_INDEX_CAPTION'])) ? $this->_rootref['L_INDEX_CAPTION'] : ((isset($user->lang['INDEX_CAPTION'])) ? $user->lang['INDEX_CAPTION'] : '{ INDEX_CAPTION }')); ?></li>
			<?php } ?>

        </ul> 
      

	   <?php if ($this->_rootref['S_DISPLAY_SEARCH'] && ! $this->_rootref['S_IN_SEARCH']) {  ?>

        <div class="search-box pull-right">
		  <form action="<?php echo (isset($this->_rootref['U_SEARCH'])) ? $this->_rootref['U_SEARCH'] : ''; ?>" method="get" id="search" role="search">
		   <fieldset>
		   <input name="keywords" id="keywords" type="text" maxlength="128" title="<?php echo ((isset($this->_rootref['L_SEARCH_KEYWORDS'])) ? $this->_rootref['L_SEARCH_KEYWORDS'] : ((isset($user->lang['SEARCH_KEYWORDS'])) ? $user->lang['SEARCH_KEYWORDS'] : '{ SEARCH_KEYWORDS }')); ?>" placeholder="<?php echo ((isset($this->_rootref['L_SEARCH'])) ? $this->_rootref['L_SEARCH'] : ((isset($user->lang['SEARCH'])) ? $user->lang['SEARCH'] : '{ SEARCH }')); ?>" value=""/>
		   <?php echo (isset($this->_rootref['S_SEARCH_HIDDEN_FIELDS'])) ? $this->_rootref['S_SEARCH_HIDDEN_FIELDS'] : ''; ?>

		   </fieldset> 
          </form> 
        </div> 
	    <?php } ?>	
		</div>
    </section> 
<!-- Subheader block --><?php if ($this->_rootref['S_USER_LOGGED_IN']) {  ?>

	<div class="crumbs">
		<ul class="sub-crumb pull-left hidden-xs"> 
		    <li><i class="fa fa-home"></i><a href="<?php echo (isset($this->_rootref['U_INDEX'])) ? $this->_rootref['U_INDEX'] : ''; ?>" accesskey="h"> <?php echo ((isset($this->_rootref['L_INDEX'])) ? $this->_rootref['L_INDEX'] : ((isset($user->lang['INDEX'])) ? $user->lang['INDEX'] : '{ INDEX }')); ?></a></li>
		    <li class="active"><?php $_navlinks_count = (isset($this->_tpldata['navlinks'])) ? sizeof($this->_tpldata['navlinks']) : 0;if ($_navlinks_count) {for ($_navlinks_i = 0; $_navlinks_i < $_navlinks_count; ++$_navlinks_i){$_navlinks_val = &$this->_tpldata['navlinks'][$_navlinks_i]; ?><i class="fa fa-angle-right"></i><a href="<?php echo $_navlinks_val['U_VIEW_FORUM']; ?>"> <?php echo $_navlinks_val['FORUM_NAME']; ?></a><?php }} ?>

            &laquo; <?php echo ((isset($this->_rootref['L_YOU_ARE_HERE'])) ? $this->_rootref['L_YOU_ARE_HERE'] : ((isset($user->lang['YOU_ARE_HERE'])) ? $user->lang['YOU_ARE_HERE'] : '{ YOU_ARE_HERE }')); ?></li>
		</ul>
		<ul class="top-menu pull-right">
			<li class="dropdown">
					<a data-toggle="dropdown" class="user-menu"><?php echo (isset($this->_rootref['USER_AVATAR'])) ? $this->_rootref['USER_AVATAR'] : ''; ?><span><?php echo ((isset($this->_rootref['L_WELCOME_INDEX'])) ? $this->_rootref['L_WELCOME_INDEX'] : ((isset($user->lang['WELCOME_INDEX'])) ? $user->lang['WELCOME_INDEX'] : '{ WELCOME_INDEX }')); ?>, <?php echo (isset($this->_rootref['CURRENT_USERNAME'])) ? $this->_rootref['CURRENT_USERNAME'] : ''; ?><i class="caret"></i></span></a>
				<ul class="dropdown-menu usermenu">
				   <li><a title="" href="<?php echo (isset($this->_rootref['U_UCP_PROFILE'])) ? $this->_rootref['U_UCP_PROFILE'] : ''; ?>"><i class="fa fa-user"></i><?php echo ((isset($this->_rootref['L_UCP_PROFILE'])) ? $this->_rootref['L_UCP_PROFILE'] : ((isset($user->lang['UCP_PROFILE'])) ? $user->lang['UCP_PROFILE'] : '{ UCP_PROFILE }')); ?></a></li>
				   <li><a title="" href="<?php echo (isset($this->_rootref['U_UCP_PM'])) ? $this->_rootref['U_UCP_PM'] : ''; ?>"><i class="fa fa-inbox"></i><?php echo ((isset($this->_rootref['L_UCP_MESSAGES'])) ? $this->_rootref['L_UCP_MESSAGES'] : ((isset($user->lang['UCP_MESSAGES'])) ? $user->lang['UCP_MESSAGES'] : '{ UCP_MESSAGES }')); ?><span class="badge badge-info"><?php if ($this->_rootref['S_DISPLAY_PM'] && $this->_rootref['S_USER_UNREAD_PRIVMSG']) {  ?> <?php echo (isset($this->_rootref['S_USER_UNREAD_PRIVMSG'])) ? $this->_rootref['S_USER_UNREAD_PRIVMSG'] : ''; } else { echo (isset($this->_rootref['S_USER_NEW_PRIVMSG'])) ? $this->_rootref['S_USER_NEW_PRIVMSG'] : ''; } ?></span></a></li>
				   <li><a title="" href="<?php echo (isset($this->_rootref['U_UCP_PROFILE_SETTINGS'])) ? $this->_rootref['U_UCP_PROFILE_SETTINGS'] : ''; ?>"><i class="fa fa-cog"></i><?php echo ((isset($this->_rootref['L_UCP_PROFILE_SETTINGS'])) ? $this->_rootref['L_UCP_PROFILE_SETTINGS'] : ((isset($user->lang['UCP_PROFILE_SETTINGS'])) ? $user->lang['UCP_PROFILE_SETTINGS'] : '{ UCP_PROFILE_SETTINGS }')); ?></a></li>
	               <?php if ($this->_rootref['U_ACP']) {  ?><li><a title="" href="<?php echo (isset($this->_rootref['U_ACP'])) ? $this->_rootref['U_ACP'] : ''; ?>"><i class="fa fa-user-md"></i><?php echo ((isset($this->_rootref['L_ADMIN_PANEL_GENERAL'])) ? $this->_rootref['L_ADMIN_PANEL_GENERAL'] : ((isset($user->lang['ADMIN_PANEL_GENERAL'])) ? $user->lang['ADMIN_PANEL_GENERAL'] : '{ ADMIN_PANEL_GENERAL }')); ?></a></li><?php } if ($this->_rootref['U_MCP']) {  ?><li><a href="<?php echo (isset($this->_rootref['U_MCP'])) ? $this->_rootref['U_MCP'] : ''; ?>"><i class="fa fa-legal"></i><?php echo ((isset($this->_rootref['L_MODERATOR_PANEL_GENERAL'])) ? $this->_rootref['L_MODERATOR_PANEL_GENERAL'] : ((isset($user->lang['MODERATOR_PANEL_GENERAL'])) ? $user->lang['MODERATOR_PANEL_GENERAL'] : '{ MODERATOR_PANEL_GENERAL }')); ?></a></li><?php } if ($this->_rootref['U_RESTORE_PERMISSIONS']) {  ?><li><a href="<?php echo (isset($this->_rootref['U_RESTORE_PERMISSIONS'])) ? $this->_rootref['U_RESTORE_PERMISSIONS'] : ''; ?>"><i class="fa fa-random"></i> <?php echo ((isset($this->_rootref['L_RESTORE_PERMISSIONS'])) ? $this->_rootref['L_RESTORE_PERMISSIONS'] : ((isset($user->lang['RESTORE_PERMISSIONS'])) ? $user->lang['RESTORE_PERMISSIONS'] : '{ RESTORE_PERMISSIONS }')); ?></a></li><?php } ?>

				  <li><a title="" href="<?php echo (isset($this->_rootref['U_LOGOUT'])) ? $this->_rootref['U_LOGOUT'] : ''; ?>"><i class="fa fa-power-off"></i><?php echo ((isset($this->_rootref['L_LOGOUT'])) ? $this->_rootref['L_LOGOUT'] : ((isset($user->lang['LOGOUT'])) ? $user->lang['LOGOUT'] : '{ LOGOUT }')); ?></a></li>
				</ul>
			</li>
		</ul>
	</div>
	<?php } ?><!-- Lower Breadcrumb block -->
		<div class="sub-breadcrumb">
            <span class="time pull-left"><?php echo (isset($this->_rootref['CURRENT_TIME'])) ? $this->_rootref['CURRENT_TIME'] : ''; ?></span> 
            <?php if ($this->_rootref['S_USER_LOGGED_IN']) {  ?>

		    <span class="time pull-right hidden-xs"><?php echo (isset($this->_rootref['LAST_VISIT_DATE'])) ? $this->_rootref['LAST_VISIT_DATE'] : ''; ?></span>
		    <?php } ?>

        </div>
<!-- Lower Breadcrumb block --> 
	
	<div id="page-body">
	 <main role="main">

	<?php if (! $this->_rootref['S_IS_BOT'] && $this->_rootref['S_USER_LOGGED_IN'] && $this->_rootref['S_USER_PM_POPUP'] && $this->_rootref['S_DISPLAY_PM'] && ( $this->_rootref['S_USER_NEW_PRIVMSG'] || $this->_rootref['S_USER_UNREAD_PRIVMSG'] )) {  ?>

	<div class="notifier-box">
		 <div class="pmboots alert fade" id="message1" role="alert">
		   <button data-dismiss="alert" class="close"><span class="awe-remove-circle"></span></button>
		   <h4><?php echo ((isset($this->_rootref['L_HELLO'])) ? $this->_rootref['L_HELLO'] : ((isset($user->lang['HELLO'])) ? $user->lang['HELLO'] : '{ HELLO }')); ?> <?php echo (isset($this->_rootref['S_USERNAME'])) ? $this->_rootref['S_USERNAME'] : ''; ?></h4>
		   <a href="<?php echo (isset($this->_rootref['U_PRIVATEMSGS'])) ? $this->_rootref['U_PRIVATEMSGS'] : ''; ?>"> <?php echo ((isset($this->_rootref['L_YOU_HAVE'])) ? $this->_rootref['L_YOU_HAVE'] : ((isset($user->lang['YOU_HAVE'])) ? $user->lang['YOU_HAVE'] : '{ YOU_HAVE }')); ?> <?php echo (isset($this->_rootref['PRIVATE_MESSAGE_INFO'])) ? $this->_rootref['PRIVATE_MESSAGE_INFO'] : ''; if ($this->_rootref['PRIVATE_MESSAGE_INFO_UNREAD']) {  ?> <?php echo ((isset($this->_rootref['L_AND'])) ? $this->_rootref['L_AND'] : ((isset($user->lang['AND'])) ? $user->lang['AND'] : '{ AND }')); ?> <?php echo (isset($this->_rootref['PRIVATE_MESSAGE_INFO_UNREAD'])) ? $this->_rootref['PRIVATE_MESSAGE_INFO_UNREAD'] : ''; } ?></a>
		 <div class="space10"></div>
		   <?php if ($this->_rootref['S_DISPLAY_PM'] && $this->_rootref['S_USER_NEW_PRIVMSG']) {  ?>

		   <a role="button" href="<?php echo (isset($this->_rootref['U_PRIVATEMSGS'])) ? $this->_rootref['U_PRIVATEMSGS'] : ''; ?>" title="" class="btn btn-sm btn-default"><i class="icon-moon-emailforward"></i> <?php echo ((isset($this->_rootref['L_READ_NOW'])) ? $this->_rootref['L_READ_NOW'] : ((isset($user->lang['READ_NOW'])) ? $user->lang['READ_NOW'] : '{ READ_NOW }')); ?></a>
		   <?php } ?>

		   <a role="button" data-dismiss="alert" class="btn btn-sm btn-default dismiss"><i class="icon-moon-alarm2"></i> <?php echo ((isset($this->_rootref['L_DISMISS_PM'])) ? $this->_rootref['L_DISMISS_PM'] : ((isset($user->lang['DISMISS_PM'])) ? $user->lang['DISMISS_PM'] : '{ DISMISS_PM }')); ?></a>
		 </div>
	</div>
	<?php } if ($this->_rootref['S_BOARD_DISABLED'] && $this->_rootref['S_USER_LOGGED_IN'] && ( $this->_rootref['U_MCP'] || $this->_rootref['U_ACP'] )) {  ?>

	<div class="alert alert-info fade in">
		<button data-dismiss="alert" class="close"><span class="awe-remove-circle"></span></button>
		<i class="fa fa-info-sign"></i> <strong><?php echo ((isset($this->_rootref['L_INFORMATION'])) ? $this->_rootref['L_INFORMATION'] : ((isset($user->lang['INFORMATION'])) ? $user->lang['INFORMATION'] : '{ INFORMATION }')); ?>:</strong> <?php echo ((isset($this->_rootref['L_BOARD_DISABLED'])) ? $this->_rootref['L_BOARD_DISABLED'] : ((isset($user->lang['BOARD_DISABLED'])) ? $user->lang['BOARD_DISABLED'] : '{ BOARD_DISABLED }')); ?>

	</div>
	<?php } ?>
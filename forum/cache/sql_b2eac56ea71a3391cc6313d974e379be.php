<?php exit; ?>
1481359210
SELECT s.style_id, c.theme_id, c.theme_data, c.theme_path, c.theme_name, c.theme_mtime, i.*, t.template_path FROM phpbb_styles s, phpbb_styles_template t, phpbb_styles_theme c, phpbb_styles_imageset i WHERE s.style_id = 2 AND t.template_id = s.template_id AND c.theme_id = s.theme_id AND i.imageset_id = s.imageset_id
236670
a:1:{i:0;a:11:{s:8:"style_id";s:1:"2";s:8:"theme_id";s:1:"2";s:10:"theme_data";s:236283:"/*  phpBB3 Stylesheet
    --------------------------------------------------------------
	Style name:			BBOOTS
	Developer:	        ThemeSplat ( http://www.sitesplat.com/phpBB3 )
	Version:		    3.0.2
    --------------------------------------------------------------
*/

/*!
 * Bootstrap v3.3.1 (http://getbootstrap.com)
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 *//*! normalize.css v3.0.2 | MIT License | git.io/normalize */html{font-family:sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,hgroup,main,menu,nav,section,summary{display:block}audio,canvas,progress,video{display:inline-block;vertical-align:baseline}audio:not([controls]){display:none;height:0}[hidden],template{display:none}a{background-color:transparent}a:active,a:hover{outline:0}abbr[title]{border-bottom:1px dotted}b,strong{font-weight:700}dfn{font-style:italic}h1{margin:.67em 0;font-size:2em}mark{color:#000;background:#ff0}small{font-size:80%}sub,sup{position:relative;font-size:75%;line-height:0;vertical-align:baseline}sup{top:-.5em}sub{bottom:-.25em}img{border:0}svg:not(:root){overflow:hidden}figure{margin:1em 40px}hr{height:0;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box}pre{overflow:auto}code,kbd,pre,samp{font-family:monospace,monospace;font-size:1em}button,input,optgroup,select,textarea{margin:0;font:inherit;color:inherit}button{overflow:visible}button,select{text-transform:none}button,html input[type=button],input[type=reset],input[type=submit]{-webkit-appearance:button;cursor:pointer}button[disabled],html input[disabled]{cursor:default}button::-moz-focus-inner,input::-moz-focus-inner{padding:0;border:0}input{line-height:normal}input[type=checkbox],input[type=radio]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;padding:0}input[type=number]::-webkit-inner-spin-button,input[type=number]::-webkit-outer-spin-button{height:auto}input[type=search]{-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;-webkit-appearance:textfield}input[type=search]::-webkit-search-cancel-button,input[type=search]::-webkit-search-decoration{-webkit-appearance:none}fieldset{padding:.35em .625em .75em;margin:0 2px;border:1px solid silver}legend{padding:0;border:0}textarea{overflow:auto}optgroup{font-weight:700}table{border-spacing:0;border-collapse:collapse}td,th{padding:0}/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */@media print{*,:before,:after{color:#000!important;text-shadow:none!important;background:transparent!important;-webkit-box-shadow:none!important;box-shadow:none!important}a,a:visited{text-decoration:underline}a[href]:after{content:" (" attr(href) ")"}abbr[title]:after{content:" (" attr(title) ")"}a[href^="#"]:after,a[href^="javascript:"]:after{content:""}pre,blockquote{border:1px solid #999;page-break-inside:avoid}thead{display:table-header-group}tr,img{page-break-inside:avoid}img{max-width:100%!important}p,h2,h3{orphans:3;widows:3}h2,h3{page-break-after:avoid}select{background:#fff!important}.navbar{display:none}.btn>.caret,.dropup>.btn>.caret{border-top-color:#000!important}.label{border:1px solid #000}.table{border-collapse:collapse!important}.table td,.table th{background-color:#fff!important}.table-bordered th,.table-bordered td{border:1px solid #ddd!important}}@font-face{font-family:'Glyphicons Halflings';src:url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.eot");src:url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.eot?#iefix") format('embedded-opentype'),url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.woff") format('woff'),url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.ttf") format('truetype'),url("{T_THEME_PATH}/bootstrap/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular") format('svg')}.glyphicon{position:relative;top:1px;display:inline-block;font-family:'Glyphicons Halflings';font-style:normal;font-weight:400;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.glyphicon-asterisk:before{content:"\2a"}.glyphicon-plus:before{content:"\2b"}.glyphicon-euro:before,.glyphicon-eur:before{content:"\20ac"}.glyphicon-minus:before{content:"\2212"}.glyphicon-cloud:before{content:"\2601"}.glyphicon-envelope:before{content:"\2709"}.glyphicon-pencil:before{content:"\270f"}.glyphicon-glass:before{content:"\e001"}.glyphicon-music:before{content:"\e002"}.glyphicon-search:before{content:"\e003"}.glyphicon-heart:before{content:"\e005"}.glyphicon-star:before{content:"\e006"}.glyphicon-star-empty:before{content:"\e007"}.glyphicon-user:before{content:"\e008"}.glyphicon-film:before{content:"\e009"}.glyphicon-th-large:before{content:"\e010"}.glyphicon-th:before{content:"\e011"}.glyphicon-th-list:before{content:"\e012"}.glyphicon-ok:before{content:"\e013"}.glyphicon-remove:before{content:"\e014"}.glyphicon-zoom-in:before{content:"\e015"}.glyphicon-zoom-out:before{content:"\e016"}.glyphicon-off:before{content:"\e017"}.glyphicon-signal:before{content:"\e018"}.glyphicon-cog:before{content:"\e019"}.glyphicon-trash:before{content:"\e020"}.glyphicon-home:before{content:"\e021"}.glyphicon-file:before{content:"\e022"}.glyphicon-time:before{content:"\e023"}.glyphicon-road:before{content:"\e024"}.glyphicon-download-alt:before{content:"\e025"}.glyphicon-download:before{content:"\e026"}.glyphicon-upload:before{content:"\e027"}.glyphicon-inbox:before{content:"\e028"}.glyphicon-play-circle:before{content:"\e029"}.glyphicon-repeat:before{content:"\e030"}.glyphicon-refresh:before{content:"\e031"}.glyphicon-list-alt:before{content:"\e032"}.glyphicon-lock:before{content:"\e033"}.glyphicon-flag:before{content:"\e034"}.glyphicon-headphones:before{content:"\e035"}.glyphicon-volume-off:before{content:"\e036"}.glyphicon-volume-down:before{content:"\e037"}.glyphicon-volume-up:before{content:"\e038"}.glyphicon-qrcode:before{content:"\e039"}.glyphicon-barcode:before{content:"\e040"}.glyphicon-tag:before{content:"\e041"}.glyphicon-tags:before{content:"\e042"}.glyphicon-book:before{content:"\e043"}.glyphicon-bookmark:before{content:"\e044"}.glyphicon-print:before{content:"\e045"}.glyphicon-camera:before{content:"\e046"}.glyphicon-font:before{content:"\e047"}.glyphicon-bold:before{content:"\e048"}.glyphicon-italic:before{content:"\e049"}.glyphicon-text-height:before{content:"\e050"}.glyphicon-text-width:before{content:"\e051"}.glyphicon-align-left:before{content:"\e052"}.glyphicon-align-center:before{content:"\e053"}.glyphicon-align-right:before{content:"\e054"}.glyphicon-align-justify:before{content:"\e055"}.glyphicon-list:before{content:"\e056"}.glyphicon-indent-left:before{content:"\e057"}.glyphicon-indent-right:before{content:"\e058"}.glyphicon-facetime-video:before{content:"\e059"}.glyphicon-picture:before{content:"\e060"}.glyphicon-map-marker:before{content:"\e062"}.glyphicon-adjust:before{content:"\e063"}.glyphicon-tint:before{content:"\e064"}.glyphicon-edit:before{content:"\e065"}.glyphicon-share:before{content:"\e066"}.glyphicon-check:before{content:"\e067"}.glyphicon-move:before{content:"\e068"}.glyphicon-step-backward:before{content:"\e069"}.glyphicon-fast-backward:before{content:"\e070"}.glyphicon-backward:before{content:"\e071"}.glyphicon-play:before{content:"\e072"}.glyphicon-pause:before{content:"\e073"}.glyphicon-stop:before{content:"\e074"}.glyphicon-forward:before{content:"\e075"}.glyphicon-fast-forward:before{content:"\e076"}.glyphicon-step-forward:before{content:"\e077"}.glyphicon-eject:before{content:"\e078"}.glyphicon-chevron-left:before{content:"\e079"}.glyphicon-chevron-right:before{content:"\e080"}.glyphicon-plus-sign:before{content:"\e081"}.glyphicon-minus-sign:before{content:"\e082"}.glyphicon-remove-sign:before{content:"\e083"}.glyphicon-ok-sign:before{content:"\e084"}.glyphicon-question-sign:before{content:"\e085"}.glyphicon-info-sign:before{content:"\e086"}.glyphicon-screenshot:before{content:"\e087"}.glyphicon-remove-circle:before{content:"\e088"}.glyphicon-ok-circle:before{content:"\e089"}.glyphicon-ban-circle:before{content:"\e090"}.glyphicon-arrow-left:before{content:"\e091"}.glyphicon-arrow-right:before{content:"\e092"}.glyphicon-arrow-up:before{content:"\e093"}.glyphicon-arrow-down:before{content:"\e094"}.glyphicon-share-alt:before{content:"\e095"}.glyphicon-resize-full:before{content:"\e096"}.glyphicon-resize-small:before{content:"\e097"}.glyphicon-exclamation-sign:before{content:"\e101"}.glyphicon-gift:before{content:"\e102"}.glyphicon-leaf:before{content:"\e103"}.glyphicon-fire:before{content:"\e104"}.glyphicon-eye-open:before{content:"\e105"}.glyphicon-eye-close:before{content:"\e106"}.glyphicon-warning-sign:before{content:"\e107"}.glyphicon-plane:before{content:"\e108"}.glyphicon-calendar:before{content:"\e109"}.glyphicon-random:before{content:"\e110"}.glyphicon-comment:before{content:"\e111"}.glyphicon-magnet:before{content:"\e112"}.glyphicon-chevron-up:before{content:"\e113"}.glyphicon-chevron-down:before{content:"\e114"}.glyphicon-retweet:before{content:"\e115"}.glyphicon-shopping-cart:before{content:"\e116"}.glyphicon-folder-close:before{content:"\e117"}.glyphicon-folder-open:before{content:"\e118"}.glyphicon-resize-vertical:before{content:"\e119"}.glyphicon-resize-horizontal:before{content:"\e120"}.glyphicon-hdd:before{content:"\e121"}.glyphicon-bullhorn:before{content:"\e122"}.glyphicon-bell:before{content:"\e123"}.glyphicon-certificate:before{content:"\e124"}.glyphicon-thumbs-up:before{content:"\e125"}.glyphicon-thumbs-down:before{content:"\e126"}.glyphicon-hand-right:before{content:"\e127"}.glyphicon-hand-left:before{content:"\e128"}.glyphicon-hand-up:before{content:"\e129"}.glyphicon-hand-down:before{content:"\e130"}.glyphicon-circle-arrow-right:before{content:"\e131"}.glyphicon-circle-arrow-left:before{content:"\e132"}.glyphicon-circle-arrow-up:before{content:"\e133"}.glyphicon-circle-arrow-down:before{content:"\e134"}.glyphicon-globe:before{content:"\e135"}.glyphicon-wrench:before{content:"\e136"}.glyphicon-tasks:before{content:"\e137"}.glyphicon-filter:before{content:"\e138"}.glyphicon-briefcase:before{content:"\e139"}.glyphicon-fullscreen:before{content:"\e140"}.glyphicon-dashboard:before{content:"\e141"}.glyphicon-paperclip:before{content:"\e142"}.glyphicon-heart-empty:before{content:"\e143"}.glyphicon-link:before{content:"\e144"}.glyphicon-phone:before{content:"\e145"}.glyphicon-pushpin:before{content:"\e146"}.glyphicon-usd:before{content:"\e148"}.glyphicon-gbp:before{content:"\e149"}.glyphicon-sort:before{content:"\e150"}.glyphicon-sort-by-alphabet:before{content:"\e151"}.glyphicon-sort-by-alphabet-alt:before{content:"\e152"}.glyphicon-sort-by-order:before{content:"\e153"}.glyphicon-sort-by-order-alt:before{content:"\e154"}.glyphicon-sort-by-attributes:before{content:"\e155"}.glyphicon-sort-by-attributes-alt:before{content:"\e156"}.glyphicon-unchecked:before{content:"\e157"}.glyphicon-expand:before{content:"\e158"}.glyphicon-collapse-down:before{content:"\e159"}.glyphicon-collapse-up:before{content:"\e160"}.glyphicon-log-in:before{content:"\e161"}.glyphicon-flash:before{content:"\e162"}.glyphicon-log-out:before{content:"\e163"}.glyphicon-new-window:before{content:"\e164"}.glyphicon-record:before{content:"\e165"}.glyphicon-save:before{content:"\e166"}.glyphicon-open:before{content:"\e167"}.glyphicon-saved:before{content:"\e168"}.glyphicon-import:before{content:"\e169"}.glyphicon-export:before{content:"\e170"}.glyphicon-send:before{content:"\e171"}.glyphicon-floppy-disk:before{content:"\e172"}.glyphicon-floppy-saved:before{content:"\e173"}.glyphicon-floppy-remove:before{content:"\e174"}.glyphicon-floppy-save:before{content:"\e175"}.glyphicon-floppy-open:before{content:"\e176"}.glyphicon-credit-card:before{content:"\e177"}.glyphicon-transfer:before{content:"\e178"}.glyphicon-cutlery:before{content:"\e179"}.glyphicon-header:before{content:"\e180"}.glyphicon-compressed:before{content:"\e181"}.glyphicon-earphone:before{content:"\e182"}.glyphicon-phone-alt:before{content:"\e183"}.glyphicon-tower:before{content:"\e184"}.glyphicon-stats:before{content:"\e185"}.glyphicon-sd-video:before{content:"\e186"}.glyphicon-hd-video:before{content:"\e187"}.glyphicon-subtitles:before{content:"\e188"}.glyphicon-sound-stereo:before{content:"\e189"}.glyphicon-sound-dolby:before{content:"\e190"}.glyphicon-sound-5-1:before{content:"\e191"}.glyphicon-sound-6-1:before{content:"\e192"}.glyphicon-sound-7-1:before{content:"\e193"}.glyphicon-copyright-mark:before{content:"\e194"}.glyphicon-registration-mark:before{content:"\e195"}.glyphicon-cloud-download:before{content:"\e197"}.glyphicon-cloud-upload:before{content:"\e198"}.glyphicon-tree-conifer:before{content:"\e199"}.glyphicon-tree-deciduous:before{content:"\e200"}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}:before,:after{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}html{font-size:10px;-webkit-tap-highlight-color:rgba(0,0,0,0)}body{font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14px;line-height:1.42857143;color:#333;background-color:#fff}input,button,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}a{color:#337ab7;text-decoration:none}a:hover,a:focus{color:#23527c;text-decoration:underline}a:focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}figure{margin:0}img{vertical-align:middle}.img-responsive,.thumbnail>img,.thumbnail a>img,.carousel-inner>.item>img,.carousel-inner>.item>a>img{display:block;max-width:100%;height:auto}.img-rounded{border-radius:6px}.img-thumbnail{display:inline-block;max-width:100%;height:auto;padding:4px;line-height:1.42857143;background-color:#fff;border:1px solid #ddd;border-radius:4px;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;transition:all .2s ease-in-out}.img-circle{border-radius:50%}hr{margin-top:20px;margin-bottom:20px;border:0;border-top:1px solid #eee}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}h1,h2,h3,h4,h5,h6,.h1,.h2,.h3,.h4,.h5,.h6{font-family:inherit;font-weight:500;line-height:1.1;color:inherit}h1 small,h2 small,h3 small,h4 small,h5 small,h6 small,.h1 small,.h2 small,.h3 small,.h4 small,.h5 small,.h6 small,h1 .small,h2 .small,h3 .small,h4 .small,h5 .small,h6 .small,.h1 .small,.h2 .small,.h3 .small,.h4 .small,.h5 .small,.h6 .small{font-weight:400;line-height:1;color:#777}h1,.h1,h2,.h2,h3,.h3{margin-top:20px;margin-bottom:10px}h1 small,.h1 small,h2 small,.h2 small,h3 small,.h3 small,h1 .small,.h1 .small,h2 .small,.h2 .small,h3 .small,.h3 .small{font-size:65%}h4,.h4,h5,.h5,h6,.h6{margin-top:10px;margin-bottom:10px}h4 small,.h4 small,h5 small,.h5 small,h6 small,.h6 small,h4 .small,.h4 .small,h5 .small,.h5 .small,h6 .small,.h6 .small{font-size:75%}h1,.h1{font-size:36px}h2,.h2{font-size:30px}h3,.h3{font-size:24px}h4,.h4{font-size:18px}h5,.h5{font-size:14px}h6,.h6{font-size:12px}p{margin:0 0 10px}.lead{margin-bottom:20px;font-size:16px;font-weight:300;line-height:1.4}@media (min-width:768px){.lead{font-size:21px}}small,.small{font-size:85%}mark,.mark{padding:.2em;background-color:#fcf8e3}.text-left{text-align:left}.text-right{text-align:right}.text-center{text-align:center}.text-justify{text-align:justify}.text-nowrap{white-space:nowrap}.text-lowercase{text-transform:lowercase}.text-uppercase{text-transform:uppercase}.text-capitalize{text-transform:capitalize}.text-muted{color:#777}.text-primary{color:#337ab7}a.text-primary:hover{color:#286090}.text-success{color:#3c763d}a.text-success:hover{color:#2b542c}.text-info{color:#31708f}a.text-info:hover{color:#245269}.text-warning{color:#8a6d3b}a.text-warning:hover{color:#66512c}.text-danger{color:#a94442}a.text-danger:hover{color:#843534}.bg-primary{color:#fff;background-color:#337ab7}a.bg-primary:hover{background-color:#286090}.bg-success{background-color:#dff0d8}a.bg-success:hover{background-color:#c1e2b3}.bg-info{background-color:#d9edf7}a.bg-info:hover{background-color:#afd9ee}.bg-warning{background-color:#fcf8e3}a.bg-warning:hover{background-color:#f7ecb5}.bg-danger{background-color:#f2dede}a.bg-danger:hover{background-color:#e4b9b9}.page-header{padding-bottom:9px;margin:40px 0 20px;border-bottom:1px solid #eee}ul,ol{margin-top:0;margin-bottom:10px}ul ul,ol ul,ul ol,ol ol{margin-bottom:0}.list-unstyled{padding-left:0;list-style:none}.list-inline{padding-left:0;margin-left:-5px;list-style:none}.list-inline>li{display:inline-block;padding-right:5px;padding-left:5px}dl{margin-top:0;margin-bottom:20px}dt,dd{line-height:1.42857143}dt{font-weight:700}dd{margin-left:0}@media (min-width:768px){.dl-horizontal dt{float:left;width:160px;overflow:hidden;clear:left;text-align:right;text-overflow:ellipsis;white-space:nowrap}.dl-horizontal dd{margin-left:180px}}abbr[title],abbr[data-original-title]{cursor:help;border-bottom:1px dotted #777}.initialism{font-size:90%;text-transform:uppercase}blockquote{padding:10px 20px;margin:0 0 20px;font-size:17.5px;border-left:5px solid #eee}blockquote p:last-child,blockquote ul:last-child,blockquote ol:last-child{margin-bottom:0}blockquote footer,blockquote small,blockquote .small{display:block;font-size:80%;line-height:1.42857143;color:#777}blockquote footer:before,blockquote small:before,blockquote .small:before{content:'\2014 \00A0'}.blockquote-reverse,blockquote.pull-right{padding-right:15px;padding-left:0;text-align:right;border-right:5px solid #eee;border-left:0}.blockquote-reverse footer:before,blockquote.pull-right footer:before,.blockquote-reverse small:before,blockquote.pull-right small:before,.blockquote-reverse .small:before,blockquote.pull-right .small:before{content:''}.blockquote-reverse footer:after,blockquote.pull-right footer:after,.blockquote-reverse small:after,blockquote.pull-right small:after,.blockquote-reverse .small:after,blockquote.pull-right .small:after{content:'\00A0 \2014'}address{margin-bottom:20px;font-style:normal;line-height:1.42857143}code,kbd,pre,samp{font-family:Menlo,Monaco,Consolas,"Courier New",monospace}code{padding:2px 4px;font-size:90%;color:#c7254e;background-color:#f9f2f4;border-radius:4px}kbd{padding:2px 4px;font-size:90%;color:#fff;background-color:#333;border-radius:3px;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,.25);box-shadow:inset 0 -1px 0 rgba(0,0,0,.25)}kbd kbd{padding:0;font-size:100%;font-weight:700;-webkit-box-shadow:none;box-shadow:none}pre{display:block;padding:9.5px;margin:0 0 10px;font-size:13px;line-height:1.42857143;color:#333;word-break:break-all;word-wrap:break-word;background-color:#f5f5f5;border:1px solid #ccc;border-radius:4px}pre code{padding:0;font-size:inherit;color:inherit;white-space:pre-wrap;background-color:transparent;border-radius:0}.pre-scrollable{max-height:340px;overflow-y:scroll}.container{padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:768px){.container{width:750px}}@media (min-width:992px){.container{width:970px}}@media (min-width:1200px){.container{width:1170px}}.container-fluid{padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.row{margin-right:-15px;margin-left:-15px}.col-xs-1,.col-sm-1,.col-md-1,.col-lg-1,.col-xs-2,.col-sm-2,.col-md-2,.col-lg-2,.col-xs-3,.col-sm-3,.col-md-3,.col-lg-3,.col-xs-4,.col-sm-4,.col-md-4,.col-lg-4,.col-xs-5,.col-sm-5,.col-md-5,.col-lg-5,.col-xs-6,.col-sm-6,.col-md-6,.col-lg-6,.col-xs-7,.col-sm-7,.col-md-7,.col-lg-7,.col-xs-8,.col-sm-8,.col-md-8,.col-lg-8,.col-xs-9,.col-sm-9,.col-md-9,.col-lg-9,.col-xs-10,.col-sm-10,.col-md-10,.col-lg-10,.col-xs-11,.col-sm-11,.col-md-11,.col-lg-11,.col-xs-12,.col-sm-12,.col-md-12,.col-lg-12{position:relative;min-height:1px;padding-right:15px;padding-left:15px}.col-xs-1,.col-xs-2,.col-xs-3,.col-xs-4,.col-xs-5,.col-xs-6,.col-xs-7,.col-xs-8,.col-xs-9,.col-xs-10,.col-xs-11,.col-xs-12{float:left}.col-xs-12{width:100%}.col-xs-11{width:91.66666667%}.col-xs-10{width:83.33333333%}.col-xs-9{width:75%}.col-xs-8{width:66.66666667%}.col-xs-7{width:58.33333333%}.col-xs-6{width:50%}.col-xs-5{width:41.66666667%}.col-xs-4{width:33.33333333%}.col-xs-3{width:25%}.col-xs-2{width:16.66666667%}.col-xs-1{width:8.33333333%}.col-xs-pull-12{right:100%}.col-xs-pull-11{right:91.66666667%}.col-xs-pull-10{right:83.33333333%}.col-xs-pull-9{right:75%}.col-xs-pull-8{right:66.66666667%}.col-xs-pull-7{right:58.33333333%}.col-xs-pull-6{right:50%}.col-xs-pull-5{right:41.66666667%}.col-xs-pull-4{right:33.33333333%}.col-xs-pull-3{right:25%}.col-xs-pull-2{right:16.66666667%}.col-xs-pull-1{right:8.33333333%}.col-xs-pull-0{right:auto}.col-xs-push-12{left:100%}.col-xs-push-11{left:91.66666667%}.col-xs-push-10{left:83.33333333%}.col-xs-push-9{left:75%}.col-xs-push-8{left:66.66666667%}.col-xs-push-7{left:58.33333333%}.col-xs-push-6{left:50%}.col-xs-push-5{left:41.66666667%}.col-xs-push-4{left:33.33333333%}.col-xs-push-3{left:25%}.col-xs-push-2{left:16.66666667%}.col-xs-push-1{left:8.33333333%}.col-xs-push-0{left:auto}.col-xs-offset-12{margin-left:100%}.col-xs-offset-11{margin-left:91.66666667%}.col-xs-offset-10{margin-left:83.33333333%}.col-xs-offset-9{margin-left:75%}.col-xs-offset-8{margin-left:66.66666667%}.col-xs-offset-7{margin-left:58.33333333%}.col-xs-offset-6{margin-left:50%}.col-xs-offset-5{margin-left:41.66666667%}.col-xs-offset-4{margin-left:33.33333333%}.col-xs-offset-3{margin-left:25%}.col-xs-offset-2{margin-left:16.66666667%}.col-xs-offset-1{margin-left:8.33333333%}.col-xs-offset-0{margin-left:0}@media (min-width:768px){.col-sm-1,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-10,.col-sm-11,.col-sm-12{float:left}.col-sm-12{width:100%}.col-sm-11{width:91.66666667%}.col-sm-10{width:83.33333333%}.col-sm-9{width:75%}.col-sm-8{width:66.66666667%}.col-sm-7{width:58.33333333%}.col-sm-6{width:50%}.col-sm-5{width:41.66666667%}.col-sm-4{width:33.33333333%}.col-sm-3{width:25%}.col-sm-2{width:16.66666667%}.col-sm-1{width:8.33333333%}.col-sm-pull-12{right:100%}.col-sm-pull-11{right:91.66666667%}.col-sm-pull-10{right:83.33333333%}.col-sm-pull-9{right:75%}.col-sm-pull-8{right:66.66666667%}.col-sm-pull-7{right:58.33333333%}.col-sm-pull-6{right:50%}.col-sm-pull-5{right:41.66666667%}.col-sm-pull-4{right:33.33333333%}.col-sm-pull-3{right:25%}.col-sm-pull-2{right:16.66666667%}.col-sm-pull-1{right:8.33333333%}.col-sm-pull-0{right:auto}.col-sm-push-12{left:100%}.col-sm-push-11{left:91.66666667%}.col-sm-push-10{left:83.33333333%}.col-sm-push-9{left:75%}.col-sm-push-8{left:66.66666667%}.col-sm-push-7{left:58.33333333%}.col-sm-push-6{left:50%}.col-sm-push-5{left:41.66666667%}.col-sm-push-4{left:33.33333333%}.col-sm-push-3{left:25%}.col-sm-push-2{left:16.66666667%}.col-sm-push-1{left:8.33333333%}.col-sm-push-0{left:auto}.col-sm-offset-12{margin-left:100%}.col-sm-offset-11{margin-left:91.66666667%}.col-sm-offset-10{margin-left:83.33333333%}.col-sm-offset-9{margin-left:75%}.col-sm-offset-8{margin-left:66.66666667%}.col-sm-offset-7{margin-left:58.33333333%}.col-sm-offset-6{margin-left:50%}.col-sm-offset-5{margin-left:41.66666667%}.col-sm-offset-4{margin-left:33.33333333%}.col-sm-offset-3{margin-left:25%}.col-sm-offset-2{margin-left:16.66666667%}.col-sm-offset-1{margin-left:8.33333333%}.col-sm-offset-0{margin-left:0}}@media (min-width:992px){.col-md-1,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-10,.col-md-11,.col-md-12{float:left}.col-md-12{width:100%}.col-md-11{width:91.66666667%}.col-md-10{width:83.33333333%}.col-md-9{width:75%}.col-md-8{width:66.66666667%}.col-md-7{width:58.33333333%}.col-md-6{width:50%}.col-md-5{width:41.66666667%}.col-md-4{width:33.33333333%}.col-md-3{width:25%}.col-md-2{width:16.66666667%}.col-md-1{width:8.33333333%}.col-md-pull-12{right:100%}.col-md-pull-11{right:91.66666667%}.col-md-pull-10{right:83.33333333%}.col-md-pull-9{right:75%}.col-md-pull-8{right:66.66666667%}.col-md-pull-7{right:58.33333333%}.col-md-pull-6{right:50%}.col-md-pull-5{right:41.66666667%}.col-md-pull-4{right:33.33333333%}.col-md-pull-3{right:25%}.col-md-pull-2{right:16.66666667%}.col-md-pull-1{right:8.33333333%}.col-md-pull-0{right:auto}.col-md-push-12{left:100%}.col-md-push-11{left:91.66666667%}.col-md-push-10{left:83.33333333%}.col-md-push-9{left:75%}.col-md-push-8{left:66.66666667%}.col-md-push-7{left:58.33333333%}.col-md-push-6{left:50%}.col-md-push-5{left:41.66666667%}.col-md-push-4{left:33.33333333%}.col-md-push-3{left:25%}.col-md-push-2{left:16.66666667%}.col-md-push-1{left:8.33333333%}.col-md-push-0{left:auto}.col-md-offset-12{margin-left:100%}.col-md-offset-11{margin-left:91.66666667%}.col-md-offset-10{margin-left:83.33333333%}.col-md-offset-9{margin-left:75%}.col-md-offset-8{margin-left:66.66666667%}.col-md-offset-7{margin-left:58.33333333%}.col-md-offset-6{margin-left:50%}.col-md-offset-5{margin-left:41.66666667%}.col-md-offset-4{margin-left:33.33333333%}.col-md-offset-3{margin-left:25%}.col-md-offset-2{margin-left:16.66666667%}.col-md-offset-1{margin-left:8.33333333%}.col-md-offset-0{margin-left:0}}@media (min-width:1200px){.col-lg-1,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-10,.col-lg-11,.col-lg-12{float:left}.col-lg-12{width:100%}.col-lg-11{width:91.66666667%}.col-lg-10{width:83.33333333%}.col-lg-9{width:75%}.col-lg-8{width:66.66666667%}.col-lg-7{width:58.33333333%}.col-lg-6{width:50%}.col-lg-5{width:41.66666667%}.col-lg-4{width:33.33333333%}.col-lg-3{width:25%}.col-lg-2{width:16.66666667%}.col-lg-1{width:8.33333333%}.col-lg-pull-12{right:100%}.col-lg-pull-11{right:91.66666667%}.col-lg-pull-10{right:83.33333333%}.col-lg-pull-9{right:75%}.col-lg-pull-8{right:66.66666667%}.col-lg-pull-7{right:58.33333333%}.col-lg-pull-6{right:50%}.col-lg-pull-5{right:41.66666667%}.col-lg-pull-4{right:33.33333333%}.col-lg-pull-3{right:25%}.col-lg-pull-2{right:16.66666667%}.col-lg-pull-1{right:8.33333333%}.col-lg-pull-0{right:auto}.col-lg-push-12{left:100%}.col-lg-push-11{left:91.66666667%}.col-lg-push-10{left:83.33333333%}.col-lg-push-9{left:75%}.col-lg-push-8{left:66.66666667%}.col-lg-push-7{left:58.33333333%}.col-lg-push-6{left:50%}.col-lg-push-5{left:41.66666667%}.col-lg-push-4{left:33.33333333%}.col-lg-push-3{left:25%}.col-lg-push-2{left:16.66666667%}.col-lg-push-1{left:8.33333333%}.col-lg-push-0{left:auto}.col-lg-offset-12{margin-left:100%}.col-lg-offset-11{margin-left:91.66666667%}.col-lg-offset-10{margin-left:83.33333333%}.col-lg-offset-9{margin-left:75%}.col-lg-offset-8{margin-left:66.66666667%}.col-lg-offset-7{margin-left:58.33333333%}.col-lg-offset-6{margin-left:50%}.col-lg-offset-5{margin-left:41.66666667%}.col-lg-offset-4{margin-left:33.33333333%}.col-lg-offset-3{margin-left:25%}.col-lg-offset-2{margin-left:16.66666667%}.col-lg-offset-1{margin-left:8.33333333%}.col-lg-offset-0{margin-left:0}}table{background-color:transparent}caption{padding-top:8px;padding-bottom:8px;color:#777;text-align:left}th{text-align:left}.table{width:100%;max-width:100%;margin-bottom:20px}.table>thead>tr>th,.table>tbody>tr>th,.table>tfoot>tr>th,.table>thead>tr>td,.table>tbody>tr>td,.table>tfoot>tr>td{padding:8px;line-height:1.42857143;vertical-align:top;border-top:1px solid #ddd}.table>thead>tr>th{vertical-align:bottom;border-bottom:2px solid #ddd}.table>caption+thead>tr:first-child>th,.table>colgroup+thead>tr:first-child>th,.table>thead:first-child>tr:first-child>th,.table>caption+thead>tr:first-child>td,.table>colgroup+thead>tr:first-child>td,.table>thead:first-child>tr:first-child>td{border-top:0}.table>tbody+tbody{border-top:2px solid #ddd}.table .table{background-color:#fff}.table-condensed>thead>tr>th,.table-condensed>tbody>tr>th,.table-condensed>tfoot>tr>th,.table-condensed>thead>tr>td,.table-condensed>tbody>tr>td,.table-condensed>tfoot>tr>td{padding:5px}.table-bordered{border:1px solid #ddd}.table-bordered>thead>tr>th,.table-bordered>tbody>tr>th,.table-bordered>tfoot>tr>th,.table-bordered>thead>tr>td,.table-bordered>tbody>tr>td,.table-bordered>tfoot>tr>td{border:1px solid #ddd}.table-bordered>thead>tr>th,.table-bordered>thead>tr>td{border-bottom-width:2px}.table-striped>tbody>tr:nth-child(odd){background-color:#f9f9f9}.table-hover>tbody>tr:hover{background-color:#f5f5f5}table col[class*=col-]{position:static;display:table-column;float:none}table td[class*=col-],table th[class*=col-]{position:static;display:table-cell;float:none}.table>thead>tr>td.active,.table>tbody>tr>td.active,.table>tfoot>tr>td.active,.table>thead>tr>th.active,.table>tbody>tr>th.active,.table>tfoot>tr>th.active,.table>thead>tr.active>td,.table>tbody>tr.active>td,.table>tfoot>tr.active>td,.table>thead>tr.active>th,.table>tbody>tr.active>th,.table>tfoot>tr.active>th{background-color:#f5f5f5}.table-hover>tbody>tr>td.active:hover,.table-hover>tbody>tr>th.active:hover,.table-hover>tbody>tr.active:hover>td,.table-hover>tbody>tr:hover>.active,.table-hover>tbody>tr.active:hover>th{background-color:#e8e8e8}.table>thead>tr>td.success,.table>tbody>tr>td.success,.table>tfoot>tr>td.success,.table>thead>tr>th.success,.table>tbody>tr>th.success,.table>tfoot>tr>th.success,.table>thead>tr.success>td,.table>tbody>tr.success>td,.table>tfoot>tr.success>td,.table>thead>tr.success>th,.table>tbody>tr.success>th,.table>tfoot>tr.success>th{background-color:#dff0d8}.table-hover>tbody>tr>td.success:hover,.table-hover>tbody>tr>th.success:hover,.table-hover>tbody>tr.success:hover>td,.table-hover>tbody>tr:hover>.success,.table-hover>tbody>tr.success:hover>th{background-color:#d0e9c6}.table>thead>tr>td.info,.table>tbody>tr>td.info,.table>tfoot>tr>td.info,.table>thead>tr>th.info,.table>tbody>tr>th.info,.table>tfoot>tr>th.info,.table>thead>tr.info>td,.table>tbody>tr.info>td,.table>tfoot>tr.info>td,.table>thead>tr.info>th,.table>tbody>tr.info>th,.table>tfoot>tr.info>th{background-color:#d9edf7}.table-hover>tbody>tr>td.info:hover,.table-hover>tbody>tr>th.info:hover,.table-hover>tbody>tr.info:hover>td,.table-hover>tbody>tr:hover>.info,.table-hover>tbody>tr.info:hover>th{background-color:#c4e3f3}.table>thead>tr>td.warning,.table>tbody>tr>td.warning,.table>tfoot>tr>td.warning,.table>thead>tr>th.warning,.table>tbody>tr>th.warning,.table>tfoot>tr>th.warning,.table>thead>tr.warning>td,.table>tbody>tr.warning>td,.table>tfoot>tr.warning>td,.table>thead>tr.warning>th,.table>tbody>tr.warning>th,.table>tfoot>tr.warning>th{background-color:#fcf8e3}.table-hover>tbody>tr>td.warning:hover,.table-hover>tbody>tr>th.warning:hover,.table-hover>tbody>tr.warning:hover>td,.table-hover>tbody>tr:hover>.warning,.table-hover>tbody>tr.warning:hover>th{background-color:#faf2cc}.table>thead>tr>td.danger,.table>tbody>tr>td.danger,.table>tfoot>tr>td.danger,.table>thead>tr>th.danger,.table>tbody>tr>th.danger,.table>tfoot>tr>th.danger,.table>thead>tr.danger>td,.table>tbody>tr.danger>td,.table>tfoot>tr.danger>td,.table>thead>tr.danger>th,.table>tbody>tr.danger>th,.table>tfoot>tr.danger>th{background-color:#f2dede}.table-hover>tbody>tr>td.danger:hover,.table-hover>tbody>tr>th.danger:hover,.table-hover>tbody>tr.danger:hover>td,.table-hover>tbody>tr:hover>.danger,.table-hover>tbody>tr.danger:hover>th{background-color:#ebcccc}.table-responsive{min-height:.01%;overflow-x:auto}@media screen and (max-width:767px){.table-responsive{width:100%;margin-bottom:15px;overflow-y:hidden;-ms-overflow-style:-ms-autohiding-scrollbar;border:1px solid #ddd}.table-responsive>.table{margin-bottom:0}.table-responsive>.table>thead>tr>th,.table-responsive>.table>tbody>tr>th,.table-responsive>.table>tfoot>tr>th,.table-responsive>.table>thead>tr>td,.table-responsive>.table>tbody>tr>td,.table-responsive>.table>tfoot>tr>td{white-space:nowrap}.table-responsive>.table-bordered{border:0}.table-responsive>.table-bordered>thead>tr>th:first-child,.table-responsive>.table-bordered>tbody>tr>th:first-child,.table-responsive>.table-bordered>tfoot>tr>th:first-child,.table-responsive>.table-bordered>thead>tr>td:first-child,.table-responsive>.table-bordered>tbody>tr>td:first-child,.table-responsive>.table-bordered>tfoot>tr>td:first-child{border-left:0}.table-responsive>.table-bordered>thead>tr>th:last-child,.table-responsive>.table-bordered>tbody>tr>th:last-child,.table-responsive>.table-bordered>tfoot>tr>th:last-child,.table-responsive>.table-bordered>thead>tr>td:last-child,.table-responsive>.table-bordered>tbody>tr>td:last-child,.table-responsive>.table-bordered>tfoot>tr>td:last-child{border-right:0}.table-responsive>.table-bordered>tbody>tr:last-child>th,.table-responsive>.table-bordered>tfoot>tr:last-child>th,.table-responsive>.table-bordered>tbody>tr:last-child>td,.table-responsive>.table-bordered>tfoot>tr:last-child>td{border-bottom:0}}fieldset{min-width:0;padding:0;margin:0;border:0}legend{display:block;width:100%;padding:0;margin-bottom:20px;font-size:21px;line-height:inherit;color:#333;border:0;border-bottom:1px solid #e5e5e5}label{display:inline-block;max-width:100%;margin-bottom:5px;font-weight:700}input[type=search]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}input[type=radio],input[type=checkbox]{margin:4px 0 0;margin-top:1px \9;line-height:normal}input[type=file]{display:block}input[type=range]{display:block;width:100%}select[multiple],select[size]{height:auto}input[type=file]:focus,input[type=radio]:focus,input[type=checkbox]:focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}output{display:block;padding-top:7px;font-size:14px;line-height:1.42857143;color:#555}.form-control{display:block;width:100%;height:34px;padding:6px 12px;font-size:14px;line-height:1.42857143;color:#555;background-color:#fff;background-image:none;border:1px solid #ccc;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075);-webkit-transition:border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;-o-transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s;transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s}.form-control:focus{border-color:#66afe9;outline:0;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)}.form-control::-moz-placeholder{color:#999;opacity:1}.form-control:-ms-input-placeholder{color:#999}.form-control::-webkit-input-placeholder{color:#999}.form-control[disabled],.form-control[readonly],fieldset[disabled] .form-control{cursor:not-allowed;background-color:#eee;opacity:1}textarea.form-control{height:auto}input[type=search]{-webkit-appearance:none}@media screen and (-webkit-min-device-pixel-ratio:0){input[type=date],input[type=time],input[type=datetime-local],input[type=month]{line-height:34px}input[type=date].input-sm,input[type=time].input-sm,input[type=datetime-local].input-sm,input[type=month].input-sm{line-height:30px}input[type=date].input-lg,input[type=time].input-lg,input[type=datetime-local].input-lg,input[type=month].input-lg{line-height:46px}}.form-group{margin-bottom:15px}.radio,.checkbox{position:relative;display:block;margin-top:10px;margin-bottom:10px}.radio label,.checkbox label{min-height:20px;padding-left:20px;margin-bottom:0;font-weight:400;cursor:pointer}.radio input[type=radio],.radio-inline input[type=radio],.checkbox input[type=checkbox],.checkbox-inline input[type=checkbox]{position:absolute;margin-top:4px \9;margin-left:-20px}.radio+.radio,.checkbox+.checkbox{margin-top:-5px}.radio-inline,.checkbox-inline{display:inline-block;padding-left:20px;margin-bottom:0;font-weight:400;vertical-align:middle;cursor:pointer}.radio-inline+.radio-inline,.checkbox-inline+.checkbox-inline{margin-top:0;margin-left:10px}input[type=radio][disabled],input[type=checkbox][disabled],input[type=radio].disabled,input[type=checkbox].disabled,fieldset[disabled] input[type=radio],fieldset[disabled] input[type=checkbox]{cursor:not-allowed}.radio-inline.disabled,.checkbox-inline.disabled,fieldset[disabled] .radio-inline,fieldset[disabled] .checkbox-inline{cursor:not-allowed}.radio.disabled label,.checkbox.disabled label,fieldset[disabled] .radio label,fieldset[disabled] .checkbox label{cursor:not-allowed}.form-control-static{padding-top:7px;padding-bottom:7px;margin-bottom:0}.form-control-static.input-lg,.form-control-static.input-sm{padding-right:0;padding-left:0}.input-sm,.form-group-sm .form-control{height:30px;padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}select.input-sm,select.form-group-sm .form-control{height:30px;line-height:30px}textarea.input-sm,textarea.form-group-sm .form-control,select[multiple].input-sm,select[multiple].form-group-sm .form-control{height:auto}.input-lg,.form-group-lg .form-control{height:46px;padding:10px 16px;font-size:18px;line-height:1.33;border-radius:6px}select.input-lg,select.form-group-lg .form-control{height:46px;line-height:46px}textarea.input-lg,textarea.form-group-lg .form-control,select[multiple].input-lg,select[multiple].form-group-lg .form-control{height:auto}.has-feedback{position:relative}.has-feedback .form-control{padding-right:42.5px}.form-control-feedback{position:absolute;top:0;right:0;z-index:2;display:block;width:34px;height:34px;line-height:34px;text-align:center;pointer-events:none}.input-lg+.form-control-feedback{width:46px;height:46px;line-height:46px}.input-sm+.form-control-feedback{width:30px;height:30px;line-height:30px}.has-success .help-block,.has-success .control-label,.has-success .radio,.has-success .checkbox,.has-success .radio-inline,.has-success .checkbox-inline,.has-success.radio label,.has-success.checkbox label,.has-success.radio-inline label,.has-success.checkbox-inline label{color:#3c763d}.has-success .form-control{border-color:#3c763d;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075)}.has-success .form-control:focus{border-color:#2b542c;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #67b168;box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #67b168}.has-success .input-group-addon{color:#3c763d;background-color:#dff0d8;border-color:#3c763d}.has-success .form-control-feedback{color:#3c763d}.has-warning .help-block,.has-warning .control-label,.has-warning .radio,.has-warning .checkbox,.has-warning .radio-inline,.has-warning .checkbox-inline,.has-warning.radio label,.has-warning.checkbox label,.has-warning.radio-inline label,.has-warning.checkbox-inline label{color:#8a6d3b}.has-warning .form-control{border-color:#8a6d3b;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075)}.has-warning .form-control:focus{border-color:#66512c;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #c0a16b;box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #c0a16b}.has-warning .input-group-addon{color:#8a6d3b;background-color:#fcf8e3;border-color:#8a6d3b}.has-warning .form-control-feedback{color:#8a6d3b}.has-error .help-block,.has-error .control-label,.has-error .radio,.has-error .checkbox,.has-error .radio-inline,.has-error .checkbox-inline,.has-error.radio label,.has-error.checkbox label,.has-error.radio-inline label,.has-error.checkbox-inline label{color:#a94442}.has-error .form-control{border-color:#a94442;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075)}.has-error .form-control:focus{border-color:#843534;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #ce8483;box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #ce8483}.has-error .input-group-addon{color:#a94442;background-color:#f2dede;border-color:#a94442}.has-error .form-control-feedback{color:#a94442}.has-feedback label~.form-control-feedback{top:25px}.has-feedback label.sr-only~.form-control-feedback{top:0}.help-block{display:block;margin-top:5px;margin-bottom:10px;color:#737373}@media (min-width:768px){.form-inline .form-group{display:inline-block;margin-bottom:0;vertical-align:middle}.form-inline .form-control{display:inline-block;width:auto;vertical-align:middle}.form-inline .form-control-static{display:inline-block}.form-inline .input-group{display:inline-table;vertical-align:middle}.form-inline .input-group .input-group-addon,.form-inline .input-group .input-group-btn,.form-inline .input-group .form-control{width:auto}.form-inline .input-group>.form-control{width:100%}.form-inline .control-label{margin-bottom:0;vertical-align:middle}.form-inline .radio,.form-inline .checkbox{display:inline-block;margin-top:0;margin-bottom:0;vertical-align:middle}.form-inline .radio label,.form-inline .checkbox label{padding-left:0}.form-inline .radio input[type=radio],.form-inline .checkbox input[type=checkbox]{position:relative;margin-left:0}.form-inline .has-feedback .form-control-feedback{top:0}}.form-horizontal .radio,.form-horizontal .checkbox,.form-horizontal .radio-inline,.form-horizontal .checkbox-inline{padding-top:7px;margin-top:0;margin-bottom:0}.form-horizontal .radio,.form-horizontal .checkbox{min-height:27px}.form-horizontal .form-group{margin-right:-15px;margin-left:-15px}@media (min-width:768px){.form-horizontal .control-label{padding-top:7px;margin-bottom:0;text-align:right}}.form-horizontal .has-feedback .form-control-feedback{right:15px}@media (min-width:768px){.form-horizontal .form-group-lg .control-label{padding-top:14.3px}}@media (min-width:768px){.form-horizontal .form-group-sm .control-label{padding-top:6px}}.btn{display:inline-block;padding:6px 12px;margin-bottom:0;font-size:14px;font-weight:400;line-height:1.42857143;text-align:center;white-space:nowrap;vertical-align:middle;-ms-touch-action:manipulation;touch-action:manipulation;cursor:pointer;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;background-image:none;border:1px solid transparent;border-radius:4px}.btn:focus,.btn:active:focus,.btn.active:focus,.btn.focus,.btn:active.focus,.btn.active.focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}.btn:hover,.btn:focus,.btn.focus{color:#333;text-decoration:none}.btn:active,.btn.active{background-image:none;outline:0;-webkit-box-shadow:inset 0 3px 5px rgba(0,0,0,.125);box-shadow:inset 0 3px 5px rgba(0,0,0,.125)}.btn.disabled,.btn[disabled],fieldset[disabled] .btn{pointer-events:none;cursor:not-allowed;filter:alpha(opacity=65);-webkit-box-shadow:none;box-shadow:none;opacity:.65}.btn-default{color:#333;background-color:#fff;border-color:#ccc}.btn-default:hover,.btn-default:focus,.btn-default.focus,.btn-default:active,.btn-default.active,.open>.dropdown-toggle.btn-default{color:#333;background-color:#e6e6e6;border-color:#adadad}.btn-default:active,.btn-default.active,.open>.dropdown-toggle.btn-default{background-image:none}.btn-default.disabled,.btn-default[disabled],fieldset[disabled] .btn-default,.btn-default.disabled:hover,.btn-default[disabled]:hover,fieldset[disabled] .btn-default:hover,.btn-default.disabled:focus,.btn-default[disabled]:focus,fieldset[disabled] .btn-default:focus,.btn-default.disabled.focus,.btn-default[disabled].focus,fieldset[disabled] .btn-default.focus,.btn-default.disabled:active,.btn-default[disabled]:active,fieldset[disabled] .btn-default:active,.btn-default.disabled.active,.btn-default[disabled].active,fieldset[disabled] .btn-default.active{background-color:#fff;border-color:#ccc}.btn-default .badge{color:#fff;background-color:#333}.btn-primary{color:#fff;background-color:#337ab7;border-color:#2e6da4}.btn-primary:hover,.btn-primary:focus,.btn-primary.focus,.btn-primary:active,.btn-primary.active,.open>.dropdown-toggle.btn-primary{color:#fff;background-color:#286090;border-color:#204d74}.btn-primary:active,.btn-primary.active,.open>.dropdown-toggle.btn-primary{background-image:none}.btn-primary.disabled,.btn-primary[disabled],fieldset[disabled] .btn-primary,.btn-primary.disabled:hover,.btn-primary[disabled]:hover,fieldset[disabled] .btn-primary:hover,.btn-primary.disabled:focus,.btn-primary[disabled]:focus,fieldset[disabled] .btn-primary:focus,.btn-primary.disabled.focus,.btn-primary[disabled].focus,fieldset[disabled] .btn-primary.focus,.btn-primary.disabled:active,.btn-primary[disabled]:active,fieldset[disabled] .btn-primary:active,.btn-primary.disabled.active,.btn-primary[disabled].active,fieldset[disabled] .btn-primary.active{background-color:#337ab7;border-color:#2e6da4}.btn-primary .badge{color:#337ab7;background-color:#fff}.btn-success{color:#fff;background-color:#5cb85c;border-color:#4cae4c}.btn-success:hover,.btn-success:focus,.btn-success.focus,.btn-success:active,.btn-success.active,.open>.dropdown-toggle.btn-success{color:#fff;background-color:#449d44;border-color:#398439}.btn-success:active,.btn-success.active,.open>.dropdown-toggle.btn-success{background-image:none}.btn-success.disabled,.btn-success[disabled],fieldset[disabled] .btn-success,.btn-success.disabled:hover,.btn-success[disabled]:hover,fieldset[disabled] .btn-success:hover,.btn-success.disabled:focus,.btn-success[disabled]:focus,fieldset[disabled] .btn-success:focus,.btn-success.disabled.focus,.btn-success[disabled].focus,fieldset[disabled] .btn-success.focus,.btn-success.disabled:active,.btn-success[disabled]:active,fieldset[disabled] .btn-success:active,.btn-success.disabled.active,.btn-success[disabled].active,fieldset[disabled] .btn-success.active{background-color:#5cb85c;border-color:#4cae4c}.btn-success .badge{color:#5cb85c;background-color:#fff}.btn-info{color:#fff;background-color:#5bc0de;border-color:#46b8da}.btn-info:hover,.btn-info:focus,.btn-info.focus,.btn-info:active,.btn-info.active,.open>.dropdown-toggle.btn-info{color:#fff;background-color:#31b0d5;border-color:#269abc}.btn-info:active,.btn-info.active,.open>.dropdown-toggle.btn-info{background-image:none}.btn-info.disabled,.btn-info[disabled],fieldset[disabled] .btn-info,.btn-info.disabled:hover,.btn-info[disabled]:hover,fieldset[disabled] .btn-info:hover,.btn-info.disabled:focus,.btn-info[disabled]:focus,fieldset[disabled] .btn-info:focus,.btn-info.disabled.focus,.btn-info[disabled].focus,fieldset[disabled] .btn-info.focus,.btn-info.disabled:active,.btn-info[disabled]:active,fieldset[disabled] .btn-info:active,.btn-info.disabled.active,.btn-info[disabled].active,fieldset[disabled] .btn-info.active{background-color:#5bc0de;border-color:#46b8da}.btn-info .badge{color:#5bc0de;background-color:#fff}.btn-warning{color:#fff;background-color:#f0ad4e;border-color:#eea236}.btn-warning:hover,.btn-warning:focus,.btn-warning.focus,.btn-warning:active,.btn-warning.active,.open>.dropdown-toggle.btn-warning{color:#fff;background-color:#ec971f;border-color:#d58512}.btn-warning:active,.btn-warning.active,.open>.dropdown-toggle.btn-warning{background-image:none}.btn-warning.disabled,.btn-warning[disabled],fieldset[disabled] .btn-warning,.btn-warning.disabled:hover,.btn-warning[disabled]:hover,fieldset[disabled] .btn-warning:hover,.btn-warning.disabled:focus,.btn-warning[disabled]:focus,fieldset[disabled] .btn-warning:focus,.btn-warning.disabled.focus,.btn-warning[disabled].focus,fieldset[disabled] .btn-warning.focus,.btn-warning.disabled:active,.btn-warning[disabled]:active,fieldset[disabled] .btn-warning:active,.btn-warning.disabled.active,.btn-warning[disabled].active,fieldset[disabled] .btn-warning.active{background-color:#f0ad4e;border-color:#eea236}.btn-warning .badge{color:#f0ad4e;background-color:#fff}.btn-danger{color:#fff;background-color:#d9534f;border-color:#d43f3a}.btn-danger:hover,.btn-danger:focus,.btn-danger.focus,.btn-danger:active,.btn-danger.active,.open>.dropdown-toggle.btn-danger{color:#fff;background-color:#c9302c;border-color:#ac2925}.btn-danger:active,.btn-danger.active,.open>.dropdown-toggle.btn-danger{background-image:none}.btn-danger.disabled,.btn-danger[disabled],fieldset[disabled] .btn-danger,.btn-danger.disabled:hover,.btn-danger[disabled]:hover,fieldset[disabled] .btn-danger:hover,.btn-danger.disabled:focus,.btn-danger[disabled]:focus,fieldset[disabled] .btn-danger:focus,.btn-danger.disabled.focus,.btn-danger[disabled].focus,fieldset[disabled] .btn-danger.focus,.btn-danger.disabled:active,.btn-danger[disabled]:active,fieldset[disabled] .btn-danger:active,.btn-danger.disabled.active,.btn-danger[disabled].active,fieldset[disabled] .btn-danger.active{background-color:#d9534f;border-color:#d43f3a}.btn-danger .badge{color:#d9534f;background-color:#fff}.btn-link{font-weight:400;color:#337ab7;border-radius:0}.btn-link,.btn-link:active,.btn-link.active,.btn-link[disabled],fieldset[disabled] .btn-link{background-color:transparent;-webkit-box-shadow:none;box-shadow:none}.btn-link,.btn-link:hover,.btn-link:focus,.btn-link:active{border-color:transparent}.btn-link:hover,.btn-link:focus{color:#23527c;text-decoration:underline;background-color:transparent}.btn-link[disabled]:hover,fieldset[disabled] .btn-link:hover,.btn-link[disabled]:focus,fieldset[disabled] .btn-link:focus{color:#777;text-decoration:none}.btn-lg,.btn-group-lg>.btn{padding:10px 16px;font-size:18px;line-height:1.33;border-radius:6px}.btn-sm,.btn-group-sm>.btn{padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}.btn-xs,.btn-group-xs>.btn{padding:1px 5px;font-size:12px;line-height:1.5;border-radius:3px}.btn-block{display:block;width:100%}.btn-block+.btn-block{margin-top:5px}input[type=submit].btn-block,input[type=reset].btn-block,input[type=button].btn-block{width:100%}.fade{opacity:0;-webkit-transition:opacity .15s linear;-o-transition:opacity .15s linear;transition:opacity .15s linear}.fade.in{opacity:1}.collapse{display:none;visibility:hidden}.collapse.in{display:block;visibility:visible}tr.collapse.in{display:table-row}tbody.collapse.in{display:table-row-group}.collapsing{position:relative;height:0;overflow:hidden;-webkit-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;-webkit-transition-duration:.35s;-o-transition-duration:.35s;transition-duration:.35s;-webkit-transition-property:height,visibility;-o-transition-property:height,visibility;transition-property:height,visibility}.caret{display:inline-block;width:0;height:0;margin-left:2px;vertical-align:middle;border-top:4px solid;border-right:4px solid transparent;border-left:4px solid transparent}.dropdown{position:relative}.dropdown-toggle:focus{outline:0}.dropdown-menu{position:absolute;top:100%;left:0;z-index:1000;display:none;float:left;min-width:160px;padding:5px 0;margin:2px 0 0;font-size:14px;text-align:left;list-style:none;background-color:#fff;-webkit-background-clip:padding-box;background-clip:padding-box;border:1px solid #ccc;border:1px solid rgba(0,0,0,.15);border-radius:4px;-webkit-box-shadow:0 6px 12px rgba(0,0,0,.175);box-shadow:0 6px 12px rgba(0,0,0,.175)}.dropdown-menu.pull-right{right:0;left:auto}.dropdown-menu .divider{height:1px;margin:9px 0;overflow:hidden;background-color:#e5e5e5}.dropdown-menu>li>a{display:block;padding:3px 20px;clear:both;font-weight:400;line-height:1.42857143;color:#333;white-space:nowrap}.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus{color:#262626;text-decoration:none;background-color:#f5f5f5}.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus{color:#fff;text-decoration:none;background-color:#337ab7;outline:0}.dropdown-menu>.disabled>a,.dropdown-menu>.disabled>a:hover,.dropdown-menu>.disabled>a:focus{color:#777}.dropdown-menu>.disabled>a:hover,.dropdown-menu>.disabled>a:focus{text-decoration:none;cursor:not-allowed;background-color:transparent;background-image:none;filter:progid:DXImageTransform.Microsoft.gradient(enabled=false)}.open>.dropdown-menu{display:block}.open>a{outline:0}.dropdown-menu-right{right:0;left:auto}.dropdown-menu-left{right:auto;left:0}.dropdown-header{display:block;padding:3px 20px;font-size:12px;line-height:1.42857143;color:#777;white-space:nowrap}.dropdown-backdrop{position:fixed;top:0;right:0;bottom:0;left:0;z-index:990}.pull-right>.dropdown-menu{right:0;left:auto}.dropup .caret,.navbar-fixed-bottom .dropdown .caret{content:"";border-top:0;border-bottom:4px solid}.dropup .dropdown-menu,.navbar-fixed-bottom .dropdown .dropdown-menu{top:auto;bottom:100%;margin-bottom:1px}@media (min-width:768px){.navbar-right .dropdown-menu{right:0;left:auto}.navbar-right .dropdown-menu-left{right:auto;left:0}}.btn-group,.btn-group-vertical{position:relative;display:inline-block;vertical-align:middle}.btn-group>.btn,.btn-group-vertical>.btn{position:relative;float:left}.btn-group>.btn:hover,.btn-group-vertical>.btn:hover,.btn-group>.btn:focus,.btn-group-vertical>.btn:focus,.btn-group>.btn:active,.btn-group-vertical>.btn:active,.btn-group>.btn.active,.btn-group-vertical>.btn.active{z-index:2}.btn-group .btn+.btn,.btn-group .btn+.btn-group,.btn-group .btn-group+.btn,.btn-group .btn-group+.btn-group{margin-left:-1px}.btn-toolbar{margin-left:-5px}.btn-toolbar .btn-group,.btn-toolbar .input-group{float:left}.btn-toolbar>.btn,.btn-toolbar>.btn-group,.btn-toolbar>.input-group{margin-left:5px}.btn-group>.btn:not(:first-child):not(:last-child):not(.dropdown-toggle){border-radius:0}.btn-group>.btn:first-child{margin-left:0}.btn-group>.btn:first-child:not(:last-child):not(.dropdown-toggle){border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn:last-child:not(:first-child),.btn-group>.dropdown-toggle:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.btn-group>.btn-group{float:left}.btn-group>.btn-group:not(:first-child):not(:last-child)>.btn{border-radius:0}.btn-group>.btn-group:first-child>.btn:last-child,.btn-group>.btn-group:first-child>.dropdown-toggle{border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn-group:last-child>.btn:first-child{border-top-left-radius:0;border-bottom-left-radius:0}.btn-group .dropdown-toggle:active,.btn-group.open .dropdown-toggle{outline:0}.btn-group>.btn+.dropdown-toggle{padding-right:8px;padding-left:8px}.btn-group>.btn-lg+.dropdown-toggle{padding-right:12px;padding-left:12px}.btn-group.open .dropdown-toggle{-webkit-box-shadow:inset 0 3px 5px rgba(0,0,0,.125);box-shadow:inset 0 3px 5px rgba(0,0,0,.125)}.btn-group.open .dropdown-toggle.btn-link{-webkit-box-shadow:none;box-shadow:none}.btn .caret{margin-left:0}.btn-lg .caret{border-width:5px 5px 0;border-bottom-width:0}.dropup .btn-lg .caret{border-width:0 5px 5px}.btn-group-vertical>.btn,.btn-group-vertical>.btn-group,.btn-group-vertical>.btn-group>.btn{display:block;float:none;width:100%;max-width:100%}.btn-group-vertical>.btn-group>.btn{float:none}.btn-group-vertical>.btn+.btn,.btn-group-vertical>.btn+.btn-group,.btn-group-vertical>.btn-group+.btn,.btn-group-vertical>.btn-group+.btn-group{margin-top:-1px;margin-left:0}.btn-group-vertical>.btn:not(:first-child):not(:last-child){border-radius:0}.btn-group-vertical>.btn:first-child:not(:last-child){border-top-right-radius:4px;border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn:last-child:not(:first-child){border-top-left-radius:0;border-top-right-radius:0;border-bottom-left-radius:4px}.btn-group-vertical>.btn-group:not(:first-child):not(:last-child)>.btn{border-radius:0}.btn-group-vertical>.btn-group:first-child:not(:last-child)>.btn:last-child,.btn-group-vertical>.btn-group:first-child:not(:last-child)>.dropdown-toggle{border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn-group:last-child:not(:first-child)>.btn:first-child{border-top-left-radius:0;border-top-right-radius:0}.btn-group-justified{display:table;width:100%;table-layout:fixed;border-collapse:separate}.btn-group-justified>.btn,.btn-group-justified>.btn-group{display:table-cell;float:none;width:1%}.btn-group-justified>.btn-group .btn{width:100%}.btn-group-justified>.btn-group .dropdown-menu{left:auto}[data-toggle=buttons]>.btn input[type=radio],[data-toggle=buttons]>.btn-group>.btn input[type=radio],[data-toggle=buttons]>.btn input[type=checkbox],[data-toggle=buttons]>.btn-group>.btn input[type=checkbox]{position:absolute;clip:rect(0,0,0,0);pointer-events:none}.input-group{position:relative;display:table;border-collapse:separate}.input-group[class*=col-]{float:none;padding-right:0;padding-left:0}.input-group .form-control{position:relative;z-index:2;float:left;width:100%;margin-bottom:0}.input-group-lg>.form-control,.input-group-lg>.input-group-addon,.input-group-lg>.input-group-btn>.btn{height:46px;padding:10px 16px;font-size:18px;line-height:1.33;border-radius:6px}select.input-group-lg>.form-control,select.input-group-lg>.input-group-addon,select.input-group-lg>.input-group-btn>.btn{height:46px;line-height:46px}textarea.input-group-lg>.form-control,textarea.input-group-lg>.input-group-addon,textarea.input-group-lg>.input-group-btn>.btn,select[multiple].input-group-lg>.form-control,select[multiple].input-group-lg>.input-group-addon,select[multiple].input-group-lg>.input-group-btn>.btn{height:auto}.input-group-sm>.form-control,.input-group-sm>.input-group-addon,.input-group-sm>.input-group-btn>.btn{height:30px;padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}select.input-group-sm>.form-control,select.input-group-sm>.input-group-addon,select.input-group-sm>.input-group-btn>.btn{height:30px;line-height:30px}textarea.input-group-sm>.form-control,textarea.input-group-sm>.input-group-addon,textarea.input-group-sm>.input-group-btn>.btn,select[multiple].input-group-sm>.form-control,select[multiple].input-group-sm>.input-group-addon,select[multiple].input-group-sm>.input-group-btn>.btn{height:auto}.input-group-addon,.input-group-btn,.input-group .form-control{display:table-cell}.input-group-addon:not(:first-child):not(:last-child),.input-group-btn:not(:first-child):not(:last-child),.input-group .form-control:not(:first-child):not(:last-child){border-radius:0}.input-group-addon,.input-group-btn{width:1%;white-space:nowrap;vertical-align:middle}.input-group-addon{padding:6px 12px;font-size:14px;font-weight:400;line-height:1;color:#555;text-align:center;background-color:#eee;border:1px solid #ccc;border-radius:4px}.input-group-addon.input-sm{padding:5px 10px;font-size:12px;border-radius:3px}.input-group-addon.input-lg{padding:10px 16px;font-size:18px;border-radius:6px}.input-group-addon input[type=radio],.input-group-addon input[type=checkbox]{margin-top:0}.input-group .form-control:first-child,.input-group-addon:first-child,.input-group-btn:first-child>.btn,.input-group-btn:first-child>.btn-group>.btn,.input-group-btn:first-child>.dropdown-toggle,.input-group-btn:last-child>.btn:not(:last-child):not(.dropdown-toggle),.input-group-btn:last-child>.btn-group:not(:last-child)>.btn{border-top-right-radius:0;border-bottom-right-radius:0}.input-group-addon:first-child{border-right:0}.input-group .form-control:last-child,.input-group-addon:last-child,.input-group-btn:last-child>.btn,.input-group-btn:last-child>.btn-group>.btn,.input-group-btn:last-child>.dropdown-toggle,.input-group-btn:first-child>.btn:not(:first-child),.input-group-btn:first-child>.btn-group:not(:first-child)>.btn{border-top-left-radius:0;border-bottom-left-radius:0}.input-group-addon:last-child{border-left:0}.input-group-btn{position:relative;font-size:0;white-space:nowrap}.input-group-btn>.btn{position:relative}.input-group-btn>.btn+.btn{margin-left:-1px}.input-group-btn>.btn:hover,.input-group-btn>.btn:focus,.input-group-btn>.btn:active{z-index:2}.input-group-btn:first-child>.btn,.input-group-btn:first-child>.btn-group{margin-right:-1px}.input-group-btn:last-child>.btn,.input-group-btn:last-child>.btn-group{margin-left:-1px}.nav{padding-left:0;margin-bottom:0;list-style:none}.nav>li{position:relative;display:block}.nav>li>a{position:relative;display:block;padding:10px 15px}.nav>li>a:hover,.nav>li>a:focus{text-decoration:none;background-color:#eee}.nav>li.disabled>a{color:#777}.nav>li.disabled>a:hover,.nav>li.disabled>a:focus{color:#777;text-decoration:none;cursor:not-allowed;background-color:transparent}.nav .open>a,.nav .open>a:hover,.nav .open>a:focus{background-color:#eee;border-color:#337ab7}.nav .nav-divider{height:1px;margin:9px 0;overflow:hidden;background-color:#e5e5e5}.nav>li>a>img{max-width:none}.nav-tabs{border-bottom:1px solid #ddd}.nav-tabs>li{float:left;margin-bottom:-1px}.nav-tabs>li>a{margin-right:2px;line-height:1.42857143;border:1px solid transparent;border-radius:4px 4px 0 0}.nav-tabs>li>a:hover{border-color:#eee #eee #ddd}.nav-tabs>li.active>a,.nav-tabs>li.active>a:hover,.nav-tabs>li.active>a:focus{color:#555;cursor:default;background-color:#fff;border:1px solid #ddd;border-bottom-color:transparent}.nav-tabs.nav-justified{width:100%;border-bottom:0}.nav-tabs.nav-justified>li{float:none}.nav-tabs.nav-justified>li>a{margin-bottom:5px;text-align:center}.nav-tabs.nav-justified>.dropdown .dropdown-menu{top:auto;left:auto}@media (min-width:768px){.nav-tabs.nav-justified>li{display:table-cell;width:1%}.nav-tabs.nav-justified>li>a{margin-bottom:0}}.nav-tabs.nav-justified>li>a{margin-right:0;border-radius:4px}.nav-tabs.nav-justified>.active>a,.nav-tabs.nav-justified>.active>a:hover,.nav-tabs.nav-justified>.active>a:focus{border:1px solid #ddd}@media (min-width:768px){.nav-tabs.nav-justified>li>a{border-bottom:1px solid #ddd;border-radius:4px 4px 0 0}.nav-tabs.nav-justified>.active>a,.nav-tabs.nav-justified>.active>a:hover,.nav-tabs.nav-justified>.active>a:focus{border-bottom-color:#fff}}.nav-pills>li{float:left}.nav-pills>li>a{border-radius:4px}.nav-pills>li+li{margin-left:2px}.nav-pills>li.active>a,.nav-pills>li.active>a:hover,.nav-pills>li.active>a:focus{color:#fff;background-color:#337ab7}.nav-stacked>li{float:none}.nav-stacked>li+li{margin-top:2px;margin-left:0}.nav-justified{width:100%}.nav-justified>li{float:none}.nav-justified>li>a{margin-bottom:5px;text-align:center}.nav-justified>.dropdown .dropdown-menu{top:auto;left:auto}@media (min-width:768px){.nav-justified>li{display:table-cell;width:1%}.nav-justified>li>a{margin-bottom:0}}.nav-tabs-justified{border-bottom:0}.nav-tabs-justified>li>a{margin-right:0;border-radius:4px}.nav-tabs-justified>.active>a,.nav-tabs-justified>.active>a:hover,.nav-tabs-justified>.active>a:focus{border:1px solid #ddd}@media (min-width:768px){.nav-tabs-justified>li>a{border-bottom:1px solid #ddd;border-radius:4px 4px 0 0}.nav-tabs-justified>.active>a,.nav-tabs-justified>.active>a:hover,.nav-tabs-justified>.active>a:focus{border-bottom-color:#fff}}.tab-content>.tab-pane{display:none;visibility:hidden}.tab-content>.active{display:block;visibility:visible}.nav-tabs .dropdown-menu{margin-top:-1px;border-top-left-radius:0;border-top-right-radius:0}.navbar{position:relative;min-height:50px;margin-bottom:20px;border:1px solid transparent}@media (min-width:768px){.navbar{border-radius:4px}}@media (min-width:768px){.navbar-header{float:left}}.navbar-collapse{padding-right:15px;padding-left:15px;overflow-x:visible;-webkit-overflow-scrolling:touch;border-top:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.1);box-shadow:inset 0 1px 0 rgba(255,255,255,.1)}.navbar-collapse.in{overflow-y:auto}@media (min-width:768px){.navbar-collapse{width:auto;border-top:0;-webkit-box-shadow:none;box-shadow:none}.navbar-collapse.collapse{display:block!important;height:auto!important;padding-bottom:0;overflow:visible!important;visibility:visible!important}.navbar-collapse.in{overflow-y:visible}.navbar-fixed-top .navbar-collapse,.navbar-static-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{padding-right:0;padding-left:0}}.navbar-fixed-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{max-height:340px}@media (max-device-width:480px) and (orientation:landscape){.navbar-fixed-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{max-height:200px}}.container>.navbar-header,.container-fluid>.navbar-header,.container>.navbar-collapse,.container-fluid>.navbar-collapse{margin-right:-15px;margin-left:-15px}@media (min-width:768px){.container>.navbar-header,.container-fluid>.navbar-header,.container>.navbar-collapse,.container-fluid>.navbar-collapse{margin-right:0;margin-left:0}}.navbar-static-top{z-index:1000;border-width:0 0 1px}@media (min-width:768px){.navbar-static-top{border-radius:0}}.navbar-fixed-top,.navbar-fixed-bottom{position:fixed;right:0;left:0;z-index:1030}@media (min-width:768px){.navbar-fixed-top,.navbar-fixed-bottom{border-radius:0}}.navbar-fixed-top{top:0;border-width:0 0 1px}.navbar-fixed-bottom{bottom:0;margin-bottom:0;border-width:1px 0 0}.navbar-brand{float:left;height:50px;padding:15px 15px;font-size:18px;line-height:20px}.navbar-brand:hover,.navbar-brand:focus{text-decoration:none}.navbar-brand>img{display:block}@media (min-width:768px){.navbar>.container .navbar-brand,.navbar>.container-fluid .navbar-brand{margin-left:-15px}}.navbar-toggle{position:relative;float:right;padding:9px 10px;margin-top:8px;margin-right:15px;margin-bottom:8px;background-color:transparent;background-image:none;border:1px solid transparent;border-radius:4px}.navbar-toggle:focus{outline:0}.navbar-toggle .icon-bar{display:block;width:22px;height:2px;border-radius:1px}.navbar-toggle .icon-bar+.icon-bar{margin-top:4px}@media (min-width:768px){.navbar-toggle{display:none}}.navbar-nav{margin:7.5px -15px}.navbar-nav>li>a{padding-top:10px;padding-bottom:10px;line-height:20px}@media (max-width:767px){.navbar-nav .open .dropdown-menu{position:static;float:none;width:auto;margin-top:0;background-color:transparent;border:0;-webkit-box-shadow:none;box-shadow:none}.navbar-nav .open .dropdown-menu>li>a,.navbar-nav .open .dropdown-menu .dropdown-header{padding:5px 15px 5px 25px}.navbar-nav .open .dropdown-menu>li>a{line-height:20px}.navbar-nav .open .dropdown-menu>li>a:hover,.navbar-nav .open .dropdown-menu>li>a:focus{background-image:none}}@media (min-width:768px){.navbar-nav{float:left;margin:0}.navbar-nav>li{float:left}.navbar-nav>li>a{padding-top:15px;padding-bottom:15px}}.navbar-form{padding:10px 15px;margin-top:8px;margin-right:-15px;margin-bottom:8px;margin-left:-15px;border-top:1px solid transparent;border-bottom:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.1);box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.1)}@media (min-width:768px){.navbar-form .form-group{display:inline-block;margin-bottom:0;vertical-align:middle}.navbar-form .form-control{display:inline-block;width:auto;vertical-align:middle}.navbar-form .form-control-static{display:inline-block}.navbar-form .input-group{display:inline-table;vertical-align:middle}.navbar-form .input-group .input-group-addon,.navbar-form .input-group .input-group-btn,.navbar-form .input-group .form-control{width:auto}.navbar-form .input-group>.form-control{width:100%}.navbar-form .control-label{margin-bottom:0;vertical-align:middle}.navbar-form .radio,.navbar-form .checkbox{display:inline-block;margin-top:0;margin-bottom:0;vertical-align:middle}.navbar-form .radio label,.navbar-form .checkbox label{padding-left:0}.navbar-form .radio input[type=radio],.navbar-form .checkbox input[type=checkbox]{position:relative;margin-left:0}.navbar-form .has-feedback .form-control-feedback{top:0}}@media (max-width:767px){.navbar-form .form-group{margin-bottom:5px}.navbar-form .form-group:last-child{margin-bottom:0}}@media (min-width:768px){.navbar-form{width:auto;padding-top:0;padding-bottom:0;margin-right:0;margin-left:0;border:0;-webkit-box-shadow:none;box-shadow:none}}.navbar-nav>li>.dropdown-menu{margin-top:0;border-top-left-radius:0;border-top-right-radius:0}.navbar-fixed-bottom .navbar-nav>li>.dropdown-menu{border-top-left-radius:4px;border-top-right-radius:4px;border-bottom-right-radius:0;border-bottom-left-radius:0}.navbar-btn{margin-top:8px;margin-bottom:8px}.navbar-btn.btn-sm{margin-top:10px;margin-bottom:10px}.navbar-btn.btn-xs{margin-top:14px;margin-bottom:14px}.navbar-text{margin-top:15px;margin-bottom:15px}@media (min-width:768px){.navbar-text{float:left;margin-right:15px;margin-left:15px}}@media (min-width:768px){.navbar-left{float:left!important}.navbar-right{float:right!important;margin-right:-15px}.navbar-right~.navbar-right{margin-right:0}}.navbar-default{background-color:#f8f8f8;border-color:#e7e7e7}.navbar-default .navbar-brand{color:#777}.navbar-default .navbar-brand:hover,.navbar-default .navbar-brand:focus{color:#5e5e5e;background-color:transparent}.navbar-default .navbar-text{color:#777}.navbar-default .navbar-nav>li>a{color:#777}.navbar-default .navbar-nav>li>a:hover,.navbar-default .navbar-nav>li>a:focus{color:#333;background-color:transparent}.navbar-default .navbar-nav>.active>a,.navbar-default .navbar-nav>.active>a:hover,.navbar-default .navbar-nav>.active>a:focus{color:#555;background-color:#e7e7e7}.navbar-default .navbar-nav>.disabled>a,.navbar-default .navbar-nav>.disabled>a:hover,.navbar-default .navbar-nav>.disabled>a:focus{color:#ccc;background-color:transparent}.navbar-default .navbar-toggle{border-color:#ddd}.navbar-default .navbar-toggle:hover,.navbar-default .navbar-toggle:focus{background-color:#ddd}.navbar-default .navbar-toggle .icon-bar{background-color:#888}.navbar-default .navbar-collapse,.navbar-default .navbar-form{border-color:#e7e7e7}.navbar-default .navbar-nav>.open>a,.navbar-default .navbar-nav>.open>a:hover,.navbar-default .navbar-nav>.open>a:focus{color:#555;background-color:#e7e7e7}@media (max-width:767px){.navbar-default .navbar-nav .open .dropdown-menu>li>a{color:#777}.navbar-default .navbar-nav .open .dropdown-menu>li>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>li>a:focus{color:#333;background-color:transparent}.navbar-default .navbar-nav .open .dropdown-menu>.active>a,.navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus{color:#555;background-color:#e7e7e7}.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a,.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a:focus{color:#ccc;background-color:transparent}}.navbar-default .navbar-link{color:#777}.navbar-default .navbar-link:hover{color:#333}.navbar-default .btn-link{color:#777}.navbar-default .btn-link:hover,.navbar-default .btn-link:focus{color:#333}.navbar-default .btn-link[disabled]:hover,fieldset[disabled] .navbar-default .btn-link:hover,.navbar-default .btn-link[disabled]:focus,fieldset[disabled] .navbar-default .btn-link:focus{color:#ccc}.navbar-inverse{background-color:#222;border-color:#080808}.navbar-inverse .navbar-brand{color:#9d9d9d}.navbar-inverse .navbar-brand:hover,.navbar-inverse .navbar-brand:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-text{color:#9d9d9d}.navbar-inverse .navbar-nav>li>a{color:#9d9d9d}.navbar-inverse .navbar-nav>li>a:hover,.navbar-inverse .navbar-nav>li>a:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>.active>a:focus{color:#fff;background-color:#080808}.navbar-inverse .navbar-nav>.disabled>a,.navbar-inverse .navbar-nav>.disabled>a:hover,.navbar-inverse .navbar-nav>.disabled>a:focus{color:#444;background-color:transparent}.navbar-inverse .navbar-toggle{border-color:#333}.navbar-inverse .navbar-toggle:hover,.navbar-inverse .navbar-toggle:focus{background-color:#333}.navbar-inverse .navbar-toggle .icon-bar{background-color:#fff}.navbar-inverse .navbar-collapse,.navbar-inverse .navbar-form{border-color:#101010}.navbar-inverse .navbar-nav>.open>a,.navbar-inverse .navbar-nav>.open>a:hover,.navbar-inverse .navbar-nav>.open>a:focus{color:#fff;background-color:#080808}@media (max-width:767px){.navbar-inverse .navbar-nav .open .dropdown-menu>.dropdown-header{border-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu .divider{background-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu>li>a{color:#9d9d9d}.navbar-inverse .navbar-nav .open .dropdown-menu>li>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>li>a:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a,.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a:focus{color:#fff;background-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a,.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a:focus{color:#444;background-color:transparent}}.navbar-inverse .navbar-link{color:#9d9d9d}.navbar-inverse .navbar-link:hover{color:#fff}.navbar-inverse .btn-link{color:#9d9d9d}.navbar-inverse .btn-link:hover,.navbar-inverse .btn-link:focus{color:#fff}.navbar-inverse .btn-link[disabled]:hover,fieldset[disabled] .navbar-inverse .btn-link:hover,.navbar-inverse .btn-link[disabled]:focus,fieldset[disabled] .navbar-inverse .btn-link:focus{color:#444}.breadcrumb{padding:8px 15px;margin-bottom:20px;list-style:none;background-color:#f5f5f5;border-radius:4px}.breadcrumb>li{display:inline-block}.breadcrumb>li+li:before{padding:0 5px;color:#ccc;content:"/\00a0"}.breadcrumb>.active{color:#777}.pagination{display:inline-block;padding-left:0;margin:20px 0;border-radius:4px}.pagination>li{display:inline}.pagination>li>a,.pagination>li>span{position:relative;float:left;padding:6px 12px;margin-left:-1px;line-height:1.42857143;color:#337ab7;text-decoration:none;background-color:#fff;border:1px solid #ddd}.pagination>li:first-child>a,.pagination>li:first-child>span{margin-left:0;border-top-left-radius:4px;border-bottom-left-radius:4px}.pagination>li:last-child>a,.pagination>li:last-child>span{border-top-right-radius:4px;border-bottom-right-radius:4px}.pagination>li>a:hover,.pagination>li>span:hover,.pagination>li>a:focus,.pagination>li>span:focus{color:#23527c;background-color:#eee;border-color:#ddd}.pagination>.active>a,.pagination>.active>span,.pagination>.active>a:hover,.pagination>.active>span:hover,.pagination>.active>a:focus,.pagination>.active>span:focus{z-index:2;color:#fff;cursor:default;background-color:#337ab7;border-color:#337ab7}.pagination>.disabled>span,.pagination>.disabled>span:hover,.pagination>.disabled>span:focus,.pagination>.disabled>a,.pagination>.disabled>a:hover,.pagination>.disabled>a:focus{color:#777;cursor:not-allowed;background-color:#fff;border-color:#ddd}.pagination-lg>li>a,.pagination-lg>li>span{padding:10px 16px;font-size:18px}.pagination-lg>li:first-child>a,.pagination-lg>li:first-child>span{border-top-left-radius:6px;border-bottom-left-radius:6px}.pagination-lg>li:last-child>a,.pagination-lg>li:last-child>span{border-top-right-radius:6px;border-bottom-right-radius:6px}.pagination-sm>li>a,.pagination-sm>li>span{padding:5px 10px;font-size:12px}.pagination-sm>li:first-child>a,.pagination-sm>li:first-child>span{border-top-left-radius:3px;border-bottom-left-radius:3px}.pagination-sm>li:last-child>a,.pagination-sm>li:last-child>span{border-top-right-radius:3px;border-bottom-right-radius:3px}.pager{padding-left:0;margin:20px 0;text-align:center;list-style:none}.pager li{display:inline}.pager li>a,.pager li>span{display:inline-block;padding:5px 14px;background-color:#fff;border:1px solid #ddd;border-radius:15px}.pager li>a:hover,.pager li>a:focus{text-decoration:none;background-color:#eee}.pager .next>a,.pager .next>span{float:right}.pager .previous>a,.pager .previous>span{float:left}.pager .disabled>a,.pager .disabled>a:hover,.pager .disabled>a:focus,.pager .disabled>span{color:#777;cursor:not-allowed;background-color:#fff}.label{display:inline;padding:.2em .6em .3em;font-size:75%;font-weight:700;line-height:1;color:#fff;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25em}a.label:hover,a.label:focus{color:#fff;text-decoration:none;cursor:pointer}.label:empty{display:none}.btn .label{position:relative;top:-1px}.label-default{background-color:#777}.label-default[href]:hover,.label-default[href]:focus{background-color:#5e5e5e}.label-primary{background-color:#337ab7}.label-primary[href]:hover,.label-primary[href]:focus{background-color:#286090}.label-success{background-color:#5cb85c}.label-success[href]:hover,.label-success[href]:focus{background-color:#449d44}.label-info{background-color:#5bc0de}.label-info[href]:hover,.label-info[href]:focus{background-color:#31b0d5}.label-warning{background-color:#f0ad4e}.label-warning[href]:hover,.label-warning[href]:focus{background-color:#ec971f}.label-danger{background-color:#d9534f}.label-danger[href]:hover,.label-danger[href]:focus{background-color:#c9302c}.badge{display:inline-block;min-width:10px;padding:3px 7px;font-size:12px;font-weight:700;line-height:1;color:#fff;text-align:center;white-space:nowrap;vertical-align:baseline;background-color:#777;border-radius:10px}.badge:empty{display:none}.btn .badge{position:relative;top:-1px}.btn-xs .badge{top:0;padding:1px 5px}a.badge:hover,a.badge:focus{color:#fff;text-decoration:none;cursor:pointer}.list-group-item.active>.badge,.nav-pills>.active>a>.badge{color:#337ab7;background-color:#fff}.list-group-item>.badge{float:right}.list-group-item>.badge+.badge{margin-right:5px}.nav-pills>li>a>.badge{margin-left:3px}.jumbotron{padding:30px 15px;margin-bottom:30px;color:inherit;background-color:#eee}.jumbotron h1,.jumbotron .h1{color:inherit}.jumbotron p{margin-bottom:15px;font-size:21px;font-weight:200}.jumbotron>hr{border-top-color:#d5d5d5}.container .jumbotron,.container-fluid .jumbotron{border-radius:6px}.jumbotron .container{max-width:100%}@media screen and (min-width:768px){.jumbotron{padding:48px 0}.container .jumbotron,.container-fluid .jumbotron{padding-right:60px;padding-left:60px}.jumbotron h1,.jumbotron .h1{font-size:63px}}.thumbnail{display:block;padding:4px;margin-bottom:20px;line-height:1.42857143;background-color:#fff;border:1px solid #ddd;border-radius:4px;-webkit-transition:border .2s ease-in-out;-o-transition:border .2s ease-in-out;transition:border .2s ease-in-out}.thumbnail>img,.thumbnail a>img{margin-right:auto;margin-left:auto}a.thumbnail:hover,a.thumbnail:focus,a.thumbnail.active{border-color:#337ab7}.thumbnail .caption{padding:9px;color:#333}.alert{padding:15px;margin-bottom:20px;border:1px solid transparent;border-radius:4px}.alert h4{margin-top:0;color:inherit}.alert .alert-link{font-weight:700}.alert>p,.alert>ul{margin-bottom:0}.alert>p+p{margin-top:5px}.alert-dismissable,.alert-dismissible{padding-right:35px}.alert-dismissable .close,.alert-dismissible .close{position:relative;top:-2px;right:-21px;color:inherit}.alert-success{color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6}.alert-success hr{border-top-color:#c9e2b3}.alert-success .alert-link{color:#2b542c}.alert-info{color:#31708f;background-color:#d9edf7;border-color:#bce8f1}.alert-info hr{border-top-color:#a6e1ec}.alert-info .alert-link{color:#245269}.alert-warning{color:#8a6d3b;background-color:#fcf8e3;border-color:#faebcc}.alert-warning hr{border-top-color:#f7e1b5}.alert-warning .alert-link{color:#66512c}.alert-danger{color:#a94442;background-color:#f2dede;border-color:#ebccd1}.alert-danger hr{border-top-color:#e4b9c0}.alert-danger .alert-link{color:#843534}@-webkit-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@-o-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}.progress{height:20px;margin-bottom:20px;overflow:hidden;background-color:#f5f5f5;border-radius:4px;-webkit-box-shadow:inset 0 1px 2px rgba(0,0,0,.1);box-shadow:inset 0 1px 2px rgba(0,0,0,.1)}.progress-bar{float:left;width:0;height:100%;font-size:12px;line-height:20px;color:#fff;text-align:center;background-color:#337ab7;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,.15);box-shadow:inset 0 -1px 0 rgba(0,0,0,.15);-webkit-transition:width .6s ease;-o-transition:width .6s ease;transition:width .6s ease}.progress-striped .progress-bar,.progress-bar-striped{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);-webkit-background-size:40px 40px;background-size:40px 40px}.progress.active .progress-bar,.progress-bar.active{-webkit-animation:progress-bar-stripes 2s linear infinite;-o-animation:progress-bar-stripes 2s linear infinite;animation:progress-bar-stripes 2s linear infinite}.progress-bar-success{background-color:#5cb85c}.progress-striped .progress-bar-success{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-info{background-color:#5bc0de}.progress-striped .progress-bar-info{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-warning{background-color:#f0ad4e}.progress-striped .progress-bar-warning{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-danger{background-color:#d9534f}.progress-striped .progress-bar-danger{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.media{margin-top:15px}.media:first-child{margin-top:0}.media-right,.media>.pull-right{padding-left:10px}.media-left,.media>.pull-left{padding-right:10px}.media-left,.media-right,.media-body{display:table-cell;vertical-align:top}.media-middle{vertical-align:middle}.media-bottom{vertical-align:bottom}.media-heading{margin-top:0;margin-bottom:5px}.media-list{padding-left:0;list-style:none}.list-group{padding-left:0;margin-bottom:20px}.list-group-item{position:relative;display:block;padding:10px 15px;margin-bottom:-1px;background-color:#fff;border:1px solid #ddd}.list-group-item:first-child{border-top-left-radius:4px;border-top-right-radius:4px}.list-group-item:last-child{margin-bottom:0;border-bottom-right-radius:4px;border-bottom-left-radius:4px}a.list-group-item{color:#555}a.list-group-item .list-group-item-heading{color:#333}a.list-group-item:hover,a.list-group-item:focus{color:#555;text-decoration:none;background-color:#f5f5f5}.list-group-item.disabled,.list-group-item.disabled:hover,.list-group-item.disabled:focus{color:#777;cursor:not-allowed;background-color:#eee}.list-group-item.disabled .list-group-item-heading,.list-group-item.disabled:hover .list-group-item-heading,.list-group-item.disabled:focus .list-group-item-heading{color:inherit}.list-group-item.disabled .list-group-item-text,.list-group-item.disabled:hover .list-group-item-text,.list-group-item.disabled:focus .list-group-item-text{color:#777}.list-group-item.active,.list-group-item.active:hover,.list-group-item.active:focus{z-index:2;color:#fff;background-color:#337ab7;border-color:#337ab7}.list-group-item.active .list-group-item-heading,.list-group-item.active:hover .list-group-item-heading,.list-group-item.active:focus .list-group-item-heading,.list-group-item.active .list-group-item-heading>small,.list-group-item.active:hover .list-group-item-heading>small,.list-group-item.active:focus .list-group-item-heading>small,.list-group-item.active .list-group-item-heading>.small,.list-group-item.active:hover .list-group-item-heading>.small,.list-group-item.active:focus .list-group-item-heading>.small{color:inherit}.list-group-item.active .list-group-item-text,.list-group-item.active:hover .list-group-item-text,.list-group-item.active:focus .list-group-item-text{color:#c7ddef}.list-group-item-success{color:#3c763d;background-color:#dff0d8}a.list-group-item-success{color:#3c763d}a.list-group-item-success .list-group-item-heading{color:inherit}a.list-group-item-success:hover,a.list-group-item-success:focus{color:#3c763d;background-color:#d0e9c6}a.list-group-item-success.active,a.list-group-item-success.active:hover,a.list-group-item-success.active:focus{color:#fff;background-color:#3c763d;border-color:#3c763d}.list-group-item-info{color:#31708f;background-color:#d9edf7}a.list-group-item-info{color:#31708f}a.list-group-item-info .list-group-item-heading{color:inherit}a.list-group-item-info:hover,a.list-group-item-info:focus{color:#31708f;background-color:#c4e3f3}a.list-group-item-info.active,a.list-group-item-info.active:hover,a.list-group-item-info.active:focus{color:#fff;background-color:#31708f;border-color:#31708f}.list-group-item-warning{color:#8a6d3b;background-color:#fcf8e3}a.list-group-item-warning{color:#8a6d3b}a.list-group-item-warning .list-group-item-heading{color:inherit}a.list-group-item-warning:hover,a.list-group-item-warning:focus{color:#8a6d3b;background-color:#faf2cc}a.list-group-item-warning.active,a.list-group-item-warning.active:hover,a.list-group-item-warning.active:focus{color:#fff;background-color:#8a6d3b;border-color:#8a6d3b}.list-group-item-danger{color:#a94442;background-color:#f2dede}a.list-group-item-danger{color:#a94442}a.list-group-item-danger .list-group-item-heading{color:inherit}a.list-group-item-danger:hover,a.list-group-item-danger:focus{color:#a94442;background-color:#ebcccc}a.list-group-item-danger.active,a.list-group-item-danger.active:hover,a.list-group-item-danger.active:focus{color:#fff;background-color:#a94442;border-color:#a94442}.list-group-item-heading{margin-top:0;margin-bottom:5px}.list-group-item-text{margin-bottom:0;line-height:1.3}.panel{margin-bottom:20px;background-color:#fff;border:1px solid transparent;border-radius:4px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);box-shadow:0 1px 1px rgba(0,0,0,.05)}.panel-body{padding:15px}.panel-heading{padding:10px 15px;border-bottom:1px solid transparent;border-top-left-radius:3px;border-top-right-radius:3px}.panel-heading>.dropdown .dropdown-toggle{color:inherit}.panel-title{margin-top:0;margin-bottom:0;font-size:16px;color:inherit}.panel-title>a{color:inherit}.panel-footer{padding:10px 15px;background-color:#f5f5f5;border-top:1px solid #ddd;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.list-group,.panel>.panel-collapse>.list-group{margin-bottom:0}.panel>.list-group .list-group-item,.panel>.panel-collapse>.list-group .list-group-item{border-width:1px 0;border-radius:0}.panel>.list-group:first-child .list-group-item:first-child,.panel>.panel-collapse>.list-group:first-child .list-group-item:first-child{border-top:0;border-top-left-radius:3px;border-top-right-radius:3px}.panel>.list-group:last-child .list-group-item:last-child,.panel>.panel-collapse>.list-group:last-child .list-group-item:last-child{border-bottom:0;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel-heading+.list-group .list-group-item:first-child{border-top-width:0}.list-group+.panel-footer{border-top-width:0}.panel>.table,.panel>.table-responsive>.table,.panel>.panel-collapse>.table{margin-bottom:0}.panel>.table caption,.panel>.table-responsive>.table caption,.panel>.panel-collapse>.table caption{padding-right:15px;padding-left:15px}.panel>.table:first-child,.panel>.table-responsive:first-child>.table:first-child{border-top-left-radius:3px;border-top-right-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child{border-top-left-radius:3px;border-top-right-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child td:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child td:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child td:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child td:first-child,.panel>.table:first-child>thead:first-child>tr:first-child th:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child th:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child th:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child th:first-child{border-top-left-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child td:last-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child td:last-child,.panel>.table:first-child>tbody:first-child>tr:first-child td:last-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child td:last-child,.panel>.table:first-child>thead:first-child>tr:first-child th:last-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child th:last-child,.panel>.table:first-child>tbody:first-child>tr:first-child th:last-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child th:last-child{border-top-right-radius:3px}.panel>.table:last-child,.panel>.table-responsive:last-child>.table:last-child{border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child{border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child td:first-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child td:first-child,.panel>.table:last-child>tfoot:last-child>tr:last-child td:first-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child td:first-child,.panel>.table:last-child>tbody:last-child>tr:last-child th:first-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child th:first-child,.panel>.table:last-child>tfoot:last-child>tr:last-child th:first-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child th:first-child{border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child td:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child td:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child td:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child td:last-child,.panel>.table:last-child>tbody:last-child>tr:last-child th:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child th:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child th:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child th:last-child{border-bottom-right-radius:3px}.panel>.panel-body+.table,.panel>.panel-body+.table-responsive,.panel>.table+.panel-body,.panel>.table-responsive+.panel-body{border-top:1px solid #ddd}.panel>.table>tbody:first-child>tr:first-child th,.panel>.table>tbody:first-child>tr:first-child td{border-top:0}.panel>.table-bordered,.panel>.table-responsive>.table-bordered{border:0}.panel>.table-bordered>thead>tr>th:first-child,.panel>.table-responsive>.table-bordered>thead>tr>th:first-child,.panel>.table-bordered>tbody>tr>th:first-child,.panel>.table-responsive>.table-bordered>tbody>tr>th:first-child,.panel>.table-bordered>tfoot>tr>th:first-child,.panel>.table-responsive>.table-bordered>tfoot>tr>th:first-child,.panel>.table-bordered>thead>tr>td:first-child,.panel>.table-responsive>.table-bordered>thead>tr>td:first-child,.panel>.table-bordered>tbody>tr>td:first-child,.panel>.table-responsive>.table-bordered>tbody>tr>td:first-child,.panel>.table-bordered>tfoot>tr>td:first-child,.panel>.table-responsive>.table-bordered>tfoot>tr>td:first-child{border-left:0}.panel>.table-bordered>thead>tr>th:last-child,.panel>.table-responsive>.table-bordered>thead>tr>th:last-child,.panel>.table-bordered>tbody>tr>th:last-child,.panel>.table-responsive>.table-bordered>tbody>tr>th:last-child,.panel>.table-bordered>tfoot>tr>th:last-child,.panel>.table-responsive>.table-bordered>tfoot>tr>th:last-child,.panel>.table-bordered>thead>tr>td:last-child,.panel>.table-responsive>.table-bordered>thead>tr>td:last-child,.panel>.table-bordered>tbody>tr>td:last-child,.panel>.table-responsive>.table-bordered>tbody>tr>td:last-child,.panel>.table-bordered>tfoot>tr>td:last-child,.panel>.table-responsive>.table-bordered>tfoot>tr>td:last-child{border-right:0}.panel>.table-bordered>thead>tr:first-child>td,.panel>.table-responsive>.table-bordered>thead>tr:first-child>td,.panel>.table-bordered>tbody>tr:first-child>td,.panel>.table-responsive>.table-bordered>tbody>tr:first-child>td,.panel>.table-bordered>thead>tr:first-child>th,.panel>.table-responsive>.table-bordered>thead>tr:first-child>th,.panel>.table-bordered>tbody>tr:first-child>th,.panel>.table-responsive>.table-bordered>tbody>tr:first-child>th{border-bottom:0}.panel>.table-bordered>tbody>tr:last-child>td,.panel>.table-responsive>.table-bordered>tbody>tr:last-child>td,.panel>.table-bordered>tfoot>tr:last-child>td,.panel>.table-responsive>.table-bordered>tfoot>tr:last-child>td,.panel>.table-bordered>tbody>tr:last-child>th,.panel>.table-responsive>.table-bordered>tbody>tr:last-child>th,.panel>.table-bordered>tfoot>tr:last-child>th,.panel>.table-responsive>.table-bordered>tfoot>tr:last-child>th{border-bottom:0}.panel>.table-responsive{margin-bottom:0;border:0}.panel-group{margin-bottom:20px}.panel-group .panel{margin-bottom:0;border-radius:4px}.panel-group .panel+.panel{margin-top:5px}.panel-group .panel-heading{border-bottom:0}.panel-group .panel-heading+.panel-collapse>.panel-body,.panel-group .panel-heading+.panel-collapse>.list-group{border-top:1px solid #ddd}.panel-group .panel-footer{border-top:0}.panel-group .panel-footer+.panel-collapse .panel-body{border-bottom:1px solid #ddd}.panel-default{border-color:#ddd}.panel-default>.panel-heading{color:#333;background-color:#f5f5f5;border-color:#ddd}.panel-default>.panel-heading+.panel-collapse>.panel-body{border-top-color:#ddd}.panel-default>.panel-heading .badge{color:#f5f5f5;background-color:#333}.panel-default>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#ddd}.panel-primary{border-color:#337ab7}.panel-primary>.panel-heading{color:#fff;background-color:#337ab7;border-color:#337ab7}.panel-primary>.panel-heading+.panel-collapse>.panel-body{border-top-color:#337ab7}.panel-primary>.panel-heading .badge{color:#337ab7;background-color:#fff}.panel-primary>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#337ab7}.panel-success{border-color:#d6e9c6}.panel-success>.panel-heading{color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6}.panel-success>.panel-heading+.panel-collapse>.panel-body{border-top-color:#d6e9c6}.panel-success>.panel-heading .badge{color:#dff0d8;background-color:#3c763d}.panel-success>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#d6e9c6}.panel-info{border-color:#bce8f1}.panel-info>.panel-heading{color:#31708f;background-color:#d9edf7;border-color:#bce8f1}.panel-info>.panel-heading+.panel-collapse>.panel-body{border-top-color:#bce8f1}.panel-info>.panel-heading .badge{color:#d9edf7;background-color:#31708f}.panel-info>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#bce8f1}.panel-warning{border-color:#faebcc}.panel-warning>.panel-heading{color:#8a6d3b;background-color:#fcf8e3;border-color:#faebcc}.panel-warning>.panel-heading+.panel-collapse>.panel-body{border-top-color:#faebcc}.panel-warning>.panel-heading .badge{color:#fcf8e3;background-color:#8a6d3b}.panel-warning>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#faebcc}.panel-danger{border-color:#ebccd1}.panel-danger>.panel-heading{color:#a94442;background-color:#f2dede;border-color:#ebccd1}.panel-danger>.panel-heading+.panel-collapse>.panel-body{border-top-color:#ebccd1}.panel-danger>.panel-heading .badge{color:#f2dede;background-color:#a94442}.panel-danger>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#ebccd1}.embed-responsive{position:relative;display:block;height:0;padding:0;overflow:hidden}.embed-responsive .embed-responsive-item,.embed-responsive iframe,.embed-responsive embed,.embed-responsive object,.embed-responsive video{position:absolute;top:0;bottom:0;left:0;width:100%;height:100%;border:0}.embed-responsive.embed-responsive-16by9{padding-bottom:56.25%}.embed-responsive.embed-responsive-4by3{padding-bottom:75%}.well{min-height:20px;padding:19px;margin-bottom:20px;background-color:#f5f5f5;border:1px solid #e3e3e3;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.05);box-shadow:inset 0 1px 1px rgba(0,0,0,.05)}.well blockquote{border-color:#ddd;border-color:rgba(0,0,0,.15)}.well-lg{padding:24px;border-radius:6px}.well-sm{padding:9px;border-radius:3px}.close{float:right;font-size:21px;font-weight:700;line-height:1;color:#000;text-shadow:0 1px 0 #fff;filter:alpha(opacity=20);opacity:.2}.close:hover,.close:focus{color:#000;text-decoration:none;cursor:pointer;filter:alpha(opacity=50);opacity:.5}button.close{-webkit-appearance:none;padding:0;cursor:pointer;background:0 0;border:0}.modal-open{overflow:hidden}.modal{position:fixed;top:0;right:0;bottom:0;left:0;z-index:1040;display:none;overflow:hidden;-webkit-overflow-scrolling:touch;outline:0}.modal.fade .modal-dialog{-webkit-transition:-webkit-transform .3s ease-out;-o-transition:-o-transform .3s ease-out;transition:transform .3s ease-out;-webkit-transform:translate(0,-25%);-ms-transform:translate(0,-25%);-o-transform:translate(0,-25%);transform:translate(0,-25%)}.modal.in .modal-dialog{-webkit-transform:translate(0,0);-ms-transform:translate(0,0);-o-transform:translate(0,0);transform:translate(0,0)}.modal-open .modal{overflow-x:hidden;overflow-y:auto}.modal-dialog{position:relative;width:auto;margin:10px}.modal-content{position:relative;background-color:#fff;-webkit-background-clip:padding-box;background-clip:padding-box;border:1px solid #999;border:1px solid rgba(0,0,0,.2);border-radius:6px;outline:0;-webkit-box-shadow:0 3px 9px rgba(0,0,0,.5);box-shadow:0 3px 9px rgba(0,0,0,.5)}.modal-backdrop{position:absolute;top:0;right:0;left:0;background-color:#000}.modal-backdrop.fade{filter:alpha(opacity=0);opacity:0}.modal-backdrop.in{filter:alpha(opacity=50);opacity:.5}.modal-header{min-height:16.43px;padding:15px;border-bottom:1px solid #e5e5e5}.modal-header .close{margin-top:-2px}.modal-title{margin:0;line-height:1.42857143}.modal-body{position:relative;padding:15px}.modal-footer{padding:15px;text-align:right;border-top:1px solid #e5e5e5}.modal-footer .btn+.btn{margin-bottom:0;margin-left:5px}.modal-footer .btn-group .btn+.btn{margin-left:-1px}.modal-footer .btn-block+.btn-block{margin-left:0}.modal-scrollbar-measure{position:absolute;top:-9999px;width:50px;height:50px;overflow:scroll}@media (min-width:768px){.modal-dialog{width:600px;margin:30px auto}.modal-content{-webkit-box-shadow:0 5px 15px rgba(0,0,0,.5);box-shadow:0 5px 15px rgba(0,0,0,.5)}.modal-sm{width:300px}}@media (min-width:992px){.modal-lg{width:900px}}.tooltip{position:absolute;z-index:1070;display:block;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:12px;font-weight:400;line-height:1.4;visibility:visible;filter:alpha(opacity=0);opacity:0}.tooltip.in{filter:alpha(opacity=90);opacity:.9}.tooltip.top{padding:5px 0;margin-top:-3px}.tooltip.right{padding:0 5px;margin-left:3px}.tooltip.bottom{padding:5px 0;margin-top:3px}.tooltip.left{padding:0 5px;margin-left:-3px}.tooltip-inner{max-width:200px;padding:3px 8px;color:#fff;text-align:center;text-decoration:none;background-color:#000;border-radius:4px}.tooltip-arrow{position:absolute;width:0;height:0;border-color:transparent;border-style:solid}.tooltip.top .tooltip-arrow{bottom:0;left:50%;margin-left:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.top-left .tooltip-arrow{right:5px;bottom:0;margin-bottom:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.top-right .tooltip-arrow{bottom:0;left:5px;margin-bottom:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.right .tooltip-arrow{top:50%;left:0;margin-top:-5px;border-width:5px 5px 5px 0;border-right-color:#000}.tooltip.left .tooltip-arrow{top:50%;right:0;margin-top:-5px;border-width:5px 0 5px 5px;border-left-color:#000}.tooltip.bottom .tooltip-arrow{top:0;left:50%;margin-left:-5px;border-width:0 5px 5px;border-bottom-color:#000}.tooltip.bottom-left .tooltip-arrow{top:0;right:5px;margin-top:-5px;border-width:0 5px 5px;border-bottom-color:#000}.tooltip.bottom-right .tooltip-arrow{top:0;left:5px;margin-top:-5px;border-width:0 5px 5px;border-bottom-color:#000}.popover{position:absolute;top:0;left:0;z-index:1060;display:none;max-width:276px;padding:1px;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14px;font-weight:400;line-height:1.42857143;text-align:left;white-space:normal;background-color:#fff;-webkit-background-clip:padding-box;background-clip:padding-box;border:1px solid #ccc;border:1px solid rgba(0,0,0,.2);border-radius:6px;-webkit-box-shadow:0 5px 10px rgba(0,0,0,.2);box-shadow:0 5px 10px rgba(0,0,0,.2)}.popover.top{margin-top:-10px}.popover.right{margin-left:10px}.popover.bottom{margin-top:10px}.popover.left{margin-left:-10px}.popover-title{padding:8px 14px;margin:0;font-size:14px;background-color:#f7f7f7;border-bottom:1px solid #ebebeb;border-radius:5px 5px 0 0}.popover-content{padding:9px 14px}.popover>.arrow,.popover>.arrow:after{position:absolute;display:block;width:0;height:0;border-color:transparent;border-style:solid}.popover>.arrow{border-width:11px}.popover>.arrow:after{content:"";border-width:10px}.popover.top>.arrow{bottom:-11px;left:50%;margin-left:-11px;border-top-color:#999;border-top-color:rgba(0,0,0,.25);border-bottom-width:0}.popover.top>.arrow:after{bottom:1px;margin-left:-10px;content:" ";border-top-color:#fff;border-bottom-width:0}.popover.right>.arrow{top:50%;left:-11px;margin-top:-11px;border-right-color:#999;border-right-color:rgba(0,0,0,.25);border-left-width:0}.popover.right>.arrow:after{bottom:-10px;left:1px;content:" ";border-right-color:#fff;border-left-width:0}.popover.bottom>.arrow{top:-11px;left:50%;margin-left:-11px;border-top-width:0;border-bottom-color:#999;border-bottom-color:rgba(0,0,0,.25)}.popover.bottom>.arrow:after{top:1px;margin-left:-10px;content:" ";border-top-width:0;border-bottom-color:#fff}.popover.left>.arrow{top:50%;right:-11px;margin-top:-11px;border-right-width:0;border-left-color:#999;border-left-color:rgba(0,0,0,.25)}.popover.left>.arrow:after{right:1px;bottom:-10px;content:" ";border-right-width:0;border-left-color:#fff}.carousel{position:relative}.carousel-inner{position:relative;width:100%;overflow:hidden}.carousel-inner>.item{position:relative;display:none;-webkit-transition:.6s ease-in-out left;-o-transition:.6s ease-in-out left;transition:.6s ease-in-out left}.carousel-inner>.item>img,.carousel-inner>.item>a>img{line-height:1}@media all and (transform-3d),(-webkit-transform-3d){.carousel-inner>.item{-webkit-transition:-webkit-transform .6s ease-in-out;-o-transition:-o-transform .6s ease-in-out;transition:transform .6s ease-in-out;-webkit-backface-visibility:hidden;backface-visibility:hidden;-webkit-perspective:1000;perspective:1000}.carousel-inner>.item.next,.carousel-inner>.item.active.right{left:0;-webkit-transform:translate3d(100%,0,0);transform:translate3d(100%,0,0)}.carousel-inner>.item.prev,.carousel-inner>.item.active.left{left:0;-webkit-transform:translate3d(-100%,0,0);transform:translate3d(-100%,0,0)}.carousel-inner>.item.next.left,.carousel-inner>.item.prev.right,.carousel-inner>.item.active{left:0;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}}.carousel-inner>.active,.carousel-inner>.next,.carousel-inner>.prev{display:block}.carousel-inner>.active{left:0}.carousel-inner>.next,.carousel-inner>.prev{position:absolute;top:0;width:100%}.carousel-inner>.next{left:100%}.carousel-inner>.prev{left:-100%}.carousel-inner>.next.left,.carousel-inner>.prev.right{left:0}.carousel-inner>.active.left{left:-100%}.carousel-inner>.active.right{left:100%}.carousel-control{position:absolute;top:0;bottom:0;left:0;width:15%;font-size:20px;color:#fff;text-align:center;text-shadow:0 1px 2px rgba(0,0,0,.6);filter:alpha(opacity=50);opacity:.5}.carousel-control.left{background-image:-webkit-linear-gradient(left,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);background-image:-o-linear-gradient(left,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);background-image:-webkit-gradient(linear,left top,right top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,.0001)));background-image:linear-gradient(to right,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);background-repeat:repeat-x}.carousel-control.right{right:0;left:auto;background-image:-webkit-linear-gradient(left,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);background-image:-o-linear-gradient(left,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);background-image:-webkit-gradient(linear,left top,right top,from(rgba(0,0,0,.0001)),to(rgba(0,0,0,.5)));background-image:linear-gradient(to right,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);background-repeat:repeat-x}.carousel-control:hover,.carousel-control:focus{color:#fff;text-decoration:none;filter:alpha(opacity=90);outline:0;opacity:.9}.carousel-control .icon-prev,.carousel-control .icon-next,.carousel-control .glyphicon-chevron-left,.carousel-control .glyphicon-chevron-right{position:absolute;top:50%;z-index:5;display:inline-block}.carousel-control .icon-prev,.carousel-control .glyphicon-chevron-left{left:50%;margin-left:-10px}.carousel-control .icon-next,.carousel-control .glyphicon-chevron-right{right:50%;margin-right:-10px}.carousel-control .icon-prev,.carousel-control .icon-next{width:20px;height:20px;margin-top:-10px;font-family:serif}.carousel-control .icon-prev:before{content:'\2039'}.carousel-control .icon-next:before{content:'\203a'}.carousel-indicators{position:absolute;bottom:10px;left:50%;z-index:15;width:60%;padding-left:0;margin-left:-30%;text-align:center;list-style:none}.carousel-indicators li{display:inline-block;width:10px;height:10px;margin:1px;text-indent:-999px;cursor:pointer;background-color:#000 \9;background-color:rgba(0,0,0,0);border:1px solid #fff;border-radius:10px}.carousel-indicators .active{width:12px;height:12px;margin:0;background-color:#fff}.carousel-caption{position:absolute;right:15%;bottom:20px;left:15%;z-index:10;padding-top:20px;padding-bottom:20px;color:#fff;text-align:center;text-shadow:0 1px 2px rgba(0,0,0,.6)}.carousel-caption .btn{text-shadow:none}@media screen and (min-width:768px){.carousel-control .glyphicon-chevron-left,.carousel-control .glyphicon-chevron-right,.carousel-control .icon-prev,.carousel-control .icon-next{width:30px;height:30px;margin-top:-15px;font-size:30px}.carousel-control .glyphicon-chevron-left,.carousel-control .icon-prev{margin-left:-15px}.carousel-control .glyphicon-chevron-right,.carousel-control .icon-next{margin-right:-15px}.carousel-caption{right:20%;left:20%;padding-bottom:30px}.carousel-indicators{bottom:20px}}.clearfix:before,.clearfix:after,.dl-horizontal dd:before,.dl-horizontal dd:after,.container:before,.container:after,.container-fluid:before,.container-fluid:after,.row:before,.row:after,.form-horizontal .form-group:before,.form-horizontal .form-group:after,.btn-toolbar:before,.btn-toolbar:after,.btn-group-vertical>.btn-group:before,.btn-group-vertical>.btn-group:after,.nav:before,.nav:after,.navbar:before,.navbar:after,.navbar-header:before,.navbar-header:after,.navbar-collapse:before,.navbar-collapse:after,.pager:before,.pager:after,.panel-body:before,.panel-body:after,.modal-footer:before,.modal-footer:after{display:table;content:" "}.clearfix:after,.dl-horizontal dd:after,.container:after,.container-fluid:after,.row:after,.form-horizontal .form-group:after,.btn-toolbar:after,.btn-group-vertical>.btn-group:after,.nav:after,.navbar:after,.navbar-header:after,.navbar-collapse:after,.pager:after,.panel-body:after,.modal-footer:after{clear:both}.center-block{display:block;margin-right:auto;margin-left:auto}.pull-right{float:right!important}.pull-left{float:left!important}.hide{display:none!important}.show{display:block!important}.invisible{visibility:hidden}.text-hide{font:0/0 a;color:transparent;text-shadow:none;background-color:transparent;border:0}.hidden{display:none!important;visibility:hidden!important}.affix{position:fixed}@-ms-viewport{width:device-width}.visible-xs,.visible-sm,.visible-md,.visible-lg{display:none!important}.visible-xs-block,.visible-xs-inline,.visible-xs-inline-block,.visible-sm-block,.visible-sm-inline,.visible-sm-inline-block,.visible-md-block,.visible-md-inline,.visible-md-inline-block,.visible-lg-block,.visible-lg-inline,.visible-lg-inline-block{display:none!important}@media (max-width:767px){.visible-xs{display:block!important}table.visible-xs{display:table}tr.visible-xs{display:table-row!important}th.visible-xs,td.visible-xs{display:table-cell!important}}@media (max-width:767px){.visible-xs-block{display:block!important}}@media (max-width:767px){.visible-xs-inline{display:inline!important}}@media (max-width:767px){.visible-xs-inline-block{display:inline-block!important}}@media (min-width:768px) and (max-width:991px){.visible-sm{display:block!important}table.visible-sm{display:table}tr.visible-sm{display:table-row!important}th.visible-sm,td.visible-sm{display:table-cell!important}}@media (min-width:768px) and (max-width:991px){.visible-sm-block{display:block!important}}@media (min-width:768px) and (max-width:991px){.visible-sm-inline{display:inline!important}}@media (min-width:768px) and (max-width:991px){.visible-sm-inline-block{display:inline-block!important}}@media (min-width:992px) and (max-width:1199px){.visible-md{display:block!important}table.visible-md{display:table}tr.visible-md{display:table-row!important}th.visible-md,td.visible-md{display:table-cell!important}}@media (min-width:992px) and (max-width:1199px){.visible-md-block{display:block!important}}@media (min-width:992px) and (max-width:1199px){.visible-md-inline{display:inline!important}}@media (min-width:992px) and (max-width:1199px){.visible-md-inline-block{display:inline-block!important}}@media (min-width:1200px){.visible-lg{display:block!important}table.visible-lg{display:table}tr.visible-lg{display:table-row!important}th.visible-lg,td.visible-lg{display:table-cell!important}}@media (min-width:1200px){.visible-lg-block{display:block!important}}@media (min-width:1200px){.visible-lg-inline{display:inline!important}}@media (min-width:1200px){.visible-lg-inline-block{display:inline-block!important}}@media (max-width:767px){.hidden-xs{display:none!important}}@media (min-width:768px) and (max-width:991px){.hidden-sm{display:none!important}}@media (min-width:992px) and (max-width:1199px){.hidden-md{display:none!important}}@media (min-width:1200px){.hidden-lg{display:none!important}}.visible-print{display:none!important}@media print{.visible-print{display:block!important}table.visible-print{display:table}tr.visible-print{display:table-row!important}th.visible-print,td.visible-print{display:table-cell!important}}.visible-print-block{display:none!important}@media print{.visible-print-block{display:block!important}}.visible-print-inline{display:none!important}@media print{.visible-print-inline{display:inline!important}}.visible-print-inline-block{display:none!important}@media print{.visible-print-inline-block{display:inline-block!important}}@media print{.hidden-print{display:none!important}}
/*!
 * bootstrap-select v1.5.4
 * http://silviomoreto.github.io/bootstrap-select/
 *
 * Copyright 2013 bootstrap-select
 * Licensed under the MIT license
 */.bootstrap-select.btn-group:not(.input-group-btn),.bootstrap-select.btn-group[class*="span"]{float:none;display:inline-block;margin-bottom:10px;margin-left:0}.form-search .bootstrap-select.btn-group,.form-inline .bootstrap-select.btn-group,.form-horizontal .bootstrap-select.btn-group{margin-bottom:0}.bootstrap-select.form-control{margin-bottom:0;padding:0;border:0}.bootstrap-select.btn-group.pull-right,.bootstrap-select.btn-group[class*="span"].pull-right,.row-fluid .bootstrap-select.btn-group[class*="span"].pull-right{float:right}.input-append .bootstrap-select.btn-group{margin-left:-1px}.input-prepend .bootstrap-select.btn-group{margin-right:-1px}.bootstrap-select:not([class*="span"]):not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn){width:220px}.bootstrap-select{width:220px\0}.bootstrap-select.form-control:not([class*="span"]){width:100%}.bootstrap-select>.btn{width:100%;padding-right:25px}.error .bootstrap-select .btn{border:1px solid #b94a48}.bootstrap-select.show-menu-arrow.open>.btn{z-index:2051}.bootstrap-select .btn:focus{outline:thin dotted #333 !important;outline:5px auto -webkit-focus-ring-color !important;outline-offset:-2px}.bootstrap-select.btn-group .btn .filter-option{display:inline-block;overflow:hidden;width:100%;float:left;text-align:left}.bootstrap-select.btn-group .btn .caret{position:absolute;top:50%;right:12px;margin-top:-2px;vertical-align:middle}.bootstrap-select.btn-group>.disabled,.bootstrap-select.btn-group .dropdown-menu li.disabled>a{cursor:not-allowed}.bootstrap-select.btn-group>.disabled:focus{outline:none !important}.bootstrap-select.btn-group[class*="span"] .btn{width:100%}.bootstrap-select.btn-group .dropdown-menu{min-width:100%;z-index:2000;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.bootstrap-select.btn-group .dropdown-menu.inner{position:static;border:0;padding:0;margin:0;-webkit-border-radius:0;-moz-border-radius:0;border-radius:0;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}.bootstrap-select.btn-group .dropdown-menu dt{display:block;padding:3px 20px;cursor:default}.bootstrap-select.btn-group .div-contain{overflow:hidden}.bootstrap-select.btn-group .dropdown-menu li{position:relative}.bootstrap-select.btn-group .dropdown-menu li>a.opt{position:relative;padding-left:35px}.bootstrap-select.btn-group .dropdown-menu li>a{cursor:pointer}.bootstrap-select.btn-group .dropdown-menu li>dt small{font-weight:normal}.bootstrap-select.btn-group.show-tick .dropdown-menu li.selected a i.check-mark{position:absolute;display:inline-block;right:15px;margin-top:2.5px}.bootstrap-select.btn-group .dropdown-menu li a i.check-mark{display:none}.bootstrap-select.btn-group.show-tick .dropdown-menu li a span.text{margin-right:34px}.bootstrap-select.btn-group .dropdown-menu li small{padding-left:.5em}.bootstrap-select.btn-group .dropdown-menu li:not(.disabled)>a:hover small,.bootstrap-select.btn-group .dropdown-menu li:not(.disabled)>a:focus small,.bootstrap-select.btn-group .dropdown-menu li.active:not(.disabled)>a small{color:#64b1d8;color:rgba(255,255,255,0.4)}.bootstrap-select.btn-group .dropdown-menu li>dt small{font-weight:normal}.bootstrap-select.show-menu-arrow .dropdown-toggle:before{content:'';display:inline-block;border-left:7px solid transparent;border-right:7px solid transparent;border-bottom:7px solid #CCC;border-bottom-color:rgba(0,0,0,0.2);position:absolute;bottom:-4px;left:9px;display:none}.bootstrap-select.show-menu-arrow .dropdown-toggle:after{content:'';display:inline-block;border-left:6px solid transparent;border-right:6px solid transparent;border-bottom:6px solid white;position:absolute;bottom:-4px;left:10px;display:none}.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle:before{bottom:auto;top:-3px;border-top:7px solid #ccc;border-bottom:0;border-top-color:rgba(0,0,0,0.2)}.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle:after{bottom:auto;top:-3px;border-top:6px solid #fff;border-bottom:0}.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle:before{right:12px;left:auto}.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle:after{right:13px;left:auto}.bootstrap-select.show-menu-arrow.open>.dropdown-toggle:before,.bootstrap-select.show-menu-arrow.open>.dropdown-toggle:after{display:block}.bootstrap-select.btn-group .no-results{padding:3px;background:#f5f5f5;margin:0 5px}.bootstrap-select.btn-group .dropdown-menu .notify{position:absolute;bottom:5px;width:96%;margin:0 2%;min-height:26px;padding:3px 5px;background:#f5f5f5;border:1px solid #e3e3e3;box-shadow:inset 0 1px 1px rgba(0,0,0,0.05);pointer-events:none;opacity:.9;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.mobile-device{position:absolute;top:0;left:0;display:block !important;width:100%;height:100% !important;opacity:0}.bootstrap-select.fit-width{width:auto !important}.bootstrap-select.btn-group.fit-width .btn .filter-option{position:static}.bootstrap-select.btn-group.fit-width .btn .caret{position:static;top:auto;margin-top:-1px}.control-group.error .bootstrap-select .dropdown-toggle{border-color:#b94a48}.bootstrap-select-searchbox,.bootstrap-select .bs-actionsbox{padding:4px 8px}.bootstrap-select .bs-actionsbox{float:left;width:100%;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.bootstrap-select-searchbox+.bs-actionsbox{padding:0 8px 4px}.bootstrap-select-searchbox input{margin-bottom:0}.bootstrap-select .bs-actionsbox .btn-group button{width:50%}
@font-face{font-family:'footable';src:url('{T_THEME_PATH}/footable/css/fonts/footable.eot');src:url('{T_THEME_PATH}/footable/css/fonts/footable.eot?#iefix') format('embedded-opentype'),url('{T_THEME_PATH}/footable/css/fonts/footable.woff') format('woff'),url('{T_THEME_PATH}/footable/css/fonts/footable.ttf') format('truetype'),url('{T_THEME_PATH}/footable/css/fonts/footable.svg#footable') format('svg');font-weight:normal;font-style:normal}.footable{width:100%}.footable.breakpoint>tbody>tr.footable-detail-show>td{border-bottom:0}.footable.breakpoint>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e001"}.footable.breakpoint>tbody>tr:hover:not(.footable-row-detail){cursor:pointer}.footable.breakpoint>tbody>tr>td.footable-cell-detail{background:#eee;border-top:0}.footable.breakpoint>tbody>tr>td>span.footable-toggle{display:inline-block;font-family:'footable';speak:none;font-style:normal;font-weight:normal;font-variant:normal;text-transform:none;-webkit-font-smoothing:antialiased;padding-right:5px;font-size:14px;color:#888}.footable.breakpoint>tbody>tr>td>span.footable-toggle:before{content:"\e000"}.footable.breakpoint.toggle-circle>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e005"}.footable.breakpoint.toggle-circle>tbody>tr>td>span.footable-toggle:before{content:"\e004"}.footable.breakpoint.toggle-circle-filled>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e003"}.footable.breakpoint.toggle-circle-filled>tbody>tr>td>span.footable-toggle:before{content:"\e002"}.footable.breakpoint.toggle-square>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e007"}.footable.breakpoint.toggle-square>tbody>tr>td>span.footable-toggle:before{content:"\e006"}.footable.breakpoint.toggle-square-filled>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e009"}.footable.breakpoint.toggle-square-filled>tbody>tr>td>span.footable-toggle:before{content:"\e008"}.footable.breakpoint.toggle-arrow>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e00f"}.footable.breakpoint.toggle-arrow>tbody>tr>td>span.footable-toggle:before{content:"\e011"}.footable.breakpoint.toggle-arrow-small>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e013"}.footable.breakpoint.toggle-arrow-small>tbody>tr>td>span.footable-toggle:before{content:"\e015"}.footable.breakpoint.toggle-arrow-circle>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e01b"}.footable.breakpoint.toggle-arrow-circle>tbody>tr>td>span.footable-toggle:before{content:"\e01d"}.footable.breakpoint.toggle-arrow-circle-filled>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e00b"}.footable.breakpoint.toggle-arrow-circle-filled>tbody>tr>td>span.footable-toggle:before{content:"\e00d"}.footable.breakpoint.toggle-arrow-tiny>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e01f"}.footable.breakpoint.toggle-arrow-tiny>tbody>tr>td>span.footable-toggle:before{content:"\e021"}.footable.breakpoint.toggle-arrow-alt>tbody>tr.footable-detail-show>td>span.footable-toggle:before{content:"\e017"}.footable.breakpoint.toggle-arrow-alt>tbody>tr>td>span.footable-toggle:before{content:"\e019"}.footable.breakpoint.toggle-medium>tbody>tr>td>span.footable-toggle{font-size:18px}.footable.breakpoint.toggle-large>tbody>tr>td>span.footable-toggle{font-size:24px}.footable>thead>tr>th{-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:-moz-none;-ms-user-select:none;user-select:none}.footable>thead>tr>th.footable-sortable:hover{cursor:pointer}.footable>thead>tr>th.footable-sorted>span.footable-sort-indicator:before{content:"\e013"}.footable>thead>tr>th.footable-sorted-desc>span.footable-sort-indicator:before{content:"\e012"}.footable>thead>tr>th>span.footable-sort-indicator{display:inline-block;font-family:'footable';speak:none;font-style:normal;font-weight:normal;font-variant:normal;text-transform:none;-webkit-font-smoothing:antialiased;padding-left:5px}.footable>thead>tr>th>span.footable-sort-indicator:before{content:"\e022"}.footable>tfoot .pagination{margin:0}.footable.no-paging .hide-if-no-paging{display:none}.footable-row-detail-inner{display:table}.footable-row-detail-row{display:table-row;line-height:1.5em}.footable-row-detail-group{display:block;line-height:2em;font-size:1.2em;font-weight:bold}.footable-row-detail-name{display:table-cell;font-weight:bold;padding-right:.5em}.footable-row-detail-value{display:table-cell}.footable-odd{background-color:#f7f7f7}
/*!
 *  Font Awesome 4.1.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */@font-face{font-family:'FontAwesome';src:url('{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.eot?v=4.1.0');src:url('{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.eot?#iefix&v=4.1.0') format('embedded-opentype'),url('{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.woff?v=4.1.0') format('woff'),url('{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.ttf?v=4.1.0') format('truetype'),url('{T_THEME_PATH}/font-awesome/fonts/fontawesome-webfont.svg?v=4.1.0#fontawesomeregular') format('svg');font-weight:normal;font-style:normal}.fa{display:inline-block;font-family:FontAwesome;font-style:normal;font-weight:normal;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:spin 2s infinite linear;-moz-animation:spin 2s infinite linear;-o-animation:spin 2s infinite linear;animation:spin 2s infinite linear}@-moz-keyframes spin{0%{-moz-transform:rotate(0deg)}100%{-moz-transform:rotate(359deg)}}@-webkit-keyframes spin{0%{-webkit-transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg)}}@-o-keyframes spin{0%{-o-transform:rotate(0deg)}100%{-o-transform:rotate(359deg)}}@keyframes spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=1);-webkit-transform:rotate(90deg);-moz-transform:rotate(90deg);-ms-transform:rotate(90deg);-o-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=2);-webkit-transform:rotate(180deg);-moz-transform:rotate(180deg);-ms-transform:rotate(180deg);-o-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=3);-webkit-transform:rotate(270deg);-moz-transform:rotate(270deg);-ms-transform:rotate(270deg);-o-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1);-webkit-transform:scale(-1, 1);-moz-transform:scale(-1, 1);-ms-transform:scale(-1, 1);-o-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1);-webkit-transform:scale(1, -1);-moz-transform:scale(1, -1);-ms-transform:scale(1, -1);-o-transform:scale(1, -1);transform:scale(1, -1)}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:"\f000"}.fa-music:before{content:"\f001"}.fa-search:before{content:"\f002"}.fa-envelope-o:before{content:"\f003"}.fa-heart:before{content:"\f004"}.fa-star:before{content:"\f005"}.fa-star-o:before{content:"\f006"}.fa-user:before{content:"\f007"}.fa-film:before{content:"\f008"}.fa-th-large:before{content:"\f009"}.fa-th:before{content:"\f00a"}.fa-th-list:before{content:"\f00b"}.fa-check:before{content:"\f00c"}.fa-times:before{content:"\f00d"}.fa-search-plus:before{content:"\f00e"}.fa-search-minus:before{content:"\f010"}.fa-power-off:before{content:"\f011"}.fa-signal:before{content:"\f012"}.fa-gear:before,.fa-cog:before{content:"\f013"}.fa-trash-o:before{content:"\f014"}.fa-home:before{content:"\f015"}.fa-file-o:before{content:"\f016"}.fa-clock-o:before{content:"\f017"}.fa-road:before{content:"\f018"}.fa-download:before{content:"\f019"}.fa-arrow-circle-o-down:before{content:"\f01a"}.fa-arrow-circle-o-up:before{content:"\f01b"}.fa-inbox:before{content:"\f01c"}.fa-play-circle-o:before{content:"\f01d"}.fa-rotate-right:before,.fa-repeat:before{content:"\f01e"}.fa-refresh:before{content:"\f021"}.fa-list-alt:before{content:"\f022"}.fa-lock:before{content:"\f023"}.fa-flag:before{content:"\f024"}.fa-headphones:before{content:"\f025"}.fa-volume-off:before{content:"\f026"}.fa-volume-down:before{content:"\f027"}.fa-volume-up:before{content:"\f028"}.fa-qrcode:before{content:"\f029"}.fa-barcode:before{content:"\f02a"}.fa-tag:before{content:"\f02b"}.fa-tags:before{content:"\f02c"}.fa-book:before{content:"\f02d"}.fa-bookmark:before{content:"\f02e"}.fa-print:before{content:"\f02f"}.fa-camera:before{content:"\f030"}.fa-font:before{content:"\f031"}.fa-bold:before{content:"\f032"}.fa-italic:before{content:"\f033"}.fa-text-height:before{content:"\f034"}.fa-text-width:before{content:"\f035"}.fa-align-left:before{content:"\f036"}.fa-align-center:before{content:"\f037"}.fa-align-right:before{content:"\f038"}.fa-align-justify:before{content:"\f039"}.fa-list:before{content:"\f03a"}.fa-dedent:before,.fa-outdent:before{content:"\f03b"}.fa-indent:before{content:"\f03c"}.fa-video-camera:before{content:"\f03d"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:"\f03e"}.fa-pencil:before{content:"\f040"}.fa-map-marker:before{content:"\f041"}.fa-adjust:before{content:"\f042"}.fa-tint:before{content:"\f043"}.fa-edit:before,.fa-pencil-square-o:before{content:"\f044"}.fa-share-square-o:before{content:"\f045"}.fa-check-square-o:before{content:"\f046"}.fa-arrows:before{content:"\f047"}.fa-step-backward:before{content:"\f048"}.fa-fast-backward:before{content:"\f049"}.fa-backward:before{content:"\f04a"}.fa-play:before{content:"\f04b"}.fa-pause:before{content:"\f04c"}.fa-stop:before{content:"\f04d"}.fa-forward:before{content:"\f04e"}.fa-fast-forward:before{content:"\f050"}.fa-step-forward:before{content:"\f051"}.fa-eject:before{content:"\f052"}.fa-chevron-left:before{content:"\f053"}.fa-chevron-right:before{content:"\f054"}.fa-plus-circle:before{content:"\f055"}.fa-minus-circle:before{content:"\f056"}.fa-times-circle:before{content:"\f057"}.fa-check-circle:before{content:"\f058"}.fa-question-circle:before{content:"\f059"}.fa-info-circle:before{content:"\f05a"}.fa-crosshairs:before{content:"\f05b"}.fa-times-circle-o:before{content:"\f05c"}.fa-check-circle-o:before{content:"\f05d"}.fa-ban:before{content:"\f05e"}.fa-arrow-left:before{content:"\f060"}.fa-arrow-right:before{content:"\f061"}.fa-arrow-up:before{content:"\f062"}.fa-arrow-down:before{content:"\f063"}.fa-mail-forward:before,.fa-share:before{content:"\f064"}.fa-expand:before{content:"\f065"}.fa-compress:before{content:"\f066"}.fa-plus:before{content:"\f067"}.fa-minus:before{content:"\f068"}.fa-asterisk:before{content:"\f069"}.fa-exclamation-circle:before{content:"\f06a"}.fa-gift:before{content:"\f06b"}.fa-leaf:before{content:"\f06c"}.fa-fire:before{content:"\f06d"}.fa-eye:before{content:"\f06e"}.fa-eye-slash:before{content:"\f070"}.fa-warning:before,.fa-exclamation-triangle:before{content:"\f071"}.fa-plane:before{content:"\f072"}.fa-calendar:before{content:"\f073"}.fa-random:before{content:"\f074"}.fa-comment:before{content:"\f075"}.fa-magnet:before{content:"\f076"}.fa-chevron-up:before{content:"\f077"}.fa-chevron-down:before{content:"\f078"}.fa-retweet:before{content:"\f079"}.fa-shopping-cart:before{content:"\f07a"}.fa-folder:before{content:"\f07b"}.fa-folder-open:before{content:"\f07c"}.fa-arrows-v:before{content:"\f07d"}.fa-arrows-h:before{content:"\f07e"}.fa-bar-chart-o:before{content:"\f080"}.fa-twitter-square:before{content:"\f081"}.fa-facebook-square:before{content:"\f082"}.fa-camera-retro:before{content:"\f083"}.fa-key:before{content:"\f084"}.fa-gears:before,.fa-cogs:before{content:"\f085"}.fa-comments:before{content:"\f086"}.fa-thumbs-o-up:before{content:"\f087"}.fa-thumbs-o-down:before{content:"\f088"}.fa-star-half:before{content:"\f089"}.fa-heart-o:before{content:"\f08a"}.fa-sign-out:before{content:"\f08b"}.fa-linkedin-square:before{content:"\f08c"}.fa-thumb-tack:before{content:"\f08d"}.fa-external-link:before{content:"\f08e"}.fa-sign-in:before{content:"\f090"}.fa-trophy:before{content:"\f091"}.fa-github-square:before{content:"\f092"}.fa-upload:before{content:"\f093"}.fa-lemon-o:before{content:"\f094"}.fa-phone:before{content:"\f095"}.fa-square-o:before{content:"\f096"}.fa-bookmark-o:before{content:"\f097"}.fa-phone-square:before{content:"\f098"}.fa-twitter:before{content:"\f099"}.fa-facebook:before{content:"\f09a"}.fa-github:before{content:"\f09b"}.fa-unlock:before{content:"\f09c"}.fa-credit-card:before{content:"\f09d"}.fa-rss:before{content:"\f09e"}.fa-hdd-o:before{content:"\f0a0"}.fa-bullhorn:before{content:"\f0a1"}.fa-bell:before{content:"\f0f3"}.fa-certificate:before{content:"\f0a3"}.fa-hand-o-right:before{content:"\f0a4"}.fa-hand-o-left:before{content:"\f0a5"}.fa-hand-o-up:before{content:"\f0a6"}.fa-hand-o-down:before{content:"\f0a7"}.fa-arrow-circle-left:before{content:"\f0a8"}.fa-arrow-circle-right:before{content:"\f0a9"}.fa-arrow-circle-up:before{content:"\f0aa"}.fa-arrow-circle-down:before{content:"\f0ab"}.fa-globe:before{content:"\f0ac"}.fa-wrench:before{content:"\f0ad"}.fa-tasks:before{content:"\f0ae"}.fa-filter:before{content:"\f0b0"}.fa-briefcase:before{content:"\f0b1"}.fa-arrows-alt:before{content:"\f0b2"}.fa-group:before,.fa-users:before{content:"\f0c0"}.fa-chain:before,.fa-link:before{content:"\f0c1"}.fa-cloud:before{content:"\f0c2"}.fa-flask:before{content:"\f0c3"}.fa-cut:before,.fa-scissors:before{content:"\f0c4"}.fa-copy:before,.fa-files-o:before{content:"\f0c5"}.fa-paperclip:before{content:"\f0c6"}.fa-save:before,.fa-floppy-o:before{content:"\f0c7"}.fa-square:before{content:"\f0c8"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:"\f0c9"}.fa-list-ul:before{content:"\f0ca"}.fa-list-ol:before{content:"\f0cb"}.fa-strikethrough:before{content:"\f0cc"}.fa-underline:before{content:"\f0cd"}.fa-table:before{content:"\f0ce"}.fa-magic:before{content:"\f0d0"}.fa-truck:before{content:"\f0d1"}.fa-pinterest:before{content:"\f0d2"}.fa-pinterest-square:before{content:"\f0d3"}.fa-google-plus-square:before{content:"\f0d4"}.fa-google-plus:before{content:"\f0d5"}.fa-money:before{content:"\f0d6"}.fa-caret-down:before{content:"\f0d7"}.fa-caret-up:before{content:"\f0d8"}.fa-caret-left:before{content:"\f0d9"}.fa-caret-right:before{content:"\f0da"}.fa-columns:before{content:"\f0db"}.fa-unsorted:before,.fa-sort:before{content:"\f0dc"}.fa-sort-down:before,.fa-sort-desc:before{content:"\f0dd"}.fa-sort-up:before,.fa-sort-asc:before{content:"\f0de"}.fa-envelope:before{content:"\f0e0"}.fa-linkedin:before{content:"\f0e1"}.fa-rotate-left:before,.fa-undo:before{content:"\f0e2"}.fa-legal:before,.fa-gavel:before{content:"\f0e3"}.fa-dashboard:before,.fa-tachometer:before{content:"\f0e4"}.fa-comment-o:before{content:"\f0e5"}.fa-comments-o:before{content:"\f0e6"}.fa-flash:before,.fa-bolt:before{content:"\f0e7"}.fa-sitemap:before{content:"\f0e8"}.fa-umbrella:before{content:"\f0e9"}.fa-paste:before,.fa-clipboard:before{content:"\f0ea"}.fa-lightbulb-o:before{content:"\f0eb"}.fa-exchange:before{content:"\f0ec"}.fa-cloud-download:before{content:"\f0ed"}.fa-cloud-upload:before{content:"\f0ee"}.fa-user-md:before{content:"\f0f0"}.fa-stethoscope:before{content:"\f0f1"}.fa-suitcase:before{content:"\f0f2"}.fa-bell-o:before{content:"\f0a2"}.fa-coffee:before{content:"\f0f4"}.fa-cutlery:before{content:"\f0f5"}.fa-file-text-o:before{content:"\f0f6"}.fa-building-o:before{content:"\f0f7"}.fa-hospital-o:before{content:"\f0f8"}.fa-ambulance:before{content:"\f0f9"}.fa-medkit:before{content:"\f0fa"}.fa-fighter-jet:before{content:"\f0fb"}.fa-beer:before{content:"\f0fc"}.fa-h-square:before{content:"\f0fd"}.fa-plus-square:before{content:"\f0fe"}.fa-angle-double-left:before{content:"\f100"}.fa-angle-double-right:before{content:"\f101"}.fa-angle-double-up:before{content:"\f102"}.fa-angle-double-down:before{content:"\f103"}.fa-angle-left:before{content:"\f104"}.fa-angle-right:before{content:"\f105"}.fa-angle-up:before{content:"\f106"}.fa-angle-down:before{content:"\f107"}.fa-desktop:before{content:"\f108"}.fa-laptop:before{content:"\f109"}.fa-tablet:before{content:"\f10a"}.fa-mobile-phone:before,.fa-mobile:before{content:"\f10b"}.fa-circle-o:before{content:"\f10c"}.fa-quote-left:before{content:"\f10d"}.fa-quote-right:before{content:"\f10e"}.fa-spinner:before{content:"\f110"}.fa-circle:before{content:"\f111"}.fa-mail-reply:before,.fa-reply:before{content:"\f112"}.fa-github-alt:before{content:"\f113"}.fa-folder-o:before{content:"\f114"}.fa-folder-open-o:before{content:"\f115"}.fa-smile-o:before{content:"\f118"}.fa-frown-o:before{content:"\f119"}.fa-meh-o:before{content:"\f11a"}.fa-gamepad:before{content:"\f11b"}.fa-keyboard-o:before{content:"\f11c"}.fa-flag-o:before{content:"\f11d"}.fa-flag-checkered:before{content:"\f11e"}.fa-terminal:before{content:"\f120"}.fa-code:before{content:"\f121"}.fa-mail-reply-all:before,.fa-reply-all:before{content:"\f122"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:"\f123"}.fa-location-arrow:before{content:"\f124"}.fa-crop:before{content:"\f125"}.fa-code-fork:before{content:"\f126"}.fa-unlink:before,.fa-chain-broken:before{content:"\f127"}.fa-question:before{content:"\f128"}.fa-info:before{content:"\f129"}.fa-exclamation:before{content:"\f12a"}.fa-superscript:before{content:"\f12b"}.fa-subscript:before{content:"\f12c"}.fa-eraser:before{content:"\f12d"}.fa-puzzle-piece:before{content:"\f12e"}.fa-microphone:before{content:"\f130"}.fa-microphone-slash:before{content:"\f131"}.fa-shield:before{content:"\f132"}.fa-calendar-o:before{content:"\f133"}.fa-fire-extinguisher:before{content:"\f134"}.fa-rocket:before{content:"\f135"}.fa-maxcdn:before{content:"\f136"}.fa-chevron-circle-left:before{content:"\f137"}.fa-chevron-circle-right:before{content:"\f138"}.fa-chevron-circle-up:before{content:"\f139"}.fa-chevron-circle-down:before{content:"\f13a"}.fa-html5:before{content:"\f13b"}.fa-css3:before{content:"\f13c"}.fa-anchor:before{content:"\f13d"}.fa-unlock-alt:before{content:"\f13e"}.fa-bullseye:before{content:"\f140"}.fa-ellipsis-h:before{content:"\f141"}.fa-ellipsis-v:before{content:"\f142"}.fa-rss-square:before{content:"\f143"}.fa-play-circle:before{content:"\f144"}.fa-ticket:before{content:"\f145"}.fa-minus-square:before{content:"\f146"}.fa-minus-square-o:before{content:"\f147"}.fa-level-up:before{content:"\f148"}.fa-level-down:before{content:"\f149"}.fa-check-square:before{content:"\f14a"}.fa-pencil-square:before{content:"\f14b"}.fa-external-link-square:before{content:"\f14c"}.fa-share-square:before{content:"\f14d"}.fa-compass:before{content:"\f14e"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:"\f150"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:"\f151"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:"\f152"}.fa-euro:before,.fa-eur:before{content:"\f153"}.fa-gbp:before{content:"\f154"}.fa-dollar:before,.fa-usd:before{content:"\f155"}.fa-rupee:before,.fa-inr:before{content:"\f156"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:"\f157"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:"\f158"}.fa-won:before,.fa-krw:before{content:"\f159"}.fa-bitcoin:before,.fa-btc:before{content:"\f15a"}.fa-file:before{content:"\f15b"}.fa-file-text:before{content:"\f15c"}.fa-sort-alpha-asc:before{content:"\f15d"}.fa-sort-alpha-desc:before{content:"\f15e"}.fa-sort-amount-asc:before{content:"\f160"}.fa-sort-amount-desc:before{content:"\f161"}.fa-sort-numeric-asc:before{content:"\f162"}.fa-sort-numeric-desc:before{content:"\f163"}.fa-thumbs-up:before{content:"\f164"}.fa-thumbs-down:before{content:"\f165"}.fa-youtube-square:before{content:"\f166"}.fa-youtube:before{content:"\f167"}.fa-xing:before{content:"\f168"}.fa-xing-square:before{content:"\f169"}.fa-youtube-play:before{content:"\f16a"}.fa-dropbox:before{content:"\f16b"}.fa-stack-overflow:before{content:"\f16c"}.fa-instagram:before{content:"\f16d"}.fa-flickr:before{content:"\f16e"}.fa-adn:before{content:"\f170"}.fa-bitbucket:before{content:"\f171"}.fa-bitbucket-square:before{content:"\f172"}.fa-tumblr:before{content:"\f173"}.fa-tumblr-square:before{content:"\f174"}.fa-long-arrow-down:before{content:"\f175"}.fa-long-arrow-up:before{content:"\f176"}.fa-long-arrow-left:before{content:"\f177"}.fa-long-arrow-right:before{content:"\f178"}.fa-apple:before{content:"\f179"}.fa-windows:before{content:"\f17a"}.fa-android:before{content:"\f17b"}.fa-linux:before{content:"\f17c"}.fa-dribbble:before{content:"\f17d"}.fa-skype:before{content:"\f17e"}.fa-foursquare:before{content:"\f180"}.fa-trello:before{content:"\f181"}.fa-female:before{content:"\f182"}.fa-male:before{content:"\f183"}.fa-gittip:before{content:"\f184"}.fa-sun-o:before{content:"\f185"}.fa-moon-o:before{content:"\f186"}.fa-archive:before{content:"\f187"}.fa-bug:before{content:"\f188"}.fa-vk:before{content:"\f189"}.fa-weibo:before{content:"\f18a"}.fa-renren:before{content:"\f18b"}.fa-pagelines:before{content:"\f18c"}.fa-stack-exchange:before{content:"\f18d"}.fa-arrow-circle-o-right:before{content:"\f18e"}.fa-arrow-circle-o-left:before{content:"\f190"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:"\f191"}.fa-dot-circle-o:before{content:"\f192"}.fa-wheelchair:before{content:"\f193"}.fa-vimeo-square:before{content:"\f194"}.fa-turkish-lira:before,.fa-try:before{content:"\f195"}.fa-plus-square-o:before{content:"\f196"}.fa-space-shuttle:before{content:"\f197"}.fa-slack:before{content:"\f198"}.fa-envelope-square:before{content:"\f199"}.fa-wordpress:before{content:"\f19a"}.fa-openid:before{content:"\f19b"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:"\f19c"}.fa-mortar-board:before,.fa-graduation-cap:before{content:"\f19d"}.fa-yahoo:before{content:"\f19e"}.fa-google:before{content:"\f1a0"}.fa-reddit:before{content:"\f1a1"}.fa-reddit-square:before{content:"\f1a2"}.fa-stumbleupon-circle:before{content:"\f1a3"}.fa-stumbleupon:before{content:"\f1a4"}.fa-delicious:before{content:"\f1a5"}.fa-digg:before{content:"\f1a6"}.fa-pied-piper-square:before,.fa-pied-piper:before{content:"\f1a7"}.fa-pied-piper-alt:before{content:"\f1a8"}.fa-drupal:before{content:"\f1a9"}.fa-joomla:before{content:"\f1aa"}.fa-language:before{content:"\f1ab"}.fa-fax:before{content:"\f1ac"}.fa-building:before{content:"\f1ad"}.fa-child:before{content:"\f1ae"}.fa-paw:before{content:"\f1b0"}.fa-spoon:before{content:"\f1b1"}.fa-cube:before{content:"\f1b2"}.fa-cubes:before{content:"\f1b3"}.fa-behance:before{content:"\f1b4"}.fa-behance-square:before{content:"\f1b5"}.fa-steam:before{content:"\f1b6"}.fa-steam-square:before{content:"\f1b7"}.fa-recycle:before{content:"\f1b8"}.fa-automobile:before,.fa-car:before{content:"\f1b9"}.fa-cab:before,.fa-taxi:before{content:"\f1ba"}.fa-tree:before{content:"\f1bb"}.fa-spotify:before{content:"\f1bc"}.fa-deviantart:before{content:"\f1bd"}.fa-soundcloud:before{content:"\f1be"}.fa-database:before{content:"\f1c0"}.fa-file-pdf-o:before{content:"\f1c1"}.fa-file-word-o:before{content:"\f1c2"}.fa-file-excel-o:before{content:"\f1c3"}.fa-file-powerpoint-o:before{content:"\f1c4"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:"\f1c5"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:"\f1c6"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:"\f1c7"}.fa-file-movie-o:before,.fa-file-video-o:before{content:"\f1c8"}.fa-file-code-o:before{content:"\f1c9"}.fa-vine:before{content:"\f1ca"}.fa-codepen:before{content:"\f1cb"}.fa-jsfiddle:before{content:"\f1cc"}.fa-life-bouy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:"\f1cd"}.fa-circle-o-notch:before{content:"\f1ce"}.fa-ra:before,.fa-rebel:before{content:"\f1d0"}.fa-ge:before,.fa-empire:before{content:"\f1d1"}.fa-git-square:before{content:"\f1d2"}.fa-git:before{content:"\f1d3"}.fa-hacker-news:before{content:"\f1d4"}.fa-tencent-weibo:before{content:"\f1d5"}.fa-qq:before{content:"\f1d6"}.fa-wechat:before,.fa-weixin:before{content:"\f1d7"}.fa-send:before,.fa-paper-plane:before{content:"\f1d8"}.fa-send-o:before,.fa-paper-plane-o:before{content:"\f1d9"}.fa-history:before{content:"\f1da"}.fa-circle-thin:before{content:"\f1db"}.fa-header:before{content:"\f1dc"}.fa-paragraph:before{content:"\f1dd"}.fa-sliders:before{content:"\f1de"}.fa-share-alt:before{content:"\f1e0"}.fa-share-alt-square:before{content:"\f1e1"}.fa-bomb:before{content:"\f1e2"}
@font-face{font-family:'icomoon';src:url('{T_THEME_PATH}/iconmoon/fonts/icomoon.eot?shasme');src:url('{T_THEME_PATH}/iconmoon/fonts/icomoon.eot?#iefixshasme') format('embedded-opentype'),url('{T_THEME_PATH}/iconmoon/fonts/icomoon.woff?shasme') format('woff'),url('{T_THEME_PATH}/iconmoon/fonts/icomoon.ttf?shasme') format('truetype'),url('{T_THEME_PATH}/iconmoon/fonts/icomoon.svg?shasme#icomoon') format('svg');font-weight:normal;font-style:normal}[class^="icon-moon-"],[class*=" icon-moon-"]{font-family:'icomoon';speak:none;font-style:normal;font-weight:normal;font-variant:normal;text-transform:none;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.icon-moon-infinity:before{content:"\e672"}.icon-moon-uniF6DF:before{content:"\e673"}.icon-moon-uniF73A:before{content:"\e64d"}.icon-moon-uniF73B:before{content:"\e64e"}.icon-moon-uniF73C:before{content:"\e64f"}.icon-moon-uniF73D:before{content:"\e650"}.icon-moon-uniF73E:before{content:"\e651"}.icon-moon-uniF73F:before{content:"\e652"}.icon-moon-uniF740:before{content:"\e653"}.icon-moon-uniF746:before{content:"\e65b"}.icon-moon-uniF644:before{content:"\e65a"}.icon-moon-uniF64B:before{content:"\e65c"}.icon-moon-uniF64C:before{content:"\e65d"}.icon-moon-uniF64D:before{content:"\e65e"}.icon-moon-uniF64E:before{content:"\e65f"}.icon-moon-uniF5EB:before{content:"\e661"}.icon-moon-uniF5DA:before{content:"\e64c"}.icon-moon-uniF4A2:before{content:"\e64b"}.icon-moon-uniF4A3:before{content:"\e64a"}.icon-moon-uniF4B8:before{content:"\e674"}.icon-moon-uniF47C:before{content:"\e686"}.icon-moon-uniF47D:before{content:"\e67e"}.icon-moon-superman:before{content:"\e649"}.icon-moon-captainamerica:before{content:"\e648"}.icon-moon-spiderman:before{content:"\e647"}.icon-moon-batman:before{content:"\e646"}.icon-moon-ironman:before{content:"\e645"}.icon-moon-darthvader:before{content:"\e644"}.icon-moon-residentevil:before{content:"\e675"}.icon-moon-favoritefile:before{content:"\e643"}.icon-moon-favoritefolder:before{content:"\e642"}.icon-moon-addtocart:before{content:"\e641"}.icon-moon-emptycart:before{content:"\e640"}.icon-moon-keyboarddelete:before{content:"\e654"}.icon-moon-oneup:before{content:"\e63f"}.icon-moon-alienware:before{content:"\e660"}.icon-moon-link:before{content:"\e676"}.icon-moon-protecteddirectory:before{content:"\e662"}.icon-moon-ruby:before{content:"\e63e"}.icon-moon-ipcontrol:before{content:"\e63d"}.icon-moon-mailinglists:before{content:"\e687"}.icon-moon-filemanager:before{content:"\e63c"}.icon-moon-legacyfilemanager:before{content:"\e63b"}.icon-moon-plugin2:before{content:"\e63a"}.icon-moon-php:before{content:"\e639"}.icon-moon-lock:before{content:"\e663"}.icon-moon-unlock:before{content:"\e664"}.icon-moon-rawaccesslogs:before{content:"\e688"}.icon-moon-addfolder:before{content:"\e638"}.icon-moon-deletefolder:before{content:"\e637"}.icon-moon-bookmark:before{content:"\e636"}.icon-moon-newwindow:before{content:"\e635"}.icon-moon-closewindow:before{content:"\e634"}.icon-moon-newtab:before{content:"\e632"}.icon-moon-closetab:before{content:"\e633"}.icon-moon-reademail:before{content:"\e631"}.icon-moon-emailrefresh:before{content:"\e630"}.icon-moon-emailforward:before{content:"\e62f"}.icon-moon-emailexport:before{content:"\e62e"}.icon-moon-emailimport:before{content:"\e62d"}.icon-moon-outbox:before{content:"\e67f"}.icon-moon-voice:before{content:"\e677"}.icon-moon-podcast:before{content:"\e678"}.icon-moon-brush:before{content:"\e665"}.icon-moon-palette:before{content:"\e666"}.icon-moon-insertpictureleft:before{content:"\e667"}.icon-moon-insertpictureright:before{content:"\e668"}.icon-moon-insertpiechart:before{content:"\e669"}.icon-moon-insertbarchart:before{content:"\e66a"}.icon-moon-clearformatting:before{content:"\e66b"}.icon-moon-coffee:before{content:"\e66c"}.icon-moon-paypal:before{content:"\e66d"}.icon-moon-flask:before{content:"\e66e"}.icon-moon-flaskfull:before{content:"\e66f"}.icon-moon-fire:before{content:"\e670"}.icon-moon-radioactive:before{content:"\e671"}.icon-moon-megaphone:before{content:"\e679"}.icon-moon-rocket:before{content:"\e67a"}.icon-moon-orange:before{content:"\e67b"}.icon-moon-woman:before{content:"\e67c"}.icon-moon-man:before{content:"\e67d"}.icon-moon-psbuttoncircle:before{content:"\e617"}.icon-moon-psbuttonsquare:before{content:"\e618"}.icon-moon-psbuttontriangle:before{content:"\e619"}.icon-moon-psbuttonx:before{content:"\e61a"}.icon-moon-buttona:before{content:"\e61b"}.icon-moon-buttonb:before{content:"\e61c"}.icon-moon-buttonx:before{content:"\e61d"}.icon-moon-buttony:before{content:"\e61e"}.icon-moon-pscursor:before{content:"\e614"}.icon-moon-psup:before{content:"\e615"}.icon-moon-psright:before{content:"\e616"}.icon-moon-psdown:before{content:"\e624"}.icon-moon-psleft:before{content:"\e623"}.icon-moon-analogleft:before{content:"\e622"}.icon-moon-analogright:before{content:"\e621"}.icon-moon-analogup:before{content:"\e620"}.icon-moon-analogdown:before{content:"\e61f"}.icon-moon-psl1:before{content:"\e602"}.icon-moon-psl2:before{content:"\e603"}.icon-moon-psr1:before{content:"\e604"}.icon-moon-psr2:before{content:"\e605"}.icon-moon-gamecursor:before{content:"\e606"}.icon-moon-controllerps:before{content:"\e607"}.icon-moon-controllernes:before{content:"\e608"}.icon-moon-controllersnes:before{content:"\e609"}.icon-moon-joystickarcade:before{content:"\e60a"}.icon-moon-joystickatari:before{content:"\e60b"}.icon-moon-podium:before{content:"\e60c"}.icon-moon-trophy:before{content:"\e60d"}.icon-moon-die:before{content:"\e60e"}.icon-moon-ghost:before{content:"\e60f"}.icon-moon-steam:before{content:"\e610"}.icon-moon-starempty:before{content:"\e611"}.icon-moon-starhalf:before{content:"\e612"}.icon-moon-starfull:before{content:"\e613"}.icon-moon-lifeempty:before{content:"\e62c"}.icon-moon-lifehalf:before{content:"\e62b"}.icon-moon-lifefull:before{content:"\e62a"}.icon-moon-warmedal:before{content:"\e625"}.icon-moon-medal:before{content:"\e626"}.icon-moon-medalgold:before{content:"\e627"}.icon-moon-medalsilver:before{content:"\e628"}.icon-moon-medalbronze:before{content:"\e629"}.icon-moon-checkbox:before{content:"\e655"}.icon-moon-checkbox2:before{content:"\e656"}.icon-moon-radiobutton:before{content:"\e657"}.icon-moon-fastleft:before{content:"\e680"}.icon-moon-fastright:before{content:"\e681"}.icon-moon-fastup:before{content:"\e682"}.icon-moon-fastdown:before{content:"\e683"}.icon-moon-back:before{content:"\e684"}.icon-moon-forward:before{content:"\e685"}.icon-moon-lightbulb:before{content:"\e658"}.icon-moon-diamond:before{content:"\e659"}.icon-moon-forjq:before{content:"\e600"}.icon-moon-forphp:before{content:"\e601"}.icon-moon-none:before{content:"\e000"}.icon-moon-bootstrap:before{content:"\e001"}.icon-moon-less_c:before{content:"\e002"}.icon-moon-w3c:before{content:"\e003"}.icon-moon-pencil:before{content:"\e004"}.icon-moon-pencil2:before{content:"\e005"}.icon-moon-image2:before{content:"\e006"}.icon-moon-image3:before{content:"\e007"}.icon-moon-images:before{content:"\e008"}.icon-moon-pacman:before{content:"\e009"}.icon-moon-tags:before{content:"\e00d"}.icon-moon-tag:before{content:"\e00e"}.icon-moon-folder-open:before{content:"\e00f"}.icon-moon-folder:before{content:"\e010"}.icon-moon-library:before{content:"\e011"}.icon-moon-feed:before{content:"\e012"}.icon-moon-podcast2:before{content:"\e013"}.icon-moon-connection:before{content:"\e014"}.icon-moon-coin:before{content:"\e015"}.icon-moon-pushpin:before{content:"\e016"}.icon-moon-location2:before{content:"\e017"}.icon-moon-location:before{content:"\e018"}.icon-moon-map:before{content:"\e019"}.icon-moon-map2:before{content:"\e01a"}.icon-moon-history:before{content:"\e01b"}.icon-moon-clock:before{content:"\e01c"}.icon-moon-clock2:before{content:"\e01d"}.icon-moon-alarm:before{content:"\e01e"}.icon-moon-alarm2:before{content:"\e01f"}.icon-moon-stopwatch:before{content:"\e020"}.icon-moon-bell:before{content:"\e021"}.icon-moon-calendar:before{content:"\e022"}.icon-moon-calendar2:before{content:"\e023"}.icon-moon-screen:before{content:"\e024"}.icon-moon-laptop:before{content:"\e025"}.icon-moon-mobile:before{content:"\e026"}.icon-moon-mobile2:before{content:"\e027"}.icon-moon-tablet:before{content:"\e028"}.icon-moon-tv:before{content:"\e029"}.icon-moon-spinner4:before{content:"\e02a"}.icon-moon-busy:before{content:"\e02b"}.icon-moon-spinner5:before{content:"\e02c"}.icon-moon-spinner6:before{content:"\e02d"}.icon-moon-spinner3:before{content:"\e02e"}.icon-moon-spinner2:before{content:"\e02f"}.icon-moon-spinner:before{content:"\e030"}.icon-moon-redo:before{content:"\e031"}.icon-moon-undo:before{content:"\e032"}.icon-moon-zoom-out:before{content:"\e033"}.icon-moon-zoom-in:before{content:"\e034"}.icon-moon-search:before{content:"\e035"}.icon-moon-quotes-left:before{content:"\e036"}.icon-moon-users:before{content:"\e037"}.icon-moon-user:before{content:"\e038"}.icon-moon-users2:before{content:"\e039"}.icon-moon-user2:before{content:"\e03a"}.icon-moon-bubbles:before{content:"\e03b"}.icon-moon-bubbles2:before{content:"\e03c"}.icon-moon-bubble:before{content:"\e03d"}.icon-moon-bubbles3:before{content:"\e03e"}.icon-moon-bubble2:before{content:"\e03f"}.icon-moon-bubbles4:before{content:"\e040"}.icon-moon-wand:before{content:"\e041"}.icon-moon-stats:before{content:"\e042"}.icon-moon-bars:before{content:"\e043"}.icon-moon-bars2:before{content:"\e044"}.icon-moon-list2:before{content:"\e045"}.icon-moon-list3:before{content:"\e046"}.icon-moon-numbered-list:before{content:"\e047"}.icon-moon-menu2:before{content:"\e048"}.icon-moon-menu:before{content:"\e049"}.icon-moon-link2:before{content:"\e04a"}.icon-moon-earth:before{content:"\e04b"}.icon-moon-happy:before{content:"\e04c"}.icon-moon-happy2:before{content:"\e04d"}.icon-moon-smiley:before{content:"\e04e"}.icon-moon-smiley2:before{content:"\e04f"}.icon-moon-tongue:before{content:"\e050"}.icon-moon-tongue2:before{content:"\e051"}.icon-moon-sad:before{content:"\e052"}.icon-moon-sad2:before{content:"\e053"}.icon-moon-wink:before{content:"\e054"}.icon-moon-wink2:before{content:"\e055"}.icon-moon-grin:before{content:"\e056"}.icon-moon-grin2:before{content:"\e057"}.icon-moon-cool:before{content:"\e058"}.icon-moon-eye:before{content:"\e059"}.icon-moon-eye-blocked:before{content:"\e05a"}.icon-moon-eye2:before{content:"\e05b"}.icon-moon-switch2:before{content:"\e05c"}.icon-moon-angry:before{content:"\e05d"}.icon-moon-angry2:before{content:"\e05e"}.icon-moon-cool2:before{content:"\e05f"}.icon-moon-evil:before{content:"\e060"}.icon-moon-evil2:before{content:"\e061"}.icon-moon-shocked:before{content:"\e062"}.icon-moon-shocked2:before{content:"\e063"}.icon-moon-confused:before{content:"\e064"}.icon-moon-confused2:before{content:"\e065"}.icon-moon-neutral:before{content:"\e066"}.icon-moon-neutral2:before{content:"\e067"}.icon-moon-wondering:before{content:"\e068"}.icon-moon-wondering2:before{content:"\e069"}.icon-moon-spell-check:before{content:"\e06a"}.icon-moon-checkmark:before{content:"\e06b"}.icon-moon-checkmark2:before{content:"\e06c"}.icon-moon-checkbox-checked:before{content:"\e06d"}.icon-moon-checkbox-unchecked:before{content:"\e06e"}.icon-moon-checkbox-partial:before{content:"\e06f"}.icon-moon-radio-checked:before{content:"\e070"}.icon-moon-radio-unchecked:before{content:"\e071"}.icon-moon-crop:before{content:"\e072"}.icon-moon-scissors:before{content:"\e073"}.icon-moon-font:before{content:"\e074"}.icon-moon-text-height:before{content:"\e075"}.icon-moon-text-width:before{content:"\e076"}.icon-moon-bold:before{content:"\e077"}.icon-moon-underline:before{content:"\e078"}.icon-moon-italic:before{content:"\e079"}.icon-moon-strikethrough:before{content:"\e07a"}.icon-moon-code:before{content:"\e07d"}.icon-moon-embed:before{content:"\e07e"}.icon-moon-console:before{content:"\e07f"}.icon-moon-new-tab:before{content:"\e080"}.icon-moon-html5:before{content:"\e081"}.icon-moon-html52:before{content:"\e082"}.icon-moon-css3:before{content:"\e083"}.icon-moon-chrome:before{content:"\e084"}.icon-moon-firefox:before{content:"\e085"}.icon-moon-IE:before{content:"\e086"}.icon-moon-opera:before{content:"\e087"}.icon-moon-safari:before{content:"\e088"}.icon-moon-IcoMoon:before{content:"\e089"}.icon-moon-earth2:before{content:"\e08a"}.icon-moon-target:before{content:"\e08b"}.icon-moon-list:before{content:"\e08c"}.icon-moon-smiley3:before{content:"\e08d"}.icon-moon-image:before{content:"\e08e"}.icon-moon-equalizer:before{content:"\e08f"}.icon-moon-link22:before{content:"\e090"}.icon-moon-at:before{content:"\e091"}.icon-moon-switch:before{content:"\e092"}.icon-moon-apple:before{content:"\e093"}.icon-moon-paperclip:before{content:"\e094"}.icon-moon-code2:before{content:"\e095"}.icon-moon-dashboard:before{content:"\e096"}.icon-moon-meter2:before{content:"\e097"}.icon-moon-meter:before{content:"\e098"}.icon-moon-rocket2:before{content:"\e099"}.icon-moon-settings:before{content:"\e09a"}.icon-moon-equalizer2:before{content:"\e09b"}.icon-moon-warning:before{content:"\e09c"}.icon-moon-notification:before{content:"\e09d"}.icon-moon-question:before{content:"\e09e"}.icon-moon-info2:before{content:"\e09f"}.icon-moon-info:before{content:"\e0a0"}.icon-moon-blocked:before{content:"\e0a1"}.icon-moon-cancel-circle:before{content:"\e0a2"}.icon-moon-checkmark-circle:before{content:"\e0a3"}.icon-moon-spam:before{content:"\e0a4"}.icon-moon-enter:before{content:"\e0a5"}.icon-moon-exit:before{content:"\e0a6"}.icon-moon-shuffle:before{content:"\e0a7"}.icon-moon-tab:before{content:"\e0a8"}
@font-face{font-family:"BebasNeueRegular";font-style:normal;font-weight:normal;src:url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.eot");src:url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.eot?#iefix") format("embedded-opentype"),url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.woff") format("woff"),url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.ttf") format("truetype"),url("{T_THEME_PATH}/font/bebasneue/BebasNeue-webfont.svg#BebasNeueRegular") format("svg")}.postbody .content{color:#495d60;-webkit-font-smoothing:antialiased;-webkit-text-size-adjust:100%;font-family:inherit;font-size:1.1em;-webkit-hyphens:auto;-moz-hyphens:auto;-ms-hyphens:auto;hyphens:auto}#wrap{background:none repeat scroll 0 0 rgba(255,255,255,0.2);border:1px solid rgba(255,255,255,0.75);box-shadow:0 0 4px rgba(50,50,50,0.5);margin:20px auto;padding:6px}#content-forum{background:none repeat scroll 0 0 #ebebeb;border-radius:4px 4px 4px 4px;box-shadow:0 0 14px #fff}.padding_0_40{padding:10px 8px}.corners{border-radius:8px 8px 8px 8px;display:block}#simple-wrap{padding:6px 10px}#page-body{margin:4px 0;clear:both}hr{border:0 none #fff;border-top:1px solid #ccc;height:1px;margin:5px 0;display:block;clear:both}hr.dashed{border-top:1px dashed #ccc;margin:10px 0}#review{margin-top:1em}#topicreview{padding-right:5px;overflow:auto;height:300px}#topicreview .postbody{width:auto;float:none;margin:0;height:auto}#topicreview .post{height:auto}#topicreview h2{border-bottom-width:0}.post-ignore .postbody{display:none}#post_details{overflow:auto;max-height:300px}#expand{clear:both}.post-icon{margin-bottom:2px;margin-right:5px}.posthilit{background-color:#f2f228;color:#000}.signature{margin-top:1.5em;padding-top:.2em;font-size:1.1em;border-top:1px solid #ccc;clear:left;line-height:140%;overflow:hidden;width:100%}.notice{margin-top:1.5em;border-top:1px dashed #ccc;line-height:120%}.searchresults{list-style:none;text-align:right;clear:both}blockquote{padding:0 0 0 15px;margin:0 0 20px;border-left:5px solid #ccc}.content blockquote cite{display:block}.content blockquote{background:none repeat scroll 0 0 #ededed;font-size:13px;border:1px solid #ccc;border-radius:3px;margin:1em 0 0;padding:.3em 2.5em .3em 2.5em;position:relative}.content blockquote:before{color:#ccc;content:"\201C";font-size:5em;position:absolute;left:5px;top:.3em;line-height:.2em}.content blockquote:after{color:#ccc;content:"\201D";font-size:5em;position:absolute;right:3px;bottom:0;line-height:0}.codebox{padding:3px;background-color:#fff;border:1px solid #d8d8d8;font-size:1em}.codebox span{text-transform:uppercase;border-bottom:1px solid #ccc;margin-bottom:3px;font-size:.8em;font-weight:bold;display:block}blockquote .codebox{margin:5px 5px 5px 0}.codebox code{overflow:auto;display:block;height:auto;max-height:200px;white-space:normal;line-height:1.3em;color:#8b8b8b;margin:2px 0}.syntaxbg{color:#fff}.syntaxcomment{color:#000}.syntaxdefault{color:#bcbcbc}.syntaxhtml{color:#000}.syntaxkeyword{color:#585858}.syntaxstring{color:#a7a7a7}.attachbox{width:auto;margin:10px;padding:10px;background-color:#fff;border:1px dashed #d8d8d8}.pm-message .attachbox{background-color:#f3f3f3}.attachbox p{line-height:110%;color:#666;font-weight:normal;clear:left}.stats{line-height:110%;color:#666;font-weight:normal;clear:left}.attach-image{margin:3px 0;width:100%;max-height:350px;overflow:auto}.attach-image img{border:1px solid #999;cursor:default}.thumbnail{display:block;margin-bottom:4px}a{direction:ltr;unicode-bidi:embed}.username-coloured{font-weight:600;display:inline;padding:0}.table-primary thead th a{color:#fff;font-family:inherit;font-style:inherit;font-weight:inherit}.feed-icon-forum{float:right;margin:3px}a:link{color:#8c8c8c}a:visited{color:#8c8c8c}a:hover{color:#a6a6a6;text-decoration:none}a:active{color:#338ad2}a.forumtitle:hover{color:#8c8c8c;text-decoration:none}a.forumtitle:active{color:#105289}a.forumtitle{font-family:inherit;font-style:normal;font-weight:600;text-decoration:none;color:#148fcf}a.topictitle{font-family:inherit;font-style:normal;font-weight:600;text-decoration:none;color:#148fcf}a.topictitle:hover{color:#8c8c8c;text-decoration:none}a.topictitle:active{color:#105289}.postlink{color:#368ad2;border-bottom:1px dashed #ccc}.postlink:visited{color:#5d8fbd}.postlink:active{color:#368ad2}.postlink:hover{color:#8c8c8c;border-bottom:1px solid #ccc}.signature a,.signature a:visited,.signature a:hover,.signature a:active{background-color:transparent;border:0;text-decoration:none}
/*****************************************************************
 * Note: You can run a search with one of the title below to find the references in the css
 * **************************************************************
 *
 * BBOOTS(3.0.2) @SiteSplat.com - Table of Contents 
 * 
 *    a- GENERAL ELEMENTS - HEADINGS ( from line 36 to 220 approx. )
 *    b- UCP                         ( from line 222 to 750 approx. )
 *    c- TABLES STYLE ANF FONT ICONS ( from 753 to 927 approx. )
 *    d- INDEX PROFILE MENU          ( from 951 to 988 approx. )
 *    e- BREADCRUMB STYLE            ( from 991 to 1260 approx. )
 *    f- SOCIAL TOP BAR              ( from 1263 to 1309 approx. )
 *    g- SEARCH STYLE                ( from 1316 to 1368 approx. )
 *    h- HEADER STYLE       		 ( from 1375 to 1486 approx. )
 *    i- MAIN NAVIGATION		     ( from 1490 to 1699 approx. )
 *    j- MOBILE NAVIGATION           ( from 1702 to 1801 approx. )
 *    k- RESPONSIVE QUERIES			 ( from 1805 to 2175 approx. )
 *    l- FOOTER LAYOUT				 ( from 2180 to 2426 approx. )
 *    m- RADIO CHECKBOX STYLE 		 ( from 2429 to 2511 approx. )
 *    n- FORMS				         ( from 2530 to 2587 approx. )
 *    o- USER PROFILE AND GALLERY    ( from 2581 to 2780 approx. )
 *    p- MISC - BUTTONS - ALERTS     ( from 2783 to 2936 approx. )
 *    q- WELLS AND WIDGETS           ( from 2939 to 2990 approx. )
 *    r- PAGINATION 				 ( from 3015 to 3087 approx. )
 *    s- PM STUFF				     ( from 3090 to 3244 approx. )
 *    t- BACK TO TOP				 ( from 3247 to 3274 approx. )
 *    u- 400 - 500 PAGES			 ( from 3276 to 3336 approx. )
 *    v- MCP BAN LIST FIX			 ( from 3340 to 3350 approx. )
 *    w- 
 *    x- 
 *    y- 
 *    z- 
 * **************************************************************
 *****************************************************************/

/* GENERAL ELEMENTS - HEADINGS */
html {
  background: #999 url("{T_THEME_PATH}/bootstrap/pattern/forum-backdrop.png");
}

body {
  background-color:transparent;
  margin: 0;
  font-family: 'Source Sans Pro','Arial','Helvetica',sans-serif;
  font-size: 13px;
}
 
h1, h2, h3, h4, h5, h6, h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
    color: #7F7F7F;
    font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
    line-height: normal;
	font-weight: 200;
    margin: 5px 0 10px;
	text-rendering: optimizeLegibility;/* Fix for webkit rendering, well at least for the time being */
    -webkit-font-smoothing: antialiased;/* Fix for webkit rendering, well at least for the time being */
}

.postbody h3 {
	/* Postbody requires a different h3 format - so change it here */
	font-size: 1.5em;
	margin-top:0;
	text-transform: none;
	border: none;
}

h3 {
	/* Sub-headers (also used as post headers, but defined later) */
	text-transform: uppercase;
	border-bottom: 1px solid #CCCCCC;
	padding-bottom: 2px;
	color: #7F7F7F;
}

.content h2 {
	color: #7F7F7F;
	border-bottom: 1px solid #CCCCCC;
	font-size: 1.6em;
	margin-top: 0.5em;
	margin-bottom: 0.5em;
	padding-bottom: 0.5em;
}

.side-segment h3:after, .side-segment h2:after {
    background-color: #169FE6;
    bottom: 0;
    content: "";
    display: block;
    height: 3px;
    margin-bottom: -2px;
    width: 50px;
}

a { 
	color: #2880b2; 
	text-decoration: none;
	-webkit-transition: color 0.2s ease, background-color 0.2s ease;
	-moz-transition: color 0.2s ease, background-color 0.2s ease;
	-ms-transition: color 0.2s ease, background-color 0.2s ease;
	-o-transition: color 0.2s ease, background-color 0.2s ease;
	transition: color 0.2s ease, background-color 0.2s ease;
}
/* HEADINGS */

 
/* GENERAL ELEMENTS - HEADINGS
----------------------------------------*/
/* FIXES AND TWEAKS ON THE FLY */

/** Youtube BBcode for BBOOTS **/

.flex-video iframe, .flex-video object, .flex-video embed, .flex-video video {
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
}

.flex-video {
    height: 0;
    margin-bottom: 16px;
    overflow: hidden;
    padding-bottom: 67.5%;
    padding-top: 25px;
    position: relative;
}

.control-video {
    max-width: 400px;
}

/** Youtube BBcode for BBOOTS **/

/** Fix for btn group tool bar in post editor **/

.section-posting .btn-toolbar > .btn, .btn-toolbar > .btn-group, .btn-toolbar > .input-group {
    margin-left: 5px !important;
}

/** Fix for smaller btn group in topic **/

.section-viewtopic .btn-group > .btn:first-child {
    margin-left: 1px;
}

/** Fix for btn group **/


/*** rounded borders dropdown ***/
.dropdown-menu a {
    border-radius: 4px 4px 4px 4px;
    margin: 0 5px;
}

.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
	color:#5A5A5A;
	background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
}

.dropdown-menu li:hover{
  background: none repeat scroll 0 0 #E8E8E8;
  color: #148FCF;
  text-decoration: none;
  background-repeat: repeat-x;
   text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
  *background-color: #e6e6e6;
  background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
  background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
}

.copyright{
    display: block;
    height: auto;
    margin-left:auto;
	margin-right:auto;
    position: relative;
	color: #CDCDCD;
}
 
.copyright a{
	color: #CDCDCD;
}
 
/*** modal header fix ***/
.modal-header h3 {
    border-bottom: medium none !important;
}

/*** space, padding quickfix ***/
.space10 {
    clear: both;
    height: 10px !important;
}

.padding15{
    padding:15px !important;
}

.padding10{
    padding:10px !important;
}


.stat_offline {
    background: none repeat scroll 0 0 #CB1111;
}

.stat_online {
    background: none repeat scroll 0 0 #5DA423;
}

.stat {
    border: 2px solid #FFFFFF !important;
    border-radius: 8px 8px 8px 8px;
    display: inline-block;
    height: 12px;
    margin-right: 10px;
    width: 12px;
}

/*-------------------------------
	UCP
------------------------------*/

/* General form styles from former FORM.css
----------------------------------------*/
fieldset {
	border-width: 0;
}
/* General form styles from former FORM.css
----------------------------------------*/

.hr-double {
    border-bottom: 1px solid #E3E3E3;
    border-top: 1px solid #E3E3E3;
    height: 3px;
	margin-bottom: 40px;
    margin-top: -15px;
}

.hr-double-pm {
    border-bottom: 1px solid #E3E3E3;
    border-top: 1px solid #E3E3E3;
    height: 3px;
	margin-top: 20px;
}

.btn-group-member {
    display: block;
    font-size: 0;
    position: relative;
    vertical-align: middle;
    white-space: nowrap;
}


.reset-list{
    list-style: none outside none;
    margin: 0;
}

.reset-list i{
    color:#808080;
}

.ucp-friend {
    display: block;
    text-align: center;
}

.caret {
    border-top: 4px solid #8C8C8C;
}

.caret:hover {
    border-top: 4px solid #000;
}

/* AVATAR FLIP PM
----------------------------------------*/

#flip-container {
    position: relative;
    margin: 10px auto;
    width: 100%;
    height: 120px;
    overflow: hidden;
    z-index: 1;
}
.face.back {
    display: none;
}
#flip-container {
    -webkit-perspective: 3000;
    -ms-perspective: 3000;
    -moz-perspective: 3000;
    perspective: 3000;
}
#flip-card {
    width: 100%;
    height: 100%;
    -webkit-transform-style: preserve-3d;
    -webkit-transition: -webkit-transform 1s;
    -moz-transform-style: preserve-3d;
    -moz-transition: -moz-transform 1s;
    -ms-transform-style: preserve-3d;
    -ms-transition: -ms-transform 1s;
    transform-style: preserve-3d;
    transition: transform 1s;
}

.rotated {
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -ms-transform: rotateY(180deg);
    transform: rotateY(180deg);
}
.face {
    position: absolute;
    width: 100%;
    height: 100%;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
}
.face.back {
    display: block;
    -webkit-transform: rotateY(180deg);
    -webkit-box-sizing: border-box;
    -moz-transform: rotateY(180deg);
    -moz-box-sizing: border-box;
    -ms-transform: rotateY(180deg);
    -ms-box-sizing: border-box;
    transform: rotateY(180deg);
    box-sizing: border-box;
}

#flip-container i {
    color: #999999;
    text-decoration: none;
}

/*-------------------------------
	UCP FRIENDS LIST FIX
------------------------------*/

#scrollbar, #scrollbar-one, #scrollbar-two, #scrollbar-three {
    clear: both;
    margin: 0;
    width: 100%;
}

#scrollbar .scrollbar, #scrollbar-one .scrollbar, #scrollbar-two .scrollbar, #scrollbar-three .scrollbar {
    float: right;
    position: relative;
    width: 3px;
}

#scrollbar .viewport, #scrollbar-one .viewport, #scrollbar-two .viewport, #scrollbar-three .viewport {
    height: 270px;
    overflow: hidden;
    position: relative;
    width: 98%;
}

#scrollbar .overview, #scrollbar-one .overview, #scrollbar-two .overview, #scrollbar-three .overview {
    left: 0;
    list-style: none outside none;
    position: absolute;
    top: 0;
    width: 100%;
}

.friend-ucp li {
    border-bottom: 1px dashed #C9C9C9;
    color: #0D0D0D;
    display: block;
    line-height: 32px;
    margin: 0 5px 5px 0;
    position: relative;
}

#scrollbar .track, #scrollbar-one .track, #scrollbar-two .track, #scrollbar-three .track {
    background-color: #CCCCCC;
    height: 100%;
    padding: 0;
    position: relative;
    width: 3px;
}

#scrollbar-one .thumb, #scrollbar-two .thumb {
    background-color: #0DAED3;
}

#scrollbar .thumb, #scrollbar-one .thumb, #scrollbar-two .thumb, #scrollbar-three .thumb {
    cursor: pointer;
    height: 20px;
    overflow: hidden;
    position: absolute;
    top: 0;
    width: 3px;
}

#scrollbar-one .thumb .end, #scrollbar-two .thumb .end {
    background-color: #0DAED3;
}

#scrollbar .thumb .end, #scrollbar-one .thumb .end, #scrollbar-two .thumb .end, #scrollbar-three .thumb .end {
    height: 5px;
    overflow: hidden;
    width: 13px;
}
/*-------------------------------
	UCP FRIENDS LIST FIX
------------------------------*/

/*-------------------------------
	UCP PM TAGS STYLE
------------------------------*/
.tagsinput span.tag {
    background: none repeat scroll 0 0 #CCCCCC;
    border: 1px solid #B3B3B3;
    border-radius: 2px;
    color: #FFFFFF;
    text-shadow: 0 1px 1px rgba(0, 0, 0, 0.10);
    font-weight: 600;
    font-size: 11px;
    line-height: 14px;
    margin: 3px;
    padding: 3px 5px;
}

.tagsinput {
    margin-bottom: 5px;
}

.tagsinput input {
  color: #FFFFFF;
  font-weight: bold;
  margin-bottom: 5px;
  padding: 0 0 0 4px;
}
/*-------------------------------
	UCP PM TAGS STYLE
------------------------------*/

/*-------------------------------
	Recent activity UCP
------------------------------*/
 
.recent-activity {
    list-style: none outside none;
    margin-bottom: 0;
    margin-left: 0;
	padding:0;
}

.recent-activity li.item {
    border-bottom: 1px dashed #C9C9C9;
    margin-bottom: 0;
    margin-left: 50px;
    margin-right: 20px;
    padding: 15px 0;
    position: relative;
}

.recent-activity li .icon:after {
    border-left: 2px solid #C9C9C9;
    border-top: medium none;
    content: "";
    height: 14px;
    left: -25px;
    position: absolute;
    top: 53px;
    width: 2px;
}

.recent-activity li:last-child .icon:after {
    border-left: medium none;
}

.recent-activity li .icon.gray {
    background: none repeat scroll 0 0 #FCFCFC;
    border: 1px solid #999999;
}

.recent-activity li .icon.green {
    background: none repeat scroll 0 0 #72B110;
    border: 1px solid #72B110;
}

.recent-activity li .icon.blue {
    background: none repeat scroll 0 0 #62AEEF;
    border: 1px solid #3693E2;
}

.recent-activity li .icon.yellow {
    background: none repeat scroll 0 0 #E7D246;
    border: 1px solid #D0BA24;
}

.recent-activity li .icon.orange {
    background: none repeat scroll 0 0 #F88C00;
    border: 1px solid #CA7302;
}

.recent-activity li .icon.red {
    background: none repeat scroll 0 0 #F40A0A;
    border: 1px solid #CA7302;
}

.recent-activity li .icon {
    background: none repeat scroll 0 0 #D8605F;
    border: 1px solid #BA3938;
    border-radius: 2px 2px 2px 2px;
    box-shadow: 0 0 4px 0 #FFFFFF inset, 0 0 4px 0 #C9C9C9;
    float: left;
    height: 32px;
    margin-left: -40px;
    width: 32px;
}

.recent-activity li .icon i {
    color: #FFFFFF;
    padding: 8px;
    position: absolute;
}
 
.icon16 {
    font-size: 16px;
}

.webkitfix {
    max-width: 250px
}

.recent-activity li.item .text {
    display: inline-block;
    margin-left: 10px;
    margin-top: 5px;
}

.recent-activity li.item .text a {
    color: #D8605F;
    font-weight: bold;
}

.recent-activity li .recent-detail{
    color: #999999;
    font-size: 12px;
    font-weight: bold;
    margin-left: 10px;
    margin-right: 10px;
}

.recent-activity li:last-child {
    border-bottom: 0 none;
}

/*-------------------------------
	Recent activity UCP
------------------------------*/

/* ---------------------------------
UCP TABS NAVIGATION
------------------------------------ */

/* UCP legend frame - The <legend> tag defines a caption for the <fieldset> element */
.framed-ucp {
    background: none repeat scroll 0 0 transparent;
    border: 1px solid #CCCCCC;
    border-radius: 4px 4px 4px 4px;
    padding: 20px;
}

#cprofile .bootstrap-select {
	margin-bottom:10px;
}

legend {
    border: medium none;
    color: #9A9A9A;
    margin: 0;
	font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
    font-size: 24px;
    padding: 0 10px;
    width: auto;
	display: block;
}
/* UCP legend frame - The <legend> tag defines a caption for the <fieldset> element */

.widget-body-ucp {
    background-color: #FFFFFF;
    border-bottom: 1px solid #CDCDCD;
	border-top: 1px solid #CDCDCD;
    border-left: 1px solid #CDCDCD;
    border-radius: 0 3px 0 0;
    border-right: 1px solid #CDCDCD;
    display: block;
    padding: 15px;
}

.widget-body { /*** UCP navigation temporary fix ***/
    background-color: #FFFFFF;
    border-left: 1px solid #CDCDCD;
    border-right: 1px solid #CDCDCD;
	border-top: 1px solid #CDCDCD;
    border-bottom: 1px solid #CDCDCD;
	border-radius: 0 3px 0 0;
    display: block;
	margin-bottom: 10px;
    padding: 15px;
}

.tabbable-custom .nav-tabs > li.active {
    border-top: 3px solid #169FE6;
	border-radius: 6px 6px 6px 6px;
    margin-top: 0;
    position: relative;
}
.tabbable-custom .nav-tabs > li {
    border-top: 2px solid transparent;
    margin-right: -1px;
}

.tabbable-custom .nav-tabs > li.active > a {
    border-top: medium none;
    font-weight: bold;
}

.tabbable-custom .nav-tabs > li.active > a:hover {
    border-top: medium none;
	background-color:#FFF;
}

.section-ucp .nav-tabs,
.section-mcp .nav-tabs,
.section-posting .nav-tabs {
    border-bottom: 0 none;
}

.section-ucp .nav > li > a:focus, 
.section-mcp .nav > li > a:focus,
.section-posting .nav > li > a:focus, 
.section-ucp .nav > li > a:hover, 
.section-mcp .nav > li > a:hover,
.section-posting .nav > li > a:hover {
    background-color:#F5F5F5;
	text-decoration:none;
	border-left: 1px solid #CDCDCD;
    border-right: 1px solid #CDCDCD;
    border-top: 1px solid #CDCDCD;
}

.section-ucp ul.nav-tabs li a,
.section-mcp ul.nav-tabs li a,
.section-posting ul.nav-tabs li a {
    border-left: 1px solid #CDCDCD;
    border-top: 1px solid #CDCDCD;
	border-right: 1px solid #CDCDCD;
    display: block;
    font-size: 13px;
    height: 29px;
    line-height: 30px;
    margin: 0;
    padding: 0 20px;
    text-decoration: none;
    width: auto;
}

.nav-tabs > li > a:first-child {
    border-radius: 4px 4px 0 0;
}

.tabbable-custom > .tab-content {
    background-color: #FFFFFF;
    border: 1px solid #DDDDDD;
    border-radius: 0 0 0 0;
    padding: 10px;
}

.tab-content {
    overflow: inherit;
}

.ver-inline-menu {
    list-style: none outside none;
    margin: 0;
	padding:0;
}

.ver-inline-menu li {
    margin-bottom: 1px;
    position: relative;
}

.ver-inline-menu li i {
    background: none repeat scroll 0 0 #E0EAF0;
    color: #B9CBD5;
    font-size: 15px;
    margin: 0 8px 0 0;
    padding: 11px 9px;
}

.ver-inline-menu li a {
    background: none repeat scroll 0 0 #F0F6FA;
    border-left: 2px solid #C4D5DF;
    color: #557386;
    display: block;
	line-height: 36px;
}

.ver-inline-menu li:hover a, .ver-inline-menu li:hover i {
    background: none repeat scroll 0 0 #E0EAF0;
    text-decoration: none;
}

.ver-inline-menu li:hover i {
    background: none repeat scroll 0 0 #C4D5DF;
    color: #FFFFFF;
}

.ver-inline-menu li.active a, .ver-inline-menu li.active i {
    background: none repeat scroll 0 0 #169EF4;
    border-left: 1px solid #0C91E5;
    color: #FFFFFF;
    text-decoration: none;
}

.ver-inline-menu li.active i {
    background: none repeat scroll 0 0 #0C91E5;
}

.ver-inline-menu li.active:after {
    border-bottom: 6px solid transparent;
    border-left: 6px solid #169EF4;
    border-top: 6px solid transparent;
    content: "";
    display: inline-block;
    position: absolute;
    right: -5px;
    top: 12px;
}

/*  	
--------------------------------------------------------------
UCP TABS NAVIGATION
-------------------------------------------------------------- */


/*-------------------------------
	TABLES STYLE ANF FONT ICONS
 ------------------------------*/
.table-white {
    background: none repeat scroll 0 0 #FFFFFF;
}

.table-bordered {
    border-color: #DBDBDB;
	-webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    -webkit-box-shadow: 0 3px 0 0 #DBDBDB;
    -moz-box-shadow: 0 3px 0 0 #DBDBDB;
    box-shadow: 0 3px 0 0 #DBDBDB;
}

.table-primary {
    border-color: -moz-use-text-color #DBDBDB #DBDBDB;
    border-top: medium none;
}

.table-primary tbody td {
    background: none repeat scroll 0 0 #FAFAFA;
    border-width: 0;
    color: #7C7C7C;
}

.table > tbody + tbody { /* Fix for webkit border top table ucp */
    border-top: 0 none;
}

.table-primary tbody tr:nth-child(2n+1) td, .table-primary tbody tr:nth-child(2n+1) th {
    background: none repeat scroll 0 0 #FFFFFF;
}

.table-primary thead th {
    background-color: #169FE6;
    border-color: #169FE6 !important;
    color: #FFFFFF;
    font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
    font-size: 14px;
	font-style: normal;
    font-weight: 700;
	text-rendering: optimizeLegibility;/* Fix for webkit rendering, well at least for the time being */
    -webkit-font-smoothing: antialiased;/* Fix for webkit rendering, well at least for the time being */
	text-transform: uppercase;
}
 
.table tr.active td, .table tr.active {
    background: none repeat scroll 0 0 #DEECFA !important;
}

.table th.table-icon, .table td.table-icon {
    width: 20px;
    background-position: 5px center;
    width: 20px;
}

.table th.table-check, .table td.table-check {
    width: 80px;
	text-align: center;
}

th i {
	color:#F8F8F8;
}

.large60 {
	width:70px;
}

.large80 {
	width:120px;
}

.large12 {
    width: 12%;
}

.large20 {
	width:20%;
}

.large23 {
    width: 23%;
}

.large26 {
    width: 26%;
}

.large28 {
    width: 28%;
}
 
.row-icon {
    float: left;
    height: 27px;
    margin-right: 5px;
    margin-top: 5px;
    width: 27px;
}

.topic-icon {
	float: left;
    height: 16px;
    margin-left: -38px;
    margin-top: -5px;
    position: absolute;
    width: 16px;
}

/* --------------------------------------------------------------
Font icon forums
-------------------------------------------------------------- */
.row-icon-font {
    float: left;
    font-size: 27px;
    margin-right: 5px;
    margin-top: 5px;
}

.forum-image {
    display: inline-block;
    float: left;
    width: 46px;
    height: 40px;
}

.forum-image img {
    width: 42px;
    height: 42px;
}

.row-icon-font-mini {
    color: #FFFFFF;
    font-size: 14px;
    margin-left: -20px;
    margin-right: 5px;
    margin-top: 15px;
    position: absolute;
}

.forum-list-lock {
    margin-left: -15px;
    margin-top: 18px;
}

.forumview-lock {
    color: #666;
    margin-left: -14px;
    margin-top: 21px;
	text-shadow: -1px -1px 0 #FFFFFF;
}

.icon-moon-default:before {
    content: "\e64d";
}

.icon-moon-default2:before {
   content: "\e687";
}

.icon-moon-link2:before {
   content: "\e04a";
}

.icon-moon-podcast2:before {
    content: "\e678";
}

.icon-moon-voice2:before {
   content: "\e677";
}

.icon-moon-pushpin2:before {
   content: "\e016";
}

.icon-moon-bars2:before {
   content: "\e043";
}

.icon-moon-moved:before {
   content: "\e63a";
}
/* --------------------------------------------------------------
Font icon forums
-------------------------------------------------------------- */

.footable-row-detail-value {
    width: 100%;
}

.footable {
    width: 100%;
}

.footable.breakpoint > tbody > tr.footable-row-detail {
    background: none repeat scroll 0 0 #EEEEEE;
}

.footable.breakpoint > tbody > tr > td > span.footable-toggle {
    background: none repeat scroll 0 0 #ECEBEC;
    padding: 10px 15px;
	float: right;
}

/* --------------------------------------------------------------
   INDEX PROFILE MENU
-------------------------------------------------------------- */
.dropdown-menu {
    background-clip: padding-box;
    background-color: #FFFFFF;
    border: 1px solid #DADADA;
    display: none;
    float: left;
    font-size: 11px;
    left: 0;
    list-style: none outside none;
    margin: 0;
    min-width: 160px;
    position: absolute;
    text-align: left;
    top: 100%;
    z-index: 1000;
}

.dropdown-menu li:first-child {
    border-top: medium none;
}

.dropdown-menu li {
    background: -moz-linear-gradient(center top , #FEFEFE 0%, #F5F5F5 100%) repeat scroll 0 0 transparent;
    border-top: 1px solid #E4E4E4;
}

.dropdown-menu a {
    clear: both;
    color: #6A6A6A;
    display: block;
    font-size: 12px;
    font-weight: normal;
    padding: 8px 10px;
    white-space: nowrap;
}

/* --------------------------------------------------------------
   BREADCRUMB STYLE
-------------------------------------------------------------- */

.subheader {
    background: url("{T_THEME_PATH}/images/pattern2.png") repeat scroll center top #FFFFFF;
    border-top: 4px solid #169FE6;
	height: 80px;
    padding: 0;
}

.top-menu {
    margin-right: -20px;
	height: 0;
}

.top-menu > li:first-child {
    border-left: 1px solid #F0F0F0;
}

.dropdown-menu > li > a > i {
    color: #555555;
    float: left;
    font-size: 14px;
    margin-right: 6px;
    margin-top: 3px;
}

.dropdown-menu .badge {
    bottom: 0;
    left: 35px;
    position: relative;
}

.top-menu > li {
    border-right: 1px solid #F0F0F0;
    float: left;
    list-style: none outside none;
    position: relative;
}

.top-menu > li > a {
    cursor: pointer;
    display: block;
    transition: all 0.2s ease-in-out 0s;
	text-decoration: none;
}

.top-menu > li > ul > li > a {
    padding: 5px;
}

.user-menu {
    height: 20px;
    padding: 6px 14px;
}

.user-menu > img {
    display: inline-block;
    float: left;
    margin-right: 10px;
    margin-top: -1px;
	max-width:22px;
	max-height:22px;
}

.user-menu > i {
    color: #8C8C8C;
    display: inline-block;
    float: left;
    font-size: 18px;
    margin-right: 10px;
    margin-top: 1px;
}

.user-menu > span {
    color: gray;
    display: block;
    font-size: 12px;
    font-weight: 600;
    margin-left: 32px;
    white-space: nowrap;
}

.top-menu .dropdown .caret {
    border-top-color: gray;
    display: inline-block;
    margin: 1px 0 0 5px;
}

.top-menu > li > ul:after {
    border-bottom: 5px solid white;
    border-left: 6px solid transparent;
    border-right: 6px solid transparent;
    content: "";
    display: inline-block;
    left: 50%;
    margin-left: -6px;
    position: absolute;
    top: -4px;
}

.sub-breadcrumb span.time {
    color: #979595;
    margin-left: 5px;
}

.sub-crumb{
    height: 20px;
    margin-left: -5px;
    padding: 8px 1px;
}

.sub-crumb, .sub-crumb a{
    color: #808080 ;
}

.sub-crumb > li > .divider {
    color: #CCCCCC;
    padding: 0 5px;
}

.sub-crumb > .active {
    color: #999999;
	font-size: 11px;
	margin-top: 1px;
}

.sub-crumb, .sub-crumb li {
    display: inline-block;
    list-style: none outside none;
    position: relative;
	text-shadow: 0 1px 0 #FFFFFF;
}

.crumbs:after {
    clear: both;
    content: "";
    display: block;
}

.crumbs {
    padding: 0 20px;
}

.sub-crumb > .active i{
    color: #BBBBBB;
    margin-left: 0;
}

.sub-crumb a {
    color: #666666;
    margin-left: 0;
    margin-right: 4px;
}

.tabs-nav, .crumbs {
    background: -moz-linear-gradient(center top , #FFFFFF 0%, #F0F0F0 100%) repeat scroll 0 0 transparent;
    border-bottom: 1px solid #C7C7C7;
    box-shadow: 0 1px 0 white;
    height: 32px;
    margin: 0;
}

.crumbs .active > a {
    margin-right: 4px;
}

.crumbs .active > a:last-child {
    font-weight: bold;
}

/* Big icon style for admin and user login */
.fxicon {
    display: block;
    height: 76px;
	width: auto;
    margin-left: 10px;
    overflow: hidden;
    position: relative;
}

.fxicon i {
    font-size: 160px;
    opacity: 0.1;
    position: relative;
    top: -40px;
}

.user-fxicon i {
    font-size: 300px;
    opacity: 0.1;
    position: relative;
    top: -10px;
}

.admin-fxicon i {
    font-size: 280px;
    opacity: 0.1;
    position: relative;
    top: -22px;
}

.admin-header-head {
    height: 23px;
    margin-top: -5px;
    padding-top: 22px;
}

.admin-fxicon {
    display: block;
    height: 224px;
    margin-top: -36px;
    overflow: hidden;
    position: relative;
}

.user-fxicon {
    display: block;
    height: 265px;
    margin-top: -36px;
    overflow: hidden;
    position: relative;
}

.user-fxicon-remind {
    height: 224px;
}

/* Extra Large icon style for admin and user login */

.index-pos {
    list-style-type: none;
    margin: -60px 0 0 -10px;
	width: 100%;
}

li.index-title h1, .titleLineCharts h2 {
  font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
  font-size: 30px;
  line-height: 25px;
  color: #8C8C8C;
  text-transform: uppercase;
  font-style: normal;
  font-weight: 400;
}

li.index-sub {
    color: #8C8C8C;
    font-size: 12px;
    line-height: 9px;
}

.sub-breadcrumb {
    background-color: #EFEFEF;
    border-radius: 0 0 0 0;
    box-shadow: 0 1px rgba(0, 0, 0, 0.1);
    font-size: 11px;
    height: 20px;
    list-style: none outside none;
    margin: 1px 0 25px;
    padding: 2px 10px;
}

.sub-breadcrumb > .active {
    color: #999999;
}
.sub-breadcrumb > li {
    display: inline-block;
    text-shadow: 0 1px 0 #FFFFFF;
}

/* --------------------------------------------------------------
BREADCRUMB STYLE
-------------------------------------------------------------- */
 
/* --------------------------------------------------------------
SOCIAL TOP BAR
-------------------------------------------------------------- */

.social-top  a {
    color: #545861;
    margin: 0 12px 0 0;
    position: relative;
    top: 8px;
	right: 0;
	text-decoration: none;
}

.social-top  a > i {
  font-style: normal;
  font-weight: 400;
  font-size:20px;
  -webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */
}

.google-plus-color {
   color: #d34836;
}
 
.pinterest-color {
	color: #cb2027;
}

.facebook-color {
	color: #3b5998;
}

.twitter-color {
	color: #00aced;
}

.rss-color {
	color: #E48645;
}

.rss-color-forum {
	color: #E48645;
}

.github-color {
	color: #333333;
}

/* --------------------------------------------------------------
SOCIAL TOP BAR
-------------------------------------------------------------- */

/* --------------------------------------------------------------
SEARCH STYLE
-------------------------------------------------------------- */

.search-box form {
    margin: 0;
    padding: 0;
}

.search-box {
    margin-right: 10px;
    margin-top: -60px;
}

.search-box form input {
    font-family: inherit;
    font-size: 15px;
    font-style: normal;
    text-indent: 25px;
	background: url("{T_THEME_PATH}/images/search.png") no-repeat scroll 14px center #FFFFFF;
    border-color: #CFDAE1;
    border-radius: 500px 500px 500px 500px;
    border-style: solid;
    border-width: 1px;
    color: #999999;
    overflow: hidden;
    padding: 12px 22px;
    position: relative;
	width: 25px;
	-webkit-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;
    -moz-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;
    -o-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;
    transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;
}

.search-box form input:focus {
    border-color: #DFE6EB;
    box-shadow: none;
    cursor: text;
    width: 180px;
	-webkit-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;
    -moz-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;
    -o-transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;
    transition: width 0.8s cubic-bezier(1, 0, 0, 1) 0s;
}

.search-box form input:hover:not(:focus) {
    cursor: pointer;
}

.search-box form input:hover,
.search-box form input:focus {
  outline: none;
}

/* --------------------------------------------------------------
SEARCH STYLE
-------------------------------------------------------------- */
 
/* --------------------------------------------------------------
HEADER STYLE
-------------------------------------------------------------- */

header {
    background: none repeat scroll 0 0 white;
    border-radius: 4px 4px 0 0;
    display: block;
    padding: 45px 15px 15px;
}

header .topArea {
    display: table;
    width: 100%;
}

header .leftArea {
    display: inline;
    float: left;
    text-align: center;
}

.logo span {
    color: #169FE6;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
}

header .leftArea .logo {
    color: #8C8C8C;
    font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
    font-size: 70px;
    font-style: normal;
    font-weight: 400;
    line-height: 50px;
    text-decoration: none;
	  -webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */
    text-transform: uppercase;
}

header .leftArea .site-info {
    color: #999999;
    display: block;
    font-size: 11px;
	-webkit-font-smoothing: antialiased;
	-webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */
    margin: 0;
    vertical-align: middle;
}

.site-info i {
font-size: 14px;
}

.logo-transition a::before,
.logo-transition a::after {
  display: inline-block;
  opacity: 0;
  -webkit-transition: -webkit-transform 0.3s, opacity 0.2s;
  -moz-transition: -moz-transform 0.3s, opacity 0.2s;
  transition: transform 0.3s, opacity 0.2s;
}

.logo-transition a::before {
  margin-right: 3px;
  content: '{';
  color:#8C8C8C;
  line-height: 16px;
  font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
    font-size: 70px;
    font-style: normal;
    font-weight: 400;
  -webkit-transform: translateX(50px);
  -moz-transform: translateX(50px);
  transform: translateX(50px);
}

.logo-transition a::after {
  margin-left: 3px;
  content: '}';
  color:#169FE6;
  line-height: 16px;
  font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
    font-size: 70px;
    font-style: normal;
    font-weight: 400;
  -webkit-transform: translateX(-50px);
  -moz-transform: translateX(-50px);
  transform: translateX(-50px);
}

.logo-transition a:hover::before,
.logo-transition a:hover::after,
.logo-transition a:focus::before,
.logo-transition a:focus::after {
  opacity: 1;
  -webkit-transform: translateX(0px);
  -moz-transform: translateX(0px);
  transform: translateX(0px);
  -moz-transform-style: preserve-3d;
-ms-transform-style: preserve-3d;
-webkit-transform-style: preserve-3d;
transform-style: preserve-3d;
}

div.logo-transition a:hover,
div.logo-transition a:focus {
  outline: none;
}

/* --------------------------------------------------------------
HEADER STYLE
-------------------------------------------------------------- */

/* --------------------------------------------------------------
MAIN NAVIGATION
-------------------------------------------------------------- */
.navBtn {
  display: none;
}

.mainnav {
display: table-cell;
    margin-top: 2px;
    position: relative;
    vertical-align: middle;
    z-index: 999;
}
.mainnav li {
  text-align: left;
}

.mainnav > ul {
  float: right;
}

.mainnav > ul > li {
  position: relative;
  float: left;
  list-style: none;
  filter: inherit;
  display: block;
  width: auto;
  height: 60px;
}

.mainnav > ul > li > a:hover,
.mainnav > ul > li > a:focus {
	outline: none;
}

.mainnav > ul > li > a {
    color: #8C8C8C;
    display: block;
    font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
	-webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */
    font-size: 28px;
    font-style: normal;
    font-weight: 400;
    line-height: 20px;
    padding: 10px 5px 25px;
    text-decoration: none;
    text-transform: uppercase;
}

.mainnav > ul > li > p {
  position: absolute;
  top: 31px;
  left: 5px;
  line-height: 21px;
  color: #999999;
  -webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */
  font-style: normal;
  font-weight: 400;
  font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
  font-size: 11px;
}

.has-sub i {
   font-size: 20px;
   vertical-align: middle;
}

.mainnav > ul > li > a > i {
    background: none repeat scroll 0 0 #333333;
    color: #FFFFFF;
    font-size: 11px;
    line-height: 10px;
    margin-left: 5px;
    padding: 0 3px;
    transition: all 0.2s ease 0s;
   position: absolute;
}

.nav-icon [class*="has-sub"] {
    -webkit-transition-duration: 0.9s;
    -moz-transition-duration: 0.9s;
    -o-transition-duration: 0.9s;
    transition-duration: 0.9s;
    transform-style: preserve-3d;
   -ms-transform-style: preserve-3d;
   -moz-transform-style: preserve-3d;
   -webkit-transform-style: preserve-3d;
    -webkit-transition-property: -webkit-transform, color;
    -moz-transition-property: -moz-transform, color;
    -o-transition-property: -o-transform, color;
    transition-property: transform, color;
	z-index: -1;
}

[class*="has-sub"] {
    display: inline-block;
}

.nav-icon:hover [class*="has-sub"] {
    -webkit-transform:rotate(360deg);
    -moz-transform:rotate(360deg);
    -o-transform:rotate(360deg);
    transform: rotate(360deg);
	color: #169FE6;
}

.nav-icon {
    margin-left: 5px;
}

.nav-icon:last-child{
    margin-right: -5px;
}

.mainnav > ul > li:hover > ul,
.mainnav > ul > li:hover {
  -khtml-opacity: 1;
  -moz-opacity: 1;
  filter: alpha(opacity=100);
  -ms-filter: "alpha(opacity=100)";
  opacity: 1;
  visibility: visible;
}

.greydout {
  -webkit-opacity: 0.25;
  -moz-opacity: 0.25;
  opacity: 0.25;
-webkit-transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -ms-transition: all 0.2s ease;
  -o-transition: all 0.2s ease;
  transition: all 0.2s ease;
} 

.submenu {
  position: absolute;
  top: 65px;
  left: -24px;
  background-color: rgba(255, 255, 255, 0.97);
  -webkit-box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
  box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
  border-bottom: 4px solid #169FE6;
  border-bottom-left-radius: 3px;
   border-bottom-right-radius: 3px;
  visibility: hidden;
  -khtml-opacity: 0;
  -moz-opacity: 0;
  filter: alpha(opacity=0);
  -ms-filter: "alpha(opacity=0)";
  opacity: 0;
}

.submenu {
  padding: 0 15px;
}

.submenu li {
  position: relative;
  list-style: none;
}

.submenu li > span {
  position: absolute;
  width: 80px;
  height: 1px;
  bottom: 0;
  left: 0;
  background-color: #e4e4e4;
  transition: background 0.3s ease-in-out, width 0.3s ease-in-out;
  -webkit-transition: background 0.3s ease-in-out, width 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out, width 0.3s ease-in-out;
  -o-transition: background 0.3s ease-in-out, width 0.3s ease-in-out;
}

.submenu li:hover > a {
  color: #169FE6;
  text-decoration: none;
}

.submenu li:hover > span {
  width: 100%;
  background-color: #169FE6;
}

.submenu li:nth-last-child(1) > span {
  display: none;
}

.submenu a {
  display: block;
  font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
  font-style: normal;
  font-weight: 400;
  -webkit-font-smoothing: antialiased; /* Fix for webkit rendering, well at least for the time being */
  font-size: 14px;
  line-height: 16px;
  padding: 10px 0;
  color: #999999;
  min-width: 160px;
  max-width: 200px;
}

/* --------------------------------------------------------------
MAIN NAVIGATION
-------------------------------------------------------------- */

/* MOBILE NAVIGATION
----------------------------------------*/

.flexnav-show {
    max-height: 2000px;
    opacity: 1;
	 -webkit-transition: all .5s ease-in-out;
    -moz-transition: all .5s ease-in-out;
    -ms-transition: all .5s ease-in-out;
    transition: all .5s ease-in-out; 
}

.flexnav a:focus {
   outline: medium none;
   text-decoration: none;
}

.flexnav li {
    font-size: 100%;
    position: relative;
    overflow: hidden; 
	display:block;
}
	
.flexnav li a {
    position: relative;
    display: block;
    padding: 0.94em;
    z-index: 2;
    overflow: hidden;
    color: #555555;
	font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
    font-size: 15px;
	text-transform: uppercase;
	background: none repeat scroll 0 0 rgba(220, 223, 225, 0.75);
    border-bottom: 1px solid rgba(0, 0, 0, 0.15); 
}
	
.flexnav li ul {
    width: 100%; 
}
	
.flexnav li ul li {
    font-size: 100%;
    position: relative;
    overflow: hidden; 
}

.flexnav li ul.flexnav-show li {
    overflow: visible; 
}
	
.flexnav li ul li a {
    display: block;
    background: #D5D9DA; 
}
	
.flexnav ul li ul li a {
    background: #C7CDCE; 
}

.flexnav ul li ul li ul li a {
    background: #cbcbc9; 
}

.flexnav li a:hover {
   background-color:#EEEEEE;
}

.flexnav .touch-button {
    position: absolute;
    z-index: 999;
    top: 0;
    right: 0;
    width: 50px;
    height: 50px;
    display: inline-block;
    background: #acaca1;
    background: rgba(0, 0, 0, 0.075);
	border-bottom: 0 none;
    text-align: center; 
}
	
.flexnav .touch-button:hover {
    cursor: pointer; 
}

.flexnav .touch-button .navicon {
    position: relative;
    top: -4px;
    font-size: 22px;
    color: #666; 
}
	
ul.flexnav, .viewdetails {
    margin: 0 0 10px;
}


/* MOBILE NAVIGATION
----------------------------------------*/

/*---------------------------------------
	RESPONSIVE QUERIES
-----------------------------------------*/
 
/* Logo and site-info Tweak for best display while resizing */
@media (min-width: 997px) and (max-width: 1217px) {

  td .row-icon, .topic-icon {
    display:none;
}


header .leftArea .logo {
    float:none;
}

}


/* Responsive menu settings */

@media (min-width: 768px) and (max-width: 979px) {

header .mainnav{
    display: block;
    float: none;
    text-align: center;
}

.footable-first-column {
    width: 58%;
}

.large20 {
    width: 26%;
}

td .row-icon, .topic-icon {
    display:none;
}

header .leftArea {
    display: table-caption;
    float: none;
    margin-bottom: -6%;
    text-align: center;
}

header .leftArea .logo {
    display: block;
    float: none;
    margin: 0 0 5px;
}

.header {
    height: 200px;
}

.header .logo {
    left: 50%;
    margin-left: 5px;
}

.mainnav {
    display: block;
    text-align: center;
    padding-top: 80px;
}

.mainnav > ul {
    float: none;
    margin-left: auto;
    margin-right: auto;
    display: table;
    *display: inline;
    *zoom: 1;
	margin-top: -35px;
}
  
.user-profile-tab {
    margin: 0 !important;
}
 
.user-profile-output {
    margin-left: 55px !important;
}

.user-profile-tag {
    width: 60px !important;
}

  
}

@media (max-width: 979px) {


.nav-collapse .nav > li > a:hover,
.nav-collapse .nav > li > a:focus,
.nav-collapse .dropdown-menu a:hover,
.nav-collapse .dropdown-menu a:focus {
    background-color: transparent !important;
}

.nav-collapse .dropdown-menu {
    margin: 0 !important;
}
  
#footerContent .row-fluid .span3 {
    width: 46.9282% !important;
}
  
.dropdown-menu li {
    background: none repeat scroll 0 0 rgba(0, 0, 0, 0) !important;
}

.caret {
    border-top: 4px solid #8C8C8C !important;
}

.table-bordered tbody:first-child tr:first-child > td:first-child, .table-bordered tbody:first-child tr:first-child > th:first-child, .table-bordered thead:first-child tr:first-child > th:first-child {
    border-top-right-radius: 0;
}

}



@media (max-width: 767px) {
.header {
    height: auto;
}

.header > .line {
    top: 107px;
    bottom: auto;
}
  
.large20 {
    width: 35%;
}
  
header .leftArea {
    float: none;
}
  
.navBtn {
    font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
    font-size: 28px;
    line-height: 45px;
    position: relative;
    display: block;
    width: 100%;
    height: 40px;
    background-color: #169FE6;
    color: #fff;
    -moz-transition: background-color 0.3s ease-out;
    -webkit-transition: background-color 0.3s ease-out;
    -o-transition: background-color 0.3s ease-out;
	transition: background-color 0.3s ease-out;
}
  
.navBtn > a {
    border-left: 1px solid #127FB8;
    color: #FFFFFF;
    cursor: pointer;
    display: block;
    float: right;
    font-size: 28px;
    height: 38px;
    line-height: 20px;
    margin: 1px 5px 0 0;
    padding: 10px;
    text-decoration: none;
    width: 45px;
}

.navBtn > a:hover {
    color: #FAFAFA;
	opacity:0.8;
}

.navBtn > a:focus {
    outline:medium none;
}

.navBtn > span {
    margin-left:10px;
}

td .row-icon, .topic-icon {
    display:none;
}

.mainnav {
  display: block;
    position: relative;
    width: 100%;
    height: 50px;
    margin: 0 auto;
    padding-top: 10px;
}
  
.mainnav > ul {
    display: none;
    position: absolute;
    width: 100%;
    height: auto;
    top: 176px;
    left: 0;
    -webkit-box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);
    -moz-box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);
}

/* Mobile menu specific settings */
  
.mainnav-mob > ul > li {
    position: relative;
    border: 1px solid #f6f6f6;
    float: none;
    width: auto;
    height: auto;
    background-color: #ffffff;
}
  
.mainnav-mob > ul > li > a {
    display: block;
    font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 16px;
    color: #999999;
    transition: color 0.3s ease-out;
    -moz-transition: color 0.3s ease-out;
    -webkit-transition: color 0.3s ease-out;
    -o-transition: color 0.3s ease-out;
}
  
.mainnav-mob > ul > li > p {
   display: none;
}

.mainnav-mob > ul > li:hover,
.mainnav-mob > ul > li.current {
    border-color: #f6f6f6;
}

.mainnav-mob > ul > li:hover > a,
.mainnav-mob > ul > li.current > a {
   color: #03b8df;
}
  
 
/* Mobile menu specific settings */
  
.submenu {
    position: relative;
    top: auto;
    width: 99.8%;
    visibility: visible;
    -khtml-opacity: 1;
    -moz-opacity: 1;
    filter: alpha(opacity=100);
    -ms-filter: "alpha(opacity=100)";
    opacity: 1;
    border-bottom: 2px inset;
    padding: 0;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
}

.submenu li {
    border-top: 1px solid #f6f6f6;
    padding: 0 6px;
}

.submenu li a {
    font-size: 12px;
    padding: 8px 0;
    max-width: 100%;
}

.submenu li > span,
.dark .submenu li{
    border-color: #494949;
}
  
.logo-transition a:before, .logo-transition a:after {
    display: none;
}
	
.nav-tabs > li {
    float:none;
}

.mobile-online {
    border-bottom-right-radius: 6px;
    border-right: 4px solid #31D83A !important;
    border-top-right-radius: 6px;
}

body {
    padding-left: 10px;
    padding-right: 10px;
}

}

@media (max-width: 468px) {

body {
    padding-left: 6px;
    padding-right: 6px;
	font-size:15px;
}

.logo > img {
    display: block;
    width: 100%;
}

#wrap {
    margin: 10px auto;
    padding: 6px;
}

.padding_0_40 {
    padding: 8px;
}

.postbody h3 {
    font-size: 1.3em;
}

.timepost {
    font-size: 0.9em;
}

.postbody .content {
    font-size: 1em;
}

header .leftArea .logo {
    font-size: 66px;
}

.nav-tabs > li {
    float:none;
}
	
.table-bordered tbody:first-child tr:first-child > td:first-child, .table-bordered tbody:first-child tr:first-child > th:first-child, .table-bordered thead:first-child tr:first-child > th:first-child {
	border-top-right-radius: 3px;
}

.mobile-post {
    background: none repeat scroll 0 0 #ECEBEC;
    float: right;
    padding: 10px 15px;
	font-size: 16px;
}

.framed-ucp {
    padding: 10px;
}

footer .interact a {
    font-size: 15px;
}
	
}

/*-----------------------------------------------
	RESPONSIVE QUERIES
------------------------------------------------- */
 
/*------------------------------------------------
	FOOTER LAYOUT
-------------------------------------------------- */

footer {
    border-top: 3px solid #169FE6;
    display: block;
	position: relative;
	margin-top: 20px;
}

#footerContent blockquote p {
	color: #8C8C8C;
	font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
	font-size: 20px;
}

#footerContent blockquote p span {
    color:#169FE6;
}

footer a {
   color: #555555;
}

/*
 * Footer block
 */


/*
* footer recent topics
*/
 
.recent-row {
    min-height: 318px;
}

.recent-topic {
    line-height: 20px;
    margin: 0 0 10px;
}

.recent-topic .blogImage {
    float: left;
    margin-right: 10px;
}

.recent-topic a, .links a {
    color: #555555;
	margin-top: 3px;
}

.blogImage {
    border: 1px solid #E4E4E4;
    border-radius: 3px;
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.3);
    width: 50px;
	height:51px;
    transition: all 0.2s ease 0s;
}

.user1 {
	background: url("{T_THEME_PATH}/images/user1.png") no-repeat;
	background-size: 100% 100%;
}

.user2 {
	background: url("{T_THEME_PATH}/images/user2.png") no-repeat;
	background-size: 100% 100%;
}

.user3 {
	background: url("{T_THEME_PATH}/images/user3.png") no-repeat;
	background-size: 100% 100%;
}

.user4 {
	background: url("{T_THEME_PATH}/images/user4.png") no-repeat;
	background-size: 100% 100%;
}

.recent-topic a:first-child:hover  {
    opacity:0.8;
    transition: all 0.2s ease 0s;
}

.recent-topic p {
    color: #999999;
    font-style: normal;
    font-weight: 400;
    font-size: 12px;
    line-height: 18px;
    margin: 0;
}

.text-overflow {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

/* Twitter layout */

.twitter-layout:before {
    color: #169FE6;
    content: "\f099";
    display: block;
    font-family: FontAwesome;
    font-size: 18px;
    left: 0;
    position: absolute;
    top: -1px;
}

.twitter-layout p {
	margin: 0 0 3px !important;
	text-indent: 18px;
	 -ms-word-break: break-all;
     word-break: break-all;
     /* Non standard for webkit */
     word-break: break-word;
-webkit-hyphens: auto;
   -moz-hyphens: auto;
    -ms-hyphens: auto;
        hyphens: auto;
}


.twitter-layout {
    line-height: 17px;
    margin-bottom: 24px;
    padding: 0 0 10px;
    position: relative;
}

.twitter-link {
    margin-right: 10px;
}

.twitter-time {
    line-height: 19px;
	color: #999999;
    font-family: inherit;
    font-size: 11px;
    font-style: normal;
    font-weight: 400;
	
}

.tweet {
    color: #555555;
    font-size: 13px;
}

 /*
 * temp fix for cross imgs in tweets
 */
.tweet > img {
    display: none;
}

 /*
 * footer recent topics
 */
 
footer #footerContent {
    background-color: #F9F9F9;
	box-shadow: 0 3px 0 rgba(0, 0, 0, 0.1);
    padding: 10px 15px 10px;
    position: relative;
}


footer .navList {
    list-style: none outside none;
    margin: 0;
    padding: 0;
}

footer .navList li:first-child a {
    padding-top: 0;
}

footer .navList li a {
    border-bottom: 1px dashed #D3D3D3;
    display: block;
    padding: 7px 0;
	text-decoration: none;
}

footer .bottomLinks {
    font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
    font-size: inherit;
    font-style: normal;
    font-weight: 400;
    margin-bottom: -1%;
    margin-top: 10px;
}

footer .bottomLinks i.rosso {
	color: #F27490;
}

footer .bottomLinks i.earth {
	color: #669933;
}

footer .bottomLinks small {
	color: #A5A5A5;
}

footer .bottomLinks small a {
	color: #169FE6;
}

footer #footerBottom {
    position: absolute;
    width: 100%;
}

footer #footerBottom .disclaimer {
    color: #686868;
    float: left;
    font-size: 11px;
    font-style: italic;
    margin: 15px 0 0 5px;
}

footer .bottomLinks a {
    border-bottom: 1px solid rgba(0, 0, 0, 0.1);
    padding-bottom: 1px;
    color: white;
    display: inline-block;
    font-size: 11px;
    line-height: normal;
    padding: 0 2px;
	text-decoration:none;
}

footer .bottomLinks a:hover {
    border-bottom: 1px solid #169FE6;
}

footer .interact a {
    padding: 1px;
	color:#999999;
}

footer .interact a:hover{
	color:#169FE6;
}

 /*------------------------------------------------------------------------------
	FOOTER LAYOUT
 -------------------------------------------------------------------------------*/

/*-------------------------------
	RADIO CHECKBOX STYLE
 ------------------------------*/
/*-------------------------------
	RADIO CHECKBOX STYLE DISABLED TO TEST 

input[type="checkbox"][disabled] + label span {
    display:inline-block;
    width:19px;
    height:19px;
    margin:-1px 4px 0 0;
    vertical-align:middle;
    background:url('/img/checkboxes.png') -38px top no-repeat;
}

input[type="checkbox"][disabled]:checked + label span { 
background:url('/img/checkboxes.png') -57px top no-repeat; }

	RADIO CHECKBOX STYLE DISABLED TO TEST
 ------------------------------*/

input[type="checkbox"],input[type="radio"]{
  display:none;
}

input[type="checkbox"]+label,input[type="radio"]+label{
  cursor:pointer;
}

input[type="checkbox"]+label:before,input[type="radio"]+label:before{
  content:"";
  display:inline-block;
  height:19px;
  margin:-3px 2px 0 4px;
  vertical-align:middle;
  width:19px;
}

input[type="checkbox"]+label:before{
  background:url("{T_THEME_PATH}/images/radio-check.png")left top no-repeat;
}

input[type="checkbox"]:checked+label:before{
  background:url("{T_THEME_PATH}/images/radio-check.png")-19px top no-repeat;
}

input[type="radio"]+label:before{
  background:url("{T_THEME_PATH}/images/radio-check.png")-38px top no-repeat;
}

input[type="radio"]:checked+label:before{
  background:url("{T_THEME_PATH}/images/radio-check.png")-57px top no-repeat;
}

input[type="checkbox"]:checked+label,input[type="radio"]:checked+label{
  font-weight:bold;
}

.selector, .checker, .button, .radio, .uploader {
    display: inline-block;
    vertical-align: middle;
}

.controls > .radio, .controls > .selector, .controls > .checkbox {
    display: inline-block;
    margin: 5px 15px 10px 0 !important;
    padding: 0 !important;
}

.radio-inline, .checkbox-inline {
    padding-left: 0;
}

.check-control {
    display: block;
    font-weight: normal;
}

.radio label, .checkbox label {
    padding-left: 5px;
}

.poll-na {
    border-radius: 0.25em;
    color: #888888;
    display: inline;
    font-size: 75%;
    font-weight: bold;
    line-height: 1;
    padding: 0.2em 0.6em 0.3em;
    text-align: center;
    vertical-align: baseline;
    white-space: nowrap;
}

.panel-poll {
    border-left: 2px solid #DBDBDB;
    border-right: 2px solid #DBDBDB;
    border-top: 2px solid #DBDBDB;
    box-shadow: 0 3px 0 0 #DBDBDB;
}
/*-------------------------------
	RADIO CHECKBOX STYLE
 ------------------------------*/
 
/*-------------------------------
	FORMS
 ------------------------------*/
 
.form-actions {
    background: linear-gradient(to bottom, #FFFFFF 0%, #F5F5F5 100%) repeat scroll 0 0 transparent;
    border: 1px dashed #C9C9C9;
    box-shadow: 0 1px 1px #FFFFFF inset, 0 1px 1px rgba(0, 0, 0, 0.05);
    margin-bottom: 0;
    transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
}

.form-actions {
    text-align: center;
	padding: 15px;
}

.control-group {
    border-bottom: 1px dashed #C9C9C9;
	margin-top:10px;
	padding-bottom: 10px;
}

.control-label {
    font-weight: bold;
	display:block;
}

/*** 
.form-control {
    margin-bottom:10px;
}
***/


/*** icons on input fields***/

.input-icon.left i {
    color: #CCCCCC;
    display: block;
    font-size: 16px;
    height: 16px;
    margin: 7px 2px 4px 10px;
    position: absolute;
    text-align: center;
    width: 16px;
    z-index: 999;
}

.input-icon.left input {
    padding-left: 33px ;
}

.input-icon input {
    padding-right: 25px ;
}

/*------------------------------
	FORMS
 ------------------------------*/
 
/*-------------------------------
	USER PROFILE AND GALLERY
------------------------------*/
 
/*-- Responsive avatars fix for Bootsrtap3x --*/
.avatar-frame img  {
  width: auto\9;
  height: auto;
  max-width: 100%;
  vertical-align: middle;
  border: 0;
  -ms-interpolation-mode: bicubic;
}

 
.avatar-frame img{border:6px solid #f6f6f6;}
.avatar-frame img{
	-moz-box-shadow: 0 0 3px rgba(0,0,0,.3); 
	-webkit-box-shadow: 0 0 3px rgba(0,0,0,.3); 
	box-shadow: 0 0 3px rgba(0,0,0,.3); 
}

.user-profile-avatar {
    margin: -10px auto 10px;
    text-align: center;
}
 
.user-profile-tab {
    border-left: 1px dashed #DDDDDD;
    padding: 10px;
}

.user-profile-row {
    height: 22px;
    line-height: 16px;
    position: relative;
}

.user-profile-row{
	border-top: 1px dotted #D5E4F1;
}

.user-profile-row:nth-child(2) {
	border-top: medium none;
}

.user-profile-tag {
    background-color: rgba(0, 0, 0, 0);
    bottom: 0;
    color: #667E99;
	font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
    font-weight: 700;
    left: 0;
    padding: 3px 5px 5px 0;
    position: absolute;
    text-align: center;
    top: 0;
    width: 62px;
}

.user-profile-output {
	color: #495D60;
    margin-left: 68px;
    overflow: hidden;
    padding: 4px;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.user-profile-output-contact {
    margin-left: 65px;
    padding: 2px;
}

.user-profile-output-contact ul li a {
    margin-left: -6px;
    margin-bottom: 4px;
}

.timepost {
    font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
    margin-top: -6px;
	color: #8C8C8C;
}

.user-profile-output-contact ul.inline > li {
    margin-left: -3px;
    padding-right: 2px;
}


#gallery input[type="radio"]:checked + label { 
    background-color:#EEEEEE;
}

/*-------------------------------
	ribbon on-line viewtopic and user profile style
------------------------------*/

.ribbon-wrapper.small {
    height: 68px;
    width: 65px;
}
.ribbon-wrapper {
    height: 88px;
    overflow: hidden;
    position: absolute;
    right: -3px;
    top: -3px;
    width: 85px;
}

.ribbon-wrapper.small .ribbon {
    padding: 0;
    width: 90px;
}
.ribbon-wrapper .ribbon.on-line{
    background-color: #31D83A;
}

.ribbon-wrapper .ribbon {
  display: block;
  font-size: 14px;
  font-weight: 600;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.10);
  color: #fff;
  text-align: center;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  position: relative;
  padding: 7px 0;
  left: -5px;
  top: 15px;
  width: 120px;
  line-height: 20px;
  background-color: #797979;
  -webkit-box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.3);
}
/*-------------------------------
	ribbon on-line viewtopic and user profile style
------------------------------*/


 /*-------------------------------
	SIGNATURE
 ------------------------------*/

.separator:before {
    background: none repeat scroll 0 0 #CDCDCD;
    content: "";
    display: block;
    height: 1px;
    left: 0;
    margin-top: 10px;
    position: absolute;
    right: 0;
    top: 50%;
}

.separator i {
    background: none repeat scroll 0 0 #F5F5F5;
    display: inline-block;
    left: 50%;
    margin-left: -25px;
    margin-top: -2px;
    padding: 0 10px;
    position: absolute;
    top: 50%;
	color: #CDCDCD;
}

.separator {
    display: block;
    height: 20px;
    margin: 12px 0 8px;
    padding: 0;
    position: relative;
	text-align:center;
	padding: 5px;
}

.signature-pm {
    line-height: 140%;
    overflow: hidden;
    padding-top: 0.2em;
    width: 100%;
}


/*-------------------------------
	USER PROFILE AND GALLERY
------------------------------*/

/* --------------------------------------------------------------
 MISC - BUTTONS - ALERTS
-------------------------------------------------------------- */

.btn {
   font-family: 'roboto condensed','Arial','Helvetica',sans-serif;
   font-weight: 700;
   color:#7F7F7F;
}

/*** remove dotted line feedback. this should not be used - use your own style instead ***/

.btn-link:hover, .btn-link:focus{
	text-decoration: none;
	color:#8C8C8C;
}

.btn:focus {
 outline: 0;
}

.bootstrap-select .btn-focus{
    outline: medium none;
}

.bootstrap-select.btn-group, .bootstrap-select.btn-group[class*="span"] {
    margin-bottom: 0;
}

.bootstrap-select.btn-group:not(.input-group-btn), .bootstrap-select.btn-group[class*="span"] {
    margin-bottom: 0;
}


.btn-success, .btn-danger, .btn-warning, .btn-info, .btn-primary {
	color: #FFFFFF !important;
}


/*** adjust the size in post ***/
.btn-post, .btn-group-post > .btn {
    border-radius: 3px;
    font-size: 12px;
    line-height: 1.5;
    padding: 3px 6px;
}

/*** fix the bootstrap gap in btn group ***/
.btn-group-fix {
    margin-left: -2px !important;
}

/*** fix the bootstrap space in btn group post ***/
.btn-post-fix {
   margin-left: 5px;
}

/*** fix the width in post dropdown menu ***/

.dropdown-menu-post > li > a {
    padding: 3px 5px;
}

/*** fix the width in post dropdown menu ***/


.alert .close {
    line-height: 20px;
    position: relative;
    right: -1px;
    top: -2px;
}

.close {
    color: #000000;
    float: right;
    font-size: 20px;
    font-weight: bold;
    line-height: 20px;
    opacity: 0.2;
    text-shadow: 0 1px 0 #FFFFFF;
}

.close-file-upload {
	display: inline-block;
	margin-left: 3px;
	margin-top: 1px;
	position: relative;
	vertical-align: middle;
}

.awe-remove-circle:before {
    content: "\f05c";
}

[class^="awe-"]:before, [class*=" awe-"]:before {
    display: inline-block;
    text-decoration: inherit;
}

[class^="awe-"], [class*=" awe-"] {
    background-image: none;
    background-position: 0 0;
    background-repeat: repeat;
    display: inline;
    font-family: FontAwesome;
    font-style: normal;
    font-weight: normal;
    height: auto;
    line-height: normal;
    margin-top: 0;
    text-decoration: inherit;
    vertical-align: baseline;
    width: auto;
}

.alert-info {
    background-color: #169FE6;
}

.alert-warning {
    background-color: #C09853;
}

.alert-danger, .alert-error {
    background-color: #D40000;
}

.alert-danger, .alert-error, .alert-warning, .alert-info {
    color: #FFFFFF;
}

.alert {
    border: 2px solid #D3D3D3;
	box-shadow: 0 1px 0 rgba(178, 0, 17, 0.05);
	padding: 10px;
}

.alert-info strong, .alert-warning strong, .alert-error strong {
    color: #FFFFFF;
}

.alert-info a , .alert-warning a, .alert-error a{
    color: #FFFFFF;
}

.alert-warning h4 {
    background-color: #C09853;
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.35);
}

.label-info, .badge-info {
    background-color: #169FE6;
}

/* --------------------------------------------------------------
WELLS AND WIDGETS
-------------------------------------------------------------- */

.well-qr {
    border: 1px solid #DBDBDB;
    border-radius: 3px 3px 3px 3px;
    padding: 5px 15px;
}

.well {
   position:relative;
   -webkit-box-shadow: 0 3px 0 0 #DBDBDB;
   -moz-box-shadow: 0 3px 0 0 #DBDBDB;
   box-shadow: 0 3px 0 0 #DBDBDB;
   border-left: 2px solid #DBDBDB;
   border-right: 2px solid #DBDBDB;
   border-top: 2px solid #DBDBDB;
}

.progress {
  height: 20px;
  margin-bottom: 20px;
  overflow: hidden;
  background-color: #f7f7f7;
  background-image: -moz-linear-gradient(top, #f5f5f5, #DFDFDF);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f5f5f5), to(#DFDFDF));
  background-image: -webkit-linear-gradient(top, #f5f5f5, #DFDFDF);
  background-image: -o-linear-gradient(top, #f5f5f5, #DFDFDF);
  background-image: linear-gradient(to bottom, #f5f5f5, #DFDFDF);
}


.widget {
    border-radius: 4px 4px 4px 4px;
    margin-bottom: 20px;
    position: relative;
}

.widget:before, .widget:after {
    content: "";
    display: table;
}

.widget:after {
    clear: both;
}

.widget-header {
    border-bottom: 1px solid #BBBBBB;
    border-radius: 4px 4px 0 0;
	cursor: pointer;
    min-height: 30px;
    padding: 5px 0 4px;
    position: relative;
}

.widget-header a {
    color: #7F7F7F;
    float: right;
	font-size: 18px;
    line-height: 24px;
    text-align: right;
}

.widget-header h4{
    font-size: 22px;
    color: #7F7F7F;
    font-style: normal;
    float: left;
    line-height: 24px;
	min-width: 160px;
	width: auto;
    margin: 0;
	border-bottom: medium none;
}

/* --------------------------------------------------------------
PAGINATION
-------------------------------------------------------------- */
.pagination span.page-sep, .pagination li.page-sep {
    display: none;
}

li.pagination {
	margin-top: 0;
}

.pagination span a:hover {
	border-color: #d2d2d2;
	background-color: #d2d2d2;
	color: #FFF;
	text-decoration: none;
}

/* Pagination in viewforum for multipage topics */
strong.pagination {
    display: inline-block;
    float: right;
    margin-top: -10px;
	height: 0;
    width: auto;
}

.pagination span a, li.pagination span a {
	background-color: #FFFFFF;
}

.pagination span a:hover, li.pagination span a:hover {
	background-color: #d2d2d2;
}

/*-------------------------------
	TOPIC-FORUM PAGINATION
------------------------------*/
td strong.pagination > span {
    border: 1px solid rgba(0, 0, 0, 0.1);
    border-radius: 3px 3px 3px 3px;
    display: inline-block;
    margin-top: 4px;
    overflow: hidden;
}

td strong.pagination > span a, td strong.pagination > span .page-dots {
    border-left: 1px solid rgba(0, 0, 0, 0.1);
    display: block;
    float: left;
    font-size: 11px;
    font-weight: normal;
    line-height: 18px;
    padding: 0 6px;
}

td strong.pagination > span a:first-child, td strong.pagination > span .page-dots:first-child {
    border-left: 0 none;
}

.pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
    background-color: #F5F5F5;
	border-color: #DDDDDD;
    color: #999999;
}

.pagination {
    margin-top: 0;
}

/*-------------------------------
	TOPIC-FORUM PAGINATION
------------------------------*/

/* --------------------------------------------------------------
PM STUFF
-------------------------------------------------------------- */

/* PM Message history */
.current {
	color: #000000;
}

/* PM marking colours */
.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {
	color: #BC2A4D;
}

.pmlist li.pm_marked_colour, .pm_marked_colour {
	color: #FF6600;
}

.pmlist li.pm_replied_colour, .pm_replied_colour {
	color: #A9B8C2;
}

.pmlist li.pm_friend_colour, .pm_friend_colour {
	color: #5D8FBD;
}

.pmlist li.pm_foe_colour, .pm_foe_colour {
	color: #000000;
}

/* Avatar gallery */
#gallery label {
	position: relative;
	float: left;
	margin: 10px;
	padding: 5px;
	width: auto;
	background: #FFFFFF;
	border: 1px solid #CCC;
	text-align: center;
}

#gallery label:hover {
	background-color: #EEEEEE;
	-webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
	-moz-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
	box-shadow: 0 1px 1px rgba(0,0,0,0.2);
}

/* Avatar gallery */
#gallery label {
	background-color: #FFFFFF;
	border-color: #CCC;
}

/* PM NOTIFIER */

.flyover {
   left: 150%;
   overflow: hidden;
   position: fixed;
   width: 50%;
   opacity: 0.9;
   z-index: 1050;
   transition: left 0.6s ease-out 0s;
}
 
.flyover-centered {
   top: 50%;
   transform: translate(-50%, -50%);
}

.flyover-bottom {
    bottom: 10px;
}

.flyover.in {
   left: 50%;
}

.jumbotron {
    border-radius: 6px;
}
.jumbotron {
    background-color: #EEEEEE;
    color: inherit;
    font-size: 21px;
    line-height: 2.14286;
    margin-bottom: 30px;
    padding: 30px;
}

.pmboots {
   background: none repeat scroll 0 0 rgba(218, 218, 218, 0.8);
    border: 2px solid rgba(255, 255, 255, 0.75);
    border-radius: 4px;
    box-shadow: 0 0 4px rgba(50, 50, 50, 0.5);
    color: #888888;
    margin: 0 12px 70px 0;
    padding: 10px;
    text-shadow: 0 1px 0 #FFFFFF;
    width: 255px;
}

.pmboots .close {
    line-height: 20px;
    position: relative;
    right: -4px;
    top: -1px;
}

.notifier-box {
    bottom: 0;
    position: fixed;
    right: 10px;
    z-index: 1000;
	-webkit-animation: fadein 2s; /* Safari and Chrome */
    -moz-animation: fadein 2s; /* Firefox */
    -ms-animation: fadein 2s; /* Internet Explorer */
    -o-animation: fadein 2s; /* Opera */
     animation: fadein 2s;
}

.pmtime {
    margin-top: 10px;
}

.pmboots > h4 {
  color:#727272;
}

.pmboots > a {
    color: #585858;
    font-size: 11px;
}

@keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}

/* Firefox */
@-moz-keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}

/* Safari and Chrome */
@-webkit-keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
}
/* PM NOTIFIER */
/* --------------------------------------------------------------
PM STUFF
-------------------------------------------------------------- */

/* --------------------------------------------------------------
BACK TO TOP
-------------------------------------------------------------- */
/* Back to Top Style */
.topstyle i {
    background-color: #8C8C8C;
    border: 3px solid #FFFFFF;
    border-radius: 50%;
    color: #FFFFFF;
    display: block;
    font-size: 30px;
    height: 45px;
	line-height: 35px;
    padding: 0;
    text-align: center;
    width: 45px;
}

.topstyle {
    bottom: 10px;
    cursor: pointer;
    position: fixed;
	outline: 0 none!important;
    right: 10px;
	z-index: 9999999;
	text-decoration: none!important;;
}
/* Back to Top Style */

/* --------------------------------------------------------------
400 - 500 PAGES
-------------------------------------------------------------- */

/* Error pages */
.big-title h1 {
    color: #7F7F7F;
    cursor: default;
    display: block;
    font-size: 250px;
	text-align: center;
    text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.5);
}

.big-title h1:before {
    color: #8C8C8C;
    content: "{";
    font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
    font-size: 250px;
    font-style: normal;
    font-weight: 400;
    line-height: 16px;
}

.big-title h1:after {
    color: #169FE6;
    content: "}";
    font-family: 'BebasNeueRegular','Arial','Helvetica',sans-serif;
    font-size: 250px;
    font-style: normal;
    font-weight: 400;
    line-height: 16px;
}

.well-schema {
    background-image:url("{T_THEME_PATH}/images/schema.png");
}

.big-title h2 {
    color: #7F7F7F;
    font-size: 27px;
    margin-bottom: 20px;
    margin-left: 20px;
	text-align: center;
}

.achievement {
    margin-bottom: 50px;
    padding-top: 21px;
    text-align: center;
}

.achievement i {
    background: none repeat scroll 0 0 #F0F0F0;
    border: 5px solid #FFFFFF;
    border-radius: 500px 500px 500px 500px;
    color: #F07073;
    font-size: 50px;
    padding: 12px 15px;
	text-shadow: 1px 3px 0px rgba(0, 0, 0, 0.2);
}
/* Error pages */

/*-------------------------------
	MCP BAN LIST FIX
------------------------------*/
 
.widget-ban.list ul li .count {
    color: #E04545;
}

.widget-ban.list ul li {
    line-height: 30px;
}
/*-------------------------------
	MCP BAN LIST FIX
------------------------------*/

/*----------------------------
	Disable Board
-----------------------------*/
#container {
    color: #555555;
    font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
    font-size: 50px;
    margin: 0 auto;
    min-height: 90px;
    text-align: center;
    text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.5);
    width: 100%;
}

#container:before{
	content: "\f120";
	font-family: FontAwesome;
	font-size: 60px;
	margin-right: 8px;
	opacity: 0.25;
	position: relative;
	text-shadow: 1px 1px 0 white;
}

#userText{
	background:none;
	border:none;
	border-bottom:1px solid #aaa;
	
	color: #777777;
    display: block;
    font-family: 'Roboto Condensed','Arial','Helvetica',sans-serif;
    font-size: 26px;
    margin: 0 auto 0px;
    padding: 10px;
    text-align: center;
    width: 300px;
    outline: none;
}
/*----------------------------
	Disable Board
-----------------------------*/
/*****************************************************************
 * Custom CSS Stylesheet. You can add any custom CSS selectors here after the comment line. 
 * They will be given the highest priority on any elements on the forum
 * Personilize your forum color scheme in one click here: www.sitesplat.com/phpBB3/ 
 * **************************************************************
 *
 * BBOOTS(3.0.2) @SiteSplat.com - Custom CSS STYLESHEET - 
 * 
 * **************************************************************
 *****************************************************************/
 
  /* ===[ CSS HOOK TOP ]=== */
 
 
 /* ===[ CSS HOOK BOOTTOM ]=== */

";s:10:"theme_path";s:6:"BBOOTS";s:10:"theme_name";s:6:"BBOOTS";s:11:"theme_mtime";s:10:"1404481984";s:11:"imageset_id";s:1:"2";s:13:"imageset_name";s:6:"BBOOTS";s:18:"imageset_copyright";s:32:"© SiteSplat.com (c) 2013 - 2015";s:13:"imageset_path";s:6:"BBOOTS";s:13:"template_path";s:6:"BBOOTS";}}
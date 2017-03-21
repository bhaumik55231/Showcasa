<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head> 
 <title>jQuery Star Rating Plugin v4.11 (2013-03-14)</title>
 <!--// plugin-specific resources //-->
	<script src='jquery.js' type="text/javascript"></script>
	<script src='jquery.MetaData.js' type="text/javascript" language="javascript"></script>
 <script src='jquery.rating.js' type="text/javascript" language="javascript"></script>
 <link href='jquery.rating.css' type="text/css" rel="stylesheet"/>
 <!--// documentation resources //-->
 <!--<script src="http://code.jquery.com/jquery-migrate-1.1.1.js" type="text/javascript"></script>-->
 <link type="text/css" href="/@/js/jquery/ui/jquery.ui.css" rel="stylesheet" />
 <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js" type="text/javascript"></script>
 <link href='documentation/documentation.css' type="text/css" rel="stylesheet"/>
	<script src='documentation/documentation.js' type="text/javascript"></script>
</head>
<body>
<div class="Clear" id="wrap">
 <div class="Clear" id="head">
  <table width="100%" cellspacing="10">
   <tr>
    <td valign="middle" width="120">
     <a href="/jquery/"><img src="documentation/fyneworks.png" width="101" height="24" alt="Fyneworks" /></a>
    </td>
    <td valign="middle" width="10">&nbsp;</td>
    <td valign="middle">
     <h1 style="float:left;">jQuery Star Rating Plugin</h1>
     v<strong style="color:#000;">4.11 (2013-03-14)</strong>
    </td>
    <td valign="middle" width="90" align="right">
     <strong style="color:#900;">Buy us a pint</strong>:
    </td>
    <td valign="middle" width="120" align="right">
     <img src="documentation/beer.png" width="24" height="32" alt="Beer" style="float:left" />
     <form action="https://www.paypal.com/cgi-bin/webscr" method="post" style="float:left">
      <input type="hidden" name="cmd" value="_s-xclick">
      <input type="hidden" name="hosted_button_id" value="6856904">
      <input type="image" src="documentation/paypal.png" width="81" height="32" border="0" name="submit" alt="Donate">
      <img alt="" border="0" src="https://www.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1">
     </form>
    </td>
    <td valign="middle" width="90" align="right">
     <strong style="color:#090;">Stay tuned</strong>:
    </td>
    <td valign="middle" width="98" align="right">
     <a href="http://plus.google.com/106186719756358832500" target="_blank"><img src="documentation/gplus.png" width="32" height="32" alt="+1"
     /></a><a href="http://www.facebook.com/fyneworks" target="_blank"><img src="documentation/facebook.png" width="32" height="32" alt="Like"
     /></a><a href="http://www.twitter.com/fyneworks" target="_blank"><img src="documentation/twitter.png" width="32" height="32" alt="Follow" /></a>
    </td>
    <td valign="middle" width="5">&nbsp;</td>
   </tr>
  </table>
 </div>
 <div class="Clear" id="body">
  <div class="Clear" id="ad">
   <!--//
   <div id='vu_ytplayer_vjVQa1PpcFNzWL_xJNUOpZhjtZP7PE8aGHuLQqHHrFI='><a href='http://www.youtube.com/browse'>Watch the latest videos on YouTube.com</a></div>
   <script type='text/javascript' src='http://www.youtube.com/watch_custom_player?id=vjVQa1PpcFNzWL_xJNUOpZhjtZP7PE8aGHuLQqHHrFI='></script>
   //-->
			<script type="text/javascript"><!--
   google_ad_client = "pub-9465008056978568";
   /* 120x600, created 25/11/09 */
   google_ad_slot = "4176621808";
   google_ad_width = 120;
   google_ad_height = 600;
   //--></script>
   <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
  </div>
  <div class="Clear" id="documentation">
   <div class="tabs">
    <ul class="Clear">
     <li><a href="#tab-Overview" id="btn-Overview">Intro</a></li>
     <li><a href="#tab-Testing" id="btn-Testing">Demos</a></li>
     <li><a href="#tab-API" id="btn-API">API</a></li>
     <li><a href="#tab-Database" id="btn-Database">Database Integration</a></li>
     <li><a href="#tab-Background" id="btn-Background">Background</a></li>
     <li><a href="#tab-Download" id="btn-Download">Download</a></li>
     <li><a href="#tab-Support" id="btn-Support">Support</a></li>
     <li><a href="#tab-License" id="btn-License">License</a></li>
     <li><a href="#tab-More" id="btn-More">More</a></li>
    </ul><!--// tabs //-->
    <!--//
    ####################################
    #
    #        * START CONTENT *
    #
    ####################################
    //-->
    
    
    
    
    
    
    
    
    
    
    
    <div id="tab-Overview">
    <h2>What is this?</h2>
    <p>
     The <strong>Star Rating Plugin</strong> is a plugin
     for the jQuery Javascript library that creates a non-obstrusive
     star rating control based on a set of radio input boxes.
    </p>
    
    <h2>What does it do?</h2>
    <ul>
     <li>
      It turns a collection of radio boxes into a neat star-rating control.
     </li>
     <li>
      It creates the interface based on standard form elements, which means the
      basic functionality will still be available even if Javascript is disabled.
     </li>
     <li>
      <strong style="color: rgb(0, 153, 0);">NEW</strong> (18-Feb-2013):
      Compatible with jQuery 1.3+ and the latest 1.9!
     </li>
    </ul>
    
    <h2>How do I use it?</h2>
    <p>
     Just add the <code><strong>star</strong></code> class to your radio boxes
    </p>
    <table cellspacing="5" width="100%">
     <tr>
      <td valign="top">
       <pre class="code"><code class="html">&lt;input name="star1" type="radio" class="star"/&gt;
&lt;input name="star1" type="radio" class="star"/&gt;
&lt;input name="star1" type="radio" class="star"/&gt;
&lt;input name="star1" type="radio" class="star"/&gt;
&lt;input name="star1" type="radio" class="star"/&gt;</code></pre>
      </td>
      <td valign="top" width="10">&raquo;</td>
      <td valign="top" width="180">
       <input name="star1" type="radio" class="star"/>
       <input name="star1" type="radio" class="star"/>
       <input name="star1" type="radio" class="star"/>
       <input name="star1" type="radio" class="star"/>
       <input name="star1" type="radio" class="star"/>
      </td>
     </tr>
    </table>
    
    <p>
     Use the <code><strong>checked</strong></code> property to specify the initial/default value of the control
    </p>
    <table cellspacing="5" width="100%">
     <tr>
      <td valign="top">
       <pre class="code"><code class="html">&lt;input name="star2" type="radio" class="star"/&gt;
&lt;input name="star2" type="radio" class="star"/&gt;
&lt;input name="star2" type="radio" class="star" checked="checked"/&gt;
&lt;input name="star2" type="radio" class="star"/&gt;
&lt;input name="star2" type="radio" class="star"/&gt;</code></pre>
      </td>
      <td valign="top" width="10">&raquo;</td>
      <td valign="top" width="180">
       <input name="star2" type="radio" class="star"/>
       <input name="star2" type="radio" class="star"/>
       <input name="star2" type="radio" class="star" checked="checked"/>
       <input name="star2" type="radio" class="star"/>
       <input name="star2" type="radio" class="star"/>
      </td>
     </tr>
    </table>
    
    <p>
     Use the <code><strong>disabled</strong></code> property to use a control for display purposes only
    </p>
    <table cellspacing="5" width="100%">
     <tr>
      <td valign="top">
       <pre class="code"><code class="html">&lt;input name="star3" type="radio" class="star" disabled="disabled"/&gt;
&lt;input name="star3" type="radio" class="star" disabled="disabled"/&gt;
&lt;input name="star3" type="radio" class="star" disabled="disabled" checked="checked"/&gt;
&lt;input name="star3" type="radio" class="star" disabled="disabled"/&gt;
&lt;input name="star3" type="radio" class="star" disabled="disabled"/&gt;</code></pre>
      </td>
      <td valign="top" width="10">&raquo;</td>
      <td valign="top" width="180">
       <input name="star3" type="radio" class="star" disabled="disabled"/>
       <input name="star3" type="radio" class="star" disabled="disabled"/>
       <input name="star3" type="radio" class="star" disabled="disabled" checked="checked"/>
       <input name="star3" type="radio" class="star" disabled="disabled"/>
       <input name="star3" type="radio" class="star" disabled="disabled"/>
      </td>
     </tr>
    </table>
    
    <h2>What about split stars and 'half ratings'???</h2>
    <p>
     Use metadata plugin to pass advanced settings to the plugin via the class property.
    </p>
    <table cellspacing="5" width="100%">
     <tr>
      <td valign="top">
       <pre class="code"><code class="html">&lt;input name="adv1" type="radio" class="star {split:4}"/&gt;
&lt;input name="adv1" type="radio" class="star {split:4}"/&gt;
&lt;input name="adv1" type="radio" class="star {split:4}"/&gt;
&lt;input name="adv1" type="radio" class="star {split:4}"/&gt;
&lt;input name="adv1" type="radio" class="star {split:4}" checked="checked"/&gt;
&lt;input name="adv1" type="radio" class="star {split:4}"/&gt;
&lt;input name="adv1" type="radio" class="star {split:4}"/&gt;
&lt;input name="adv1" type="radio" class="star {split:4}"/&gt;</code></pre>
      </td>
      <td valign="top" width="10">&raquo;</td>
      <td valign="top" width="180">
       <input name="adv1" type="radio" class="star {split:4}"/>
       <input name="adv1" type="radio" class="star {split:4}"/>
       <input name="adv1" type="radio" class="star {split:4}"/>
       <input name="adv1" type="radio" class="star {split:4}"/>
       <input name="adv1" type="radio" class="star {split:4}" checked="checked"/>
       <input name="adv1" type="radio" class="star {split:4}"/>
       <input name="adv1" type="radio" class="star {split:4}"/>
       <input name="adv1" type="radio" class="star {split:4}"/>
      </td>
     </tr>
    </table>
    
    <p>
     Use custom selector
    </p>
    <table cellspacing="5" width="100%">
     <tr>
      <td valign="top">
       <script>$(function(){ // wait for document to load
 $('input.wow').rating();
});</script>
       <pre class="code"><code class="js">$(function(){ // wait for document to load
 $('input.wow').rating();
});</code></pre>
       <pre class="code"><code class="html">&lt;input name="adv2" type="radio" class="wow {split:4}"/&gt;
&lt;input name="adv2" type="radio" class="wow {split:4}"/&gt;
&lt;input name="adv2" type="radio" class="wow {split:4}"/&gt;
&lt;input name="adv2" type="radio" class="wow {split:4}"/&gt;
&lt;input name="adv2" type="radio" class="wow {split:4}" checked="checked"/&gt;
&lt;input name="adv2" type="radio" class="wow {split:4}"/&gt;
&lt;input name="adv2" type="radio" class="wow {split:4}"/&gt;
&lt;input name="adv2" type="radio" class="wow {split:4}"/&gt;</code></pre>
      </td>
      <td valign="top" width="10">&raquo;</td>
      <td valign="top" width="180">
       <input name="adv2" type="radio" class="wow {split:4}"/>
       <input name="adv2" type="radio" class="wow {split:4}"/>
       <input name="adv2" type="radio" class="wow {split:4}"/>
       <input name="adv2" type="radio" class="wow {split:4}"/>
       <input name="adv2" type="radio" class="wow {split:4}" checked="checked"/>
       <input name="adv2" type="radio" class="wow {split:4}"/>
       <input name="adv2" type="radio" class="wow {split:4}"/>
       <input name="adv2" type="radio" class="wow {split:4}"/>
      </td>
     </tr>
    </table>
    
    <!-- advertising -->
    <p>Make sure to upload these changes on to your server<!--<a href="http://www.webhostingsearch.com/blog-hosting.php">blog hosting server</a>-->, this would be a great plugin for your blogs and review sites</p>
    
   </div><!--// tab-Overview //-->
   
   <div id="tab-Testing">
    <h2>Test Suite</h2>
<script type="text/javascript" language="javascript">
$(function(){ 
 $('#form1 :radio.star').rating(); 
 $('#form2 :radio.star').rating({cancel: 'Cancel', cancelValue: '0'}); 
 $('#form3 :radio.star').rating(); 
 $('#form4 :radio.star').rating(); 
});
</script>
<script>
$(function(){
 $('#tab-Testing form').submit(function(){
  $('.test',this).html('');
  $('input',this).each(function(){
   if(this.checked) $('.test',this.form).append(''+this.name+': '+this.value+'<br/>');
		});
  return false;
 });
});
</script>

<div class="Clear">&nbsp;</div>
<form id="form1">
<strong style='font-size:150%'>Test 1</strong> - A blank form
<table width="100%" cellspacing="10"> <tr>
  <td valign="top" width="">
   <table width="100%">
    <tr>
     <td valign="top" width="50%">
<div class="Clear">
    Rating 1:
    (N/M/Y)
    <input class="star" type="radio" name="test-1-rating-1" value="N" title="No"/>
    <input class="star" type="radio" name="test-1-rating-1" value="M" title="Maybe"/>
    <input class="star" type="radio" name="test-1-rating-1" value="Y" title="Yes"/>
   </div>
   <br/>
   <div class="Clear">
    Rating 2:
    (10 - 50)
    <input class="star" type="radio" name="test-1-rating-2" value="10"/>
    <input class="star" type="radio" name="test-1-rating-2" value="20"/>
    <input class="star" type="radio" name="test-1-rating-2" value="30"/>
    <input class="star" type="radio" name="test-1-rating-2" value="40"/>
    <input class="star" type="radio" name="test-1-rating-2" value="50"/>
   </div>
   <br/>
   <div class="Clear">
    Rating 3:
    (1 - 7)
    <input class="star" type="radio" name="test-1-rating-3" value="1"/>
    <input class="star" type="radio" name="test-1-rating-3" value="2"/>
    <input class="star" type="radio" name="test-1-rating-3" value="3"/>
    <input class="star" type="radio" name="test-1-rating-3" value="4"/>
    <input class="star" type="radio" name="test-1-rating-3" value="5"/>
    <input class="star" type="radio" name="test-1-rating-3" value="6"/>
    <input class="star" type="radio" name="test-1-rating-3" value="7"/>
   </div>
  </td>
     <td valign="top" width="50%">
   <div class="Clear">
    Rating 4:
    (1 - 5)
    <input class="star" type="radio" name="test-1-rating-4" value="1" title="Worst"/>
    <input class="star" type="radio" name="test-1-rating-4" value="2" title="Bad"/>
    <input class="star" type="radio" name="test-1-rating-4" value="3" title="OK"/>
    <input class="star" type="radio" name="test-1-rating-4" value="4" title="Good"/>
    <input class="star" type="radio" name="test-1-rating-4" value="5" title="Best"/>
   </div>
   <br/>
   <div class="Clear">
    Rating 5:
    (1 - 5, required)
    <input class="star required" type="radio" name="test-1-rating-5" value="1"/>
    <input class="star" type="radio" name="test-1-rating-5" value="2"/>
    <input class="star" type="radio" name="test-1-rating-5" value="3"/>
    <input class="star" type="radio" name="test-1-rating-5" value="4"/>
    <input class="star" type="radio" name="test-1-rating-5" value="5"/>
   </div>
   <br/>
   <div class="Clear">
    Rating 6 (readonly):
    (1 - 5)
    <input class="star" type="radio" name="test-1-rating-6" value="1" disabled="disabled"/>
    <input class="star" type="radio" name="test-1-rating-6" value="2" disabled="disabled"/>
    <input class="star" type="radio" name="test-1-rating-6" value="3" disabled="disabled"/>
    <input class="star" type="radio" name="test-1-rating-6" value="4" disabled="disabled"/>
    <input class="star" type="radio" name="test-1-rating-6" value="5" disabled="disabled"/>
   </div>
     </td>
    </tr>
   </table>
  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="50">
   <input type="submit" value="Submit scores!" />  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="160">
   <u>Test results</u>:<br/><br/>
   <div class="test Smaller">
    <span style="color:#FF0000">Results will be displayed here</span>
   </div>
  </td>
 </tr>
</table>
</form>

<div class="Clear">&nbsp;</div><div class="Clear">&nbsp;</div>

<form id="form2">
<strong style='font-size:150%'>Test 2</strong> - With defaults ('checked')
<table width="100%" cellspacing="10"> <tr>
  <td valign="top" width="">
   <table width="100%">
    <tr>
     <td valign="top" width="50%">
   <div class="Clear">
    Rating 1:
    (N/M/Y, default M)
   </div>
   <div class="Clear">
    <input class="star" type="radio" name="test-2-rating-1" value="N" title="No"/>
    <input class="star" type="radio" name="test-2-rating-1" value="M" title="Maybe" checked="checked"/>
    <input class="star" type="radio" name="test-2-rating-1" value="Y" title="Yes"/>
   </div>
   <div class="Clear">
    Rating 2:
    (10 - 50, default 30)
   </div>
   <div class="Clear">
    <input class="star" type="radio" name="test-2-rating-2" value="10"/>
    <input class="star" type="radio" name="test-2-rating-2" value="20"/>
    <input class="star" type="radio" name="test-2-rating-2" value="30" checked="checked"/>
    <input class="star" type="radio" name="test-2-rating-2" value="40"/>
    <input class="star" type="radio" name="test-2-rating-2" value="50"/>
   </div>
   <div class="Clear">
    Rating 3:
    (1 - 7, default 4)
   </div>
   <div class="Clear">
    <input class="star" type="radio" name="test-2-rating-3" value="1"/>
    <input class="star" type="radio" name="test-2-rating-3" value="2"/>
    <input class="star" type="radio" name="test-2-rating-3" value="3"/>
    <input class="star" type="radio" name="test-2-rating-3" value="4" checked="checked"/>
    <input class="star" type="radio" name="test-2-rating-3" value="5"/>
    <input class="star" type="radio" name="test-2-rating-3" value="6"/>
    <input class="star" type="radio" name="test-2-rating-3" value="7"/>
   </div>
  </td>
     <td valign="top" width="50%">
   <div class="Clear">
    Rating 4:
    (1 - 5, default 1)
   </div>
   <div class="Clear">
    <input class="star" type="radio" name="test-2-rating-4" value="1" title="Worst" checked="checked"/>
    <input class="star" type="radio" name="test-2-rating-4" value="2" title="Bad"/>
    <input class="star" type="radio" name="test-2-rating-4" value="3" title="OK"/>
    <input class="star" type="radio" name="test-2-rating-4" value="4" title="Good"/>
    <input class="star" type="radio" name="test-2-rating-4" value="5" title="Best"/>
   </div>
   <div class="Clear">
    Rating 5:
    (1 - 5, default 5, required)
   </div>
   <div class="Clear">
    <input class="star required" type="radio" name="test-2-rating-5" value="1"/>
    <input class="star" type="radio" name="test-2-rating-5" value="2"/>
    <input class="star" type="radio" name="test-2-rating-5" value="3"/>
    <input class="star" type="radio" name="test-2-rating-5" value="4"/>
    <input class="star" type="radio" name="test-2-rating-5" value="5" checked="checked"/>
   </div>
   <div class="Clear">
    Rating 6 (readonly):
    (1 - 5, default 3)
   </div>
   <div class="Clear">
    <input class="star" type="radio" name="test-2-rating-6" value="1" disabled="disabled"/>
    <input class="star" type="radio" name="test-2-rating-6" value="2" disabled="disabled"/>
    <input class="star" type="radio" name="test-2-rating-6" value="3" disabled="disabled" checked="checked"/>
    <input class="star" type="radio" name="test-2-rating-6" value="4" disabled="disabled"/>
    <input class="star" type="radio" name="test-2-rating-6" value="5" disabled="disabled"/>
   </div>
  </td>
 </tr>
</table>
  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="50">
   <input type="submit" value="Submit scores!" />  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="160">
   <u>Test results</u>:<br/><br/>
   <div class="test Smaller">
    <span style="color:#FF0000">Results will be displayed here</span>
   </div>
  </td>
 </tr>
</table>
</form>

<div class="Clear">&nbsp;</div><div class="Clear">&nbsp;</div>

<form id="form3A">
<script>
$(function(){
 $('.auto-submit-star').rating({
  callback: function(value, link){
   // 'this' is the hidden form element holding the current value
   // 'value' is the value selected
   // 'element' points to the link element that received the click.
   alert("The value selected was '" + value + "'\n\nWith this callback function I can automatically submit the form with this code:\nthis.form.submit();");
   
   // To submit the form automatically:
   //this.form.submit();
   
   // To submit the form via ajax:
   $(this.form).ajaxSubmit();
  }
 });
});
</script>
<strong style='font-size:150%'>Test 3-A</strong> - With callback
<table width="100%" cellspacing="10"> <tr>
  <td valign="top" width="">
<div class="Clear">
    Rating 1:
    (1 - 3, default 2)
    <input class="auto-submit-star" type="radio" name="test-3A-rating-1" value="1"/>
    <input class="auto-submit-star" type="radio" name="test-3A-rating-1" value="2" checked="checked"/>
    <input class="auto-submit-star" type="radio" name="test-3A-rating-1" value="3"/>
   </div>
   <div class="Clear">
    <pre class="code"><code class="js">$('.auto-submit-star').rating({
  callback: function(value, link){
    alert(value);
  }
});</code></pre>
   </div>
  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="50">
   <input type="submit" value="Submit scores!" />  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="160">
   <u>Test results</u>:<br/><br/>
   <div class="test Smaller">
    <span style="color:#FF0000">Results will be displayed here</span>
   </div>
  </td>
 </tr>
</table>
</form>

<div class="Clear">&nbsp;</div><div class="Clear">&nbsp;</div>

<script>
$(function(){
 $('.hover-star').rating({
  focus: function(value, link){
    // 'this' is the hidden form element holding the current value
    // 'value' is the value selected
    // 'element' points to the link element that received the click.
    var tip = $('#hover-test');
    tip[0].data = tip[0].data || tip.html();
    tip.html(link.title || 'value: '+value);
  },
  blur: function(value, link){
    var tip = $('#hover-test');
    $('#hover-test').html(tip[0].data || '');
  }
 });
});
</script>
<form id="form3B">
<strong style='font-size:150%'>Test 3-B</strong> - With hover effects
<table width="100%" cellspacing="10"> <tr>
  <td valign="top" width="">
<div class="Clear">
    Rating 1:
    (1 - 3, default 2)
    <div>
     <input class="hover-star" type="radio" name="test-3B-rating-1" value="1" title="Very poor"/>
     <input class="hover-star" type="radio" name="test-3B-rating-1" value="2" title="Poor"/>
     <input class="hover-star" type="radio" name="test-3B-rating-1" value="3" title="OK"/>
     <input class="hover-star" type="radio" name="test-3B-rating-1" value="4" title="Good"/>
     <input class="hover-star" type="radio" name="test-3B-rating-1" value="5" title="Very Good"/>
     <span id="hover-test" style="margin:0 0 0 20px;">Hover tips will appear in here</span>
    </div>
   </div>
   <div class="Clear">
    <pre class="code"><code class="js">$('.hover-star').rating({
  focus: function(value, link){
    var tip = $('#hover-test');
    tip[0].data = tip[0].data || tip.html();
    tip.html(link.title || 'value: '+value);
  },
  blur: function(value, link){
    var tip = $('#hover-test');
    $('#hover-test').html(tip[0].data || '');
  }
});</code></pre>
   </div>
  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="50">
   <input type="submit" value="Submit scores!" />  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="160">
   <u>Test results</u>:<br/><br/>
   <div class="test Smaller">
    <span style="color:#FF0000">Results will be displayed here</span>
   </div>
  </td>
 </tr>
</table>
</form>

<div class="Clear">&nbsp;</div><div class="Clear">&nbsp;</div>

<form id="form4">
<strong style='font-size:150%'>Test 4</strong> - <strong>Half Stars</strong> and <strong>Split Stars</strong>
<table width="100%" cellspacing="10"> <tr>
  <td valign="top" width="">
   <table width="100%">
    <tr>
     <td width="50%">
   <div class="Clear">
    Rating 1:
    (N/M/Y/?)
    <div><small><pre class="code"><code class="html">&lt;input class="star {half:true}"</code></pre></small></div>
    <input class="star {half:true}" type="radio" name="test-4-rating-1" value="N" title="No"/>
    <input class="star {half:true}" type="radio" name="test-4-rating-1" value="M" title="Maybe"/>
    <input class="star {half:true}" type="radio" name="test-4-rating-1" value="Y" title="Yes"/>
    <input class="star {half:true}" type="radio" name="test-4-rating-1" value="?" title="Don't Know"/>
   </div>
   <br/>
   <div class="Clear">
    Rating 2:
    (10 - 60)
    <div><small><pre class="code"><code class="html">&lt;input class="star {split:3}"</code></pre></small></div>
    <input class="star {split:3}" type="radio" name="test-4-rating-2" value="10"/>
    <input class="star {split:3}" type="radio" name="test-4-rating-2" value="20"/>
    <input class="star {split:3}" type="radio" name="test-4-rating-2" value="30"/>
    <input class="star {split:3}" type="radio" name="test-4-rating-2" value="40"/>
    <input class="star {split:3}" type="radio" name="test-4-rating-2" value="50"/>
    <input class="star {split:3}" type="radio" name="test-4-rating-2" value="60"/>
   </div>
   <br/>
   <div class="Clear">
    Rating 3:
    (0-5.0, default 3.5)
    <div><small><pre class="code"><code class="html">&lt;input class="star {split:2}"</code></pre></small></div>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="0.5"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="1.0"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="1.5"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="2.0"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="2.5"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="3.0"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="3.5" checked="checked"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="4.0"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="4.5"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-3" value="5.0"/>
   </div>
  </td>
  <td valign="top" width="50%">
   <div class="Clear">
    Rating 4:
    (1-6, default 5)
    <div><small><pre class="code"><code class="html">&lt;input class="star {split:2}"</code></pre></small></div>
    <input class="star {split:2}" type="radio" name="test-4-rating-4" value="1" title="Worst"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-4" value="2" title="Bad"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-4" value="3" title="OK"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-4" value="4" title="Good"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-4" value="5" title="Best" checked="checked"/>
    <input class="star {split:2}" type="radio" name="test-4-rating-4" value="6" title="Bestest!!!"/>
   </div>
   <br/>
   <div class="Clear">
    Rating 5:
    (1-20, default 11, required)
    <div><small><pre class="code"><code class="html">&lt;input class="star {split:4}"</code></pre></small></div>
    <input class="star {split:4} required" type="radio" name="test-4-rating-5" value="1"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="2"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="3"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="4"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="5"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="6"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="7"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="8"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="9"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="10"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="11" checked="checked"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="12"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="13"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="14"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="15"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="16"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="17"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="18"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="19"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-5" value="20"/>
   </div>
   <br/>
   <div class="Clear">
    Rating 6 (readonly):
    (1-20, default 13)
    <div><small><pre class="code"><code class="html">&lt;input class="star {split:4}"</code></pre></small></div>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="1" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="2" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="3" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="4" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="5" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="6" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="7" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="8" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="9" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="10" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="11" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="12" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="13" disabled="disabled" checked="checked"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="14" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="15" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="16" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="17" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="18" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="19" disabled="disabled"/>
    <input class="star {split:4}" type="radio" name="test-4-rating-6" value="20" disabled="disabled"/>
   </div>
     </td>
    </tr>
   </table>
  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="50">
   <input type="submit" value="Submit scores!" />  </td>
  <td valign="top" width="5">&nbsp;</td>  <td valign="top" width="160">
   <u>Test results</u>:<br/><br/>
   <div class="test Smaller">
    <span style="color:#FF0000">Results will be displayed here</span>
   </div>
  </td>
 </tr>
</table>
</form>
   </div><!--// tab-Testing //-->
   
   <div id="tab-API">
    <h2>API</h2>
    <p class="B Yes">NEW to v3</p>
    
    <p>API methods can be invoked this this:</p>
    <div><pre class="code"><code class="js">$(selector).rating(
 'method', // method name
 [] // method arguments (not required)
);</code></pre></div>
    
    <br/><br/><br/>
    
    <h3>$().rating('select', index / value)</h3>
    <p>
     Use this method to set the value (and display) of the star rating control
     via javascript. It accepts the index of the star you want to select (0 based)
     or its value (which must be passed as a string.
    </p>
    <p>
     Example: (values A/B/C/D/E)
    </p>
    <form name="api-select">
     <input type="radio" class="star" name="api-select-test" value="A"/>
     <input type="radio" class="star" name="api-select-test" value="B"/>
     <input type="radio" class="star" name="api-select-test" value="C"/>
     <input type="radio" class="star" name="api-select-test" value="D"/>
     <input type="radio" class="star" name="api-select-test" value="E"/>
     <input type="button" value="Submit &raquo;" onClick="
      $(this).next().html( $(this.form).serialize() || '(nothing submitted)' );
     "/>
     <span></span>
     <br/>
     By index:
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',0)" value="0"/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',1)" value="1"/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',2)" value="2"/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',3)" value="3"/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',4)" value="4"/>
     eg.: $('input').rating('select',3)
     <br/>
     By value:
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',this.value)" value="A"/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',this.value)" value="B"/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',this.value)" value="C"/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',this.value)" value="D"/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('select',this.value)" value="E"/>
     eg.: $('input').rating('select','C')
    </form>
    
    <br/><br/><br/>
    
    <h3>$().rating('readOnly', true / false)</h3>
    <p>
     Use this method to set the value (and display) of the star rating control
     via javascript. It accepts the index of the star you want to select (0 based)
     or its value (which must be passed as a string.
    </p>
    <p>
     Example: (values 1,2,3...10)
    </p>
    <form name="api-readonly">
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="1"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="2"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="3"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="4"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="5"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="6"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="7"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="8"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="9"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="10"/>
     <input type="button" value="Submit &raquo;" onClick="
      $(this).next().html( $(this.form).serialize() || '(nothing submitted)' );
     "/>
     <span></span>
     <br/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('readOnly',true)" value="Set readOnly = true"/>
     eg.: $('input').rating('readOnly',true)
     <br/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('readOnly',false)" value="Set readOnly = false"/>
     eg.: $('input').rating('readOnly',false) or simply $('input').rating('readOnly');
    </form>
    
    <br/><br/><br/>
    
    <h3>$().rating('disable') / $().rating('enable')</h3>
    <p>
     These methods bahve almost exactly as the readOnly method, however
     they also control whether or not the select value is submitted with
     the form.
    </p>
    <p>
     Example: (values 1,2,3...10)
    </p>
    <form name="api-readonly">
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="1"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="2"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="3"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="4"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="5"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="6"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="7"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="8"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="9"/>
     <input type="radio" class="star {split:2}" name="api-readonly-test" value="10"/>
     <input type="button" value="Submit &raquo;" onClick="
      $(this).next().html( $(this.form).serialize() || '(nothing submitted)' );
     "/>
     <span></span>
     <br/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('disable')" value="disable"/>
     eg.: $('input').rating('disable')
     <br/>
     <input type="button" onClick="javascript:$('input[type=radio]',this.form).rating('enable')" value="enable"/>
     eg.: $('input').rating('enable');
    </form>
   </div><!--// tab-API //-->
   
   <div id="tab-Database">
    <h2>Database Integration</h2>
    <p>
     I'm sorry to say that for the time being, <strong>it is up to you</strong>
     to create the server-side code that will
     process the form submission, store it somewhere (like a database) and do stuff with it -
     such as displaying averages and stop users from voting more than once.
    </p>
    <p>
     <strong>However</strong>, here are a few alternatives if you don't feel
     like getting down and dirty with some good old coding:
     <br>http://www.yvoschaap.com/index.php/weblog/css_star_rater_ajax_version/
     <br>
     <br>and
     <br>part 1: http://www.komodomedia.com/blog/2005/08/creating-a-star-rater-using-css/
     <br>part 2: http://slim.climaxdesigns.com/tutorial.php?section=slim&amp;id=2
     <br>part 3: http://slim.climaxdesigns.com/tutorial.php?section=slim&amp;id=3
     <br>part 4: http://slim.climaxdesigns.com/tutorial.php?section=slim&amp;id=9
    </p>
   </div><!--// tab-Database //-->
   
   <div id="tab-Background">
    <h2>Background Information</h2>
    <p>As far as I know, this is how it goes...</p>
    <ul type="1">
    <li> It all started with <em>Will Stuckey</em>'s <a target="_blank" href="http://www.visualjquery.com/rating/rating_redux.html">jQuery Star Rating Super Interface!</a> </li>
    <li> The original then became the inspiration for <em>Ritesh Agrawal</em>'s <a target="_blank" href="http://php.scripts.psu.edu/rja171/widgets/rating.php">Simple Star Rating System</a>,
     which allows for a GMail like star/un-star toggle. </li>
    <li> This was followed by several spin-offs... (one of which is the <a target="_blank" href="http://www.learningjquery.com/2007/05/half-star-rating-plugin">Half-star rating plugin</a>) </li>
    <li> Then someone at <a target="_blank" href="http://www.phpletter.com/Demo/Jquery-Star-Rating-Plugin/">PHPLetter.com modified the plugin</a> to overcome the issues - then plugin was now based on standard form elements, meaning
     the interface would still work with Javascript disabled making it <em>beautifully downgradable</em>. </li>
    <li> Then I came along and noticed a fundamental flaw with the latter: there could only
     be one star rating control per page. The rest of the story is what you will see below... </li>
    <li> (12-Mar-08): Then <strong>Keith Wood</strong> added some very nice functionality to the plugin:
     option to disable the cancel button, option to make the plugin readOnly and ability to accept any value (other than whole numbers) </li>
    <li> (20-Mar-08): Now supports half-star, third-star, quater-star, etc... Not additional code required. No additional images required. </li>
    <li> (31-Mar-08): Two new events, hover/blur (arguments: [value, linkElement]) </li>
    <li> <strong style="color: rgb(0, 153, 0);">NEW</strong> (18-Feb-2013): Compatible with jQuery 1.6, 1.7, 1.8 and 1.9! </li>
    </ul>
   </div><!--// tab-Background //-->
   
   <div id="tab-Download">
    <h2>Download</h2>
    <p>
     This project (and all related files) can also be accessed via its
     <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/">Google Code Project Page</a>.
    </p>
    <table cellspacing="5">
     <tr>
      <td valign="top" align="right">Full Package:</td>
      <td valign="top">
       <big>
        <img src="documentation/download.gif" style="margin:0 5px 5px 0; float:left;">
        v<strong>4.11</strong>
        <a href="http://jquery-star-rating-plugin.googlecode.com/svn/trunk/star-rating.zip"><strong>star-rating.zip</strong></a>
       </big>
      </td>
     </tr>
     <tr>
      <td valign="top" align="right"></td>
      <td valign="top">
       <div class="Clear" style="margin:0 0 10px 0;" onClick="$('a:eq(0)',this).click()">
        <strong class="Yes" style="background:#090; color:#fff; padding:3px;">Stay up-to-date!</strong>
        <span style="padding:3px;">
         Major updates will be announced on
         <a target="_blank" href="http://twitter.com/fyneworks" class="external">Twitter</a>:
         <a target="_blank" href="http://twitter.com/fyneworks" class="external">@fyneworks</a>
        </span>
       </div>
      </td>
     </tr>
     <tr>
      <td valign="top" align="right">Core Files:</td>
      <td valign="top">
       These are the individual required files (<span class="Warning">already included in the zip package above</span>)
       <ul>
        <li><a target="_blank" href='http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.pack.js'><strong>jquery.rating.pack.js</strong></a> (~5kb) packed, tiny and ready to use - <strong>recommended</strong></li>
        <li>...or unpacked version for development purposes: <a href="http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.js">jquery.rating.js</a> (~14kb) - <em>optional</em></li>
        <li><a target="_blank" href="http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.css"><strong>jQuery.Rating.css</strong></a></li>
        <li><a target="_blank" href="http://jquery-star-rating-plugin.googlecode.com/svn/trunk/delete.gif"><strong>delete.gif</strong></a></li>
        <li><a target="_blank" href="http://jquery-star-rating-plugin.googlecode.com/svn/trunk/star.gif"><strong>star.gif</strong></a></li>
       </ul>
      </td>
     </tr>
     <tr>
      <td valign="top" align="right">jQuery:</td>
      <td valign="top">
       <a target="_blank" href="http://code.jquery.com/jquery-1.9.1.min.js">jquery-1.9.1.min.js</a> (<a target="_blank" href="http://www.jquery.com/">see jQuery.com</a>)
      </td>
     </tr>
    </table>
    
    <h2>Related Downloads</h2>
    <table cellspacing="5">
     <tr>
      <td valign="top" align="right">Related:</td>
      <td valign="top">
       <a target="_blank" href="http://plugins.jquery.com/project/metadata/">Metadata plugin</a> - Used to retrieve inline configuration from class variable
       <br/>
       <a target="_blank" href="http://www.malsup.com/jquery/form/">Form plugin</a> - Used to submit forms via ajax
      </td>
     </tr>
    </table>
    
    <h2>SVN Repository</h2>
    <p>
     If you're a major geek or if you really really want to stay up-to-date with
     with future updates of this plugin, go ahead and plug yourself to the
     <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/">SVN Repository</a>
     on the official
     <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/">Google Code Project Page</a>.
    </p>
    <table cellspacing="5">
     <tr>
      <td valign="top" align="right">SVN Checkout:</td>
      <td valign="top">
       <img src="documentation/js.gif" style="margin:0 5px 5px 0; float:left;">
       <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/source/checkout"><strong>SVN Checkout Instructions</strong></a>
      </td>
     </tr>
     <tr>
      <td valign="top" align="right">Browse Online:</td>
      <td valign="top">
       <img src="documentation/folder.gif" style="margin:0 5px 5px 0; float:left;">
       <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/source/browse/"><strong>Browse Source</strong></a>
      </td>
     </tr>
    </table>
    
    <h2>Alternative Download - From this website</h2>
    <p>
     Just in case it's the end of the world and the Google Code site becomes unavailable,
     the project files can also be downloaded from this site.
     <br/>
     However, please note that this site is updated periodically whereas the Google Code
     project is kept up-to-date almost instantaneously. If you'd like the very latest
     version of this plugin
     <strong>you are advised to use the links above and download the files from Google Code</strong>
      - this will ensure the files you download have the very latest features and bug fixes.
    </p>
    <table cellspacing="5">
     <tr>
      <td valign="top" align="right">Full Package:</td>
      <td valign="top">
       <img src="documentation/download.gif" style="margin:0 5px 5px 0; float:left;">
       v<strong>4.11</strong>
       <a href="./star-rating.zip"><strong>star-rating.zip</strong></a>
      </td>
     </tr>
     <tr>
      <td valign="top" align="right"></td>
      <td valign="top">
       <div class="Clear" style="margin:0 0 10px 0;" onClick="$('a:eq(0)',this).click()">
        <strong class="Yes" style="background:#090; color:#fff; padding:3px;">Stay up-to-date!</strong>
        <span style="padding:3px;">
         Major updates will be announced on
         <a target="_blank" href="http://twitter.com/fyneworks" class="external">Twitter</a>:
         <a target="_blank" href="http://twitter.com/fyneworks" class="external">@fyneworks</a>
        </span>
       </div>
      </td>
     </tr>
     <tr>
      <td valign="top" align="right">Core Files:</td>
      <td valign="top">
       These are the individual required files (<span class="Warning">already included in the zip package above</span>)
       <ul>
        <li><a target="_blank" href='./jquery.rating.pack.js'><strong>jquery.rating.pack.js</strong></a> (~5kb) packed, tiny and ready to use - <strong>recommended</strong></li>
        <li>...or unpacked version for development purposes: <a href="./jquery.rating.js">jquery.rating.js</a> (~14kb) - <em>optional</em></li>
        <li><a target="_blank" href='./jquery.rating.css'><strong>jQuery.Rating.css</strong></a></li>
        <li><a target="_blank" href="./delete.gif"><strong>delete.gif</strong></a></li>
        <li><a target="_blank" href="./star.gif"><strong>star.gif</strong></a></li>
       </ul>
      </td>
     </tr>
     <tr>
      <td valign="top" align="right">jQuery:</td>
      <td valign="top">
       <a target="_blank" href="http://code.jquery.com/jquery-1.9.1.min.js">jquery-1.9.1.min.js</a> (<a target="_blank" href="http://www.jquery.com/">see jQuery.com</a>)
      </td>
     </tr>
    </table>
    
   </div><!--// tab-Download //-->
   
   <div id="tab-Support">
    
    <h2>Support</h2>
    <p>
     Quick Support Links: <a href="http://groups.google.com/group/jquery-en" class="B Yes">Help me!</a>
     | <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/issues/entry">Report a bug</a>
     | <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/issues/entry">Suggest new feature</a>
<!--//
     OLD: Forget Trac - Let's use Google Code!
     | <a target="_blank" href="http://plugins.jquery.com/node/add/project_issue/MultiFile/bug">Report a bug</a>
     | <a target="_blank" href="http://plugins.jquery.com/node/add/project_issue/MultiFile/feature">Suggest new feature</a>
//-->
    </p>
    <p>
     Support for this plugin is available through the <a target="_blank" href="http://jquery.com/discuss/" class="external">jQuery Mailing List</a>.
     This is a very active list to which many jQuery developers and users subscribe.
     <br/>
     Access to the jQuery Mailing List is also available through
     <a target="_blank" href="http://www.nabble.com/JQuery-f15494.html" class="external">Nabble Forums</a>
     and the
     <a target="_blank" href="http://groups.google.com/group/jquery-en" class="external">jQuery Google Group</a>.
    </p>
    <p>
     <strong class="Warning">WARNING:</strong>
     Support will not be provided via the <a href="http://plugins.jquery.com/">jQuery Plugins</a>
     website.
     If you need help, please direct your questions to the
     <a target="_blank" href="http://groups.google.com/group/jquery-en" class="external">jQuery Mailing List</a>
     or 
     <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/issues/entry">report an issue</a>
     on the official
     <a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/">Google Code Project Page</a>.
    </p>
    
    <h2>Official Links</h2>
    <ul>
     <li><a target="_blank" href="http://plugins.jquery.com/project/MultipleFriendlyStarRating/" class="external">jQuery Plugin Project Page</a></li>
     <li><a target="_blank" href="http://code.google.com/p/jquery-star-rating-plugin/">Google Code Project Page</a></li>
    </ul>
    
    <h2>Credits</h2>
    <ul>
     <li>Fyneworks.com <a href="http://www.fyneworks.com/">professional web design</a> and <a href="http://www.fyneworks.com/">London SEO consultant</a></li>
     <li><a target="_blank" href="http://famfamfam.com/">famfamfam.com</a>'s most excellent <a target="_blank" href="http://famfamfam.com/lab/icons/silk/">silk icon set</a></li>
     <li><a target="_blank" href="http://keith-wood.name/">Keith Wood</a> - The brain behind v2.1</li>
     <li>Dean Edwards - Author of <a target="_blank" href="http://dean.edwards.name/packer/">JS Packer</a> used to compress the plugin</li>
     <li>Will Stuckey, Ritesh Agrawal and everyone else who worked in the previous versions of the plugin - I'm not so good with research...</li>
    </ul>
    <p>
     If we've missed anyone (anyone!) please contact us (info at fyneworks.com) and we'll make sure 
     to give credit where credit is due.
    </p>
   </div><!--// tab-Support //-->
   
   
   
   
   
   
   
   
   
   
   
   
    
    <!--//
    ####################################
    #
    #         * END CONTENT *
    #
    ####################################
    //-->
    <div id="tab-License">
     <h2>What's the catch?</h2>
     <p>
      <strong>There's no catch</strong>. Use it, abuse it - even take it
      apart and modify it if you know what you're doing. You don't have to,
      but if you're feeling generous you can link back to this website (instructions below).
     </p>
     
     <h2>Attribute this work</h2>
     <div class="license-info">
      <table cellspacing="5" width="100%">
       <tr>
        <td width="90" align="right">Attribution link:</td>
        <td valign="top">&copy; <a href="http://www.fyneworks.com/">Fyneworks.com</a></td>
       </tr>
       <tr>
        <td width="90" align="right">HTML Code:</td>
        <td valign="top">
         <input type="text" onFocus="this.select();" onClick="this.select()" readonly="" style="width:100%;"
          value="&amp;copy; &lt;a href=&quot;http://www.fyneworks.com/&quot;&gt;Fyneworks.com&lt;/a&gt;"
         />
        </td>
       </tr>
      </table>
     </div>
     <h2>License Info</h2>
     <div class="license-info">
      <table cellspacing="5" width="100%">
       <tr>
        <td valign="middle">
         <strong>Star Rating Plugin</strong>
         by <a href="http://www.fyneworks.com/">Fyneworks.com</a>
         is licensed,
         <a target="_blank" href="http://jquery.org/license">as jQuery is</a>,
         under the
         <a target="_blank" href="http://en.wikipedia.org/wiki/MIT_License">MIT License</a>.
        </td>
        <td width="100"><a target="_blank" href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="Creative Commons License" style="border-width:0" src="http://creativecommons.org/images/public/somerights20.png"/></a></td>
       </tr>
       <tr>
        <td colspan="2">
 <pre class="copyright">Copyright &copy; 2008 <a href="http://www.fyneworks.com/">Fyneworks.com</a>
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.</pre>
        </td>
       </tr>
      </table>
     </div><!--// License Info //-->
    </div><!--// tab-License //-->
    <div id="tab-More">
     <table width="100%" cellspacing="20">
      <tr>
       <td valign="top" width="50%">
        <h2><a href="/jquery/multiple-file-upload/"><strong>Multiple File Upload Plugin</strong></a></h2>
        <p>
         <!--//<strong style="color:green;">UPDATED!</strong>//-->
         Provides a non-obstrusive way of selecting multiple files for upload.
         Supports <a href="http://bassistance.de/jquery-plugins/jquery-plugin-validation/">validation</a> and <a href="http://malsup.com/jquery/form/">form</a> plugins.
        </p>
        
        <h2><a href="/jquery/star-rating/"><strong>Star-Rating Plugin</strong></a></h2>
        <p>
         <!--//<strong style="color:green;">UPDATED!</strong>//-->
         Creates a non-obstrusive star-rating control from any set of radio boxes.
         Features include half/partial stars and an API for programmatic control.
         Supports the <a href="http://bassistance.de/jquery-plugins/jquery-plugin-validation/">validation plugin</a>.
        </p>
        
        <h2><a href="/jquery/xml-to-json/"><strong>XML to JSON</strong></a></h2>
        <p>
         <!--//<strong style="color:green;">UPDATED!</strong>//-->
         Convert XML to JSON and read data from XML files/RSS feeds with ease.
        </p>
       
       </td>
       <td valign="top" width="50%">
       
        <h2><a href="/jquery/CKEditor/"><strong>CKEditor Plugin</strong></a></h2>
        <p>
         jQuery plugin for non-obstrusive integration of textareas with <strong>CKEditor</strong>.
        </p>
        
        <h2><a href="/jquery/FCKEditor/"><strong>FCKEditor Plugin</strong></a></h2>
        <p>
         jQuery plugin for non-obstrusive integration of textareas with <strong>FCKEditor</strong>.
         <br/>
         <strong style="color:#f00;">OLD!</strong> It is recommended you upgrade to CKEditor (above).
        </p>
        
        <h2><a href="/jquery/Codepress/"><strong>Codepress Plugin</strong></a></h2>
        <p>
         jQuery plugin for non-obstrusive integration of textareas with <strong>Codepress</strong>.
        </p>
       </td>
      </tr>
     </table>
    </div><!--// tab-More//-->
   </div><!--// tabs //-->   
  </div>
 </div>
 <div id="push"></div>
</div>
<div id="foot">
 <table width="100%" cellspacing="10">
  <tr>
   <td valign="middle" width="400" align="left">
    <a href="http://www.fyneworks.com/jquery/multiple-file-upload/">Multiple File Upload</a>,
    <a href="http://www.fyneworks.com/jquery/star-rating/">Star Rating</a>,
    <a href="http://www.fyneworks.com/jquery/CKEditor/">CKEditor</a>
    <a href="http://www.fyneworks.com/jquery/xml-to-json/">XML to JSON</a>
   </td>
   <td valign="top" align="center">
    [<a href="#">back to top</a>]
   </td>
   <td valign="middle" width="400" align="right" colspan="2">
    <span class='st_sharethis_hcount' displayText='ShareThis'></span>
    <span class='st_twitter_hcount' displayText='Tweet'></span>
    <span class='st_facebook_hcount' displayText='Facebook'></span>
    <!--//<span class='st_stumbleupon_hcount' displayText='StumbleUpon'></span>//-->
    <span class='st_plusone_hcount' displayText='Google +1'></span>
    <!--//<span class='st_digg_hcount' displayText='Digg'></span>//-->
    <!--//<span class='st_reddit_hcount' displayText='Reddit'></span>//-->
    <script type="text/javascript">var switchTo5x=true;</script>
    <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
    <script type="text/javascript">stLight.options({publisher: "08df54c5-b85f-4b2d-aac7-16cb76975bb3"}); </script>
   </td>
  </tr>
  <tr>
   <td valign="top" width="400">
    <strong>jQuery Plugins</strong>
    by <a href="http://www.fyneworks.com/">Fyneworks.com</a>
    <br/>
    Licensed under the
    <a target="_blank" href="http://en.wikipedia.org/wiki/MIT_License">MIT License</a> and the
    <a target="_blank" href="http://creativecommons.org/licenses/GPL/2.0/">GPL License (2.0)</a>.
   </td>
   <td valign="top" align="center">&nbsp;
    
   </td>
   <td valign="top" width="400" align="right">
    <span style="color:#090;">
     Tested with jQuery 1.9 on:<br/>IE6, IE7, IE8, FF, Chrome, Opera and Safari
    </span>
   </td>
   <td valign="top" width="120" align="right">
    <a target="_blank" href="http://jquery.com/"><img width="110" height="31" src="documentation/jq.png" alt="Powered by jQuery" style="vertical-align:middle;"/></a>
   </td>
  </tr>
 </table>
</div>
<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-1942730-1']);
		_gaq.push(['_setDomainName', 'fyneworks.com']);
		_gaq.push(['_trackPageview']);
		(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
</script>
</body>
</html>

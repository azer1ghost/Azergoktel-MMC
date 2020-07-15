
<?php include 'admin/setting/config.php';
 
 ?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Azergoktel</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link href="css/searchbox.css" rel="stylesheet" type="text/css" />
</head>
<body>
<header>
<div class="htop">
<div class="wrapper">
<div class="logo"><a href="index.html"><img alt="" src="images/logo.png" /></a><span>G&Ouml;KTEL KABEL</span></div>

<div class="rightpnl">
<div class="top">
<form action="searchresults.php" method="POST" ><label for="search"><input id="search" name="ap" type="text" /> </label></form>

<ul class="language">
	<li><a href="index.php">az</a></li>
	<li><a href="ru.html">ru</a></li>
	<li><a href="en.html">en</a></li>
</ul>
</div>

<div class="bot">
<ul>
	<li class="phone"><a href="tel:+994 12 447 1014">+994 12 447 1014</a></li>
	<li class="mail"><a href="mailto:info@azergoktel.az">info@azergoktel.az</a></li>
</ul>
</div>
</div>

<div class="clear"></div>
</div>
</div>

<div class="menu">
<div class="wrapper">
<h1>"AZƏRGÖKTEL" MMC</h1>

<div class="rightmenu">
<ul>
	<li><a href="index.php">Ana səhifə</a></li>
	<li><a href="index.php/#about">Haqqımızda</a></li>
	<li><a href="index.php/#product">Məhsullar</a>
	<ul>
		<li><a href="#">Enerji kabelləri</a></li>
		<li><a href="#">Daxili telefon kabelləri</a></li>
		<li><a href="#">Hallojensiz elektrik kabelləri</a></li>
	</ul>
	</li>
	<li><a href="index.php/#sert">Sertifikatlar</a></li>
	<li><a href="index.php/#kat">Kataloq</a></li>
</ul>
</div>

<div class="clear"></div>
</div>
</div>
</header>

<section>
<div class="banner">
<div class="list_carousel">
<ul id="slider">
	<li style="background-image:url('images/slider1.jpg');"></li>
	<li style="background-image:url('images/slider2.jpg');"></li>
	<li style="background-image:url('images/slider3.jpg');"></li>
	<li style="background-image:url('images/slider4.jpg');"></li>
	<li style="background-image:url('images/slider5.jpg');"></li>
	<li style="background-image:url('images/slider6.jpg');"></li>
</ul>

<div class="clear"></div>

<div class="positioned">
<div class="wrapper"><a class="prev" href="#" id="prev"><img alt="" src="images/prev-arrow.png" /></a> <a class="next" href="#" id="next"><img alt="" src="images/next-arrow.png" /></a>

<div class="clear"></div>
</div>
</div>

<div class="pager" id="pager"></div>
</div>
</div>
</section>

<section>

<div class="title" id="product">
<h2>Products</h2>
</div>

<div class="wrapper">

<div id="1" class="content mid">
<h3>Search resutls</h3>



<ul>
<?php

	/* Get data. */
$keyword=$_POST['ap'];
$sql="SELECT product_id,
			 product_name,
			 product_picurl
 FROM products WHERE product_name LIKE :keyword; DESC LIMIT $start, $limit";
$results=$db->prepare($sql);
$results->bindValue(':keyword','%'.$keyword.'%');
$results->execute();



while($row=$results->fetch(PDO::FETCH_ASSOC)){  ?>

    <li>
        <div class="border">

            <table>
                <tbody>
                    <tr>
                        <td><img alt="<?php echo $row['product_picurl']?>" src="<?php echo $row['product_picurl']?>" />
                        </td>
                    </tr>
                </tbody>
            </table>

            <h4><?php echo $row['product_name']?></h4>

        </div>
    </li>


<?php } ?>
</ul>


<div class="clear"></div>




</div>
</div>
</section>



<footer>
<div class="wrapper">
<div class="inner">
<div class="lft">
<form action="contact-form.php" method="post">
<h2>BİZƏ E-MAİL G&Ouml;NDƏRİN</h2>
<input name="name" placeholder="Ad" required="" type="name" /> <input name="surname" placeholder="Soyad" required="" type="surname" /> <input name="email" placeholder="E-mail ünvanınız" required="" type="email" /> <input name="subject" placeholder="Mövzu" required="" type="name" /><textarea name="message" placeholder="Mətn..." required=""></textarea> <input type="submit" value="Göndər" /></form>
</div>

<div class="lft last">
<p>&Uuml;nvan:<br />
Azərbaycan, Bakı, Ramana</p>

<p>Tel.:<br />
<a href="tel:+994 12 447 1014">+994 12 447 1014</a><br />
<a href="tel:+994 51 544 2080">+994 51 544 2080</a></p>
</div>

<div class="clear"></div>
</div>
</div>

<div class="copy">
<div class="wrapper">&copy; B&uuml;t&uuml;n h&uuml;q&uuml;qlar Factory Agency tərəfindən qorunur | 2017</div>
</div>
</footer>
<!-- include jQuery + carouFredSel plugin --><script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script><script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js"></script><script type="text/javascript">
		$(function() {
			$('#slider').carouFredSel({
				responsive: true,
				prev: '#prev',
				next: '#next',
				pagination: "#pager",
				//width: '100%',
				scroll: {items: 1, fx : "crossfade", easing : "linear", duration : 1500},
				items: {
				//	height: '30%',	//	optionally resize item-height
					visible: {
						min: 1,
						max: 1
					}
				}
			});
		});
	</script></body>
</html>
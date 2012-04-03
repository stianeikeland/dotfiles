#!/bin/bash

echo '<html>
<head>
<link rel="stylesheet" href="photo.css" type="text/css">
</head>
<body>
<div class="photo">' > index.html

for i in *.jpg; do
	echo "<div class=\"tekstboks\"><div class=\"img\"><img src='$i' /></div><br />$i</div>" >> index.html
done

echo '</div>
</body>
</html>' >> index.html


echo '
body {
	text-align: center;
	background-color: #555;
}

div.photo {
	text-align:center;
}

div.tekstboks {
	color: #fff;
	margin-bottom: 15px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 18px;
	font-weight: normal;
	line-height: 20px;
	text-shadow: 1px 1px 1px #000;
}

img {
	margin: 0px;
	border: 1px solid #555;
}

div.img {
	background-color: #eee;
	margin: 10px;
	padding: 10px;
	display:inline-block;
	border: 1px solid black;
}
' > photo.css
<!DOCTYPE html>
<html>
<head>
	<title>Midannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="/Myndir/css.css">
	<meta charset="utf-8">
</head>
<body>
	<div class="haus">
	<h3>Fyrirtæki</h3>
	<h3>staður</h3>
	<h3>Bensín</h3>
	<h3>Díesel</h3>
	</div>
	<div class="rapper">
	%for i in data["results"]:
	%	if name == i["company"]:
		<section>{{i["company"]}}</section>
		<section>{{i["name"]}}</section>
		<section>{{i["bensin95"]}}</section>
		<section>{{i["diesel"]}}</section>
		% end
	% end
	</div>
</body>
</html>
memes

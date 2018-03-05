<!DOCTYPE html>
<html>
<head>
	<title>Midannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="/Myndir/css.css">
	<meta charset="utf-8">
</head>
<body>
	<h1>Söluaðilar eldsneytis á Íslandi</h1>
	<div class="image">
		<img src="/Myndir/AO.png">
		<img src="/Myndir/Costco.png">
		<img src="/Myndir/Dælan.png">
		<img src="/Myndir/N1.png">
		<img src="/Myndir/OB.png">
		<img src="/Myndir/Olís.png">
		<img src="/Myndir/Orkan.png">
		<img src="/Myndir/Orkanx.png">
		<img src="/Myndir/skeljungur.png">
	</div>
	<br>
	<%
	listi=[]
	for i in data["results"]:
		if i["company"] not in listi:
			listi.append(i["company"])
		end
	end
	%>
	<div class="wrapper">
	%for i in listi:
		<div class="box">
			<a href="/company/{{i}}">{{i}}</a>
		</div>	
	%end
	</div>
	<%
	listi2=[]
	for p in data["results"]:
		if p["bensin95"] not in listi :
			listi2.append(p["bensin95"])
		end
	end
	listi3=[]
	listi3.append(min(listi2))
	%>
	<h4>Ódýrasta Bensín : {{listi3}} kr. hjá Costco Iceland </h4>

	<%
	listi4=[]
	for p in data["results"]:
		if p["diesel"] not in listi :
			listi4.append(p["diesel"])
		end
	end
	listi5=[]
	listi5.append(min(listi4))
	%>
	<h4>Ódýrasta Díesel : {{listi5}} kr. hjá Costco Iceland </h4>

	%for i in data["timestampPriceCheck"]:
		<h4>Síðast uppfært {{i}}</h4>
	%end
	
</body>
</html>

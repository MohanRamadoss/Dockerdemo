ip=$(ip addr show  | grep ens | grep inet |  awk '{ print substr($2,1) }')
echo "<html>
<head>
<title>Hello Docker</title>
</head>
<body>
<h1>Hello Docker!</h1>
</body>
</html>"
echo "<h1>$(hostname) $ip<h1>" >> index.html 

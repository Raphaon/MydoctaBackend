<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Docta policy</title>
</head>
<body>
    
    <p>
       @php
           $policy ="";
        $monfichier = fopen('Docs/policy.txt', 'r');
        while($ligne = fgets($monfichier))
           echo htmlentities($ligne);
        fclose($monfichier);
       @endphp
    </p>
</body>
</html>
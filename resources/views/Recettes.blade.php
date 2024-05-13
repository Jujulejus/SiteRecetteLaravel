<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Infos sur la recette sélectionné</title>
</head>
<header>
    <div><a id="login" href="http://127.0.0.1:8000/login">Se connecter</a>
        <a id="register" href="http://127.0.0.1:8000/register">S'incrire</a>
        <a id="profil" href="http://127.0.0.1:8000/profile">Profil</a></div>
</header>
<body>
<h1>{{ $recettes -> title ?? 'None' }}</h1>
<p> {{ $recettes -> recipe ?? 'None' }}</p>
<h2>{{ $recettes -> author ?? 'None' }}</h2>
</body>
</html>

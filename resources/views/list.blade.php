<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Liste Des Recettes</title>
</head>
<header>
    <div><a id="login" href="http://127.0.0.1:8000/login">Se connecter</a>
    <a id="register" href="http://127.0.0.1:8000/register">S'incrire</a>
    <a id="profil" href="http://127.0.0.1:8000/profile">Profil</a></div>
</header>
<body>
<ul>
    @foreach($recettes as $recette)
        <li><a href="{{$recette -> recipe_id}}">{{$recette['title']}}</a></li>
    @endforeach
</ul>
</body>
</html>

<?php

use Illuminate\Http\Request;

define('LARAVEL_START', microtime(true));

// Determine if the application is in maintenance mode...
if (file_exists($maintenance = __DIR__.'/../storage/framework/maintenance.php')) {
    require $maintenance;
}

// Register the Composer autoloader...
require __DIR__.'/../vendor/autoload.php';

// Bootstrap Laravel and handle the request...
(require_once __DIR__.'/../bootstrap/app.php')
    ->handleRequest(Request::capture());




//global $recipes, $users;
//session_start();
//require_once(__DIR__ . '/../.env');
//require_once(__DIR__ . '/variables.php');
//require_once(__DIR__ . '/function.php');
?>
<!---->
<!--<!DOCTYPE html>-->
<!--<html>-->
<!--<head>-->
<!--    <meta charset="UTF-8">-->
<!--    <meta http-equiv="X-UA-Compatible" content="IE=edge">-->
<!--    <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
<!--    <title>Site de recettes - Page d'accueil</title>-->
<!--    <link-->
<!--            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"-->
<!--            rel="stylesheet"-->
<!--    >-->
<!--</head>-->
<!--<body class="d-flex flex-column min-vh-100">-->
<!--<div class="container">-->
<!--    --><?php //require_once(__DIR__ . '/views/template/header.php'); ?>
<!--    <h1>Site de recettes</h1>-->
<!---->
<!--    --><?php //require_once(__DIR__ . '/views/login.php'); ?>
<!---->
<!--    --><?php //foreach (getRecipes($recipes) as $recipe) : ?>
<!--        <article>-->
<!--            <h3><a href="views/recipes_read.php?id=--><?php //echo($recipe['recipe_id']); ?><!--">--><?php //echo($recipe['title']); ?><!--</a></h3>-->
<!--            <div>--><?php //echo $recipe['recipe']; ?><!--</div>-->
<!--            <i>--><?php //echo displayAuthor($recipe['author'], $users); ?><!--</i>-->
<!--            --><?php //if (isset($_SESSION['LOGGED_USER']) && $recipe['author'] === $_SESSION['LOGGED_USER']['email']) : ?>
<!--                <ul class="list-group list-group-horizontal">-->
<!--                    <li class="list-group-item"><a class="link-warning" href="recipemanagement/recipe_update.php?id=--><?php //echo($recipe['recipe_id']); ?><!--">Editer l'article</a></li>-->
<!--                    <li class="list-group-item"><a class="link-danger" href="recipemanagement/recipes_delete.php?id=--><?php //echo($recipe['recipe_id']); ?><!--">Supprimer l'article</a></li>-->
<!--                </ul>-->
<!--            --><?php //endif; ?>
<!--        </article>-->
<!--    --><?php //endforeach ?>
<!--</div>-->
<!---->
<?php //require_once(__DIR__ . '/views/template/footer.php'); ?>
<!--</body>-->
<!--</html>-->

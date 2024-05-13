<?php

namespace App\Http\Controllers;

use App\Models\recipes;
use Illuminate\Http\Request;

class recettecontroller extends Controller
{
    public function index() {
        return view('list',
            ['recettes' => recipes::all()]);
    }
    public function show($recipe_id) {
        if(recipes::find($recipe_id) === null) {
        }
        return view('recettes', [
            'recettes' => recipes::find($recipe_id)
        ]);
    }
}

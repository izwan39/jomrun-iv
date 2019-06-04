<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Movie;
use App\Favorite;

class MoviesController extends Controller
{
    public function index() 
    {
        //GET CURRENT USER
        $user = auth()->user();

        //GET ALL FAVORITE MOVIES BY THIS USER ID
        $favorites = DB::table('favorites')->where('user_id', $user->id)->pluck('movie_id');

        $movies = Movie::all();

        return view('movies.index', compact('movies','favorites'));
    }
}

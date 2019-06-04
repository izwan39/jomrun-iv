<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Favorite;

class FavoritesController extends Controller
{
    public function index() 
    {
        //GET CURRENT USER
        $user = auth()->user();

        //GET ALL FAVORITE MOVIES BY THIS USER ID
        $favorites = DB::table('favorites')->where('user_id', $user->id)->pluck('movie_id');
        $movies = DB::table('movies')->whereIn('id', $favorites)->get();

        return view('favorites.index', compact('movies'));
    }

    /**
     * Create a new favorite instance.
     *
     * @param  Int  $movie_id
     * @return Response
     */
    public function store(Int $movie_id)
    {
        $favorite = new Favorite;

        $favorite->user_id = auth()->user()->id;
        $favorite->movie_id = $movie_id;

        $favorite->save();

        $prevPage = app('router')->getRoutes()->match(app('request')->create(url()->previous()))->getName();
        return redirect()->route($prevPage);
    }

    /**
     * Remove a new favorite instance.
     *
     * @param  Int  $movie_id
     * @return Response
     */
    public function delete(Int $movie_id)
    {
        $whereArray = array('user_id' => auth()->user()->id,'movie_id' => $movie_id);
        $query = DB::table('favorites');
        foreach($whereArray as $field => $value) {
            $query->where($field, $value);
        }

        $query->delete();

        $prevPage = app('router')->getRoutes()->match(app('request')->create(url()->previous()))->getName();
        return redirect()->route($prevPage);
    }
}

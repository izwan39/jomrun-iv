@extends('layouts.app')

@section('firstDropdown')
    <a class="dropdown-item" href="{{ route('movies') }}">
        Movies
    </a>
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        @foreach ($movies as $movie)
        <div class="col-md-5">
            <div class="card mb-4">
                <div class="card-header">
                    {{$movie->title}} <BR/>
                    Release Date : {{$movie->release_date}}
                    <!-- TODO - PLACE A HEART ICON ON THE RIGHT SIDE TO REPLACE THE "Remove from Favorites" TEXT -->
                </div>

                <div class="card-body">
                    <img src='{{$movie->poster_url}}' width="100%">
                </div>

                <div class="card-footer text-center">
                    <!-- WHEN CLICKED, UPDATE DB -->
                    <span><a href='/remFrFav/{{ $movie->id }}'>Remove from Favorites</a></span>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection

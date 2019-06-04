@extends('layouts.app')

@section('firstDropdown')
    <a class="dropdown-item" href="{{ route('favorites') }}">
        Favorites
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
                    <!-- TODO - PLACE A HEART ICON ON THE RIGHT SIDE TO REPLACE THE "Add to Favorites" TEXT -->
                </div>

                <div class="card-body">
                    <img src='{{$movie->poster_url}}' width="100%">
                </div>

                <div class="card-footer text-center">
                    <!-- WHEN CLICKED, UPDATE DB -->
                    <?php
                        if (in_array($movie->id, $favorites->toArray())) {
                            $sAction = "<a href='/remFrFav/".$movie->id."'>Remove from Favorites</a>";
                        }
                        else {
                            $sAction = "<a href='/addToFav/".$movie->id."'>Add to Favorites</a>";
                        }
                    ?>
                    <span>{!!$sAction!!}</span>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection

@extends('layouts.master')
@section('title')
    Trending quotes
@endsection

@section('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
@endsection

@section('content')
     @if(!empty(Request::segment(1)))
        <section class="filter-box">
            A filter has been set! <a href="{{ route('index') }}"> Show all quotes</a>
        </section>
    @endif

    @if(count($errors) > 0)
        <section class="info-box fail">
            <ul>
                @foreach($errors->all() as $error)
                    {{ $error }}
                 @endforeach
            </ul>
        </section>
    @endif
    <section class="quotes">
        @if(Session::has('success'))
            <section class="info-box success">
                {{ Session::get('success') }}
            </section>
        @endif
        <h1>Latest Quotes</h1>
        @for($i = 0; $i < count($quotes); $i++)
            <article class="quote {{ $i % 3 === 0 ? 'first-in-line' : (($i + 1) % 3 === 0 ? 'last-in-line' : '') }}">
                <div class="delete"><a href="{{ route('delete', ['quoted_id' => $quotes[$i]->id]) }}">x</a></div>
                {{ $quotes[$i]->quote }}

                <div class="info">Created by <a href="{{ route('index', ['author' => $quotes[$i]->author->name]) }}">{{ $quotes[$i]->author->name }}</a> on {{ $quotes[$i]->created_at }}</div>
            </article>
        @endfor
        <div class="pagination">
            @if($quotes->currentPage() !== 1)
                <a href="{{ $quotes->previousPageUrl() }}"><span class="fa fa-caret-left fa-2x"></span></a>
            @endif
            @if($quotes->currentPage() !== $quotes->lastPage() && $quotes->hasPages())
                <a href="{{ $quotes->nextPageUrl() }}"><span class="fa fa-caret-right fa-2x"></span></a>
            @endif
        </div>
    </section>
    <section class="edit-quotes">
        <h1>Add a Quote</h1>
        <form method="POST" action="{{ route('create') }}">
            <div class="input-group">
                <label for="author">Your Name</label>
                <input type="text" name="author" id="author" placeholder="Your Name" >
            </div>
            <div class="input-group">
				<label for="email">Your E-mail</label>
				<input type="text" name="email" id="email" placeholder="Your E-mail">
			</div>
            <div class="input-group">
                <label for="quote">Your Quote</label>
                <textarea type="text" name="quote" id="quote" rows="5" placeholder="Your Quote"></textarea>
                <br>
                <br>
                {{ csrf_field() }}
                <button type="submit" class="btn">Submit quote</button>
            </div>
        </form>
    </section>
@endsection
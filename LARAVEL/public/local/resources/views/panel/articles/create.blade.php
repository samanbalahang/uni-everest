@extends('panel.layouts.main')
@section('title')
    افزودن مقاله
@endsection
@section('main')
    {!! Form::model($article , [
        'method' => 'POST',
        'route' =>  'admin.articles.store',
        'files' =>  TRUE
    ]) !!}
    
    @include('panel.articles.form')

    <button type="submit" class="btn btn-success">
        افزودن
    </button>

    {!! Form::close() !!}
@endsection
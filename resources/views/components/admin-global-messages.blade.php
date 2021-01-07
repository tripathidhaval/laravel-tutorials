@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if(Session::has('message'))
    <div class="alert alert-primary">{{Session::get('message')}}</div>
@elseif(Session::has('success'))
    <div class="alert alert-success">{{Session::get('success')}}</div>
@elseif(Session::has('warning'))
    <div class="alert alert-warning">{{Session::get('warning')}}</div>
@elseif(Session::has('danger'))
    <div class="alert alert-danger">{{Session::get('danger')}}</div>

@endif

<?php /*<div class="alert alert-danger">{{session('message')}}</div>*/?>


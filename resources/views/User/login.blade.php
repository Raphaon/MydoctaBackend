@extends('Layouts/Home/main')
@section('container')

<div class="card">
    <form action="" method="post" class="form">


        <div class="card card-header">
            <div class="login-title">
                <h1>Login </h1>
            </div>
        </div>

        <div class="login-body">
            <div class="form form-row">
                <label class="form form-control" for="">Email : </label>
                <input type="email" name="" id="" class="form form-control" placeholder="Please enter you mail adresse ex :  example@somthing.com">
            </div>

            <label for="">Password : </label>
            <input type="password" name="" id="" class="form form-control" placeholder="Password">
            <input type="button" value="Se connecter" class="btn btn-success">
            <small>Vous n'avez pas encore de compte ? <a class="link link-border" href="{{ route('signUp') }}">Créer un Compte</a> </small>
        </div>
    </div>




    </form>


@endsection

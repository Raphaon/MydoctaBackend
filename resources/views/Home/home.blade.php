@extends('Layouts/Home/main')
@section('container')

<ul class="list-item service-list">
    <li class="list list-item">
        <a href="{{ route('signUp') }}">Consultation</a>
    </li>
    <li class="list list-item">
        <a href="http://">Rendez-vous</a>
    </li>
    <li class="list list-item">
        <a href="http://">Laboratoire</a>
    </li>
    <li class="list list-item">
        <a href="http://">¨Pharmacie</a>
    </li>
    <li class="list list-item">
        <a href="http://">Service 1</a>
    </li>
    <li class="list list-item">
        <a href="http://">Service 1</a>
    </li>
    <li class="list list-item">
        <a href="http://">Service 1</a>
    </li>
    <li class="list list-item">
        <a href="http://">Service 1</a>
    </li>
</ul>

<style>
.service-list{

    display: inline-block;
    width: 100%;
}

.service-list li{
    display: inline-block;
    width: 23%;
    margin : 10px;

}

.service-list li a
{

    color:rgb(44, 43, 43);
    display: inline-block;
    list-style-type: none;
    border-radius: 10px;
    box-shadow: 4px 2px 1px 2px rgb(180, 176, 176);
    height: 100px;
    width: 100%;
    font-family: "lucida calligraphy", "vivaldi";
    text-align: center;
    font-size: 1.2em;
    line-height: 100px;
    padding:5px;
}
</style>
@endsection

@include('Layouts.App.Auth.Partials.__head')
<body class="hold-transition login-page">
    @if (!Route::is('signUp') and !Route::is('lockScreen'))
    <div class="login-box">
        <div class="login-logo">
          <a href="route('Home')">@yield('pageContentTitle')</a>
        </div>
    @endif

        @yield('content')


@include('Layouts.App.Auth.Partials.__foot')

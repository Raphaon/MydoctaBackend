
@include('Layouts/Partials/__head')
<body>
    <!-- Left Panel -->
        @include('Layouts/Partials/__leftMenu')
    <!-- /#left-panel -->




    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">
        <!-- Header-->
        @include('Layouts/Partials/__headerMenu')
        <!-- /#header -->
        <!-- Content -->
        <div class="content">
            @yield('content')
        </div>
        <!-- /.content -->
        <div class="clearfix"></div>
        <!-- Footer -->
        @include('./Layouts/Partials/__Foot')

    <!-- /#right-panel -->
    @include('/Layouts/Partials/__scriptBottom')

</body>
</html>

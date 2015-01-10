@extends('layout')
@section('body')
<body>
@include('admin/topnav')
    @yield('admincontent')
</body>
@stop
@section('script')
{{HTML::script('src/js/jquery.friendurl.js')}}
{{HTML::script('src/jupload/js/vendor/jquery.ui.widget.js')}}
{{HTML::script('src/jupload/js/jquery.iframe-transport.js')}}
{{HTML::script('src/jupload/js/jquery.fileupload.js')}}
{{HTML::script('src/jupload/js/jquery.fileupload-process.js')}}
<script>
 $(function () {
     $('input[name=title]').friendurl({id : 'url'});
 });
</script>
@stop
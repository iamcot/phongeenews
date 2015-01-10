@extends(Config::get('site.theme').'/layout/page')
@section('pagecontent')
<div class="servicebanner">
    <img src="{{URL::to('src/img/servicebanner.png')}}">
</div>
<div class="wrap">
    <h1>Portfolio
    <hr>
    </h1>
    <div class="servicetext">
    Sterling has worked on a wide range of projects from a small office to a large school and restaurants. Sterling provides unmatched service from the initial consultation to the comple- tion of the job. Our clients have said time and again that Sterling's unique "one-stop shopping" approach is invaluable.<br>
    From corporate offices to schools to restaurants, Sterling has done it all. The case studies below highlight just a few of our recent projects.
    </div>
    <div class="row-fluid">
    <div class="col col-xs-6 col-sm-3 servicecol">
        <h3>ARCHITECTURE</h3>
        <ul class="list-unstyled">
        @if(isset($services['architect']))
            @foreach($services['architect'] as $article)
                <li>
                    <a href="{{URL::to('dich-vu/'.$article->url.'.'.$article->id.'.html')}}">
                        <img src="{{URL::to('uploads/thumbnails/article/'.$article->image)}}">
                    </a>
                </li>
            @endforeach
        @endif
        </ul>
    </div>
    <div class="col col-xs-6 col-sm-3 servicecol">
        <h3>CONSTRUCTION</h3>
        <ul class="list-unstyled">
        @if(isset($services['construction']))
            @foreach($services['construction'] as $article)
                <li>
                    <a href="{{URL::to('dich-vu/'.$article->url.'.'.$article->id.'.html')}}">
                        <img src="{{URL::to('uploads/thumbnails/article/'.$article->image)}}">
                    </a>
                </li>
            @endforeach
        @endif
        </ul>
    </div>
    <div class="col col-xs-6 col-sm-3 servicecol">
        <h3>FURNITURE</h3>
        <ul class="list-unstyled">
        @if(isset($services['furniture']))
            @foreach($services['furniture'] as $article)
                <li>
                    <a href="{{URL::to('dich-vu/'.$article->url.'.'.$article->id.'.html')}}">
                        <img src="{{URL::to('uploads/thumbnails/article/'.$article->image)}}">
                    </a>
                </li>
            @endforeach
        @endif
        </ul>
    </div>
    <div class="col col-xs-6 col-sm-3 servicecol">
        <h3>OTHER SERVICE</h3>
        <ul class="list-unstyled">
        @if(isset($services['service']))
            @foreach($services['service'] as $article)
                <li>
                    <a href="{{URL::to('dich-vu/'.$article->url.'.'.$article->id.'.html')}}">
                        <img src="{{URL::to('uploads/thumbnails/article/'.$article->image)}}">
                    </a>
                </li>
            @endforeach
        @endif
        </ul>
    </div>
    </div>
    <hr>
</div>
@stop
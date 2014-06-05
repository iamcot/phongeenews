@if($rootcat)
<div class="col-xs-8 border-right newsroot">
    <ul>
    @foreach($lists as $news)
      <li>
          <h3>{{$news->latitle}}</h3>
      </li>
    @endforeach
    </ul>
    {{$lists->links()}}
</div>
<div class="col-xs-4">
    <h3>Chuyên mục</h3>
    <ul>
        <li>aaaa</li>
        <li>bbb</li>
        <li>ccc</li>
        <li>ddd</li>
    </ul>
    <h3>Tin hot</h3>
    <ul>
        <li>aaaa</li>
        <li>bbb</li>
        <li>ccc</li>
        <li>ddd</li>
    </ul>
</div>
@else
    @if(count($lists)>0)
        @foreach($lists as $news)
        <div class="media">
            @if($news->laimage != '')
            <a class="pull-left" href="{{URL::to('/tin-tuc/'.$news->laurl)}}.html">
                <img class="media-object" src="{{URL::to('/uploads/thumbnails/product/'.$news->laimage)}}" alt="{{$news->latitle}}">
            </a>
            @endif
            <div class="media-body">

                <h2 class="media-heading"><a href="{{URL::to('/tin-tuc/'.$news->laurl)}}.html">{{$news->latitle}} </a></h2>

                {{$news->lashortinfo}}
            </div>
        </div>
        @endforeach
    <p class="clearfix"></p>
    @endif
@endif
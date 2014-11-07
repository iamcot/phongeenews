<li>
    <figure>
        <div class="imgHolder">
            <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">
                <img src="{{URL::to('/uploads/thumbnails/product/'.$news->laimage)}}" alt=""></a>
        </div>
        <figcaption>
            <div class="entry-header">
                <h4 class="entry-title">
                    <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">{{$news->latitle}}</a>
                </h4>
                <div class="list-item-price">{{number_format($news->laprice,0,',','.')}} VNĐ</div>
                <div class="list-item-price txt-color-red">{{number_format($news->laprice,0,',','.')}} VNĐ (online)</div>
                <div class="entry-format">
                    <div class="post-format image-format"> </div>
                </div>
            </div>

        </figcaption>
    </figure>
</li>
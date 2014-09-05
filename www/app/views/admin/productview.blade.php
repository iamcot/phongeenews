<div class="col-xs-8">
    {{Form::open(array('method'=>'get'))}}
    <div class="col-xs-6">
    {{Form::text('filter',(( Input::has('filter') )?Input::get('filter'):''),array('class'=>'form-control','placeholder'=>'Lọc theo tên sản phẩm ','style'=>'display:inline-block'))}}
    </div>
    <div class="col-xs-6">
        <select name='filtercat'>
            <option value="all">Tất cả</option>
            {{$cats}}
        </select>
        <button class="btn btn-primary btn-sm">Lọc</button>
    </div>
</div>
<div class="col-xs-4">
    <a class="btn btn-success pull-right btn-sm"  href="{{url('admin/product/create')}}">Tạo sản phẩm mới </a>
</div>
<div class="clearfix"></div><br>
<table class="table mylist table-bordered table-responsive">
    <thead>
        <tr>
            <th>ID</th>
            <th>Tên Sản phẩm</th>
            <th>URL</th>
            <th>Giá</th>
            <th>Thư mục</th>
            <th>Nhà SX</th>
            <th>Klg (g)</th>
            <th style="width: 20%">Thông tin ngắn</th>
            <th>Ảnh</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach($products as $product)
            <tr>
                <td>{{$product->id}}</td>
                <td><span class="{{(($product->ladeleted==1)?'strike':'')}}">{{link_to('admin/editproduct/' . $product->id, $product->latitle)}}</span></td>
                <td>{{$product->laurl}}</td>
                <td>{{number_format($product->laprice,0,',','.')}}</td>
                <td>{{$product->catname}}</td>
                <td>{{$product->factorname}}</td>
                <td>{{$product->lakhoiluong}}</td>
                <td>{{str_limit($product->lashortinfo,40)}}</td>
                <td class='imgthumb'>{{ HTML::image('uploads/thumbnails/product/' . $product->laimage, 'IMG') }}</td>
                <td>
                    @if($product->lavariant_id == 0)
                    {{link_to('admin/editproduct/' . $product->id.'/1', 'Tạo biến thể')}}
                    @else
                    SP Gốc: {{$product->lavariant_id}}
                    @endif
                </td>
            </tr>
        @endforeach
    </tbody>
    @if(Input::has('filter') || Input::has('filtercat'))
    {{$products->appends(array('filter' => Input::get('filter') ,'filtercat' => Input::get('filtercat') ))->links()}}
    @else
    {{$products->links()}}
    @endif

</table>
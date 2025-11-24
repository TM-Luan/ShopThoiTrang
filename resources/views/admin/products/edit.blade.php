@extends('layouts.admin')
@section('title', 'Chỉnh sửa sản phẩm | Admin - Hafos')
@section('content')
    <div class="single-product-tab-area mg-tb-15">
        <div class="single-pro-review-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="review-tab-pro-inner">
                            <ul id="myTab3" class="tab-review-design">
                                <li class="active">
                                    <a href="#description">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                        Chỉnh sửa sản phẩm
                                    </a>
                                </li>
                            </ul>
                            <form class="product-tab-list tab-pane fade active in" id="description" action="/admin/products/update/{{ $product->id }}" method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                        <div class="review-content-section">
                                            <label>Hình ảnh</label>
                                            <div class="input-group mg-b-pro-edt">
                                                <div class="input-group mg-b-pro-edt" style="width: 280px; height: 280px;">
                                                    <img id="blah" src="{{ URL::asset('/upload/products/'.$product->image) }}" style="border: 1px solid #e5e6e7;width: 100%;margin-bottom: 5px"/>
                                                    <input type="file" name="image" onchange="loadFile(event)" />
                                                    <input type="hidden" name="old_image" value="{{ $product->image }}" />
                                                </div>
                                                <script>
                                                    var loadFile = function(event) {
                                                        var output = document.getElementById('blah');
                                                        output.src = URL.createObjectURL(event.target.files[0]);
                                                        output.onload = function() {
                                                            URL.revokeObjectURL(output.src)
                                                        }
                                                    };
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                        <div class="review-content-section">
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-qrcode" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ $product->id }}" readonly>
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-tag" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ $product->name }}" name="name">
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ number_format($product->price,0,'','') }}" name="price">
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-percent" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ $product->discount }}" name="discount">
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-cubes" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ $product->availability }}" name="availability">
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-file-text-o" aria-hidden="true"></i></span>
                                                <textarea class="form-control" rows="2" name="short_description">{{ $product->short_description }}</textarea>
                                            </div>
                                            
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-list-ul" aria-hidden="true"></i></span>
                                                <select name="catalog_id" class="form-control pro-edt-select form-control-primary">
                                                    @foreach($categories as $cat)
                                                        <option value="{{ $cat->id }}" {{ $product->catalog_id == $cat->id ? 'selected' : '' }}>
                                                            {{ $cat->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        @php
                                            $info = explode("|", $product->information);
                                            $info = array_pad($info, 4, ""); 
                                        @endphp

                                        <div class="review-content-section">
                                            <label>Nổi bật: </label>
                                            <input type="checkbox" {{ $product->outstanding == 1 ? 'checked' : '' }} value="1" name="outstanding" style="transform: scale(1.2, 1.2); margin-left: 5px;"><br>
                                            
                                            <label>Chất liệu</label>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-info-circle" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ $info[0] }}" name="kich_thuoc">
                                            </div>
                                            
                                            <label>Kiểu dáng (Form)</label>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-info-circle" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ $info[1] }}" name="trong_luong">
                                            </div>
                                            
                                            <label>Xuất xứ</label>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-info-circle" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ $info[2] }}" name="mau_sac">
                                            </div>
                                            
                                            <label>Thông tin khác</label>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-info-circle" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" value="{{ $info[3] }}" name="do_phan_giai">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="review-content-section">
                                            <div class="form-group">
                                                <label>Mô tả chi tiết</label>
                                                <textarea id="summernote2" name="description">{{ $product->description }}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="text-center mg-b-pro-edt custom-pro-edt-ds">
                                            <button type="submit" class="btn btn-primary waves-effect waves-light m-r-10">Cập nhật</button>
                                            <button type="button" class="btn btn-warning waves-effect waves-light">Hủy</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
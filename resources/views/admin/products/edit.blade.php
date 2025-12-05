@extends('layouts.admin')
@section('title', 'Chỉnh sửa sản phẩm | Admin - Hafos')
@section('content')
    <div class="single-product-tab-area mg-tb-15">
        <div class="single-pro-review-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="review-tab-pro-inner">
                            <ul id="myTab3" class="tab-review-design">
                                <li class="active">
                                    <a href="#description"><i class="fa fa-pencil" aria-hidden="true"></i> Chỉnh sửa sản phẩm</a>
                                </li>
                            </ul>
                            
                            {{-- Form bắt đầu --}}
                            <form class="product-tab-list tab-pane fade active in" id="description" action="/admin/products/update/{{ $product->id }}" method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                
                                <div class="row">
                                    {{-- Cột Trái: Ảnh --}}
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                        <div class="review-content-section">
                                            <label>Hình ảnh</label>
                                            <div class="input-group mg-b-pro-edt" style="width: 100%;">
                                                <div style="width: 280px; height: 280px; margin-bottom: 10px;">
                                                    <img id="blah" src="{{ URL::asset('/upload/products/'.$product->image) }}" style="border: 1px solid #e5e6e7; width: 100%; height: 100%; object-fit: contain;"/>
                                                </div>
                                                <input type="file" name="image" onchange="loadFile(event)" />
                                                <input type="hidden" name="old_image" value="{{ $product->image }}" />
                                                <script>
                                                    var loadFile = function(event) {
                                                        var output = document.getElementById('blah');
                                                        output.src = URL.createObjectURL(event.target.files[0]);
                                                        output.onload = function() { URL.revokeObjectURL(output.src) }
                                                    };
                                                </script>
                                            </div>
                                        </div>
                                    </div>

                                    {{-- Cột Phải: Thông tin cơ bản --}}
                                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                        <div class="review-content-section">
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-qrcode"></i></span>
                                                <input type="text" class="form-control" value="{{ $product->id }}" readonly>
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                                <input type="text" class="form-control" value="{{ $product->name }}" name="name" placeholder="Tên sản phẩm">
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                                <input type="text" class="form-control" value="{{ number_format($product->price,0,'','') }}" name="price" placeholder="Giá">
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-percent"></i></span>
                                                <input type="text" class="form-control" value="{{ $product->discount }}" name="discount" placeholder="Giảm giá (%)">
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-file-text-o"></i></span>
                                                <textarea class="form-control" rows="2" name="short_description" placeholder="Mô tả ngắn">{{ $product->short_description }}</textarea>
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <span class="input-group-addon"><i class="fa fa-list-ul"></i></span>
                                                <select name="catalog_id" class="form-control pro-edt-select form-control-primary">
                                                    @foreach($categories as $cat)
                                                        <option value="{{ $cat->id }}" {{ $product->catalog_id == $cat->id ? 'selected' : '' }}>
                                                            {{ $cat->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="input-group mg-b-pro-edt">
                                                <label>Sản phẩm nổi bật: </label>
                                                <input type="checkbox" {{ $product->outstanding == 1 ? 'checked' : '' }} value="1" name="outstanding" style="transform: scale(1.2); margin-left: 5px;">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                {{-- ======================================================= --}}
                                {{-- PHẦN MỚI THÊM: QUẢN LÝ BIẾN THỂ (SIZE & MÀU) --}}
                                {{-- ======================================================= --}}
                                <div class="row" style="background: #f5f5f5; padding: 15px; margin: 20px 0;">
                                    <div class="col-lg-12">
                                        <h4 style="color: #E53935; border-bottom: 2px solid #E53935; padding-bottom: 5px;">
                                            Cập nhật Kho hàng (Size & Màu)
                                        </h4>
                                        <table class="table table-bordered" style="background: white;">
                                            <thead>
                                                <tr>
                                                    <th style="width: 20%">Size</th>
                                                    <th style="width: 30%">Màu sắc</th>
                                                    <th style="width: 30%">Số lượng tồn</th>
                                                    <th style="width: 20%">
                                                        <button type="button" class="btn btn-success btn-sm" id="add-variant">
                                                            <i class="fa fa-plus"></i> Thêm dòng
                                                        </button>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody id="variant-container">
                                                @if($product->variants && $product->variants->count() > 0)
                                                    @foreach($product->variants as $variant)
                                                    <tr>
                                                        <td>
                                                            <select name="variant_size[]" class="form-control">
                                                                @foreach(['S','M','L','XL','XXL','29','30','31','32','Freesize'] as $s)
                                                                    <option value="{{ $s }}" {{ $variant->size == $s ? 'selected' : '' }}>{{ $s }}</option>
                                                                @endforeach
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <input type="text" name="variant_color[]" class="form-control" value="{{ $variant->color }}" placeholder="Màu sắc" required>
                                                        </td>
                                                        <td>
                                                            <input type="number" name="variant_quantity[]" class="form-control" value="{{ $variant->quantity }}" min="0" required>
                                                        </td>
                                                        <td>
                                                            <button type="button" class="btn btn-danger btn-sm remove-variant">
                                                                <i class="fa fa-trash"></i> Xóa
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    @endforeach
                                                @else
                                                    {{-- Dòng mặc định nếu chưa có biến thể --}}
                                                    <tr>
                                                        <td>
                                                            <select name="variant_size[]" class="form-control">
                                                                <option value="S">S</option>
                                                                <option value="M">M</option>
                                                                <option value="L">L</option>
                                                                <option value="XL">XL</option>
                                                                <option value="XXL">XXL</option>
                                                                <option value="29">29</option>
                                                                <option value="30">30</option>
                                                                <option value="31">31</option>
                                                                <option value="32">32</option>
                                                                <option value="Freesize">Freesize</option>
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <input type="text" name="variant_color[]" class="form-control" placeholder="Vd: Đen, Trắng..." required>
                                                        </td>
                                                        <td>
                                                            <input type="number" name="variant_quantity[]" class="form-control" value="10" required>
                                                        </td>
                                                        <td>
                                                            <button type="button" class="btn btn-danger btn-sm remove-variant"><i class="fa fa-trash"></i> Xóa</button>
                                                        </td>
                                                    </tr>
                                                @endif
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                {{-- KẾT THÚC PHẦN BIẾN THỂ --}}

                                <div class="row">
                                    {{-- Thông tin chi tiết --}}
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        @php
                                            $info = explode("|", $product->information);
                                            $info = array_pad($info, 4, ""); 
                                        @endphp
                                        <div class="review-content-section">
                                            <label>Chất liệu</label>
                                            <input type="text" class="form-control" value="{{ $info[0] }}" name="chat_lieu">
                                            
                                            <label>Kiểu dáng</label>
                                            <input type="text" class="form-control" value="{{ $info[1] }}" name="kieu_dang">
                                            
                                            <label>Xuất xứ</label>
                                            <input type="text" class="form-control" value="{{ $info[2] }}" name="xuat_xu">
                                            
                                            <label>Thông tin khác</label>
                                            <input type="text" class="form-control" value="{{ $info[3] }}" name="thong_tin_khac">
                                        </div>
                                    </div>
                                    
                                    {{-- Editor mô tả --}}
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="review-content-section">
                                            <label>Mô tả chi tiết</label>
                                            <textarea id="summernote2" name="description">{{ $product->description }}</textarea>
                                        </div>
                                    </div>
                                </div>

                                {{-- Nút lưu --}}
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="text-center mg-b-pro-edt custom-pro-edt-ds">
                                            <button type="submit" class="btn btn-primary waves-effect waves-light m-r-10">CẬP NHẬT SẢN PHẨM</button>
                                            <a href="/admin/products" class="btn btn-warning waves-effect waves-light">Hủy</a>
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

    {{-- Script xử lý thêm/xóa dòng --}}
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Nút thêm dòng
            document.getElementById('add-variant').addEventListener('click', function() {
                var container = document.getElementById('variant-container');
                var newRow = document.createElement('tr');
                newRow.innerHTML = `
                    <td>
                        <select name="variant_size[]" class="form-control">
                            <option value="S">S</option>
                            <option value="M">M</option>
                            <option value="L">L</option>
                            <option value="XL">XL</option>
                            <option value="XXL">XXL</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                            <option value="32">32</option>
                            <option value="Freesize">Freesize</option>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="variant_color[]" class="form-control" placeholder="Màu sắc" required>
                    </td>
                    <td>
                        <input type="number" name="variant_quantity[]" class="form-control" value="10" required>
                    </td>
                    <td>
                        <button type="button" class="btn btn-danger btn-sm remove-variant"><i class="fa fa-trash"></i> Xóa</button>
                    </td>
                `;
                container.appendChild(newRow);
            });

            // Nút xóa dòng (Event Delegation)
            document.getElementById('variant-container').addEventListener('click', function(e) {
                if (e.target && (e.target.matches('.remove-variant') || e.target.matches('.remove-variant i'))) {
                    var row = e.target.closest('tr');
                    if(row) row.remove();
                }
            });
        });
    </script>
@stop
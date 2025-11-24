@extends('layouts.admin')
@section('title', 'Thêm mới sản phẩm | Admin - Hafos')
@section('content')
<div class="single-product-tab-area mg-tb-15">
    <div class="single-pro-review-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="review-tab-pro-inner">
                        <ul id="myTab3" class="tab-review-design">
                            <li class="active"><a href="#description"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Thêm mới sản phẩm</a></li>
                        </ul>
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <form action="/admin/products/insert" method="post" class="product-tab-list tab-pane fade active in" id="description" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="review-content-section">
                                        <label>Hình ảnh đại diện</label>
                                        <div class="input-group mg-b-pro-edt" style="width: 100%;">
                                            <img id="blah" src="" style="border: 1px solid #e5e6e7;width: 250px;height: 250px;margin-bottom: 5px"/>
                                            <input type="file" name="image" onchange="loadFile(event)" />
                                        </div>
                                        <script>
                                            var loadFile = function(event) {
                                                var output = document.getElementById('blah');
                                                output.src = URL.createObjectURL(event.target.files[0]);
                                                output.onload = function() { URL.revokeObjectURL(output.src) }
                                            };
                                        </script>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="review-content-section">
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-tag" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" placeholder="Tên sản phẩm" name="name" required>
                                        </div>
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span>
                                            <input type="number" class="form-control" placeholder="Giá bán cơ bản" name="price" required>
                                        </div>
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-percent" aria-hidden="true"></i></span>
                                            <input type="number" class="form-control" placeholder="Giảm giá (%)" name="discount" value="0">
                                        </div>
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-file-text-o" aria-hidden="true"></i></span>
                                            <textarea class="form-control" rows="2" placeholder="Mô tả ngắn" name="short_description"></textarea>
                                        </div>
                                        <select name="catalog_id" class="form-control pro-edt-select form-control-primary">
                                            <option value="">Chọn danh mục</option>
                                            @foreach($categories as $cate)
                                                <option value="{{ $cate->id }}">{{ $cate->name }}</option>
                                            @endforeach
                                        </select>
                                        <div style="margin-top: 15px;">
                                            <label>Sản phẩm nổi bật: </label>
                                            <input type="checkbox" value="1" name="outstanding" style="transform: scale(1.5); margin-left: 10px;">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <hr>
                            <div class="row">
                                <div class="col-lg-12">
                                    <h4>Thông tin chi tiết (Hiển thị ở tab Thông tin)</h4>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" placeholder="Chất liệu (Vd: Cotton)" name="chat_lieu">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" placeholder="Kiểu dáng (Vd: Slimfit)" name="kieu_dang">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" placeholder="Xuất xứ (Vd: VN)" name="xuat_xu">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" placeholder="Khác" name="thong_tin_khac">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <hr>
                            <div class="row" style="background: #f5f5f5; padding: 15px; margin-top: 20px;">
                                <div class="col-lg-12">
                                    <h4 style="color: #E53935;">Quản lý Kho hàng (Size & Màu)</h4>
                                    <table class="table table-bordered" style="background: white;">
                                        <thead>
                                            <tr>
                                                <th>Size</th>
                                                <th>Màu sắc</th>
                                                <th>Số lượng tồn kho</th>
                                                <th><button type="button" class="btn btn-success btn-sm" id="add-variant"><i class="fa fa-plus"></i> Thêm dòng</button></th>
                                            </tr>
                                        </thead>
                                        <tbody id="variant-container">
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
                                                    <input type="text" name="variant_color[]" class="form-control" placeholder="Vd: Đen, Trắng, Xanh..." required>
                                                </td>
                                                <td>
                                                    <input type="number" name="variant_quantity[]" class="form-control" value="10" required>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-danger btn-sm remove-variant"><i class="fa fa-trash"></i></button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="review-content-section">
                                        <div class="form-group">
                                            <label>Bài viết mô tả sản phẩm</label>
                                            <textarea id="summernote2" name="description"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="text-center mg-b-pro-edt custom-pro-edt-ds">
                                        <button type="submit" class="btn btn-primary waves-effect waves-light m-r-10">LƯU SẢN PHẨM</button>
                                        <button type="button" class="btn btn-warning waves-effect waves-light" onclick="window.history.back()">Hủy</button>
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
                    <input type="text" name="variant_color[]" class="form-control" placeholder="Màu sắc">
                </td>
                <td>
                    <input type="number" name="variant_quantity[]" class="form-control" value="10">
                </td>
                <td>
                    <button type="button" class="btn btn-danger btn-sm remove-variant"><i class="fa fa-trash"></i></button>
                </td>
            `;
            container.appendChild(newRow);
        });

        // Nút xóa dòng (Sử dụng Event Delegation)
        document.getElementById('variant-container').addEventListener('click', function(e) {
            if (e.target && (e.target.matches('.remove-variant') || e.target.matches('.remove-variant i'))) {
                // Tìm tr cha gần nhất để xóa
                var row = e.target.closest('tr');
                if(row) row.remove();
            }
        });
    });
</script>
@stop
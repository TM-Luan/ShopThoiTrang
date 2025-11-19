@extends('layouts.admin')
@section('title', 'Thêm mới người dùng | Admin - Hafos')
@section('content')
<div class="single-product-tab-area mg-tb-15">
    <div class="single-pro-review-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="review-tab-pro-inner">
                        <ul id="myTab3" class="tab-review-design">
                            <li class="active"><a href="#description"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Thêm mới người dùng</a></li>
                        </ul>
                        
                        {{-- KHỐI HIỂN THỊ LỖI (Thêm mới) --}}
                        @if ($errors->any())
                            <div class="alert alert-danger" style="margin: 15px;">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <form class="product-tab-list tab-pane fade active in" id="description" action="/admin/users/insert" method="post" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="review-content-section">
                                        <label>Avatar</label>
                                        <div class="input-group mg-b-pro-edt">
                                            <div class="input-group mg-b-pro-edt" style="width: 280px; height: 280px;">
                                                <img id="blah" src="{{ asset('path/to/default-avatar.jpg') }}" style="border: 1px solid #e5e6e7;width: 100%;height: 100%; object-fit: cover; margin-bottom: 5px"/>
                                                <input type="file" name="image" onchange="loadFile(event)" />
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
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="review-content-section">
                                        <label>Thông tin</label>
                                        
                                        {{-- Auto ID (Chỉ đọc) --}}
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-qrcode" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" placeholder="ID tự động tăng" readonly>
                                        </div>

                                        {{-- Username --}}
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="username" placeholder="Tên đăng nhập" value="{{ old('username') }}">
                                        </div>

                                        {{-- Họ tên --}}
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-sticky-note-o" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="name" placeholder="Họ và tên" value="{{ old('name') }}">
                                        </div>

                                        {{-- Email --}}
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                            <input type="email" class="form-control" name="email" placeholder="Email" value="{{ old('email') }}">
                                        </div>
                                        
                                        {{-- Địa chỉ (Đã bỏ comment để tránh lỗi null nếu DB yêu cầu) --}}
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-location-arrow" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="address" placeholder="Địa chỉ" value="{{ old('address') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="review-content-section">
                                        <label>Bảo mật</label>
                                        
                                        {{-- Password --}}
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span>
                                            <input type="password" class="form-control" name="password" placeholder="Mật khẩu">
                                        </div>

                                        {{-- Confirm Password --}}
                                        <div class="input-group mg-b-pro-edt">
                                            <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span>
                                            <input type="password" class="form-control" name="cpassword" placeholder="Nhập lại mật khẩu">
                                        </div>

                                        <label>Vai trò</label>
                                        <div class="input-group mg-b-pro-edt">
                                            <div class="i-checks pull-left">
                                                <label>
                                                    <input type="radio" value="0" name="role" {{ old('role') == '0' ? 'checked' : '' }} checked> <i></i> Khách hàng
                                                </label>
                                                <label>
                                                    <input type="radio" value="1" name="role" {{ old('role') == '1' ? 'checked' : '' }}> <i></i> Quản trị viên
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="text-center mg-b-pro-edt custom-pro-edt-ds">
                                        <button type="submit" class="btn btn-primary waves-effect waves-light m-r-10">Lưu người dùng</button>
                                        <a href="/admin/users" class="btn btn-warning waves-effect waves-light">Quay lại</a>
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
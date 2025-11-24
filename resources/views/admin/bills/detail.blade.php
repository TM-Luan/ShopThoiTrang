@extends('layouts.admin')
@section('title', 'Chi tiết hóa đơn | Admin - Hafos')
@section('content')
    <div class="data-table-area mg-tb-15">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="sparkline13-list">
                        <div class="sparkline13-hd">
                            <div class="main-sparkline13-hd">
                                <h1>Chi tiết hóa đơn</h1>
                            </div>
                        </div>
                        <div class="sparkline13-graph">
                            <div class="datatable-dashv1-list custom-datatable-overright">
                                <div id="toolbar">
                                    <select class="form-control">
                                        <option value="">Xuất dữ liệu</option>
                                        <option value="all">Xuất tất cả</option>
                                        <option value="selected">Xuất theo tùy chọn</option>
                                    </select>
                                </div>
                                <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                       data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                    <thead>
                                    <tr>
                                        <th data-field="state" data-checkbox="true"></th>
                                        <th data-field="id">ID</th>
                                        <th data-field="name">Tên sản phẩm</th>
                                        <th data-field="size">Size</th>
                                        <th data-field="color">Màu sắc</th>
                                        <th data-field="price">Đơn giá</th>
                                        <th data-field="quantity">Số lượng</th>
                                        <th data-field="total">Thành tiền</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {{-- Ví dụ cấu trúc nếu có dữ liệu --}}
                                    {{-- @foreach($details as $item) --}}
                                    {{-- <tr> --}}
                                    {{--    <td></td> --}}
                                    {{--    <td>{{ $item->id }}</td> --}}
                                    {{--    <td>{{ $item->name }}</td> --}}
                                    {{--    <td>{{ $item->size }}</td> --}}
                                    {{--    <td>{{ $item->color }}</td> --}}
                                    {{--    <td>{{ number_format($item->price) }}</td> --}}
                                    {{--    <td>{{ $item->quantity }}</td> --}}
                                    {{--    <td>{{ number_format($item->price * $item->quantity) }}</td> --}}
                                    {{-- </tr> --}}
                                    {{-- @endforeach --}}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @stop
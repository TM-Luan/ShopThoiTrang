@extends('layouts.admin')
@section('title', 'Chi tiết đơn hàng | Admin - Hafos')
@section('content')
    <div class="data-table-area mg-tb-15">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="sparkline13-list">
                        <div class="sparkline13-hd">
                            <div class="main-sparkline13-hd">
                                <h1>Chi tiết đơn hàng: <span style="color: #E53935">{{ $bill->id_order }}</span></h1>
                                <p>Khách hàng: <b>{{ $bill->name }}</b> - SĐT: <b>{{ $bill->phone }}</b></p>
                                <p>Địa chỉ: {{ $bill->address }}</p>
                            </div>
                        </div>
                        <div class="sparkline13-graph">
                            <div class="datatable-dashv1-list custom-datatable-overright">
                                <table id="table" data-toggle="table" data-pagination="true" data-search="true" ... >
                                    <thead>
                                    <tr>
                                        <th data-field="id">ID</th>
                                        <th data-field="image">Hình ảnh</th>
                                        <th data-field="name">Tên sản phẩm</th>
                                        <th data-field="size">Size</th>
                                        <th data-field="color">Màu sắc</th>
                                        <th data-field="price">Đơn giá</th>
                                        <th data-field="quantity">Số lượng</th>
                                        <th data-field="total">Thành tiền</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @php $total_bill = 0; @endphp
                                    @foreach($details as $item)
                                        @php $total_item = $item->price * $item->quantity; @endphp
                                        @php $total_bill += $total_item; @endphp
                                    <tr>
                                        <td>{{ $item->id }}</td>
                                        <td>
                                            <img src="{{URL::asset('/upload/products/'.$item->image)}}" style="width: 70px; height: auto;">
                                        </td>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->size }}</td>
                                        <td>{{ $item->color }}</td>
                                        <td>{{ number_format($item->price, 0, ".", ".") }} ₫</td>
                                        <td>{{ $item->quantity }}</td>
                                        <td>{{ number_format($total_item, 0, ".", ".") }} ₫</td>
                                    </tr>
                                    @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="7" style="text-align: right; font-weight: bold; font-size: 18px;">TỔNG TIỀN:</td>
                                            <td style="font-weight: bold; font-size: 18px; color: red;">{{ number_format($total_bill, 0, ".", ".") }} ₫</td>
                                        </tr>
                                    </tfoot>
                                </table>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <a href="/admin/bills" class="btn btn-warning" style="margin-top: 20px;">Quay lại danh sách</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
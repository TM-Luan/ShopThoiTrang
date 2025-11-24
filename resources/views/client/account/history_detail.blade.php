@extends('layouts.master')
@section('title', 'Hafos - Chi tiết đơn hàng')

@section('client')
    <section class="breadcrumb-section set-bg" data-setbg="{{URL::asset('img/breadcrumb.jpg')}}">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Tài khoản</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Trang chủ</a>
                            <span>Tài khoản</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @if(Auth::user())
        <div class="container bootstrap snippets bootdey mb-5">
            <div class="row">
                <div class="profile-nav col-md-3">
                    <div class="panel">
                        <div class="user-heading round">
                            <a href="#">
                                <img src="{{URL::asset('/upload/users/'.$user->avatar)}}" alt="">
                            </a>
                            <h1 class="text-white font-weight-bold pt-2">{{ $user->name }}</h1>
                            <p class="text-white">{{ $user->email }}</p>
                        </div>
                        <ul class="nav-pills nav-stacked">
                            <li><a href="/user/profile/<?=$user->id?>"> <i class="fa fa-user text-danger"></i> Tài khoản</a></li>
                            <li class="active"><a href="/user/history/<?=$user->id?>"> <i class="fa fa-history text-danger" aria-hidden="true"></i> Lịch sử đơn hàng</a></li>
                            <li><a href="/user/profile/edit/<?=$user->id?>"> <i class="fa fa-edit text-danger"></i> Cập nhật tài khoản</a></li>
                            <li><a href="/user/profile/change-pass/<?=$user->id?>"> <i class="fa fa-unlock-alt text-danger" aria-hidden="true"></i> Đổi mật khẩu</a></li>
                            <li>
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    <i class="fa fa-power-off text-danger" aria-hidden="true"></i>
                                    {{ __('Đăng xuất') }}
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                        </ul>
                    </div>
                </div>
                <div class="profile-info col-md-9">
                    <div class="panel">
                        <div class="bio-graph-heading">
                            {{ $user->name }} thân mến. Mình chỉ muốn cảm ơn bạn bởi bạn là khách hàng quan trọng của chúng tôi. Nếu bạn có bất cứ điều gì hãy cho chúng tôi biết, chúng tôi sẽ cố gắng để đáp ứng nhu cầu của bạn.
                        </div>
                        <div class="panel-body bio-graph-info pl-3 pr-3">
                            <h1 class="mt-4 pl-2" style="border-left: 5px solid #E53935;">CHI TIẾT ĐƠN HÀNG</h1>
                            <div class="item-order-detail">
                                <div class="row">
                                    <div class="col-6">
                                        <h5 class="text-success font-weight-bold">Mã đơn hàng: {{ $history[0]->id_order }}</h5>
                                    </div>
                                    <div class="col-6">
                                        <h5 class="text-danger font-weight-bold text-right font-italic"> {{ $history[0]->payment_status }}</h5>
                                    </div>
                                </div>
                                <table class="mb-2 mt-2">
                                    <tr>
                                        <th colspan="2">Thông tin đặt hàng:</th>
                                    </tr>
                                    <tr>
                                        <td>Khách hàng: <strong>{{ $history[0]->name }}</strong></td>
                                        <td>Điện thoại: <strong>{{ $history[0]->phone }}</strong></td>
                                    </tr>
                                    <tr>
                                        <td>Địa chỉ: <strong>{{ $history[0]->address }}</strong></td>
                                        <td>Email: <strong> {{ $history[0]->email }}</strong></td>
                                    </tr>
                                </table>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sản phẩm</th>
                                            <th>Size</th>
                                            <th>Màu</th>
                                            <th>Số lượng</th>
                                            <th>Đơn giá</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($history_detail as $order)
                                        <tr>
                                            <td><strong>{{ $order->name }}</strong></td> <td>{{ $order->size }}</td>
                                            <td>{{ $order->color }}</td>
                                            <td>{{ $order->quantity}}</td>
                                            <td>{{ number_format($order->price,3,".",".") }} đ</td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr class="back-color">
                                            <td colspan="4" class="text-right"><strong>Tổng tiền:</strong></td>
                                            <td><strong>{{ number_format($history[0]->total,3,".",".") }} đ</strong></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

@stop
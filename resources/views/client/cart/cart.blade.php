@extends('layouts.master')
@section('title', 'Hafos - Giỏ hàng')

@section('client')
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Giỏ hàng</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Trang chủ</a>
                            <span>Giỏ hàng</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">

                        <table>
                            <thead>
                            <tr>
                                <th class="shoping__product">Sản phẩm</th>
                                <th>Thông tin</th> <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Tổng tiền</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            @php $total = 0 @endphp
                            @php $count = 0 @endphp
                                @if($cart)
                                    @foreach($cart as $details)
                                        @php $total += $details->price * $details->quantity @endphp
                                        @php $count += $details->quantity @endphp
                                        <tr data-id="{{ $details->id }}" data-ajax="false">
                                            <td data-th="Product">
                                                <div class="row">
                                                    <div class="col-sm-3 hidden-xs">
                                                        <img src="{{URL::asset('/upload/products/'.$details->image)}}" height="100" class="img-responsive"/>
                                                    </div>
                                                    <h4 class="nomargin" style="line-height: 100px;">{{ $details->name }}</h4>
                                                </div>
                                            </td>
                                            <td>
                                                <p>Size: <strong>{{ $details->size }}</strong></p>
                                                <p>Màu: <strong>{{ $details->color }}</strong></p>
                                            </td>
                                            <td data-th="Price">{{ number_format($details->price,3,".",".") }} ₫</td>
                                            <td data-th="Quantity">
                                                <input type="number" min="1" value="{{ $details->quantity }}" class="form-control quantity update-cart" style="width: 60px;margin: 0 auto;"/>
                                            </td>
                                            <td data-th="Subtotal" class="text-center">{{ number_format($details->price * $details->quantity,3,".",".") }} ₫</td>
                                            <td class="actions" data-th="">
                                                <button class="btn btn-danger btn-sm remove-from-cart"><i class="fa fa-close"></i></button>
                                            </td>
                                        </tr>
                                    @endforeach
                                
                                @elseif(!$cart && session('cart') )
                                    @foreach(session('cart') as $key => $details)
                                        @php $total += $details['price'] * $details['quantity'] @endphp
                                        <tr data-id="{{ $key }}" data-ajax="false">
                                            <td data-th="Product">
                                                <div class="row">
                                                    <div class="col-sm-3 hidden-xs">
                                                        <img src="{{URL::asset('/upload/products/'.$details['image'])}}" height="100" class="img-responsive"/>
                                                    </div>
                                                    <h4 class="nomargin" style="line-height: 100px;">{{ $details['name'] }}</h4>
                                                </div>
                                            </td>
                                            <td>
                                                <p>Size: <strong>{{ isset($details['size']) ? $details['size'] : 'N/A' }}</strong></p>
                                                <p>Màu: <strong>{{ isset($details['color']) ? $details['color'] : 'N/A' }}</strong></p>
                                            </td>
                                            <td data-th="Price">{{ number_format($details['price'],3,".",".") }} ₫</td>
                                            <td data-th="Quantity">
                                                <input type="number" min="1" value="{{ $details['quantity'] }}" class="form-control quantity update-cart" style="width: 60px;margin: 0 auto;"/>
                                            </td>
                                            <td data-th="Subtotal" class="text-center">{{ number_format($details['price'] * $details['quantity'],3,".",".") }} ₫</td>
                                            <td class="actions" data-th="">
                                                <button class="btn btn-danger btn-sm remove-from-cart"><i class="fa fa-close"></i></button>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif

                                @if(!session('cart') && empty($cart))
                                    <tr>
                                        <td colspan="6"><p>Chưa có sản phẩm trong giỏ hàng!</p></td>
                                    </tr>
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="/" class="primary-btn cart-btn">TIẾP TỤC MUA HÀNG</a>
                    </div>
                </div>
                <div class="col-lg-6">
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Tổng giỏ hàng</h5>
                        @php $total = 0 @endphp
                        @php $count = 0; @endphp
                        
                        @if($cart)
                            @foreach($cart as $item)
                                @php $total += $item->price * $item->quantity @endphp
                                @php $count += $item->quantity @endphp
                            @endforeach
                        @elseif(session('cart'))
                             @foreach(session('cart') as $details)
                                @php $total += $details['price'] * $details['quantity'] @endphp
                                @php $count += $details['quantity'] @endphp
                             @endforeach
                        @endif

                        <ul>
                            <li>Tổng sản phẩm <span>{{ $count }}</span></li>
                            <li>Phí giao hàng <span>0 đ</span></li>
                            <li>Tổng <span>{{ number_format($total,3,".",".") }} đ</span></li>
                        </ul>
                        <a href="/checkout" class="primary-btn">THANH TOÁN</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @stop
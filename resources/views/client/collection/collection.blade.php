@extends('layouts.master')
@section('title', 'Hafos - Sản phẩm')

@section('client')
<style>
    /* Giữ nguyên CSS cũ của bạn */
    .product__pagination .flex-1 { display: none; }
    .product__pagination .hidden div:first-child { display: none; }
    .product__pagination svg { height: 15px; }
    .product__pagination .shadow-sm { box-shadow: none !important; }
    .product__pagination a, .blog__pagination a {
        display: inline !important; padding: 8px 15px !important; margin: 3px !important;
    }
    .product__pagination a:hover, .blog__pagination a:hover {
        background-color: #E53935 !important; color: #fff !important;
    }
    .product__pagination .hidden div:last-child span .cursor-default {
        background-color: #E53935 !important; color: #fff !important; padding: 8px 15px !important;
    }
</style>

<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Bộ sưu tập</h2>
                    <div class="breadcrumb__option">
                        <a href="">Trang chủ</a>
                        <span>Bộ sưu tập</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Loại sản phẩm</h4>
                        <ul>
                            @foreach($categories as $cate)
                                <li><a href="/product-cat/<?=$cate->id?>">{{ $cate->name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    
                    <div class="sidebar__item">
                        <h4>Giá</h4>
                        <div class="price-range-wrap">
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
    data-min="0" 
    data-max="{{ $max_price }}" 
    data-min-value="{{ request('min', 0) }}"
    data-max-value="{{ request('max', $max_price) }}">
    
    <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
</div>

<div class="range-slider">
    <div class="price-input">
        <form action="/collection" method="GET" onsubmit="return validatePriceFilter()">
            @if(request('search'))
                <input type="hidden" name="search" value="{{ request('search') }}">
            @endif

            <div style="display: flex; justify-content: center; align-items: center; margin-bottom: 15px; gap: 10px;">
                <input type="text" id="minamount" 
                       style="width: auto; min-width: 80px; text-align: center; border: 1px solid #ccc; padding: 5px; border-radius: 4px;"
                       value="{{ number_format(request('min', 0), 0, '.', '.') }}đ">
                
                <span style="color: #666; font-weight: bold;">-</span>
                
                <input type="text" id="maxamount" 
                       style="width: auto; min-width: 80px; text-align: center; border: 1px solid #ccc; padding: 5px; border-radius: 4px;"
                       value="{{ number_format(request('max', $max_price ?? 5000000), 0, '.', '.') }}đ">
            </div>
            
            <input type="hidden" name="min" id="hidden_min" value="{{ request('min', 0) }}">
            <input type="hidden" name="max" id="hidden_max" value="{{ request('max', $max_price ?? 5000000) }}">
            
            <button type="submit" class="site-btn" style="width: 100%;">LỌC GIÁ</button>
        </form>
    </div>
</div>
                        </div>
                    </div>
                    <!-- <div class="sidebar__item sidebar__item__color--option">
                        <h4>Màu sắc</h4>
                        <div class="sidebar__item__color sidebar__item__color--white">
                            <label for="white">Trắng <input type="radio" id="white"></label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--gray">
                            <label for="gray">Xám <input type="radio" id="gray"></label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--red">
                            <label for="red">Đỏ <input type="radio" id="red"></label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--black">
                            <label for="black">Đen <input type="radio" id="black"></label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--blue">
                            <label for="blue">Xanh dương <input type="radio" id="blue"></label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--green">
                            <label for="green">Xanh lá <input type="radio" id="green"></label>
                        </div>
                    </div> -->

                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Sản phẩm mới</h4>
                            <div class="latest-product__slider owl-carousel">
                                @foreach($new_products->chunk(3) as $chunk)
                                    <div class="latest-prdouct__slider__item">
                                        @foreach($chunk as $item)
                                            <a href="/product/{{$item->id}}" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="{{URL::asset('/upload/products/' . $item->image)}}" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>{{ $item->name }}</h6>
                                                    <span>{{ number_format($item->price, 0, ".", ".") }} ₫</span>
                                                </div>
                                            </a>
                                        @endforeach
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2>Khuyến mãi</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            @foreach($product_discount as $discount)
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="{{URL::asset('/upload/products/' . $discount->image)}}">
                                            <div class="product__discount__percent">-{{ $discount->discount }}%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="/add-to-wishlist/{{ $discount->id }}"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="/add-to-cart/{{ $discount->id }}"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <h5><a href="/product/<?=$discount->id?>">{{ $discount->name }}</a></h5>
                                            <?php $discount_price = $discount->price - ($discount->price * ($discount->discount / 100)); ?>
                                            <div class="product__item__price">
                                                {{ number_format($discount_price, 0, ".", ".") }} ₫<span>{{ number_format($discount->price, 0, ".", ".") }} ₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

                <div class="section-title product__discount__title">
                    <h2>Tất cả sản phẩm</h2>
                </div>
                <div class="row">
                    @if($products->isEmpty())
                        <div class="col-12 text-center">
                            <p>Không tìm thấy sản phẩm nào phù hợp.</p>
                        </div>
                    @else
                        @foreach($products as $pro)
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="{{URL::asset('/upload/products/' . $pro->image)}}">
                                        @if($pro->discount > 0)
                                            <div class="product__discount__percent">-{{ $pro->discount }}%</div>
                                        @endif
                                        <ul class="product__item__pic__hover">
                                            <li><a href="/add-to-wishlist/{{ $pro->id }}"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="/add-to-cart/{{ $pro->id }}"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__item__text">
                                        <h6><a href="/product/<?=$pro->id?>">{{ $pro->name }}</a></h6>
                                        @if($pro->discount)
                                            <?php $discount_price = $pro->price - ($pro->price * ($pro->discount / 100)); ?>
                                            <h5 class="product__item__price">{{ number_format($discount_price, 0, ".", ".") }} ₫
                                                <span class="pl-2" style="text-decoration: line-through;color: #b2b2b2;font-weight: normal;">{{ number_format($pro->price, 0, ".", ".") }} ₫</span>
                                            </h5>
                                        @else
                                            <h5>{{ number_format($pro->price, 0, ".", ".") }} ₫</h5>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>

                <div class="product__pagination">
                    {{ $products->links() }}
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    // Hàm xử lý trước khi gửi form (Giữ nguyên logic cũ)
    function validatePriceFilter() {
        var minInput = document.getElementById('minamount');
        var maxInput = document.getElementById('maxamount');
        var hiddenMin = document.getElementById('hidden_min');
        var hiddenMax = document.getElementById('hidden_max');

        var minVal = parseInt(minInput.value.replace(/[^0-9]/g, '')) || 0;
        var maxVal = parseInt(maxInput.value.replace(/[^0-9]/g, '')) || 0;

        if (minVal > maxVal) {
            var temp = minVal;
            minVal = maxVal;
            maxVal = temp;
        }

        hiddenMin.value = minVal;
        hiddenMax.value = maxVal;
        return true;
    }

    $(window).on('load', function() {
        var rangeSlider = $(".price-range");
        var minamount = $("#minamount");
        var maxamount = $("#maxamount");

        if (rangeSlider.hasClass('ui-slider')) {
            rangeSlider.slider("destroy");
        }

        var minPrice = parseInt(rangeSlider.data('min')) || 0;
        var maxPrice = parseInt(rangeSlider.data('max')) || 10000000;
        var currentMin = parseInt(rangeSlider.data('min-value')) || 0;
        var currentMax = parseInt(rangeSlider.data('max-value')) || maxPrice;

        function formatCurrency(num) {
            return new Intl.NumberFormat('vi-VN').format(num) + "đ";
        }

        function getRaw(str) {
            return parseInt(str.toString().replace(/[^0-9]/g, '')) || 0;
        }

        // --- HÀM MỚI: TỰ ĐỘNG CHỈNH KÍCH THƯỚC INPUT ---
        function autoResizeInput(inputJquery) {
            // Lấy độ dài chuỗi ký tự (cộng thêm 2 ký tự để dư ra chút xíu cho đẹp)
            var len = inputJquery.val().length + 2;
            // Set width theo đơn vị 'ch' (chiều rộng của ký tự số 0)
            inputJquery.css('width', len + 'ch');
        }

        rangeSlider.slider({
            range: true,
            min: minPrice,
            max: maxPrice,
            values: [currentMin, currentMax],
            slide: function (event, ui) {
                // Cập nhật giá trị
                minamount.val(formatCurrency(ui.values[0]));
                maxamount.val(formatCurrency(ui.values[1]));
                
                // Gọi hàm resize ngay khi kéo
                autoResizeInput(minamount);
                autoResizeInput(maxamount);
            }
        });

        // Xử lý sự kiện nhập tay
        minamount.on('input focus blur', function() { autoResizeInput($(this)); });
        maxamount.on('input focus blur', function() { autoResizeInput($(this)); });

        minamount.on('focus', function() { $(this).val(getRaw($(this).val())); autoResizeInput($(this)); });
        maxamount.on('focus', function() { $(this).val(getRaw($(this).val())); autoResizeInput($(this)); });

        minamount.on('blur', function() { 
            $(this).val(formatCurrency(getRaw($(this).val()))); 
            autoResizeInput($(this)); 
        });
        maxamount.on('blur', function() { 
            $(this).val(formatCurrency(getRaw($(this).val()))); 
            autoResizeInput($(this)); 
        });

        // Chạy lần đầu khi load trang
        autoResizeInput(minamount);
        autoResizeInput(maxamount);
    });
</script>
@stop
<!doctype html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Xác nhận đơn hàng - Hafos Fashion</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .container{
            width: 900px;
            margin: 0 auto;
            color: #C0C0C0;
        }
        .container .header{
            padding: 5px 10px;
            display: flow-root;
            background-color: #E53935;
            color: #2B2B2B;
            font-weight: 500;
            font-size: 12px;
        }
        .content{
            background-color: #444444;
            padding: 20px;
        }
        .content .row{
            margin: 0;
            margin-bottom: 10px;
        }
        .text {
            padding: 15px;
            background-color: #2B2B2B;
            font-size: 12px;
            border-radius: 5px;
        }
        table{
            width: 100%;
            border-collapse: collapse;
        }
        .back-color{
            background-color: #C4CDD5;
            color: #2B2B2B;
        }
        table tr:first-child{
            background-color: #C4CDD5;
            color: #2B2B2B;
        }
        tr, th ,td{
            border: 1px solid #C4CDD5 !important;
            padding: 8px;
        }
        .footer{
            padding: 15px;
            background-color: #444444;
            font-size: 12px;
        }
        .footer .row{
            margin: 0;
            align-items: center;
        }
        .copy-right{
            background-color: #E53935;
        }
        .copy-right p{
            font-size: 12px;
            text-align: center;
            padding: 8px 0;
            color: #2B2B2B;
            font-weight: 500;
            margin: 0;
        }
        .company-name {
            font-weight: bold;
            color: #E53935;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <span class="text-left">Ngày: <?php echo date("d/m/Y");?></span>
        </div>
        
        <div class="content">
            <div class="row">
                <div class="col-4 mb-3">
                    <div class="img">
                        <img src="{{URL::asset('img/logo.png')}}" width="20%" alt="Hafos Fashion Logo">
                    </div>
                </div>
                <div class="col-8 text-right">
                    <span class="company-name">Công Ty Thời Trang Hafos</span>
                </div>
            </div>

            <div class="text">
                <p>Xin chào <strong>{{ $order[0]->name }}</strong>,<br>
                Cảm ơn quý khách đã tin tưởng và lựa chọn Hafos Fashion!</p>
                
                <table class="mb-3">
                    <tr>
                        <th colspan="2">Thông tin đặt hàng:</th>
                    </tr>
                    <tr>
                        <td>Khách hàng: <strong>{{ $order[0]->name }}</strong></td>
                        <td>Điện thoại: <strong>{{ $order[0]->phone }}</strong></td>
                    </tr>
                    <tr>
                        <td>Địa chỉ: <strong>{{ $order[0]->address }}</strong></td>
                        <td>Email: <strong>{{ $order[0]->email }}</strong></td>
                    </tr>
                </table>
                
                <table>
                    <tr>
                        <th colspan="3">Thông tin đơn hàng:</th>
                    </tr>
                    <tr>
                        <td>Mã đơn hàng: <strong>{{ $order[0]->id_order }}</strong></td>
                        <td colspan="2">Tình trạng thanh toán: <strong>{{ $order[0]->payment_status }}</strong></td>
                    </tr>
                    <?php
                        foreach ($order_detail as $item){
                    ?>
                    <tr>
                        <td>Sản phẩm: <strong>{{ $item->product_name }}</strong></td>
                        <td>Số lượng: <strong>{{ $item->quantity}}</strong></td>
                        <td>Đơn giá: <strong>{{ number_format($item->price, 0, ",", ".") }} đ</strong></td>
                    </tr>
                    <?php
                    }
                    ?>
                    <tr class="back-color">
                        <td colspan="3" class="text-center">
                            <strong>Tổng tiền: {{ number_format($order[0]->total, 0, ",", ".") }} đ</strong>
                        </td>
                    </tr>
                </table>
                
                <p class="mt-3">Đơn hàng của quý khách đã được tiếp nhận và đang được xử lý.<br>
                Chúng tôi sẽ liên hệ với quý khách trong thời gian sớm nhất.</p>
            </div>
        </div>
        
        <div class="footer">
            <div class="row">
                <div class="col-4">
                    <div class="img">
                        <img src="{{URL::asset('img/logo.png')}}" width="20%" alt="Hafos Fashion Logo">
                    </div>
                </div>
                <div class="col-8">
                    <p>
                        <strong>Hafos Fashion</strong><br>
                        Địa chỉ: 432/12 Dương Bá Trạc, Phường 1, Quận 8, TP.HCM<br>
                        Số điện thoại: +84 706 597 124<br>
                        Email: hafos.fashion@gmail.com<br>
                    </p>
                </div>
            </div>
        </div>
        
        <div class="copy-right">
           <p>©2024 - Bản quyền thuộc về Hafos Fashion</p>
        </div>
    </div>
</body>
</html>
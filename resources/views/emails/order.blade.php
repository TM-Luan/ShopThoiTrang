<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Xác nhận đơn hàng</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .container{
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            color: #333;
            font-family: Arial, sans-serif;
        }
        .header{
            padding: 10px 15px;
            background-color: #E53935;
            color: #fff;
            font-weight: bold;
        }
        .content{
            background-color: #f9f9f9;
            padding: 20px;
            border: 1px solid #ddd;
        }
        table{
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td{
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #eee;
        }
        .total-row {
            background-color: #ddd;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            XÁC NHẬN ĐƠN HÀNG - HAFOS FASHION
        </div>
        <div class="content">
            <p>Chào bạn <strong>{{ $order[0]->name }}</strong>,</p>
            <p>Cảm ơn bạn đã đặt hàng tại Hafos Fashion. Đơn hàng của bạn đã được tiếp nhận và đang trong quá trình xử lý.</p>
            
            <p><strong>Thông tin giao hàng:</strong></p>
            <ul>
                <li>Mã đơn hàng: {{ $order[0]->id_order }}</li>
                <li>Người nhận: {{ $order[0]->name }}</li>
                <li>Điện thoại: {{ $order[0]->phone }}</li>
                <li>Địa chỉ: {{ $order[0]->address }}</li>
                <li>Thanh toán: {{ $order[0]->payment_status }}</li>
            </ul>

            <p><strong>Chi tiết đơn hàng:</strong></p>
            <table>
                <thead>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Size</th>
                        <th>Màu</th>
                        <th>SL</th>
                        <th>Đơn giá</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($order_detail as $item): ?>
                    <tr>
                        <td>{{ $item->name }}</td>
                        <td>{{ $item->size }}</td>
                        <td>{{ $item->color }}</td>
                        <td>{{ $item->quantity }}</td>
                        <td>{{ number_format($item->price, 3, ',', '.') }} đ</td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
                <tfoot>
                    <tr class="total-row">
                        <td colspan="4" style="text-align: right;">Tổng cộng:</td>
                        <td>{{ number_format($order[0]->total, 3, ',', '.') }} đ</td>
                    </tr>
                </tfoot>
            </table>

            <p>Mọi thắc mắc xin liên hệ hotline: +84 706 597 124.</p>
            <p>Trân trọng,<br>Đội ngũ Hafos Fashion</p>
        </div>
    </div>
</body>
</html>
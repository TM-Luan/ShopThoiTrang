<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Email</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .container{
            width: 900px;
            /*background-color: #444444;*/
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
        }
        .content .row{
            margin: 0;
            margin-bottom: 10px;
        }
        .text {
            padding: 10px;
            background-color: #2B2B2B;
            font-size: 12px;
        }
        table{
            width: 100%;
        }
        table tr:first-child{
            background-color: #C4CDD5;
            color: #2B2B2B;
        }
        tr, th ,td{
            border: 1px solid #C4CDD5 !important;
        }
        .footer{
            padding: 10px;
            background-color: #444444;
            font-size: 12px;
        }
        .footer .row{
            margin: 0;
        }
        .copy-right{
            background-color: #E53935;
        }
        .copy-right p{
            font-size: 12px;
            text-align: center;
            padding: 5px 0;
            color: #2B2B2B;
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <span class="text-left">Date: <?php echo date("Y/m/d");?></span>
    </div>
    <div class="content">
        <div class="row">
            <div class="col-4">
                <div class="img">
{{--                    <img src="../../../public/img/logo.png" width="100%">--}}
                    <img src="{{URL::asset('img/logo.png')}}" width="20%">
                </div>
            </div>
            <div class="col-8">
                <span>Công Ty Thời Trang Hafos</span>
            </div>
        </div>
        <div class="text">
            <p>Xin chào <strong>{{ $user['name'] }}</strong></p>
            <p>Cảm ơn bạn đã đăng ký tài khoản trên Hafos Fashion.</p>
            <p>Email bạn đã đăng ký là <strong>{{ $user['email'] }}</strong></p>
<!--            <p>Liên hệ với chúng tôi để được hỗ trợ nhiều hơn:-->
<!--                <br>Hotline: (+84) 888 222 999-->
<!--                <br>Email: graphicstablet@gmail.com</p>-->
            <p>Trân trọng,<br>GT</p>
        </div>
    </div>
    <div class="footer">
        <div class="row">
            <div class="col-4">
                <div class="img">
                    <img src="{{URL::asset('img/logo.png')}}" width="20%">
                </div>
            </div>
            <div class="col-8">
                <p>
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
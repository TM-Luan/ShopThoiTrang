
@extends('layouts.admin')
@section('title', 'Danh sách người dùng | Admin - Hafos')
@section('content')

    <!-- Static Table Start -->
    <div class="data-table-area mg-tb-15">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="sparkline13-list">
                        <div class="sparkline13-hd">
                            <div class="main-sparkline13-hd">
                                <h1>Danh sách người dùng</h1>
                            </div>
                        </div>
                        <div class="sparkline13-graph">
                            <div class="datatable-dashv1-list custom-datatable-overright">
                                <div class="add-product">
                                    <a href="/admin/users/add">Thêm mới</a>
                                </div>
                                <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
    data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
    <thead>
        <tr>
            <th data-field="state" data-checkbox="true"></th>
            <th data-field="id">ID</th>
            <th data-field="image">Avatar</th>
            <th data-field="username">Tên người dùng</th>
            <th data-field="name">Họ và tên</th>
            <th data-field="address">Địa chỉ</th>
            <th data-field="role">Vai trò</th>
            <th data-field="action">Hành động</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($users as $user)
        <tr>
            <td></td>
            <td>{{ $user->id }}</td>
            <td>
                <img src="{{URL::asset('/upload/users/'.$user->avatar)}}" alt="" width="100">
            </td>
            <td>{{ $user->username }}</td>
            
            <td>{{ $user->name }}</td>
            
            <td>{!! \Illuminate\Support\Str::limit($user->address, 50, '...') !!}</td>
            
            <td>
                <?php 
                    if($user->role == 1){
                        echo '<button class="ds-setting">Người quản trị</button>';
                    } else {
                        echo '<button class="pd-setting">Khách hàng</button>';
                    }
                ?>
            </td>
            <td>
                <a href="/admin/users/edit/{{$user->id}}" class="btn btn-success">
                    <i class="fa fa-pencil-square-o text-white" aria-hidden="true"></i>
                </a>
                <a class="btn btn-danger" data-toggle="modal" data-target="#deleteUser{{$user->id}}">
                    <i class="fa fa-trash-o text-white" aria-hidden="true"></i>
                </a>
                
                <div class="modal fade" id="deleteUser{{$user->id}}" tabindex="-1" role="dialog" aria-hidden="true">
                    <form class="modal-dialog" role="document" action="/admin/users/delete" method="post">
                        {{ csrf_field() }}
                        <div class="modal-content">
                            <div class="modal-body" style="border-bottom: 1px solid #e5e5e5;">
                                <h4 style="color: red">Bạn có chắn chắn muốn xóa?</h4>
                                <p>Người dùng: <b>{{ $user->username }}</b></p>
                            </div>
                            <div class="modal-footer row" style="border: none !important;">
                                <div class="col-sm-6 text-left">
                                    <label>
                                        <input type="checkbox" value="1" name="destroy"> Xóa vĩnh viễn
                                        <input type="hidden" value="{{ $user->id }}" name="id">
                                    </label>
                                </div>
                                <div class="col-sm-6">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                                    <button type="submit" class="btn btn-primary">Đồng ý</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Static Table End -->
@stop

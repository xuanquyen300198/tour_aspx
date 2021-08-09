<%@ Page Title="" Language="C#" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row-fluid" style="text-align: center">
        <div class="span12">
            <h1>Thống kê đơn hàng </h1>
        </div>
    </div>
    <div class="row-fluid">
        <div class="widget-content">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Đơn hàng</th>
                        <th>Đơn hàng đã giao</th>
                        <th>Đơn hàng đang chờ</th>
                        <th>Số hàng bán</th>
                        <th>Tổng tiền bán ra</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="even gradeC">
                        <td><%=tongSoDon %> Đơn hàng</td>
                        <td><%=soDonDaGiao %> Số đơn đã giao</td>
                        <td><%=soDonDangCho %> Số đơn đang chờ</td>
                        <td><%=tongSoMon %> Số hàng bán ra</td>
                        <td><%=tongTien %> VNĐ Thu về</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <hr />
    <div class="row-fluid" style="text-align: center">
        <div class="span12">
            <h1>Phản hồi của khách hàng </h1>
        </div>
    </div>
    <div class="row-fluid">
        <div class="widget-content">
            <table style="max-height: 700px; overflow-x: scroll" class="table table-bordered table-striped">
                <thead>
                    <tr>                       
                        <th>Tên người nhận hàng</th>
                        <th>Địa chỉ người nhận</th>
                        <th>Số điện thoại người nhận</th>
                        <th>Số món trong đơn hàng</th>
                        <th style="max-width: 250px">Mô tả đơn hàng</th>
                        <th>Tổng tiền thanh toán</th>
                        <th>Trạng thái đơn hàng</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand">
                        <ItemTemplate>
                            <tr class="even gradeC">
                                <td><%#Eval("ngay_dat_hang") %></td>
                                <td><%#Eval("ten_nguoi_nhan_hang") %></td>
                                <td><%#Eval("dia_chi_nguoi_nhan") %></td>
                                <td><%#Eval("sdt_nguoi_nhan") %></td>
                                <td><%#Eval("tong_so_mon") %></td>
                                <td class="p-text"><%# Eval("mo_ta") %></td>
                                <td><%#Eval("TongTien") %> VNĐ</td>
                                <td runat="server" visible='<%# (Convert.ToInt32(Eval("trang_thai_don_hang")) == 0) %>'>Đang chờ</td>
                                <td runat="server" visible='<%# (Convert.ToInt32(Eval("trang_thai_don_hang")) == 1) %>'>Đã giao</td>
                                <td runat="server" visible='<%# (Convert.ToInt32(Eval("trang_thai_don_hang")) == 0) %>'>
                                    <asp:LinkButton ID="btnUpdate" CssClass="btn btn-success btn-mini" runat="server" CommandArgument='<%# Eval("IDDonHang") %>' CommandName="update">On</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>

    <hr />
    <div class="row-fluid" style="text-align: center">
        <div class="span12">
            <h1>Tất cả đơn hàng </h1>
        </div>
    </div>
    <div class="row-fluid">
        <div class="widget-content">
            <table style="max-height: 700px; overflow-x: scroll" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Người phản hồi</th>
                        <th>Nội dung phản hồi</th>
                        <th>Ngày phản hồi</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="repeater1" runat="server" OnItemCommand="repeater1_ItemCommand">
                        <ItemTemplate>
                            <tr class="even gradeC">
                                <td><%#Eval("ma_user") %></td>
                                <td><%#Eval("noi_dung") %></td>
                                <td><%#Eval("ngay_tao") %></td>
                                <td >
                                    <asp:LinkButton CssClass="btn btn-success btn-mini" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="delete">Delete</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

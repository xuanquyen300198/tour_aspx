<%@ Page Title="" Language="C#" ValidateRequest = "false" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUser-add.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminUser_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">        
    <div class="row-fluid">
        <div class="widget-box">
            <div class="widget-title">
                <span class="icon"><i class="icon-align-justify"></i></span>
                <h5>Thêm người dùng mới</h5>
            </div>
            <div class="widget-content nopadding">
                <div class="control-group">
                    <label class="control-label">Mã người dùng:</label>
                    <div class="controls">
                        <input type="text" id="txtMa" runat="server" class="span11" placeholder="Mã người dùng" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server"
                            ControlToValidate="txtMa"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Tên người dùng:</label>
                    <div class="controls">
                        <input type="text" id="txtTen" runat="server" class="span11" placeholder="Tên người dùng" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server"
                            ControlToValidate="txtTen"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">User name:</label>
                    <div class="controls">
                        <input type="text" id="txtUserName" runat="server" class="span11" placeholder="User name" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="txtUserName"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Phân quyền:</label>
                    <div class="controls">
                        <asp:DropDownList ID="drlDanhMuc" runat="server" class="form-control" placeholder="Keyword search" style="max-width: none">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm" Width="100px" Height="40px" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:Button ID="btnSua" runat="server" OnClick="btnSua_Click" Text="Lưu" Width="100px" Height="40px" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					    <asp:Button ID="btnThoat" runat="server" Text="Thoát" Width="100px" Height="40px" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Success Modal HTML -->
    <div id="myModal" class="modal fade myMD">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="icon-box">
                        <i class="material-icons">&#xE876;</i>
                    </div>
                    <h4 class="modal-title w-100">Thành công!</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center"><%=insert ? "Thêm mới" : "Cập nhật" %>thành công.</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-block" OnClick="Unnamed_Click1">OK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>


    <!--Error Modal HTML -->
    <div id="myModal2" class="modal fade myMD">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="icon-box2">
                        <i class="material-icons">&#xE5CD;</i>
                    </div>
                    <h4 class="modal-title w-100">Thất bại!</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center"><%=insert ? "Thêm mới" : "Cập nhật" %> thất bại.Vui lòng kiểm tra hệ thống!</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-block" OnClick="Unnamed_Click" >OK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" ValidateRequest = "false" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBill-view.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminBill_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function previewFile() {
            var preview = document.querySelector('#<%=Avatar.ClientID %>');
            var file = document.querySelector('#<%=avatarUpload.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
    </script>
    <div class="row-fluid">
        <div class="widget-box">
            <div class="widget-title">
                <span class="icon"><i class="icon-align-justify"></i></span>
                <h5>Sửa hóa đơn</h5>
            </div>
            <div class="widget-content nopadding">
                <div class="control-group">
                    <label class="control-label">Danh mục:</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtDanhMuc" class="span11" placeholder="Mã" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Tên:</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtTen" class="span11" placeholder="Tên" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Ảnh mô tả:</label>
                    <div class="controls">

                        <input id="avatarUpload" type="file" name="file" onchange="previewFile()" runat="server" />               
                        <asp:Image ID="Avatar" runat="server" Height="225px" Width="225px" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Thành tiền:</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtThanhTien" class="span11" placeholder="Thành tiền" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Ngày đặt từ</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtNgayDatTu" disabled class="span11" placeholder="Ngày đặt từ" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Ngày đặt đến</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtNgayDatDen" disabled class="span11" placeholder="Ngày đặt đến" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Ngày tạo</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtNgayTao" disabled class="span11" placeholder="Ngày đặt đến" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Vắn tắt</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtVanTat" disabled class="span11" placeholder="Ngày đặt đến" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Gmail</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtGmail" class="span11" placeholder="Số lượng tour" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Họ tên</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtHoTen" class="span11" placeholder="Số lượng tour" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Loại tài khoản</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtLoaiTaiKhoan" class="span11" placeholder="Số lượng tour" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Số tài khoản</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtSoTaiKhoan" class="span11" placeholder="Số lượng tour" />
                    </div>
                </div>
                <div class="form-actions">
                    <asp:Button CssClass="btn btn-success" Text="Close" runat="server" ID="btnThem" OnClick="btnThem_Click" />
                    <asp:Button CssClass="btn btn-success" Text="Save" runat="server" ID="btnSua" OnClick="btnSua_Click" />
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
                    <p class="text-center">Bạn đã thêm mới thành công.</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-block" OnClick="Unnamed_Click">OK</asp:LinkButton>
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
                    <p class="text-center">Thêm mới thất bị.Vui lòng kiểm tra hệ thống</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-block" OnClick="Unnamed_Click1">OK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

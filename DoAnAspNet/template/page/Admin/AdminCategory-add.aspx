<%@ Page Title="" Language="C#" ValidateRequest = "false" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCategory-add.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminCategory_add" %>
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
                <h5>Thêm khu vục điểm du</h5>
            </div>
            <div class="widget-content nopadding">
                <div class="control-group">
                    <label class="control-label">Mã:</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtMa" class="span11" placeholder="Mã" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Tên:</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtTenDanhMuc" class="span11" placeholder="Tên" />
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
                    <label class="control-label">Mô tả:</label>
                    <div class="controls">
                        <asp:TextBox ID="txtDetail" runat="server" TextMode="MultiLine" cols="60" Rows="10"> </asp:TextBox>
                    </div>
                    <script type="text/javascript">
                        var editor2 = CKEDITOR.replace("MainContent_txtDetail");
                    </script>
                </div>
                <div class="control-group">
                    <label class="control-label">Số lượng tour</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtSoLuongMon" class="span11" placeholder="Số lượng tour" />
                    </div>
                </div>
                <div class="form-actions">
                    <asp:Button CssClass="btn btn-success" Text="Add" runat="server" ID="btnThem" OnClick="btnThem_Click" />
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

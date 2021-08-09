<%@ Page Title="" Language="C#" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProduct-add.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminProduct_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<script type="text/javascript">
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
                <h5>Thêm món ăn mới</h5>
            </div>
            <div class="widget-content nopadding">
                <div class="control-group">
                    <label class="control-label">Tên món:</label>
                    <div class="controls">
                        <input type="text" id="txtTenMon" runat="server" class="span11" placeholder="Tên món" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server"
                            ControlToValidate="txtTenMon"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Thể loại:</label>
                    <div class="controls">
                        <asp:DropDownList ID="drlDanhMuc" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Đơn giá:</label>
                    <div class="controls">
                        <input type="text" class="span11" runat="server" id="txtDonGia" placeholder="Đơn giá (VND. VD:10000=>10000 VNĐ)" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="txtDonGia"
                            ErrorMessage="Không được bỏ trống">                        
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtDonGia" ErrorMessage="Đơn giá phải có định dạng là chữ số" />
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
                    <label class="control-label">Số lượng:</label>
                    <div class="controls">
                        <input type="text" id="txtSoLuong" runat="server" class="span11" placeholder="Số lượng" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                            runat="server"
                            ControlToValidate="txtSoLuong"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtSoLuong" ErrorMessage="Số lượng phải có định dạng là chữ số" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Giảm giá:</label>
                    <div class="controls">
                        <input type="text" runat="server" id="txtGiamGia" class="span11" placeholder="Giảm giá (Số % giảm giá.VD:5=>5%)" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                            runat="server"
                            ControlToValidate="txtGiamGia"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtDonGia" ErrorMessage="Giảm giá phải có định dạng là chữ số" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Thành phần:</label>
                    <div class="controls">
                        <asp:TextBox ID="txtThanhPhan" runat="server" TextMode="MultiLine" cols="60" Rows="10"></asp:TextBox>
                    </div>
                    <script type="text/javascript">
                        var editor1 = CKEDITOR.replace("MainContent_txtThanhPhan");
                    </script>
                </div>
                <div class="control-group">
                    <div class="form-group align-items-center">
                        <label for="txtDetail" class="col-md-2 col-form-label">Mô tả:</label>
                        <asp:TextBox ID="txtDetail" runat="server" TextMode="MultiLine" cols="60" Rows="10"></asp:TextBox>
                    </div>
                    <script type="text/javascript">
                        var editor2 = CKEDITOR.replace("MainContent_txtDetail");
                    </script>
                </div>
                <div class="control-group">
                    <label class="control-label">Thông tin:</label>
                    <div class="controls">
                        <asp:TextBox ID="txtThongTin" runat="server" TextMode="MultiLine" cols="60" Rows="10"></asp:TextBox>
                    </div>
                    <script type="text/javascript">
                        var editor3 = CKEDITOR.replace("MainContent_txtThongTin");
                    </script>
                </div>
                <div class="control-group">
                    <label class="control-label">Đánh giá:</label>
                    <div class="controls">
                        <asp:TextBox ID="txtDanhGia" runat="server" TextMode="MultiLine" cols="60" Rows="10"></asp:TextBox>
                    </div>
                    <script type="text/javascript">
                        var editor4 = CKEDITOR.replace("MainContent_txtDanhGia");
                    </script>
                </div>
                <div class="form-group">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm Món" Width="100px" Height="40px" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:Button ID="btnSua" runat="server" OnClick="btnSua_Click" Text="Lưu" Width="100px" Height="40px" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					    <asp:Button ID="btnThoat" runat="server" Text="Thoát" Width="100px" Height="40px" />
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    <!--Success Modal HTML -->
    <div id="myModal" class="modal fade myMD">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="icon-box">
                        <i class="material-icons">&#xE876;</i>
                    </div>
                    <h4 class="modal-title w-100">Awesome!</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center">Your booking has been confirmed. Check your email for detials.</p>
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
                    <h4 class="modal-title w-100">Sorry!</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center">Your transaction has failed. Please go back and try again.</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-block" OnClick="Unnamed_Click" >OK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" ValidateRequest = "false" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHotel-add.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminHotel_add" %>
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
        function previewFile1() {
            var preview = document.querySelector('#<%=Image1.ClientID %>');
            var file = document.querySelector('#<%=avatarUploadCt1.ClientID %>').files[0];
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
        function previewFile2() {
            var preview = document.querySelector('#<%=Image2.ClientID %>');
            var file = document.querySelector('#<%=avatarUploadCt2.ClientID %>').files[0];
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
        function previewFile3() {
            var preview = document.querySelector('#<%=Image3.ClientID %>');
            var file = document.querySelector('#<%=avatarUploadCt3.ClientID %>').files[0];
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
                <h5>Thêm khách sạn mới</h5>
            </div>
            <div class="widget-content nopadding">
                <div class="control-group">
                    <label class="control-label">Mã khách sạn:</label>
                    <div class="controls">
                        <input type="text" id="txtMa" runat="server" class="span11" placeholder="Mã khách sạn" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server"
                            ControlToValidate="txtMa"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Tên khách sạn:</label>
                    <div class="controls">
                        <input type="text" id="txtTen" runat="server" class="span11" placeholder="Tên khách sạn" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server"
                            ControlToValidate="txtTen"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Địa danh:</label>
                    <div class="controls">
                        <asp:DropDownList ID="drlDanhMuc" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Đơn giá:</label>
                    <div class="controls">
                        <input type="text" class="span11" runat="server" id="txtDonGia" placeholder="Đơn giá (VND. VD:10000=>10000 $)" />
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
                    <label class="control-label">Ảnh chi tiết 1:</label>
                    <div class="controls">

                        <input id="avatarUploadCt1" type="file" name="file1" onchange="previewFile1()" runat="server" />               
                        <asp:Image ID="Image1" runat="server" Height="225px" Width="225px" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Ảnh chi tiết 2:</label>
                    <div class="controls">

                        <input id="avatarUploadCt2" type="file" name="file2" onchange="previewFile2()" runat="server" />               
                        <asp:Image ID="Image2" runat="server" Height="225px" Width="225px" />
                    </div>
                </div>
                 <div class="control-group">
                    <label class="control-label">Ảnh chi tiết 3:</label>
                    <div class="controls">

                        <input id="avatarUploadCt3" type="file" name="file3" onchange="previewFile3()" runat="server" />               
                        <asp:Image ID="Image3" runat="server" Height="225px" Width="225px" />
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
                    <label class="control-label">Mô tả thời gian:</label>
                    <div class="controls">
                        <input type="text" id="txtThoiGian" runat="server" class="span11" placeholder="Mô tả thời gian" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                            runat="server"
                            ControlToValidate="txtThoiGian"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Địa điểm:</label>
                    <div class="controls">
                        <input type="text" id="txtDiaDiem" runat="server" class="span11" placeholder="Địa điểm" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                            runat="server"
                            ControlToValidate="txtDiaDiem"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Vắn tắt:</label>
                    <div class="controls">
                        <input type="text" id="txtVanTat" runat="server" class="span11" placeholder="Vắn tắt" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                            runat="server"
                            ControlToValidate="txtVanTat"
                            ErrorMessage="Không được bỏ trống">
                        </asp:RequiredFieldValidator>
                    </div>
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

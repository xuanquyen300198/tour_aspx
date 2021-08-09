<%@ Page Title="" Language="C#" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCategory-list.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminCategory_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">s
   <div class="widget-box">
       <div class="row-fluid">
           <div style="width: 30%;
    float: left;
    margin-right: 50px;
    margin-left: 20px;">
               <div class="form-group">
                  <label for="usr">Mã</label>
                  <asp:TextBox runat="server" ID="textMa" type="text" CssClass="input-s" />
                </div> 

           </div>
           <div style="width: 30%;
    float: left;
    margin-right: 50px;">
               <div class="form-group">
                  <label for="usr">Tên</label>
                  <asp:TextBox runat="server" ID="textTen" type="text" CssClass="input-s" />
                </div> 

           </div>
           <div class="col-3" style="line-height: 75px;"><asp:Button runat="server" class="btn-cs btn btn-primary" ID="btnSearch" OnClick="btnSearch_Click" Text="Tìm kiếm" /></div>
       </div>
   </div>
    <div class="row-fluid">
        <div class="widget-box">
            <div class="widget-title">
                <span class="icon"><i class="icon-th"></i></span>
                <h5>Product list</h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Danh mục</th>
                            <th>Tên</th>
                            <th>Ảnh</th>
                            <th>Mô tả</th>
                            <th>Số lượng tour</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand">
                            <ItemTemplate>
                                <tr class="even gradeC">
                                    <td><%# Eval("ma") %></td>
                                    <td><%# Eval("ten") %></td>
                                    <td><%# Eval("anh") %></td>
                                    <td><%# Eval("mo_ta") %></td>
                                    <td><%# Eval("so_luong_tour") %></td>
                                    <td>
                                        <asp:LinkButton runat="server" CommandName="delete" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-danger btn-mini">Delete</asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-warning btn-mini" CommandName="edit" CommandArgument='<%# Eval("id") %>' runat="server">Edit</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="widget-box">
            <nav aria-label="Page navigation example">
              <ul class="pagination-cs">
                <li class="page-item">
                  <asp:LinkButton runat="server" OnClick="ClickPrev" CssClass="page-link-cs">&lt;&lt;</asp:LinkButton>
                </li>
                <asp:Repeater ID="repeaterPage" runat="server" OnItemCommand="repeater_ItemCommand1">
                    <ItemTemplate>
                        
                        <li class="page-item" >
                            
                            <asp:LinkButton runat="server" CommandName="page" CommandArgument='<%# Eval("id") %>'  CssClass='page-link-cs'>
                                <%# ((Eval("id").ToString()!=(page+"") ) 
                                    ? String.Format("<span>{0}</span>", Eval("id")) : 
                                String.Format("<span style='color:red'>{0}</span>", Eval("id"))) %>
                            </asp:LinkButton>

                        </li>
                    </ItemTemplate>
                </asp:Repeater>
                <li class="page-item">
                  <asp:LinkButton runat="server" OnClick="ClickNext" CssClass="page-link-cs">&gt;&gt;</asp:LinkButton>
                </li>
              </ul>
            </nav>
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
                    <p class="text-center">Bạn đã xóa bản ghi thành công.</p>
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
                    <p class="text-center">Xóa thất bị.Vui lòng kiểm tra hệ thống.</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-block" OnClick="Unnamed_Click">OK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

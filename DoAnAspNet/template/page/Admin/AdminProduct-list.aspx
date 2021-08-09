<%@ Page Title="" Language="C#" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProduct-list.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminProduct_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row-fluid">
        <div class="widget-box">
            <div class="widget-title">
                <span class="icon"><i class="icon-th"></i></span>
                <h5>Danh sách Tour du lịch</h5>
            </div>
            <div class="widget-content nopadding" style="max-height: 500px; overflow: auto; overflow-x: auto">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 10%">Tên tour</th>
                            <th style="width: 10%">Địa điểm</th>
                            <th style="width: 5%">Đơn giá</th>
                            <th style="width: 10%">Ảnh</th>
                            <th style="width: 5%">Giảm giá</th>
                            <th style="width: 5%">Giá sau giảm</th>
                            <th style="width: 30%">Vắn tắt</th>
                            <th style="width: 5%">Love</th>
                            <th style="width: 30%">Mô tả</th>
                            <th style="width: 30%">Đánh giá</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%--<asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand1">
                            <ItemTemplate>
                                <tr class="even gradeC">
                                    <td><%# Eval("ten")%></td>
                                    <td><%# Eval("ma_danhmuc") %></td>
                                    <td style="text-align: center"><%#Eval("gia") %></td>
                                    <td><%#Eval("anh")%></td>
                                    
                                    <td style="text-align: center"><%#Eval("giam_gia") %></td>
                                    <td><p class="p-text"><%#Eval("gia_sau_giam")%></p>  </td>
                                    <td><p class="p-text"><%#Eval("van_tat")%></p>  </td>
                                    <td><%#Eval("love")%></td>
                                    <td><p class="p-text"><%#Eval("mo_ta")%>     </p>  </td>
                                    <td><p class="p-text"><%#Eval("danh_gia") %> </p>  </td>
                                    <td>
                                        <asp:LinkButton runat="server" CommandName="delete" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-danger btn-mini">Delete</asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-warning btn-mini" runat="server"  CommandName="edit" CommandArgument='<%# Eval("id") %>' >Edit</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>--%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="widget-box">
            <nav aria-label="Page navigation example" style="margin-top: -20px;">
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                  </a>
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
                    <button class="btn btn-danger btn-block" data-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

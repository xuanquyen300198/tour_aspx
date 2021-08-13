<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="DoAnAspNet.template.page.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../table/css/style.css" rel="stylesheet" />
    <section class="ftco-section" >
		<%if (login)
            { %>
		<div class="container" style="margin-top:-40px">
			<div class="row">
				<div class="col-md-12">
					<h3 class="h5 mb-4 text-center">Danh sách Tour</h3>
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						    <tr>
						    	<th>&nbsp;</th>
						    	<th>Tên tour</th>
						      <th>Thành tiền</th>
							  <th>Loại thanh toán</th>
							  <th>Email</th>
							  <th>Họ tên</th>
						      <th>Ngày tạo</th>
						      <th>Chi tiết</th>
						    </tr>
						  </thead>
						  <tbody>
							  <asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand">
								<ItemTemplate>
									<tr class="alert" role="alert">
										
										<td>
											
											<div class="email">
						      					<span><%# Eval("ten1")%> </span>
						      					<span><%# Eval("vantat1")%></span>
						      				</div>
										</td>
										<td>
											<img class="rounded" src="../images/<%# Eval("anh1") %>" width="80" />
										</td>
										<td>$<%# Eval("thanh_tien") %></td>
										<td><%# Eval("loai_thanhtoan").ToString()=="1" ? "MasterCard" : (Eval("loai_thanhtoan").ToString()=="2" ? "Visa" : "JCB")%></td>
										<td><%# Eval("email") %></td>
										<td><%# Eval("ho_ten") %></td>
										<td><%# Eval("ngay_tao") %></td>
										<td>
											<asp:LinkButton CssClass="btn btn-success btn-mini" CommandName="print" CommandArgument='<%# Eval("id") %>' runat="server">Print</asp:LinkButton>
										</td>
									</tr>
								</ItemTemplate>
							</asp:Repeater>
						  </tbody>
						</table>
					</div>
				</div>
			</div>

            <%-- 1234 --%>
			<div class="row">
				<div class="col-md-12">
					<h3 class="h5 mb-4 text-center">Danh sách phòng</h3>
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						    <tr>
						    	<th>&nbsp;</th>
						    	<th>Tên tour</th>
						      <th>Thành tiền</th>
							  <th>Loại thanh toán</th>
							  <th>Email</th>
							  <th>Họ tên</th>
						      <th>Ngày tạo</th>
						      <th>Chi tiết</th>
						    </tr>
						  </thead>
						  <tbody>
							<asp:Repeater ID="repeater1" runat="server" OnItemCommand="repeater_ItemCommand1">
								<ItemTemplate>
									<tr class="alert" role="alert">
										<td>
											
											<div class="email">
						      					<span><%# Eval("ten2")%> </span>
						      					<span><%# Eval("vantat2")%></span>
						      				</div>
										</td>
										<td>
											<img class="rounded" src="../images/<%# Eval("anh2") %>" width="80" />
										</td>
										<td>$<%# Eval("thanh_tien") %></td>
										<td><%# Eval("loai_thanhtoan").ToString()=="1" ? "MasterCard" : (Eval("loai_thanhtoan").ToString()=="2" ? "Visa" : "JCB")%></td>
										<td><%# Eval("email") %></td>
										<td><%# Eval("ho_ten") %></td>
										<td><%# Eval("ngay_tao") %></td>
										<td>
											<asp:LinkButton CssClass="btn btn-success btn-mini" CommandName="print" CommandArgument='<%# Eval("id") %>' runat="server">Print</asp:LinkButton>
										</td>
									</tr>
								</ItemTemplate>
							</asp:Repeater>
						    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<%}
            else
            { %>
		<div class="row">
			<section class="ftco-section" >
				<h3 class="text-center">
					Bạn chưa đăng nhập
				</h3>
			</section>
			
		</div>
		<% }%>
	</section>
    <script src="../table/js/popper.js"></script>
</asp:Content>

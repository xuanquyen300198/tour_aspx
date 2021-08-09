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
						    	<th>&nbsp;</th>
						    	<th>Tên tour</th>
						      <th>Giá</th>
							  <th>Loại thanh toán</th>
						      <th>Ngày tạo</th>
						      <th>Chi tiết</th>
						    </tr>
						  </thead>
						  <tbody>
							<%foreach (var item in lstBillTour)
                                { %>
								<tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox" checked>
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	<td>
						    		<div class="img" style="background-image: url(../images/<%=item.anh1%>);"></div>
						    	</td>
						      <td>
						      	<div class="email">
						      		<span><%=item.ten1%> </span>
						      		<span><%=item.vantat1%></span>
						      	</div>
						      </td>
						      <td>$<%=item.thanh_tien%></td>
						      <td><%=item.loai_thanhtoan==1 ? "MasterCard" : (item.loai_thanhtoan==2 ? "Visa" : "JCB")%></td>
							  <td><%=item.ngay_tao%></td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-eye" style="font-size:20px"></i></span>
								</button>
							   </td>
						    </tr>
							<%} %>
						    
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
						    	<th>&nbsp;</th>
						    	<th>Tên tour</th>
						      <th>Giá</th>
							  <th>Loại thanh toán</th>
						      <th>Ngày tạo</th>
						      <th>Chi tiết</th>
						    </tr>
						  </thead>
						  <tbody>
							<%foreach (var item in lstBillRoom)
                                { %>
								<tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox" checked>
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	<td>
						    		<div class="img" style="background-image: url(../images/<%=item.anh2%>);"></div>
						    	</td>
						      <td>
						      	<div class="email">
						      		<span><%=item.ten2%> </span>
						      		<span><%=item.vantat2%></span>
						      	</div>
						      </td>
						      <td>$<%=item.thanh_tien%></td>
						      <td><%=item.loai_thanhtoan==1 ? "MasterCard" : (item.loai_thanhtoan==2 ? "Visa" : "JCB")%></td>
							  <td><%=item.ngay_tao%></td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-eye" style="font-size:20px"></i></span>
								</button>
							   </td>
						    </tr>
							<%} %>
						    
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

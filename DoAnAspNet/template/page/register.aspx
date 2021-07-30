<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="DoAnAspNet.template.page.register" %>

<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Travel Login Form Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Travel Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
    </script>
	<!-- Meta tag Keywords -->
	<style type="text/css">
		.text-err {
			color:lightcyan;
		}
		.text-err-left {
			float: left;
		}
	</style>
	<!-- css files -->
    <link href="../login/css/style.css" rel="stylesheet" />
	<!-- Style-CSS -->
	<!-- //css files -->

	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<!-- title -->
	<h1>
		<span>T</span>ravel
		<span>R</span>egister
		<span>F</span>orm </h1>
	<!-- //title -->

	<!-- content -->
	<div class="sub-main-w3">
		<form id="form1" runat="server">
			<img src="../login/images/logo.png" alt="">
			<h2>Đăng kí tài khoản</h2>
			<div class="form-style-agile">
				<asp:TextBox ID="txtEmail" placeholder="Email" runat="server" type="text" required=""></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5"
                    runat="server"
					CssClass="text-err"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator CssClass="text-err text-err-left" ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Không đúng định dạng Email">
				</asp:RegularExpressionValidator>
			</div>
			<div class="form-style-agile">
				<asp:TextBox ID="txtName" runat="server" placeholder="Tên đăng nhập" type="text" required=""></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
					CssClass="text-err"
                    ControlToValidate="txtName"
                    ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
			</div>
			<div class="form-style-agile">
				<asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Mật khẩu" required=""></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2"
                    runat="server"
					CssClass="text-err"
                    ControlToValidate="txtPass"
                    ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
			</div>
			<div class="form-style-agile">
				<asp:TextBox ID="txtConfPassword" runat="server" TextMode="Password" placeholder="Nhập lại mật khẩu" required=""></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    runat="server"
					CssClass="text-err"
                    ControlToValidate="txtConfPassword"
                    ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
			</div>
			<div class="wthree-text">
				<ul>
					<li style="float: right;">
						<a href="login.aspx">Bạn đã có tài khoản?</a>
					</li>
				</ul>
			</div>
			<!-- //switch -->
			<asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" />
		</form>
	</div>
	<div class="clear"></div>
	<!-- //content -->

	<!-- copyright -->
	<div class="footer">
		<p>&copy; 2018 Travel Login Form. All rights reserved | Design by
			<a href="http://w3layouts.com">W3layouts</a>
		</p>
	</div>
	<!-- //copyright -->

</body>

</html>

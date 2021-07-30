<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DoAnAspNet.template.page.login" %>

<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Travel Login Form</title>
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
		<span>L</span>ogin
		<span>F</span>orm </h1>
	<!-- //title -->

	<!-- content -->
	<div class="sub-main-w3">
		<form id="form1" runat="server">
			<img src="../login/images/logo.png" alt="">
			<h2>Đăng nhập tài khoản</h2>
			<div class="form-style-agile">
				<asp:TextBox ID="txtName" runat="server" placeholder="Username" name="Name" type="text" required="" ></asp:TextBox>
			</div>
			<div class="form-style-agile">
				<asp:TextBox ID="txtPass" runat="server" placeholder="Password" name="Password" type="password" required="" ></asp:TextBox>
			</div>
			<!-- checkbox -->
			<div class="wthree-text">
				<ul>
					<li>
						<!-- switch -->
						<div class="checkout-w3l">
							<div class="demo5">
								<div class="switch demo3">
									<input type="checkbox">
									<label>
										<i></i>
									</label>
								</div>
							</div>
							<a href="#">Lưu mật khẩu</a>
						</div>
						<!-- //checkout -->
					</li>
					<li>
						<a href="#">Quên mật khẩu?</a>
					</li>

				</ul>
				
			</div>
			<div class="wthree-text">
				<ul>
					<li style="float: right;">
						<a href="register.aspx">Bạn chưa có tài khoản?</a>
					</li>
				</ul>
			</div>
			<!-- //switch -->
			<asp:Button ID="btnDangNhap" runat="server" type="submit" Text="Đăng nhập" OnClick="btnDangNhap_Click"/>
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

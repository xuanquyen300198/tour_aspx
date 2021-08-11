<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminLogin" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="login/style.css" rel="stylesheet" />
    <style>

</style>
</head>
<body>
        <div class="box">
                <h2 style=" margin-bottom: 20px;">Đăng nhập</h2>
                <form id="form1" runat="server">
                  <div class="inputBox">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Username" name="Name" type="text" required="" ></asp:TextBox>
                    
                  </div>
                  <div class="inputBox">
                        <asp:TextBox ID="txtPass" runat="server" placeholder="Password" name="Password" type="password" required="" ></asp:TextBox>
                        
                      </div>
                   <asp:Button ID="btnDangNhap" runat="server" type="submit" Text="Đăng nhập" OnClick="btnDangNhap_Click"/>
                </form>
              </div>
</body>
</html>

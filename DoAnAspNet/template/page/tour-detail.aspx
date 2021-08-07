<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tour-detail.aspx.cs" Inherits="DoAnAspNet.template.page.tour_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="hero-wrap js-fullheight" style="background-image: url('../images/bg-deatail.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                    <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.aspx">Trang chủ</a></span> <span class="mr-2"><a href="hotel.html">Du lịch</a></span> <span>Du lịch đơn</span></p>
                    <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Chi tiết chuyến du lịch</h1>
                </div>
            </div>
        </div>
    </div>


    <section class="ftco-section ftco-degree-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 sidebar">

                    <div class="sidebar-wrap bg-light ftco-animate">
                        <h3 class="heading mb-4">Đánh giá</h3>
                        <form method="post" class="star-rating">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i></span></p>
                                </label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i></span></p>
                                </label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                                </label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                                </label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                    <p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i></span></p>
                                </label>
                            </div>
                            <div>
                                <input type="submit" value="Đánh giá" class="btn btn-primary py-3" style="border-radius: 5px; width: 100%;">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-md-12 ftco-animate">
                            <div class="single-slider owl-carousel">
                                <div class="item">
                                    <div class="hotel-img" style="background-image: url(../images/<%=tour.anh_ct1%>);"></div>
                                </div>
                                <div class="item">
                                    <div class="hotel-img" style="background-image: url(../images/<%=tour.anh_ct2%>);"></div>
                                </div>
                                <div class="item">
                                    <div class="hotel-img" style="background-image: url(../images/<%=tour.anh_ct2%>);"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
                            <span>Tour du lịch tốt nhất &amp; khách sạn</span>
                            <h2><%=tour.ten%></h2>
                            <p class="rate mb-5">
                                <span class="loc"><a href="#"><i class="icon-map"></i><%=tour.dia_diem%></a></span>
                                <span class="star">
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star-o"></i>
                                    <%=tour.danh_gia%> Star</span>
                            </p>
                            <p><%=tour.mo_ta%></p>

                        </div>
                        <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                            <h4 class="mb-4">Đi thăm quan</h4>
                            <div class="block-16">
                                <figure>
                                    <img src="../images/<%=tour.anh%>" alt="Image placeholder" class="img-fluid">
                                    <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                            <h4 class="mb-4">Khách sán của chúng tôi</h4>
                            <div class="row">
                                <%if (lstHotel.Count > 0)
                                    {
                                        for (int i = 0; i < lstHotel.Count; i++)
                                        {
                                            if (i >= 3) { break; }
                                            %>
                                        <div class="col-md-4">
                                            <div class="destination">
                                                <a href="hotel-detail.aspx?pId=<%= lstHotel[i].id %>" class="img img-2" style="background-image: url(../images/<%=lstHotel[i].anh %>);"></a>
                                                <div class="text p-3">
                                                    <div class="d-flex">
                                                        <div class="one">
                                                            <h3 style="min-height: 80px;"><a href="hotel-detail.aspx?pId=<%= lstHotel[i].id %>"><%= lstHotel[i].ten %></a></h3>
                                                            <p class="rate">
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star-o"></i>
                                                                <span><%= lstHotel[i].danh_gia %> Star</span>
                                                            </p>
                                                        </div>
                                                        <div class="two">
                                                            <span class="price per-price">$<%= lstHotel[i].gia_sau_giam %><br>
                                                                <small>/<%= lstHotel[i].thoi_gian %></small></span>
                                                        </div>
                                                    </div>
                                                    <p style="min-height: 80px;"><%= lstHotel[i].van_tat %></p>
                                                    <hr>
                                                    <p class="bottom-area d-flex">
                                                        <span><i class="icon-map-o" style="margin-right: 5px;"></i><span style="color: red"><%= lstHotel[i].giam_gia %> %</span> - <span style="text-decoration-line: line-through">$<%= lstHotel[i].gia %></span></span>
                                                        <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <%}
                                    } %>
                                <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                                    <h4 class="mb-5">Đặt tour</h4>
                                    <div class="fields">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" ID="txtDateFrom1" TextMode="Date" CssClass="form-control" />
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDateFrom1" DateFormat="dd/MM/yyyy" DisplayDateFormat="dd/MM/yyyy" CssClass="text-danger" ErrorMessage="Ngày từ là bắt buộc." Display="Dynamic" ValidationGroup="SetRelase" style="max-width: none;" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" ID="txtDateTo" TextMode="Date" CssClass="form-control" />
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDateTo" DateFormat="dd/MM/yyyy" DisplayDateFormat="dd/MM/yyyy" CssClass="text-danger" ErrorMessage="Ngày đến là bắt buộc." Display="Dynamic" ValidationGroup="SetRelase" style="max-width: none;" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="select-wrap one-third">
                                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                        <asp:DropDownList ID="drlKH" runat="server" class="form-control" placeholder="Khách hàng" style="max-width: none;">
                                                            <asp:ListItem Text="Khách hàng" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                                        </asp:DropDownList>
                                                
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="select-wrap one-third">
                                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                        <asp:DropDownList ID="drlTreEm" runat="server" class="form-control" placeholder="Trẻ em" style="max-width: none;">
                                                            <asp:ListItem Text="Trẻ em" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:Button runat="server" type="submit" Text="Đặt tour" class="btn btn-primary py-3" style="max-width: none;font-size: 16px;" ID="btnBook" OnClick="btnBook_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                                    <h4 class="mb-4">Đánh giá</h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <form method="post" class="star-rating">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i>100 Đánh giá</span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i>30 Đánh giá</span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i>5 Đánh giá</span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i>0 Đánh giá</span></p>
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1" style="margin-left: 20px;">
                                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i>0 Đánh giá</span></p>
                                                    </label>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 hotel-single ftco-animate mb-5 mt-5">
                                    <h4 class="mb-4">Tour du lịch tương tụ</h4>
                                    <div class="row">
                                        <%if (lstTour.Count > 0)
                                            {
                                                for (int i = 0; i < lstTour.Count; i++)
                                                { 
                                                    if (i >= 3) { break; }
                                                    %>
                                        <div class="col-md-4">
                                            <div class="destination">
                                                <a href="tour-detail.aspx?pId=<%= lstTour[i].id %>" class="img img-2" style="background-image: url(../images/<%=lstTour[i].anh %>);"></a>
                                                <div class="text p-3">
                                                    <div class="d-flex">
                                                        <div class="one">
                                                            <h3 style="min-height: 80px;"><a href="tour-detail.aspx?pId=<%= lstTour[i].id %>"><%= lstTour[i].ten %></a></h3>
                                                            <p class="rate">
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star"></i>
                                                                <i class="icon-star-o"></i>
                                                                <span><%= lstTour[i].danh_gia %> Star</span>
                                                            </p>
                                                        </div>
                                                        <div class="two">
                                                            <span class="price per-price">$<%= lstTour[i].gia_sau_giam %><br>
                                                                <small><%= lstTour[i].thoi_gian %></small></span>
                                                        </div>
                                                    </div>
                                                    <p style="min-height: 80px;"><%= lstTour[i].van_tat %></p>
                                                    <hr>
                                                    <p class="bottom-area d-flex">
                                                        <span><i class="icon-map-o" style="margin-right: 5px;"></i><span style="color: red"><%= lstTour[i].giam_gia %> %</span> - <span style="text-decoration-line: line-through">$<%= lstTour[i].gia %></span></span>
                                                        <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <%}
                                            } %>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- .col-md-8 -->
                    </div>
                </div>
    </section>
    <!-- .section -->
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hotel-detail.aspx.cs" Inherits="DoAnAspNet.template.page.hotel_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="hero-wrap js-fullheight" style="background-image: url('../images/bg_5.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                    <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="hotel.html">Khách sạn</a></span> <span>Khạn sạn đơn</span></p>
                    <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Chi tiết khách sạn</h1>
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
                                    <div class="hotel-img" style="background-image: url(../images/<%=hotel.anh_ct1%>);"></div>
                                </div>
                                <div class="item">
                                    <div class="hotel-img" style="background-image: url(../images/<%=hotel.anh_ct2%>);"></div>
                                </div>
                                <div class="item">
                                    <div class="hotel-img" style="background-image: url(../images/<%=hotel.anh_ct2%>);"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
                            <span>Những khách sạn và phòng tốt nhất của chúng tôi</span>
                            <h2><%=hotel.ten%></h2>
                            <p class="rate mb-5">
                                <span class="loc"><a href="#"><i class="icon-map"></i><%=hotel.dia_chi%></a></span>
                                <span class="star">
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star-o"></i>
                                    <%=hotel.danh_gia%> Star</span>
                            </p>
                            <p><%=hotel.mo_ta%></p>
                            
                        </div>
                        <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                            <h4 class="mb-4">Đi thăm quan</h4>
                            <div class="block-16">
                                <figure>
                                    <img src="../images/hotel-6.jpg" alt="Image placeholder" class="img-fluid">
                                    <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                            <h4 class="mb-4">Phòng của chúng tôi</h4>
                            <div class="row">
                                <%foreach (var item in lstRoomByHotel)
                                    { %>
                                <div class="col-md-4">
                                    <div class="destination">
                                        <a href="room-detail.aspx?pId=<%= item.id %>" class="img img-2" style="background-image: url(../images/<%=item.anh %>);"></a>
                                        <div class="text p-3">
                                            <div class="d-flex">
                                                <div class="one">
                                                    <h3 style="min-height: 80px;"><a href="room-detail.aspx?pId=<%= item.id %>"><%=item.ten %></a></h3>
                                                    <p class="rate">
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star-o"></i>
                                                        <span><%=item.danh_gia %> Star</span>
                                                    </p>
                                                </div>
                                                <div class="two">
                                                    <span class="price per-price">$<%=item.gia_sau_giam %><br>
                                                        <small>/<%=item.thoi_gian %></small></span>
                                                </div>
                                            </div>
                                            <p><%=item.van_tat %></p>
                                            <hr>
                                            <p class="bottom-area d-flex">
                                                <span><i class="icon-map-o" style="margin-right: 5px;"></i><span style="color:red"><%= item.giam_gia %> %</span> - <span style="text-decoration-line:line-through">$<%= item.gia %></span></span>
                                                <span class="ml-auto"><a href="#">Đặt ngay</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <%} %>
                        <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                            <h4 class="mb-5">kiểm tra phòng trống</h4>
                            <div class="fields">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" id="checkin_date" class="form-control" placeholder="Date from" style="max-width: none;">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" id="checkin_date" class="form-control" placeholder="Date to" style="max-width: none;">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="select-wrap one-third">
                                                <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                <select name="" id="" class="form-control" placeholder="Guest" style="max-width: none;">
                                                    <option value="0">Guest</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="select-wrap one-third">
                                                <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                <select name="" id="" class="form-control" placeholder="Children" style="max-width: none;">
                                                    <option value="0">Children</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="submit" value="Kiểm tra phòng" class="btn btn-primary py-3" style="max-width: none;font-size: 16px;">
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
                                            <label class="form-check-label" for="exampleCheck1" style="margin-left:20px;">
                                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i>100 Đánh giá</span></p>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1" style="margin-left:20px;">
                                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i>30 Đánh giá</span></p>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1" style="margin-left:20px;">
                                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i>5 Đánh giá</span></p>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1" style="margin-left:20px;">
                                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i>0 Đánh giá</span></p>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1" style="margin-left:20px;">
                                                <p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i><i class="icon-star-o"></i>0 Đánh giá</span></p>
                                            </label>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 hotel-single ftco-animate mb-5 mt-5">
                            <h4 class="mb-4">Khách sạn tương tự</h4>
                            <div class="row">
                                <%if(lstHotelByTour.Count > 0) {
                                        for (int i = 0; i < lstHotelByTour.Count; i++)
                                        {
                                            if (i >= 3) { break; }
                                            %>
                                <div class="col-md-4">
                                    <div class="destination">
                                        <a href="hotel-detail.aspx?pId=<%= lstHotelByTour[i].id %>" class="img img-2" style="background-image: url(../images/<%=lstHotelByTour[i].anh %>);"></a>
                                        <div class="text p-3">
                                            <div class="d-flex">
                                                <div class="one">
                                                    <h3 style="min-height: 80px;"><a href="hotel-detail.aspx?pId=<%= lstHotelByTour[i].id %>"><%= lstHotelByTour[i].ten %></a></h3>
                                                    <p class="rate">
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star-o"></i>
                                                        <span><%= lstHotelByTour[i].danh_gia %> Star</span>
                                                    </p>
                                                </div>
                                                <div class="two">
                                                    <span class="price per-price">$<%= lstHotelByTour[i].gia_sau_giam %><br>
                                                        <small><%= lstHotelByTour[i].thoi_gian %></small></span>
                                                </div>
                                            </div>
                                            <p style="min-height: 80px;"><%= lstHotelByTour[i].van_tat %></p>
                                            <hr>
                                            <p class="bottom-area d-flex">
                                                <span><i class="icon-map-o" style="margin-right: 5px;"></i><span style="color:red"><%= lstHotelByTour[i].giam_gia %> %</span> - <span style="text-decoration-line:line-through">$<%= lstHotelByTour[i].gia %></span></span>
                                                <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <%}} %>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DoAnAspNet.template.page.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">dirEngine.</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span>Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="index.aspx" class="nav-link">Trang chủ</a></li>
                    <li class="nav-item"><a href="about-us.aspx" class="nav-link">Giới thiệu</a></li>
                    <li class="nav-item"><a href="tour.aspx" class="nav-link">Du lịch</a></li>
                    <li class="nav-item"><a href="hotel.aspx" class="nav-link">Khách sạn</a></li>
                    <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                    <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                    <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->

    <div class="hero-wrap js-fullheight" style="background-image: url('../images/IMG_1497.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
                <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                    <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Khám phá
                        <br>
                    </strong>thành phố tuyệt vời của bạn</h1>
                    <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tìm những nơi tuyệt vời để ở, ăn, mua sắm hoặc tham quan từ các chuyên gia địa phương</p>
                    <div class="block-17 my-4">
                        <div class="d-block d-flex">
                            <div class="fields d-block d-flex" style="width: 85%">
                                <div class="textfield-search one-third" style="width: 50%">
                                    <asp:TextBox runat="server" ID="textSearch" type="text" class="form-control" placeholder="Ví dụ: địa điểm" style="margin: auto; border: none;" />
                                </div>
                                <div class="select-wrap one-third" style="width: 50%">
                                    <div class="icon" style="position: absolute; top: 50%; right: 30px; font-size: 14px;">
                                        <span class="ion-ios-arrow-down"></span>
                                    </div>
                                    <asp:DropDownList ID="selectDanhMuc" runat="server" class="form-control" placeholder="Keyword search" style="max-width: none">
                                          <asp:ListItem Text="Địa điểm" Value=""></asp:ListItem>
                                     </asp:DropDownList>
                                    
                                </div>
                            </div>
                            <asp:Button runat="server" class="search-submit btn btn-primary" Text="Tìm kiếm" style="width: 15%; border-radius: unset; font-size: 15px;" ID="btnSearch" OnClick="btnSearch_Click" />
                        </div>
                    </div>
                    <p>Hoặc duyệt qua các điểm nổi bật</p>
                    <p class="browse d-md-flex">
                        <span class="d-flex justify-content-md-center align-items-md-center"><a href="#"><i class="flaticon-fork"></i>Nhà hàng</a></span>
                        <span class="d-flex justify-content-md-center align-items-md-center"><a href="hotel.aspx"><i class="flaticon-hotel"></i>Khách sạn</a></span>
                        <span class="d-flex justify-content-md-center align-items-md-center"><a href="tour.aspx"><i class="flaticon-meeting-point"></i>Địa điểm</a></span>
                        <span class="d-flex justify-content-md-center align-items-md-	center"><a href="#"><i class="flaticon-shopping-bag"></i>Mua sắm</a></span>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-section services-section bg-light">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon"><span class="flaticon-guarantee"></span></div>
                        </div>
                        <div class="media-body p-2 mt-2">
                            <h3 class="heading mb-3">Đảm bảo giá tốt nhất</h3>
                            <p>Một con sông nhỏ tên là Duden chảy qua nơi ở và nguồn cung cấp của họ.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon"><span class="flaticon-like"></span></div>
                        </div>
                        <div class="media-body p-2 mt-2">
                            <h3 class="heading mb-3">Khách du lịch yêu chúng tôi</h3>
                            <p>Một con sông nhỏ tên là Duden chảy qua nơi ở và nguồn cung cấp của họ.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon"><span class="flaticon-detective"></span></div>
                        </div>
                        <div class="media-body p-2 mt-2">
                            <h3 class="heading mb-3">Đại lý du lịch tốt nhất</h3>
                            <p>Một con sông nhỏ tên là Duden chảy qua nơi ở và nguồn cung cấp của họ.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon"><span class="flaticon-support"></span></div>
                        </div>
                        <div class="media-body p-2 mt-2">
                            <h3 class="heading mb-3">Hỗ trợ tận tâm của chúng tôi</h3>
                            <p>Một con sông nhỏ tên là Duden chảy qua nơi ở và nguồn cung cấp của họ.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-destination">
        <div class="container">
            <div class="row justify-content-start mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate">
                    <span class="subheading">Đặc sắc</span>
                    <h2 class="mb-4"><strong>Điểm đến</strong> Nổi bật</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="destination-slider owl-carousel ftco-animate">
                        <%foreach (var item in lstDanhmuc){ %>
                        <div class="item">
                            <div class="destination">
                                <a href="tour.aspx?pMa=<%= item.ma %>" class="img d-flex justify-content-center align-items-center" style="background-image: url(../images/<%= item.anh %>);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#"><%= item.mo_ta %></a></h3>
		    						<span class="listing"><%= item.so_luong_tour %> Tour</span>
		    					</div>
                                <%--<a href="#" class="img d-flex justify-content-center align-items-center">
                                    <img src="../images/<%= item.anh %>" style="width: 110px; height: 110px" />
                                </a>
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <span class="icon-search2"></span>
                                </div>
                                </a>
                                <div class="text p-3">
                                    <h3><a href="#"><%= item.ten %></a></h3>
                                    <span class="listing"><%= item.so_luong_tour %></span>
                                </div>--%>
                            </div>
                        </div>
                        <%} %>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row justify-content-start mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate">
                    <span class="subheading">Ưu đãi Đặc biệt</span>
                    <h2 class="mb-4"><strong>Hàng đầu</strong> Gói thăm quan</h2>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <%foreach (var item in lstTour)
                    { %>
                <div class="col-sm col-md-6 col-lg ftco-animate">
                    <div class="destination">
                        <a href="tour-detail.aspx?pId=<%= item.id %>" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(../images/<%= item.anh %>);">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="icon-search2"></span>
                            </div>
                        </a>
                        <div class="text p-3">
                            <div class="d-flex">
                                <div class="one">
                                    <h3 style="min-height: 80px;"><a href="#"><%= item.ten %></a></h3>
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-o"></i>
                                        <span><%= item.danh_gia %> Star</span>
                                    </p>
                                </div>
                                <div class="two">
                                    <span class="price">$<%= item.gia_sau_giam %></span>
                                </div>
                            </div>
                            <p style="min-height: 80px;"><%= item.van_tat %></p>
                            <p class="days"><span><%= item.thoi_gian %></span></p>
                            <hr>
                            <p class="bottom-area d-flex">
                                <span><i class="icon-map-o" style="margin-right: 5px;"></i><span style="color:red"><%= item.giam_gia %> %</span> - <span style="text-decoration-line:line-through">$<%= item.gia %></span></span>
                                <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                            </p>
                        </div>
                    </div>
                </div>
                <%} %>
   
                
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(../images/bg_1.jpg);">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <h2 class="mb-4">Một số sự thật thú vị</h2>
                    <span class="subheading">Hơn 100.000 trang web được lưu trữ</span>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <strong class="number" data-number="100000">0</strong>
                                    <span>Khách hàng hạnh phúc</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <strong class="number" data-number="40000">0</strong>
                                    <span>Địa điểm đến</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <strong class="number" data-number="87000">0</strong>
                                    <span>Nhiều khách sạn</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <strong class="number" data-number="56400">0</strong>
                                    <span>Quán ăn</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-start mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate">
                    <span class="subheading">Ưu đãi </span>
                    <h2 class="mb-4"><strong>Đặc biệt</strong> Khách sạn &amp; Phòng phổ biến</h2>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <%foreach (var item in lstHotel)
                    { %>
                <div class="col-sm col-md-6 col-lg ftco-animate">
                    <div class="destination">
                        <a href="hotel-detail.aspx?pId=<%= item.id %>" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(../images/<%= item.anh %>);">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="icon-search2"></span>
                            </div>
                        </a>
                        <div class="text p-3">
                            <div class="d-flex">
                                <div class="one">
                                    <h3 style="min-height: 80px;"><a href="hotel-detail.aspx?pId=<%= item.id %>"><%= item.ten %></a></h3>
                                    <p class="rate">
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-o"></i>
                                        <span><%= item.danh_gia %> Star</span>
                                    </p>
                                </div>
                                <div class="two">
                                    <span class="price per-price">$<%= item.gia_sau_giam %><br>
                                        <small>/<%= item.thoi_gian %></small></span>
                                </div>
                            </div>
                            <p style="min-height: 80px;"><%= item.van_tat %></p>
                            <hr>
                            <p class="bottom-area d-flex">
                                <span><i class="icon-map-o" style="margin-right: 5px;"></i><span style="color:red"><%= item.giam_gia %> %</span> - <span style="text-decoration-line:line-through">$<%= item.gia %></span></span>
                                <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                            </p>
                        </div>
                    </div>
                </div>
                <%} %>
                
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section bg-light">
        <div class="container">
            <div class="row justify-content-start">
                <div class="col-md-5 heading-section ftco-animate">
                    <span class="subheading">Trang web thư mục tốt nhất</span>
                    <h2 class="mb-4 pb-3"><strong>Tại sao</strong> chọn chúng tôi??</h2>
                    <p>Xa xa, đằng sau những ngọn núi chữ, xa những quốc gia Vokalia và Consonantia, có những văn tự mù mịt. Tách ra, họ sống trong Bookmarksgrove ngay tại bờ biển Semantics, một đại dương ngôn ngữ rộng lớn.</p>
                    <p>Ngay cả Pointing toàn năng cũng không thể kiểm soát được các văn bản mù quáng mà nó là một cuộc sống gần như không có chính kiến.</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary mt-4 px-4 py-3">Đọc thêm</a></p>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-6 heading-section ftco-animate">
                    <span class="subheading">Tự thuật</span>
                    <h2 class="mb-4 pb-3"><strong>Chúng tôi</strong> khách của nói</h2>
                    <div class="row ftco-animate">
                        <div class="col-md-12">
                            <div class="carousel-testimony owl-carousel">
                                <div class="item">
                                    <div class="testimony-wrap d-flex">
                                        <div class="user-img mb-5" style="background-image: url(../images/person_1.jpg)">
                                            <span class="quote d-flex align-items-center justify-content-center">
                                                <i class="icon-quote-left"></i>
                                            </span>
                                        </div>
                                        <div class="text ml-md-4">
                                            <p class="mb-5">Xa xa, đằng sau những ngọn núi chữ, xa những quốc gia Vokalia và Consonantia, có những văn tự mù mịt.</p>
                                            <p class="name">Dennis Green</p>
                                            <span class="position">Khách từ italy</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony-wrap d-flex">
                                        <div class="user-img mb-5" style="background-image: url(../images/person_2.jpg)">
                                            <span class="quote d-flex align-items-center justify-content-center">
                                                <i class="icon-quote-left"></i>
                                            </span>
                                        </div>
                                        <div class="text ml-md-4">
                                            <p class="mb-5">Xa xa, đằng sau những ngọn núi chữ, xa những quốc gia Vokalia và Consonantia, có những văn tự mù mịt.</p>
                                            <p class="name">Jone</p>
                                            <span class="position">Khách từ London</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony-wrap d-flex">
                                        <div class="user-img mb-5" style="background-image: url(../images/person_3.jpg)">
                                            <span class="quote d-flex align-items-center justify-content-center">
                                                <i class="icon-quote-left"></i>
                                            </span>
                                        </div>
                                        <div class="text ml-md-4">
                                            <p class="mb-5">Xa xa, đằng sau những ngọn núi chữ, xa những quốc gia Vokalia và Consonantia, có những văn tự mù mịt.</p>
                                            <p class="name">Tome</p>
                                            <span class="position">Khách từ Philippines</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-start mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate">
                    <span class="subheading">Ưu đãi Đặc biệt</span>
                    <h2 class="mb-4"><strong>Phổ biến</strong> Các nhà hàng</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="destination">
                        <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(../images/restaurant-1.jpg);">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="icon-search2"></span>
                            </div>
                        </a>
                        <div class="text p-3">
                            <h3><a href="#">Nhà hàng sang trọng</a></h3>
                            <p class="rate">
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-o"></i>
                                <span>4 Star</span>
                            </p>
                            <p>Xa, sau núi chữ, xa nước</p>
                            <hr>
                            <p class="bottom-area d-flex">
                                <span><i class="icon-map-o"></i>San Franciso, CA</span>
                                <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="destination">
                        <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(../images/restaurant-2.jpg);">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="icon-search2"></span>
                            </div>
                        </a>
                        <div class="text p-3">
                            <h3><a href="#">Nhà hàng sang trọng</a></h3>
                            <p class="rate">
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-o"></i>
                                <span>4 Star</span>
                            </p>
                            <p>Xa, sau núi chữ, xa nước</p>
                            <hr>
                            <p class="bottom-area d-flex">
                                <span><i class="icon-map-o"></i>San Franciso, CA</span>
                                <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="destination">
                        <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(../images/restaurant-3.jpg);">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="icon-search2"></span>
                            </div>
                        </a>
                        <div class="text p-3">
                            <h3><a href="#">Nhà hàng sang trọng</a></h3>
                            <p class="rate">
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-o"></i>
                                <span>4 Star</span>
                            </p>
                            <p>Xa, sau núi chữ, xa nước</p>
                            <hr>
                            <p class="bottom-area d-flex">
                                <span><i class="icon-map-o"></i>San Franciso, CA</span>
                                <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="destination">
                        <a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(../images/restaurant-4.jpg);">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="icon-search2"></span>
                            </div>
                        </a>
                        <div class="text p-3">
                            <h3><a href="#">Nhà hàng sang trọng</a></h3>
                            <p class="rate">
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-o"></i>
                                <span>4 Star</span>
                            </p>
                            <p>Xa, sau núi chữ, xa nước</p>
                            <hr>
                            <p class="bottom-area d-flex">
                                <span><i class="icon-map-o"></i>San Franciso, CA</span>
                                <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row justify-content-start mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate">
                    <span class="subheading">Blog gần đây</span>
                    <h2><strong>Mẹo</strong> &amp; Bài báo</h2>
                </div>
            </div>
            <div class="row d-flex">
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url('../images/image_1.jpg');"></a>
                        <div class="text p-4 d-block">
                            <span class="tag">Mẹo, Du lịch</span>
                            <h3 class="heading mt-3"><a href="#">8 homestay tốt nhất ở Vieng Chan mà bạn không nên bỏ qua</a></h3>
                            <div class="meta mb-3">
                                <div><a href="#">12 tháng 8, 2018</a></div>
                                <div><a href="#">Trỉnh Sản</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span>3</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url('../images/image_2.jpg');"></a>
                        <div class="text p-4">
                            <span class="tag">Văn hóa</span>
                            <h3 class="heading mt-3"><a href="#">Ngay cả Pointing toàn năng cũng không kiểm soát được các văn bản mù quáng</a></h3>
                            <div class="meta mb-3">
                                <div><a href="#">12 tháng 9, 2018</a></div>
                                <div><a href="#">Trấn Thành</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span>3</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url('../images/image_3.jpg');"></a>
                        <div class="text p-4">
                            <span class="tag">Mẹo, Du lịch</span>
                            <h3 class="heading mt-3"><a href="#">Nhưng nơi check in đẹp tại vieng chan</a></h3>
                            <div class="meta mb-3">
                                <div><a href="#">15 tháng 6, 2018</a></div>
                                <div><a href="#">Chuột túi</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span>3</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url('../images/image_4.jpg');"></a>
                        <div class="text p-4">
                            <span class="tag">Mẹo, Du lịch</span>
                            <h3 class="heading mt-3"><a href="#">8 homestay tốt nhất ở Vieng Chan mà bạn không nên bỏ qua</a></h3>
                            <div class="meta mb-3">
                                <div><a href="#">15 tháng 6, 2018</a></div>
                                <div><a href="#">Trung Ruồi</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span>3</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section-parallax">
        <div class="parallax-img d-flex align-items-center">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                        <h2>Đăng ký bản tin của chúng tôi</h2>
                        <%--<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>--%>
                        <div class="row d-flex justify-content-center mt-5">
                            <div class="col-md-8">
                                <form action="#" class="subscribe-form">
                                    <div class="form-group d-flex">
                                        <input type="text" class="form-control" placeholder="Enter email address">
                                        <input type="submit" value="Subscribe" class="submit px-3">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

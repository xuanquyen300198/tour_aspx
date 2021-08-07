<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="room-detail.aspx.cs" Inherits="DoAnAspNet.template.page.room_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="hero-wrap js-fullheight" style="background-image: url('../images/bg-room.jpg');">
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
                                    <div class="hotel-img" style="background-image: url(../images/<%=room.anh_ct1%>);"></div>
                                </div>
                                <div class="item">
                                    <div class="hotel-img" style="background-image: url(../images/<%=room.anh_ct2%>);"></div>
                                </div>
                                <div class="item">
                                    <div class="hotel-img" style="background-image: url(../images/<%=room.anh_ct2%>);"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
                            <span>Những phòng tốt nhất của chúng tôi</span>
                            <h2><%=room.ten%></h2>
                            <p class="rate mb-5">
                                <span class="loc"><a href="#"><i class="icon-map"></i><%=room.dia_chi%></a></span>
                                <span class="star">
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star"></i>
                                    <i class="icon-star-o"></i>
                                    <%=room.danh_gia%> Star</span>
                            </p>
                        </div>
                        <div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate" style="top: -50px;">
                            <div class="hprt-lightbox-right-container">
                               <div class="col-md-6">
                                   <div class="hprt-facilities-facility" data-name-en="room size">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-room_size" fill="" size="medium" width="16" height="16" viewBox="0 0 24 24">
                                            <path d="M3.75 23.25V7.5a.75.75 0 0 0-1.5 0v15.75a.75.75 0 0 0 1.5 0zM.22 21.53l2.25 2.25a.75.75 0 0 0 1.06 0l2.25-2.25a.75.75 0 1 0-1.06-1.06l-2.25 2.25h1.06l-2.25-2.25a.75.75 0 0 0-1.06 1.06zM5.78 9.22L3.53 6.97a.75.75 0 0 0-1.06 0L.22 9.22a.75.75 0 1 0 1.06 1.06l2.25-2.25H2.47l2.25 2.25a.75.75 0 1 0 1.06-1.06zM7.5 3.75h15.75a.75.75 0 0 0 0-1.5H7.5a.75.75 0 0 0 0 1.5zM9.22.22L6.97 2.47a.75.75 0 0 0 0 1.06l2.25 2.25a.75.75 0 1 0 1.06-1.06L8.03 2.47v1.06l2.25-2.25A.75.75 0 1 0 9.22.22zm12.31 5.56l2.25-2.25a.75.75 0 0 0 0-1.06L21.53.22a.75.75 0 1 0-1.06 1.06l2.25 2.25V2.47l-2.25 2.25a.75.75 0 0 0 1.06 1.06zM10.5 13.05v7.2a2.25 2.25 0 0 0 2.25 2.25h6A2.25 2.25 0 0 0 21 20.25v-7.2a.75.75 0 0 0-1.5 0v7.2a.75.75 0 0 1-.75.75h-6a.75.75 0 0 1-.75-.75v-7.2a.75.75 0 0 0-1.5 0zm13.252 2.143l-6.497-5.85a2.25 2.25 0 0 0-3.01 0l-6.497 5.85a.75.75 0 0 0 1.004 1.114l6.497-5.85a.75.75 0 0 1 1.002 0l6.497 5.85a.75.75 0 0 0 1.004-1.114z"></path>
                                         </svg>
                                         33 m²
                                      </span>
                                   </div>
                                   <div class="hprt-facilities-facility" data-name-en="undefined">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-lake_view" fill="" size="medium" width="16" height="16" viewBox="0 0 24 24">
                                            <path d="M22.938 20.942a3.667 3.667 0 0 1-1.867-1.169.75.75 0 0 0-1.148.008 3.42 3.42 0 0 1-2.46 1.23c-.882-.048-1.774-.494-2.386-1.23a.75.75 0 0 0-1.154 0 3.42 3.42 0 0 1-2.46 1.23c-.882-.048-1.774-.494-2.386-1.23a.75.75 0 0 0-1.154 0 3.42 3.42 0 0 1-2.46 1.23c-.882-.048-1.774-.494-2.386-1.23a.75.75 0 0 0-1.147-.008c-.489.572-1.14.98-1.868 1.17a.75.75 0 1 0 .376 1.45 5.167 5.167 0 0 0 2.633-1.646l-1.148-.008a4.92 4.92 0 0 0 3.54 1.77c1.45-.068 2.734-.71 3.614-1.77H7.923a4.92 4.92 0 0 0 3.54 1.77c1.45-.068 2.734-.71 3.614-1.77h-1.154a4.92 4.92 0 0 0 3.54 1.77c1.45-.068 2.734-.71 3.614-1.77l-1.148.008a5.167 5.167 0 0 0 2.633 1.647.75.75 0 1 0 .376-1.452zm-5.54-12.345l3.937 3.937a.75.75 0 1 0 1.06-1.06l-3.937-3.937a.75.75 0 1 0-1.06 1.06zm3.852 8.663a6.493 6.493 0 0 0-1.902-4.59L13.97 7.29a.75.75 0 0 1 1.062-1.06l2.367 2.367a3 3 0 1 0 4.242-4.242 2.95 2.95 0 0 0-2.263-.86 1.523 1.523 0 0 1-1.164-.446 5.25 5.25 0 1 0-7.425 7.423l1.924 1.924a.65.65 0 0 1-.459 1.114H9.25c-1.995 0-4.733-1.435-7.458-3.485A1.432 1.432 0 0 0-.5 11.168a12.666 12.666 0 0 0 1.594 6.456.75.75 0 1 0 1.312-.728A11.184 11.184 0 0 1 1 11.187c0-.002-.005.012-.014.024a.068.068 0 0 1-.095.013C3.87 13.465 6.817 15.01 9.25 15.01h3a2.15 2.15 0 0 0 1.52-3.676l-1.922-1.922a3.75 3.75 0 0 1 5.304-5.304c.608.611 1.45.933 2.313.884a1.45 1.45 0 0 1 1.114.423 1.5 1.5 0 1 1-2.12 2.122L16.09 5.17v-.001a2.25 2.25 0 0 0-3.183 3.181l5.38 5.38a4.993 4.993 0 0 1 1.462 3.53.75.75 0 0 0 1.5 0z"></path>
                                         </svg>
                                         Nhìn ra sông
                                      </span>
                                   </div>
                                   <div class="hprt-facilities-facility" data-name-en="undefined">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-weather_snowflake" fill="" size="medium" width="16" height="16" viewBox="0 0 24 24">
                                            <path d="M11.25.75v7.5a.75.75 0 0 0 1.5 0V.75a.75.75 0 0 0-1.5 0zm4.031.914l-3.75 3h.938l-3.75-3a.75.75 0 1 0-.938 1.172l3.75 3a.75.75 0 0 0 .938 0l3.75-3a.75.75 0 1 0-.938-1.172zM1.883 7.024l6.495 3.75a.75.75 0 0 0 .75-1.299l-6.495-3.75a.75.75 0 1 0-.75 1.3zM4.69 3.99l.723 4.748.468-.812-4.473 1.748a.75.75 0 0 0 .546 1.398l4.473-1.748a.75.75 0 0 0 .468-.812l-.723-4.748a.75.75 0 1 0-1.482.226zM2.632 18.274l6.495-3.75a.75.75 0 1 0-.75-1.298l-6.495 3.75a.75.75 0 1 0 .75 1.299zm-1.224-3.948l4.473 1.748-.468-.812-.723 4.748a.75.75 0 0 0 1.482.226l.723-4.748a.75.75 0 0 0-.468-.812l-4.473-1.748a.75.75 0 0 0-.546 1.398zM12.75 23.25v-7.5a.75.75 0 0 0-1.5 0v7.5a.75.75 0 0 0 1.5 0zm-4.031-.914l3.75-3h-.938l3.75 3a.75.75 0 0 0 .937-1.172l-3.75-3a.75.75 0 0 0-.937 0l-3.75 3a.75.75 0 0 0 .938 1.172zm13.399-5.36l-6.495-3.75a.75.75 0 0 0-.75 1.298l6.495 3.75a.75.75 0 0 0 .75-1.299zm-2.807 3.034l-.724-4.748-.468.812 4.473-1.748a.75.75 0 0 0-.546-1.398l-4.473 1.748a.75.75 0 0 0-.468.812l.723 4.748a.75.75 0 0 0 1.483-.226zm2.057-14.285l-6.495 3.75a.75.75 0 0 0 .75 1.3l6.495-3.75a.75.75 0 0 0-.75-1.3zm1.224 3.95l-4.473-1.749.468.812.724-4.748a.75.75 0 0 0-1.483-.226l-.723 4.748a.75.75 0 0 0 .468.812l4.473 1.748a.75.75 0 0 0 .546-1.398zM11.625 7.6L8.377 9.475a.75.75 0 0 0-.375.65v3.75a.75.75 0 0 0 .375.65l3.248 1.874a.75.75 0 0 0 .75 0l3.248-1.875a.75.75 0 0 0 .375-.649v-3.75a.75.75 0 0 0-.375-.65L12.375 7.6a.75.75 0 0 0-.75 0zm.75 1.3h-.75l3.248 1.874-.375-.649v3.75l.375-.65-3.248 1.876h.75l-3.248-1.876.375.65v-3.75l-.375.65L12.375 8.9z"></path>
                                         </svg>
                                         Điều hòa không khí
                                      </span>
                                   </div>
                                   <div class="hprt-facilities-facility" data-name-en="undefined">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-shower" fill="" size="medium" width="16" height="16" viewBox="0 0 24 24">
                                            <path d="M15.375 10.875a1.875 1.875 0 1 1-3.75 0 1.875 1.875 0 0 1 3.75 0zm1.5 0a3.375 3.375 0 1 0-6.75 0 3.375 3.375 0 0 0 6.75 0zm.375 12.375V18.7l-.667.745C20.748 18.98 24 15.925 24 10.5a2.25 2.25 0 0 0-4.5 0c0 1.945-.609 3.154-1.64 3.848a3.973 3.973 0 0 1-2.132.652H9a3.75 3.75 0 1 0 0 7.5h3a2.25 2.25 0 0 0 0-4.5H9a.75.75 0 0 0 0 1.5h3a.75.75 0 0 1 0 1.5H9a2.25 2.25 0 0 1 0-4.5h6.74a5.426 5.426 0 0 0 2.957-.908C20.154 14.613 21 12.932 21 10.5a.75.75 0 0 1 1.5 0c0 4.6-2.628 7.069-6.083 7.455a.75.75 0 0 0-.667.745v4.55a.75.75 0 0 0 1.5 0zm-7.5-1.5v1.5a.75.75 0 0 0 1.5 0v-1.5a.75.75 0 0 0-1.5 0zM.75 1.5h1.5l-.53-.22 1.402 1.402a.75.75 0 0 0 1.06-1.06L2.78.22A.75.75 0 0 0 2.25 0H.75a.75.75 0 1 0 0 1.5zm2.983 3.754a.01.01 0 0 1 .016.002c-.542-1.072-.1-2.426 1.008-2.988a2.25 2.25 0 0 1 2.037 0c-.041-.022-.043-.029-.04-.034l.002-.002-3.013 3.012zm1.07 1.05l3.002-3A1.489 1.489 0 0 0 7.51.951 3.766 3.766 0 0 0 4.079.929 3.75 3.75 0 0 0 2.43 5.971a1.49 1.49 0 0 0 2.382.323zm3.408-.968l1.116.62a.75.75 0 1 0 .728-1.312l-1.116-.62a.75.75 0 1 0-.728 1.312zm1.964-2.233l1.615.44a.75.75 0 1 0 .394-1.448l-1.615-.44a.75.75 0 1 0-.394 1.448zm4.217 1.15l1.615.44a.75.75 0 0 0 .396-1.447l-1.615-.44a.75.75 0 0 0-.396 1.447zM5.697 7.388l.577 1.038a.75.75 0 1 0 1.312-.728L7.009 6.66a.75.75 0 1 0-1.312.728zM3.284 8.94l.44 1.615a.75.75 0 1 0 1.448-.394l-.44-1.615a.75.75 0 1 0-1.448.394zm1.15 4.219l.246.896a.75.75 0 1 0 1.446-.396l-.245-.896a.75.75 0 1 0-1.446.396z"></path>
                                         </svg>
                                         Phòng tắm riêng trong phòng
                                      </span>
                                   </div>
                                   <div class="hprt-facilities-facility" data-name-en="undefined">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-tv_flat_screen" fill="" size="medium" width="16" height="16" viewBox="0 0 24 24">
                                            <path d="M22.5 10.375v6.5a.25.25 0 0 1-.25.25H1.75a.25.25 0 0 1-.25-.25v-13a.25.25 0 0 1 .25-.25h20.5a.25.25 0 0 1 .25.25v6.5zm1.5 0v-6.5a1.75 1.75 0 0 0-1.75-1.75H1.75A1.75 1.75 0 0 0 0 3.875v13c0 .966.784 1.75 1.75 1.75h20.5a1.75 1.75 0 0 0 1.75-1.75v-6.5zm-16.5 12h9a.75.75 0 0 0 0-1.5h-9a.75.75 0 0 0 0 1.5zm3.75-4.5v3.75a.75.75 0 0 0 1.5 0v-3.75a.75.75 0 0 0-1.5 0z"></path>
                                         </svg>
                                         TV màn hình phẳng
                                      </span>
                                   </div>
                               </div>
                               <div class="col-md-6">
                                   <div class="hprt-facilities-facility" data-name-en="undefined">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-soundproof" fill="" size="medium" width="16" height="16" viewBox="0 0 24 24">
                                            <path d="M10.413 17.368l3.284 2.09c.947.713 2.357.511 3.103-.483.292-.39.45-.863.45-1.35v-5.25a.75.75 0 0 0-1.5 0v5.25a.75.75 0 0 1-1.2.6l-3.331-2.123a.75.75 0 0 0-.806 1.266zM17.25 5.625a2.25 2.25 0 0 0-3.6-1.8L7.097 7.992l.403-.117h-3a2.25 2.25 0 0 0-2.25 2.25v3a2.25 2.25 0 0 0 2.25 2.25h.625a.75.75 0 0 0 0-1.5H4.5a.75.75 0 0 1-.75-.75v-3a.75.75 0 0 1 .75-.75h3a.75.75 0 0 0 .403-.117l6.6-4.2A.816.816 0 0 1 15 4.875a.75.75 0 0 1 .75.75.75.75 0 0 0 1.5 0zM3.48 20.451l18-15a.75.75 0 0 0-.96-1.152l-18 15a.75.75 0 0 0 .96 1.152z"></path>
                                         </svg>
                                         Hệ thống cách âm
                                      </span>
                                   </div>
                                   <div class="hprt-facilities-facility" data-name-en="undefined">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-food_and_drink" fill="" size="medium" width="16" height="16" viewBox="0 0 128 128">
                                            <path d="M48.25 4v36a20.13 20.13 0 0 1-16 19.59V124a4 4 0 0 1-8 0V59.58A20.09 20.09 0 0 1 8.25 40V4a4 4 0 0 1 8 0v36a12 12 0 0 0 8 11.28V4a4 4 0 0 1 8 0v47.29a12.1 12.1 0 0 0 8-11.3V4a4 4 0 0 1 8 0zm65 120a4 4 0 0 1-4 4H77.28a4 4 0 0 1 0-8h12V95.7c-14.139-2.16-24.023-15.135-22.35-29.34l6-59.17a8 8 0 0 1 8-7.19h24.67a8 8 0 0 1 8 7.19l6 59.23c1.633 14.181-8.24 27.115-22.35 29.28V120h12a4 4 0 0 1 3.96 4zM80.89 8l-2.43 24H108l-2.4-24zM83 84.88A18.49 18.49 0 0 0 93.17 88h.15a18.48 18.48 0 0 0 10.17-3.12 18.48 18.48 0 0 0 8.12-17.59L108.85 40H77.64l-2.76 27.23A18.49 18.49 0 0 0 83 84.88z"></path>
                                         </svg>
                                         Minibar
                                      </span>
                                   </div>
                                   <div class="hprt-facilities-facility" data-name-en="undefined">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-wifi" fill="" size="medium" width="16" height="16" viewBox="0 0 24 24">
                                            <path d="M14.25 18.75a2.25 2.25 0 1 1-4.5 0 2.25 2.25 0 0 1 4.5 0zm1.5 0a3.75 3.75 0 1 0-7.5 0 3.75 3.75 0 0 0 7.5 0zm2.08-5.833a8.25 8.25 0 0 0-11.666 0 .75.75 0 0 0 1.06 1.06 6.75 6.75 0 0 1 9.546 0 .75.75 0 0 0 1.06-1.06zm3.185-3.182c-4.979-4.98-13.051-4.98-18.03 0a.75.75 0 1 0 1.06 1.06c4.394-4.393 11.516-4.393 15.91 0a.75.75 0 1 0 1.06-1.06zm2.746-3.603C17.136-.043 6.864-.043.24 6.132A.75.75 0 1 0 1.26 7.23c6.05-5.638 15.429-5.638 21.478 0a.75.75 0 0 0 1.022-1.098z"></path>
                                         </svg>
                                         WiFi miễn phí
                                      </span>
                                   </div>
                                   <span class="hprt-facilities-facility" data-name-en="Parking" data-component="tooltip" data-tooltip-custom-class="room-lightbox-tooltip" data-tooltip-text="
                                      <div class=&quot;parking-policy&quot;>
                                      <div class=&quot;parking-policy__title&quot;>
                                      <span class=&quot;&quot;
                                      >Có bãi đỗ công cộng miễn phí tại chỗ (không cần đặt chỗ trước).</span>
                                      </div>
                                      </div>
                                      " aria-describedby="tooltip-3">
                                      <span class=" bui-badge bui-badge--outline">
                                         <svg class="bk-icon -streamline-parking_sign" fill="" size="medium" width="16" height="16" viewBox="0 0 24 24">
                                            <path d="M22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12zm-9.75-1.5a1.5 1.5 0 0 1-1.5 1.5H10.5l.75.75v-4.5L10.5 9h2.25a1.5 1.5 0 0 1 1.5 1.5zm1.5 0a3 3 0 0 0-3-3H10.5a.75.75 0 0 0-.75.75v4.5c0 .414.336.75.75.75h2.25a3 3 0 0 0 3-3zm-4.5 6.75v-4.5a.75.75 0 0 0-1.5 0v4.5a.75.75 0 0 0 1.5 0z"></path>
                                         </svg>
                                         Chỗ đậu xe miễn phí
                                      </span>
                                   </span>
                               </div>
                               <div class="col-md-12">
                                   <p data-name-en="roomsize">
                                   </p>
                                   <h2>
                                      Kích thước phòng
                                   </h2>
                                   33 m²
                                   <p></p>
                                   <div class="roomtype-no-margins">
                                   </div>
                                   <p><%=room.mo_ta %>.</p>
                               </div>
                               
                               <div class="more-facilities-space">
                                  <div data-et-view=""></div>
                                  <p class="hprt-lightbox-title">
                                  </p>
                                  <h2>
                                     Trong phòng tắm riêng của bạn:
                                  </h2>
                                  <p></p>
                                  <ul class="hprt-lightbox-list js-lightbox-facilities" data-nr-of-facilities="8">
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Shower" data-id="4">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Vòi sen
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Toilet" data-id="31">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Nhà vệ sinh
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Towels" data-id="124">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Khăn tắm
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Slippers" data-id="43">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Dép
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Hair Dryer" data-id="12">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Máy sấy tóc
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Towels/Linens at surcharge" data-id="91">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Khăn tắm/Bộ khăn trải giường (có thu phí)
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Toilet paper" data-id="141">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Giấy vệ sinh
                                        </span>
                                     </li>
                                  </ul>
                                  <p class="hprt-lightbox-title">
                                  </p>
                                  <h2>
                                     Hướng tầm nhìn:
                                  </h2>
                                  <p></p>
                                  <ul class="hprt-lightbox-list js-lightbox-facilities" data-nr-of-facilities="1">
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="River View" data-id="122">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Nhìn ra sông
                                        </span>
                                     </li>
                                  </ul>
                                  <p class="hprt-lightbox-title">
                                  </p>
                                  <h2>
                                     Tiện nghi phòng: ​
                                  </h2>
                                  <p></p>
                                  <ul class="col-md-6 hprt-lightbox-list js-lightbox-facilities" data-nr-of-facilities="29">
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Upper floor reachable by lift" data-id="132">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Các tầng trên đi lên bằng thang máy
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Entire unit wheelchair accessible" data-id="134">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Xe lăn có thể đi đến mọi nơi trong toàn bộ khuôn viên
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Linen" data-id="125">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Ra trải giường
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Alarm Clock" data-id="84">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Đồng hồ báo thức
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Wardrobe/Closet" data-id="95">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Tủ hoặc phòng để quần áo
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Mini-bar" data-id="3">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Minibar
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Airconditioning" data-id="11">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Điều hòa không khí
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Safe Deposit Box" data-id="6">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Két an toàn
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Tiled / Marble floor" data-id="80">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Sàn lát gạch/đá cẩm thạch
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Soundproofing" data-id="79">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Hệ thống cách âm
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Private Entrance" data-id="76">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Lối vào riêng
                                        </span>
                                     </li>
                                     
                                  </ul>
                                   <ul class="col-md-6">
                                       <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Clothing Iron" data-id="15">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Bàn ủi
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Heating" data-id="40">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Hệ thống sưởi
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Carpeted Floor" data-id="70">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Sàn trải thảm
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Refrigerator" data-id="22">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Tủ lạnh
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Electric Kettle" data-id="86">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Ấm đun nước điện
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Tumble dryer (machine)" data-id="94">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Máy sấy quần áo
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Desk" data-id="23">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Bàn làm việc
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Telephone" data-id="9">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Điện thoại
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Flat-screen TV" data-id="75">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           TV màn hình phẳng
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Cable channels" data-id="68">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Truyền hình cáp
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Clothes Rack" data-id="138">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Giá treo quần áo
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Wake Up Service/Alarm-clock" data-id="13">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Dịch vụ báo thức
                                        </span>
                                     </li>
                                     <li class="hprt-lightbox-list__item js-lightbox-facility" data-name-en="Wake Up Service" data-id="83">
                                        <span class="">
                                           <svg class="bk-icon -streamline-checkmark" fill="" size="small" width="14" height="14" viewBox="0 0 128 128">
                                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                                           </svg>
                                           Dịch vụ báo thức
                                        </span>
                                     </li>

                                   </ul>
                               </div>
                               <div class="parking-policy">
                                  <h2>
                                     Chỗ đậu xe: ​
                                  </h2>
                                  <div class="parking-policy__title">
                                     <span class="">Có bãi đỗ công cộng miễn phí tại chỗ (không cần đặt chỗ trước).</span>
                                  </div>
                               </div>
                            </div>
                        </div>
                        <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                            <h4 class="mb-4">Đi thăm quan</h4>
                            <div class="block-16">
                                <figure>
                                    <img src="../images/<%=room.anh %>" alt="Image placeholder" class="img-fluid">
                                    <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                                </figure>
                            </div>
                        </div>
                        
                        <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                            <h4 class="mb-5">kiểm tra phòng trống & đặt phòng</h4>
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
                                            <asp:Button runat="server" type="submit" Text="Kiểm tra phòng" class="btn btn-primary py-3" style="max-width: none;font-size: 16px;" ID="btnBook" OnClick="btnBook_Click" />
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
                            <h4 class="mb-4">Phòng tương tự</h4>
                            <div class="row">
                                <%if (lstRoomByTour.Count > 0)
                                    {
                                        for (int i = 0; i < lstRoomByTour.Count; i++)
                                        {
                                            if (i >= 3) { break; }
                                            %>
                                <div class="col-md-4">
                                    <div class="destination">
                                        <a href="room-detail.aspx?pId=<%= lstRoomByTour[i].id %>" class="img img-2" style="background-image: url(../images/<%=lstRoomByTour[i].anh %>);"></a>
                                        <div class="text p-3">
                                            <div class="d-flex">
                                                <div class="one">
                                                    <h3 style="min-height: 80px;"><a href="room-detail.aspx?pId=<%= lstRoomByTour[i].id %>"><%= lstRoomByTour[i].ten %></a></h3>
                                                    <p class="rate">
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star-o"></i>
                                                        <span><%= lstRoomByTour[i].danh_gia %> Star</span>
                                                    </p>
                                                </div>
                                                <div class="two">
                                                    <span class="price per-price">$<%= lstRoomByTour[i].gia_sau_giam %><br>
                                                        <small><%= lstRoomByTour[i].thoi_gian %></small></span>
                                                </div>
                                            </div>
                                            <p style="min-height: 80px;"><%= lstRoomByTour[i].van_tat %></p>
                                            <hr>
                                            <p class="bottom-area d-flex">
                                                <span><i class="icon-map-o" style="margin-right: 5px;"></i><span style="color:red"><%= lstRoomByTour[i].giam_gia %> %</span> - <span style="text-decoration-line:line-through">$<%= lstRoomByTour[i].gia %></span></span>
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

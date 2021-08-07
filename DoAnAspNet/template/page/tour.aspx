<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tour.aspx.cs" Inherits="DoAnAspNet.template.page.tour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="hero-wrap js-fullheight" style="background-image: url('../images//bg_3.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                    <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Tour</span></p>
                    <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Du lịch</h1>
                </div>
            </div>
        </div>
    </div>


    <section class="ftco-section ftco-degree-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 sidebar ftco-animate">
                    <div class="sidebar-wrap bg-light ftco-animate">
                        <h3 class="heading mb-4">Tìm tour</h3>
                        <form action="#">
                            <div class="fields">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="textSearch" class="form-control" placeholder="Tour" />
                                </div>
                                <div class="form-group">
                                    <div class="select-wrap one-third">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <asp:DropDownList ID="selectDanhMuc" runat="server" class="form-control" placeholder="Keyword search" Style="max-width: none">
                                            <asp:ListItem Text="Địa điểm" Value=""></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" id="checkin_date" class="form-control" placeholder="Date from">
                                </div>
                                <div class="form-group">
                                    <input type="text" id="checkin_date" class="form-control" placeholder="Date to">
                                </div>
                                <div class="form-group">
                                    <div class="range-slider">
                                        <span>
                                            <input type="number" name="amountInput" min="0" max="2000" value="0" oninput="this.form.amountRange.value=this.value" />
                                            -
										    <input type="number" name="amountInputMax" min="0" max="1000" value="500" oninput="this.form.amountRangeMax.value=this.value" />
                                        </span>
                                        <asp:TextBox runat="server" ID="valueMin" type="range" name="amountRange" min="0" max="2000" value="0" oninput="this.form.amountInput.value=this.value" />
                                        <asp:TextBox runat="server" ID="valueMax" type="range" name="amountRangeMax" min="0" max="1000" value="500" oninput="this.form.amountInputMax.value=this.value" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Button runat="server" type="submit" Text="Tìm kiếm" class="btn btn-primary py-3 px-5" ID="btnSearch" OnClick="btnSearch_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="sidebar-wrap bg-light ftco-animate">
                        <h3 class="heading mb-4">Star Rating</h3>
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
                        </form>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <%foreach (var item in lstTour)
                            { %>
                        <div class="col-md-4 ftco-animate">
                            <div class="destination">
                                <a href="tour-detail.aspx?pId=<%= item.id %>" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(../images/<%= item.anh %>);">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-search2"></span>
                                    </div>
                                </a>
                                <div class="text p-3">
                                    <div class="d-flex">
                                        <div class="one">
                                            <h3 style="min-height: 80px;"><a href="tour-detail.aspx?pId=<%= item.id %>"><%= item.ten %></a></h3>
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
                                        <span><i class="icon-map-o" style="margin-right: 5px;"></i><span style="color: red"><%= item.giam_gia %> %</span> - <span style="text-decoration-line: line-through">$<%= item.gia %></span></span>
                                        <span class="ml-auto"><a href="#">Đặt lịch</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <%} %>
                    </div>
                    <div class="row mt-5">
                        <div class="col text-center">
                            <div class="block-27">
                                <ul>
                                    <li><asp:LinkButton runat="server" OnClick="ClickPrev" >&lt;</asp:LinkButton></li>
                                    <%for (int i = 1; i <= totalPage; i++)
                                        {
                                            if (i == page)
                                            { %>
                                            <li class="active"><span><%=i %></span></li>
                                            <%} else
                                            { %>
                                            <li>
                                                
                                                <a href="#"><%=i %></a>

                                            </li>
                                            <%}
                                        } %>
                                    <li ><asp:LinkButton runat="server" OnClick="ClickNext">&gt;</asp:LinkButton></li>
                                </ul>
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

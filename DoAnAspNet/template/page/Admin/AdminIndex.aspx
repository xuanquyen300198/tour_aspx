<%@ Page Title="" Language="C#" MasterPageFile="~/template/page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="DoAnAspNet.template.page.Admin.AdminIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        body, html {
            height: 100%;
        }

        /*body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-family: "fira-sans-2", Verdana, sans-serif;
        }*/

        #q-graph {
            display: block; /* fixes layout wonkiness in FF1.5 */
            position: relative;
            width: 600px;
            height: 300px;
            margin: 1.1em 0 0;
            padding: 0;
            background: transparent;
            font-size: 11px;
        }

            #q-graph caption {
                caption-side: top;
                width: 600px;
                text-transform: uppercase;
                letter-spacing: .5px;
                top: -40px;
                position: relative;
                z-index: 10;
                font-weight: bold;
            }

            #q-graph tr, #q-graph th, #q-graph td {
                position: absolute;
                bottom: 0;
                width: 150px;
                z-index: 2;
                margin: 0;
                padding: 0;
                text-align: center;
            }

            #q-graph td {
                transition: all .3s ease;
                &:hover

        {
            background-color: desaturate(#85144b, 100);
            opacity: .9;
            color: white;
        }

        }

        #q-graph thead tr {
            left: 100%;
            top: 50%;
            bottom: auto;
            margin: -2.5em 0 0 5em;
        }

        #q-graph thead th {
            width: 7.5em;
            height: auto;
            padding: 0.5em 1em;
        }

            #q-graph thead th.sent {
                top: 0;
                left: 0;
                line-height: 2;
            }

            #q-graph thead th.paid {
                top: 2.75em;
                line-height: 2;
                left: 0;
            }

        #q-graph tbody tr {
            height: 296px;
            padding-top: 2px;
            border-right: 1px dotted #C4C4C4;
            color: #AAA;
        }

        #q-graph #q1 {
            left: 0;
        }

        #q-graph #q2 {
            left: 150px;
        }

        #q-graph #q3 {
            left: 300px;
        }

        #q-graph #q4 {
            left: 450px;
            border-right: none;
        }

        #q-graph tbody th {
            bottom: -1.75em;
            vertical-align: top;
            font-weight: normal;
            color: #333;
        }

        #q-graph .bar {
            width: 60px;
            border: 1px solid;
            border-bottom: none;
            color: #000;
        }

            #q-graph .bar p {
                margin: 5px 0 0;
                padding: 0;
                opacity: .4;
            }

        #q-graph .sent {
            left: 13px;
            background-color: #39cccc;
            border-color: transparent;
        }

        #q-graph .paid {
            left: 77px;
            background-color: #7fdbff;
            border-color: transparent;
        }


        #ticks {
            position: relative;
            top: -300px;
            left: 2px;
            width: 596px;
            height: 300px;
            z-index: 1;
            margin-bottom: -300px;
            font-size: 10px;
            font-family: "fira-sans-2", Verdana, sans-serif;
        }

            #ticks .tick {
                position: relative;
                border-bottom: 1px dotted #C4C4C4;
                width: 600px;
            }

                #ticks .tick p {
                    position: absolute;
                    left: -5em;
                    top: -0.8em;
                    margin: 0 0 0 0.5em;
                }
    </style>
    <div class="widget-box" style="padding-left: 15%;margin-bottom: 40px;">
        <table id="q-graph">
            <caption>Thống kê doanh số theo quý</caption>
            <thead>
                <tr>
                    <th></th>
                    <th class="sent">Invoiced</th>
                    <th class="paid">Collected</th>
                </tr>
            </thead>
            <tbody>
                <tr class="qtr" id="q1">
                    <th scope="row">Q1</th>
                    <td class="sent bar" style="height: 111px;">
                        <p>$18,450.00</p>
                    </td>
                    <td class="paid bar" style="height: 99px;">
                        <p>$16,500.00</p>
                    </td>
                </tr>
                <tr class="qtr" id="q2">
                    <th scope="row">Q2</th>
                    <td class="sent bar" style="height: 206px;">
                        <p>$34,340.72</p>
                    </td>
                    <td class="paid bar" style="height: 194px;">
                        <p>$32,340.72</p>
                    </td>
                </tr>
                <tr class="qtr" id="q3">
                    <th scope="row">Q3</th>
                    <td class="sent bar" style="height: 259px;">
                        <p>$43,145.52</p>
                    </td>
                    <td class="paid bar" style="height: 193px;">
                        <p>$32,225.52</p>
                    </td>
                </tr>
                <tr class="qtr" id="q4">
                    <th scope="row">Q4</th>
                    <td class="sent bar" style="height: 110px;">
                        <p>$18,415.96</p>
                    </td>
                    <td class="paid bar" style="height: 195px;">
                        <p>$32,425.00</p>
                    </td>
                </tr>
            </tbody>
        </table>

        <div id="ticks">
            <div class="tick" style="height: 59px;">
                <p>$50,000</p>
            </div>
            <div class="tick" style="height: 59px;">
                <p>$40,000</p>
            </div>
            <div class="tick" style="height: 59px;">
                <p>$30,000</p>
            </div>
            <div class="tick" style="height: 59px;">
                <p>$20,000</p>
            </div>
            <div class="tick" style="height: 59px;">
                <p>$10,000</p>
            </div>
        </div>
    </div>
    <div class="widget-box">
        <div class="row-fluid">
            <div style="width: 30%; float: left; margin-right: 50px; margin-left: 20px;">
                <div class="form-group">
                    <label for="usr">Tên</label>
                    <asp:TextBox runat="server" ID="textMa" type="text" CssClass="input-s" />
                </div>

            </div>
            <div style="width: 30%; float: left; margin-right: 50px;">
                <div class="form-group">
                    <label for="usr">Email</label>
                    <asp:TextBox runat="server" ID="textTen" type="text" CssClass="input-s" />
                </div>

            </div>
            <div class="col-3" style="line-height: 75px;">
                <asp:Button runat="server" class="btn-cs btn btn-primary" ID="btnSearch" OnClick="btnSearch_Click" Text="Tìm kiếm" />
            </div>
        </div>
    </div>
    <div class="row-fluid">
        <div class="widget-box">
            <div class="widget-title">
                <span class="icon"><i class="icon-th"></i></span>
                <h5>Danh sách hóa đơn</h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Danh mục</th>
                            <th>Tên</th>
                            <th>Ảnh</th>
                            <th>Thành tiền</th>
                            <th>Thời gian từ</th>
                            <th>Thời gian đến</th>
                            <th>Email</th>
                            <th>Họ tên</th>
                            <th>Ngày tạo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand">
                            <ItemTemplate>
                                <tr class="even gradeC">
                                    <td><%# Eval("ma_tour").ToString()!="" ? "Tour":"Phòng" %></td>
                                    <td><%# Eval("ma_tour").ToString()!="" ? Eval("ten1"):Eval("ten2") %></td>
                                    <td><%# Eval("ma_tour").ToString()!="" ? Eval("anh1"):Eval("anh2") %></td>
                                    <td>$<%# Eval("thanh_tien") %></td>
                                    <td><%# Eval("ngay_dat_tu") %></td>
                                    <td><%# Eval("ngay_dat_den") %></td>
                                    <td><%# Eval("email") %></td>
                                    <td><%# Eval("ho_ten") %></td>
                                    <td><%# Eval("ngay_tao") %></td>
                                    <td>
                                        <asp:LinkButton runat="server" CommandName="delete" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-danger btn-mini">Delete</asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-warning btn-mini" CommandName="edit" CommandArgument='<%# Eval("id") %>' runat="server">Edit</asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-primary btn-mini" CommandName="view" CommandArgument='<%# Eval("id") %>' runat="server">View</asp:LinkButton>
                                        <asp:LinkButton CssClass="btn btn-success btn-mini" CommandName="print" CommandArgument='<%# Eval("id") %>' runat="server">Print</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="widget-box">
            <nav aria-label="Page navigation example">
                <ul class="pagination-cs">
                    <li class="page-item">
                        <asp:LinkButton runat="server" OnClick="ClickPrev" CssClass="page-link-cs">&lt;&lt;</asp:LinkButton>
                    </li>
                    <asp:Repeater ID="repeaterPage" runat="server" OnItemCommand="repeater_ItemCommand1">
                        <ItemTemplate>

                            <li class="page-item">

                                <asp:LinkButton runat="server" CommandName="page" CommandArgument='<%# Eval("id") %>' CssClass='page-link-cs'>
                                <%# ((Eval("id").ToString()!=(page+"") ) 
                                    ? String.Format("<span>{0}</span>", Eval("id")) : 
                                String.Format("<span style='color:red'>{0}</span>", Eval("id"))) %>
                                </asp:LinkButton>

                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <li class="page-item">
                        <asp:LinkButton runat="server" OnClick="ClickNext" CssClass="page-link-cs">&gt;&gt;</asp:LinkButton>
                    </li>
                </ul>
            </nav>
        </div>
    </div>

    <!--Success Modal HTML -->
    <div id="myModal" class="modal fade myMD">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="icon-box">
                        <i class="material-icons">&#xE876;</i>
                    </div>
                    <h4 class="modal-title w-100">Thành công!</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center">Bạn đã xóa bản ghi thành công.</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-block" OnClick="Unnamed_Click">OK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>


    <!--Error Modal HTML -->
    <div id="myModal2" class="modal fade myMD">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="icon-box2">
                        <i class="material-icons">&#xE5CD;</i>
                    </div>
                    <h4 class="modal-title w-100">Thất bại!</h4>
                </div>
                <div class="modal-body">
                    <p class="text-center">Xóa thất bị.Vui lòng kiểm tra hệ thống.</p>
                </div>
                <div class="modal-footer">
                    <asp:LinkButton runat="server" CssClass="btn btn-success btn-block" OnClick="Unnamed_Click">OK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

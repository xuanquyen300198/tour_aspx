<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="DoAnAspNet.template.page.print" %>

<html>
<head>
    <title>Bill</title>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
    <style type="text/css">
            body {
                margin-top: 20px;
                background: #eee;
            }

            /*Invoice*/
            .invoice .top-left {
                font-size: 65px;
                color: #3ba0ff;
            }

            .invoice .top-right {
                text-align: right;
                padding-right: 20px;
            }

            .invoice .table-row {
                margin-left: -15px;
                margin-right: -15px;
                margin-top: 25px;
            }

            .invoice .payment-info {
                font-weight: 500;
            }

            .invoice .table-row .table > thead {
                border-top: 1px solid #ddd;
            }

                .invoice .table-row .table > thead > tr > th {
                    border-bottom: none;
                }

            .invoice .table > tbody > tr > td {
                padding: 8px 20px;
            }

            .invoice .invoice-total {
                margin-right: -10px;
                font-size: 16px;
            }

            .invoice .last-row {
                border-bottom: 1px solid #ddd;
            }

            .invoice-ribbon {
                width: 85px;
                height: 88px;
                overflow: hidden;
                position: absolute;
                top: -1px;
                right: 14px;
            }

            .ribbon-inner {
                text-align: center;
                -webkit-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -o-transform: rotate(45deg);
                position: relative;
                padding: 7px 0;
                left: -5px;
                top: 11px;
                width: 120px;
                background-color: #66c591;
                font-size: 15px;
                color: #fff;
            }

                .ribbon-inner:before, .ribbon-inner:after {
                    content: "";
                    position: absolute;
                }

                .ribbon-inner:before {
                    left: 0;
                }

                .ribbon-inner:after {
                    right: 0;
                }

            @media(max-width:575px) {
                .invoice .top-left, .invoice .top-right, .invoice .payment-details {
                    text-align: center;
                }

                .invoice .from, .invoice .to, .invoice .payment-details {
                    float: none;
                    width: 100%;
                    text-align: center;
                    margin-bottom: 25px;
                }

                    .invoice p.lead, .invoice .from p.lead, .invoice .to p.lead, .invoice .payment-details p.lead {
                        font-size: 22px;
                    }

                .invoice .btn {
                    margin-top: 10px;
                }
            }

            @media print {
                .invoice {
                    width: 900px;
                    height: 800px;
                }
            }
        </style>
</head>
<body>
    <div >
        
        <div class="container bootstrap snippets bootdeys">
            <div class="row" id="pdf">
                <div class="col-sm-12">
                    <div class="panel panel-default invoice" id="invoice">
                        <div class="panel-body">
                            
                            <div class="row">

                                <div class="col-sm-6 top-left">
                                    <i class="fa fa-rocket"></i>
                                </div>

                                <div class="col-sm-6 top-right">
                                    <h3 class="marginright">INVOICE-1234578</h3>
                                    <span class="marginright"><%=bill.ngay_tao!=null ? bill.ngay_tao.Substring(0,10).Replace("/","-") : ""%></span>
                                </div>

                            </div>
                            <hr>
                            <div class="row">

                                <div class="col-xs-4 from">
                                    <p class="lead marginbottom">From : Dynofy</p>
                                    <p>350 Rhode Island Street</p>
                                    <p>Suite 240, San Francisco</p>
                                    <p>California, 94103</p>
                                    <p>Phone: 415-767-3600</p>
                                    <p>Email: contact@dynofy.com</p>
                                </div>

                                <div class="col-xs-4 to">
                                    <p class="lead marginbottom">To : <%=bill.ho_ten %></p>
                                    <p><%=user.dia_chi %></p>
                                    <p>Suite 2200, San Francisco</p>
                                    <p>California, 94105</p>
                                    <p>Phone: <%=bill.so_dien_thoai %></p>
                                    <p>Email: <%=bill.email %></p>

                                </div>

                                <div class="col-xs-4 text-right payment-details">
                                    <p class="lead marginbottom payment-info">Payment details</p>
                                    <p>Date: <%=bill.ngay_tao.Substring(0,10).Replace("/","-")%></p>
                                    <p>VAT: DK888-777 </p>
                                    <p>Total Amount: $<%=total %></p>
                                    <p>Account Name:<%=user.username %> </p>
                                </div>

                            </div>

                            <div class="row table-row">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th class="text-center" style="width: 5%">#</th>
                                            <th style="width: 10%">Menu</th>
                                            <th class="text-left" style="width: 35%">Name</th>
                                            <th class="text-right" style="width: 15%">Image</th>
                                            <th class="text-right" style="width: 15%">Date From</th>
                                            <th class="text-right" style="width: 15%">Date To</th>
                                            <th class="text-right" style="width: 15%">Value</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-center">1</td>
                                            <td><%=bill.ma_tour.ToString()!="" ?"Tour du lịch" : "Phòng"%></td>
                                            <td class="text-left"><%=bill.ma_tour.ToString()!="" ? bill.ten1 : bill.ten2%></td>
                                            <td class="text-right"><img class="rounded" src="../images/<%=bill.ma_tour.ToString()!="" ? bill.anh1 : bill.anh2 %>" width="80" /></td>
                                            <td class="text-right"><%=bill.ngay_dat_tu!=null ? bill.ngay_dat_tu.Substring(0,10) : ""%></td>
                                            <td class="text-right"><%=bill.ngay_dat_den!=null ? bill.ngay_dat_den.Substring(0,10) : ""%></td>
                                            <td class="text-right">$<%=bill.thanh_tien%></td>
                                        </tr>
                                        
                                    </tbody>
                                </table>

                            </div>

                            <div class="row">
                                <div class="col-xs-6 margintop">
                                    <p class="lead marginbottom">THANK YOU!</p>

                                </div>
                                <div class="col-xs-6 text-right pull-right invoice-total">
                                    <p>Subtotal : $<%=total %></p>
                                    <p>Service (10%) : $<%=discount %> </p>
                                    <p>VAT (10%) : $<%=vat %> </p>
                                    <p>Total : $<%=bill.thanh_tien %> </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 margintop text-center" style="margin-left: 25%;
    margin-bottom: 100px;">
                   
                    <button class="btn btn-success" onclick="printDiv('pdf','Bill')" id="invoice-print"><i class="fa fa-print"></i>Print Invoice</button>
                    <button class="btn btn-danger"><i class="fa fa-envelope-o"></i>Mail Invoice</button>
                </div>
            </div>
        </div>
    </div>


    <script>
        var doc = new jsPDF();

        function saveDiv(divId, title) {
            doc.fromHTML(`<html><head><title>${title}</title></head><body>` + document.getElementById(divId).innerHTML + `</body></html>`);
            doc.save('div.pdf');
        }
        function printDiv(divId,
            title) {

            let mywindow = window.open('', 'PRINT', 'height=650,width=900,top=100,left=150');

            mywindow.document.write(`<html><head><title>${title}</title>`);
            mywindow.document.write(`<link rel=\"stylesheet\" href=\"https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">`);
            mywindow.document.write(`<link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css\" rel=\"stylesheet\">`);
            mywindow.document.write(`<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\" crossorigin='anonymous'></`);
            mywindow.document.write(`script>`);
            mywindow.document.write(`<script src='https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js'></`);
            mywindow.document.write(`script>`);
            mywindow.document.write(`<style type='text/css'>`);
            mywindow.document.write(`body {`);
            mywindow.document.write(`margin-top: 20px;`);
            mywindow.document.write(`background: #eee;`);
            mywindow.document.write(`}`);
            mywindow.document.write(`.invoice .top-left {`);
            mywindow.document.write(`font-size: 65px;`);
            mywindow.document.write(`color: #3ba0ff;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .top-right {`);
            mywindow.document.write(`text-align: right;`);
            mywindow.document.write(`padding-right: 20px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .table-row {`);
            mywindow.document.write(`margin-left: -15px;`);
            mywindow.document.write(`margin-right: -15px;`);
            mywindow.document.write(`margin-top: 25px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .payment-info {`);
            mywindow.document.write(`font-weight: 500;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .table-row .table > thead {`);
            mywindow.document.write(`border-top: 1px solid #ddd;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .table-row .table > thead > tr > th {`);
            mywindow.document.write(`border-bottom: none;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .table > tbody > tr > td {`);
            mywindow.document.write(`padding: 8px 20px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .invoice-total {`);
            mywindow.document.write(`margin-right: -10px;`);
            mywindow.document.write(`font-size: 16px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .last-row {`);
            mywindow.document.write(`border-bottom: 1px solid #ddd;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice-ribbon {`);
            mywindow.document.write(`width: 85px;`);
            mywindow.document.write(`height: 88px;`);
            mywindow.document.write(`overflow: hidden;`);
            mywindow.document.write(`position: absolute;`);
            mywindow.document.write(`top: -1px;`);
            mywindow.document.write(`right: 14px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.ribbon-inner {`);
            mywindow.document.write(`text-align: center;`);
            mywindow.document.write(`-webkit-transform: rotate(45deg);`);
            mywindow.document.write(`-moz-transform: rotate(45deg);`);
            mywindow.document.write(`-ms-transform: rotate(45deg);`);
            mywindow.document.write(`-o-transform: rotate(45deg);`);
            mywindow.document.write(`position: relative;`);
            mywindow.document.write(`padding: 7px 0;`);
            mywindow.document.write(`left: -5px;`);
            mywindow.document.write(`top: 11px;`);
            mywindow.document.write(`width: 120px;`);
            mywindow.document.write(`background-color: #66c591;`);
            mywindow.document.write(`font-size: 15px;`);
            mywindow.document.write(`color: #fff;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.ribbon-inner:before, .ribbon-inner:after {`);
            mywindow.document.write(`content: "";`);
            mywindow.document.write(`position: absolute;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.ribbon-inner:before {`);
            mywindow.document.write(`left: 0;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.ribbon-inner:after {`);
            mywindow.document.write(`right: 0;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`@media(max-width:575px) {`);
            mywindow.document.write(`.invoice .top-left, .invoice .top-right, .invoice .payment-details {`);
            mywindow.document.write(`text-align: center;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .from, .invoice .to, .invoice .payment-details {`);
            mywindow.document.write(`float: none;`);
            mywindow.document.write(`width: 100%;`);
            mywindow.document.write(`text-align: center;`);
            mywindow.document.write(`margin-bottom: 25px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice p.lead, .invoice .from p.lead, .invoice .to p.lead, .invoice .payment-details p.lead {`);
            mywindow.document.write(`font-size: 22px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`.invoice .btn {`);
            mywindow.document.write(`margin-top: 10px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(`}`);
            mywindow.document.write(``);
            mywindow.document.write(`@media print {`);
            mywindow.document.write(`.invoice {`);
            mywindow.document.write(`width: 900px;`);
            mywindow.document.write(`height: 800px;`);
            mywindow.document.write(`}`);
            mywindow.document.write(`}`);
            mywindow.document.write(`</style>`);
            mywindow.document.write('</head><body >');
            mywindow.document.write(document.getElementById(divId).innerHTML);
            mywindow.document.write('</body></html>');

            mywindow.document.close(); // necessary for IE >= 10
            mywindow.focus(); // necessary for IE >= 10*/

            mywindow.print();
            mywindow.close();

            return true;
        }


    </script>

</body>

</html>

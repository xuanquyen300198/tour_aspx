<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="DoAnAspNet.template.page.print" %>

<html>
<head>
    <title>Convert HTML To PDF</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
</head>
<body>
     

<a href="javascript:demoFromHTML()" class="button">Run Code</a>

<div id="content">
     <style type="text/css">
		body {
				background-color: #eee
			}

			.fs-12 {
				font-size: 12px
			}

			.fs-15 {
				font-size: 15px
			}

			.name {
				margin-bottom: -2px
			}

			.product-details {
				margin-top: 13px
			}
	</style>
    
</div>
<p>don't print this to pdf</p>
<div id="pdf">
  <div class="container mt-5 mb-5" id="hidediv">
        <div class="d-flex justify-content-center row">
            <div class="col-md-10">
                <div class="receipt bg-white p-3 rounded">
                    <img src="https://i.imgur.com/zCAnG06.png" width="120">
                    <h4 class="mt-2 mb-3">Your order is confirmed!</h4>
                    <h6 class="name">Hello John,</h6>
                    <span class="fs-12 text-black-50">your order has been confirmed and will be shipped in two days</span>
                    <hr>
                    <div class="d-flex flex-row justify-content-between align-items-center order-details">
                        <div><span class="d-block fs-12">Order date</span><span class="font-weight-bold">12 March 2020</span></div>
                        <div><span class="d-block fs-12">Order number</span><span class="font-weight-bold">OD44434324</span></div>
                        <div><span class="d-block fs-12">Payment method</span><span class="font-weight-bold">Credit card</span><img class="ml-1 mb-1" src="https://i.imgur.com/ZZr3Yqj.png" width="20"></div>
                        <div><span class="d-block fs-12">Shipping Address</span><span class="font-weight-bold text-success">New Delhi</span></div>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between align-items-center product-details">
                        <div class="d-flex flex-row product-name-image">
                            <img class="rounded" src="https://i.imgur.com/GsFeDLn.jpg" width="80">
                            <div class="d-flex flex-column justify-content-between ml-2">
                                <div><span class="d-block font-weight-bold p-name">Ralco formal shirts for men</span><span class="fs-12">Clothes</span></div>
                                <span class="fs-12">Qty: 1pcs</span>
                            </div>
                        </div>
                        <div class="product-price">
                            <h5>$70</h5>
                        </div>
                    </div>
                    <div class="d-flex justify-content-between align-items-center product-details">
                        <div class="d-flex flex-row product-name-image">
                            <img class="rounded" src="https://i.imgur.com/b7Ve3fJ.jpg" width="80">
                            <div class="d-flex flex-column justify-content-between ml-2">
                                <div><span class="d-block font-weight-bold p-name">Ralco formal Belt for men</span><span class="fs-12">Accessories</span></div>
                                <span class="fs-12">Qty: 1pcs</span>
                            </div>
                        </div>
                        <div class="product-price">
                            <h6>$50</h6>
                        </div>
                    </div>
                    <div class="mt-5 amount row">
                        <div class="d-flex justify-content-center col-md-6">
                            <img src="https://i.imgur.com/AXdWCWr.gif" width="250" height="100"></div>
                        <div class="col-md-6">
                            <div class="billing">
                                <div class="d-flex justify-content-between"><span>Subtotal</span><span class="font-weight-bold">$120</span></div>
                                <div class="d-flex justify-content-between mt-2"><span>Shipping fee</span><span class="font-weight-bold">$15</span></div>
                                <div class="d-flex justify-content-between mt-2"><span>Tax</span><span class="font-weight-bold">$5</span></div>
                                <div class="d-flex justify-content-between mt-2"><span class="text-success">Discount</span><span class="font-weight-bold text-success">$25</span></div>
                                <hr>
                                <div class="d-flex justify-content-between mt-1"><span class="font-weight-bold">Total</span><span class="font-weight-bold text-success">$165</span></div>
                            </div>
                        </div>
                    </div>
                    <span class="d-block">Expected delivery date</span><span class="font-weight-bold text-success">12 March 2020</span><span class="d-block mt-3 text-black-50 fs-15">We will be sending a shipping confirmation email when the item is shipped!</span>
                    <hr>
                    <div class="d-flex justify-content-between align-items-center footer">
                        <div class="thanks"><span class="d-block font-weight-bold">Thanks for shopping</span><span>Amazon team</span></div>
                        <div class="d-flex flex-column justify-content-end align-items-end"><span class="d-block font-weight-bold">Need Help?</span><span>Call - 974493933</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<button onclick="printDiv('pdf','Title')">print div</button>

<button onclick="saveDiv('pdf','Title')">save div as pdf</button>

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
      mywindow.document.write(`<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' rel='stylesheet' type='text/css' media="print">`);
      mywindow.document.write(`<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' media="print">`);
        mywindow.document.write(`<style type="text/css">`);
        mywindow.document.write(`body {`);
        mywindow.document.write(`background-color: #eee`);
        mywindow.document.write(`}`);
        mywindow.document.write(``);
        mywindow.document.write(`.fs-12 {`);
        mywindow.document.write(`font-size: 12px`);
        mywindow.document.write(`}`);
        mywindow.document.write(``);
        mywindow.document.write(`.fs-15 {`);
        mywindow.document.write(`font-size: 15px`);
        mywindow.document.write(`}`);
        mywindow.document.write(``);
        mywindow.document.write(`.name {`);
        mywindow.document.write(`margin-bottom: -2px`);
        mywindow.document.write(`}`);
        mywindow.document.write(``);
        mywindow.document.write(`.product-details {`);
        mywindow.document.write(`margin-top: 13px`);
        mywindow.document.write(`}`);
        mywindow.document.write(`</style>`);
        mywindow.document.write('</head><body >');
        mywindow.document.write(document.getElementById(divId).innerHTML);
        mywindow.document.write(`<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>`);
        mywindow.document.write(`<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>`);
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
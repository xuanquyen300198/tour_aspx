<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="book-tour-pay.aspx.cs" Inherits="DoAnAspNet.template.page.book_tour_pay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../book/css/016b.css" rel="stylesheet" />
    <link href="../book/css/1128.css" rel="stylesheet" />
    <link href="../book/css/75f6.css" rel="stylesheet" />
    <link href="../book/css/9b699.css" rel="stylesheet" />

    <div id="bodyconstraint" class="   " style="    margin-top: 130px;">
   <div id="bodyconstraint-inner">
      <div class="bui-container booking-process__container js-booking-process__container js-booking-process__container--stage-3 e2e-stage-container" data-stage="3">
         <div class="bui-grid">
            <div class="bui-grid__column bui-spacer">
               <div class="bui-card bui-card--fill bui-card--transparent">
                  <div class="bui-card__content">
                     <ol class="bui-nav-progress bui-nav-progress--horizontal">
                        <li class="bui-nav-progress__item ">
                           <span class="bui-nav-progress__indicator" aria-hidden="true">
                              <svg class="bk-icon -streamline-checkmark_fill bui-nav-progress__icon" fill="currentColor" height="24" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                                 <path d="M56.33 102a6 6 0 0 1-4.24-1.75L19.27 67.54A6.014 6.014 0 1 1 27.74 59l27.94 27.88 44-58.49a6 6 0 1 1 9.58 7.22l-48.17 64a5.998 5.998 0 0 1-4.34 2.39z"></path>
                              </svg>
                           </span>
                           <strong class="bui-nav-progress__title" aria-current="false">
                           Bạn chọn
                           </strong>
                           <span class="bui-nav-progress__step" aria-hidden="true">
                           Bước 1/3
                           </span>
                        </li>
                        <li role="presentation" class="bui-nav-progress__divider"></li>
                        <li class="bui-nav-progress__item ">
                           <span class="bui-nav-progress__indicator" aria-hidden="true">
                              <svg class="bk-icon -streamline-checkmark_fill bui-nav-progress__icon" fill="currentColor" height="24" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                                 <path d="M56.33 102a6 6 0 0 1-4.24-1.75L19.27 67.54A6.014 6.014 0 1 1 27.74 59l27.94 27.88 44-58.49a6 6 0 1 1 9.58 7.22l-48.17 64a5.998 5.998 0 0 1-4.34 2.39z"></path>
                              </svg>
                           </span>
                           <strong class="bui-nav-progress__title" aria-current="false">
                           Chi tiết về bạn
                           </strong>
                           <span class="bui-nav-progress__step" aria-hidden="true">
                           Bước 2/3
                           </span>
                        </li>
                        <li role="presentation" class="bui-nav-progress__divider"></li>
                        <li class="bui-nav-progress__item bui-nav-progress__item--active">
                           <span class="bui-nav-progress__indicator" aria-hidden="true">
                           3
                           </span>
                           <strong class="bui-nav-progress__title" aria-current="step">
                           Bước cuối cùng
                           </strong>
                           <span class="bui-nav-progress__step" aria-hidden="true">
                           Bước 3/3
                           </span>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
         </div>
         <form id="bookForm" class="book-form " name="bookForm" action="book.html" method="post" data-is-exclusive="0" data-is-hybrid="" data-has-schedule="" data-stage="3" data-component="bp/main-form " data-emk-ga-track-label="book-process" data-emk-ga-track-checkbox="mailinglist" novalidate="">
            <input type="hidden" name="bhc_csrf_token" value="DRgNYQAAAAA=vqj834bwCuAiNlOm-1zT_LvIhBjPgP3ZN9KmJ7WJgdMCC7c0365mZcuorDnyvEwu7cJOFkqZWmjvW42aGqSGbVwneJOGCkNbxC_8I71SuXgqxQQ4m4QYEIPZwz05JCUozcjHMhDK9eAwc6BOB-jsYLSBSjWNtxqv_bErfQsA5MXsvXeJNurvRV836CAjktS0BN5R539-EgdNluZr">
            <input type="hidden" name="aid" value="318615">
            <input type="hidden" name="label" value="New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025:pl:ta:p1:p2:ac:ap:neg:fi2658306050:tidsa-303472601955:lp9040331:li:dec:dm">
            <input type="hidden" name="lang" value="vi">
            <input type="hidden" name="sid" value="96a61b88ba49cdbab74a0c2be36e1f22">
            <input type="hidden" name="remb" value="0a26525b1a5693b2a21b3a0b4a35b5a166b6a927b" class="ClickTaleSensitive">
            <input type="hidden" name="reub" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="rets" value="1a882b0c2a783b0c3a23b4100c4a62b1600c" class="ClickTaleSensitive">
            <input type="hidden" name="recp" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="cc_refp" value="f1a50f046f43f2a319bd9d879afcf39c" class="ClickTaleSensitive">
            <input type="hidden" name="total_cost" value="264" class="ClickTaleSensitive">
            <input type="hidden" name="notstayer" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="is_24hr" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="rt_num_rooms" value="5" class="ClickTaleSensitive">
            <input type="hidden" name="rt_num_blocks_per_room" value="{&quot;185207805&quot;:1,&quot;185207801&quot;:1,&quot;185207802&quot;:1,&quot;185207803&quot;:1,&quot;185207804&quot;:1}" class="ClickTaleSensitive">
            <input type="hidden" name="bb_send_to_triplink" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="rt_pos_selected_within_room" value="1" class="ClickTaleSensitive">
            <input type="hidden" name="room1" value="A,A" class="ClickTaleSensitive">
            <input type="hidden" name="uber_travel_pass" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="emk_opt_in" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="loyalty_number" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="recommended_room_id" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="checkin" value="2021-08-11" class="ClickTaleSensitive">
            <input type="hidden" name="pset_discount_won" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="dotd_fb" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="promo" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="from_ski_sr" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="pay_now" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="bp_nocc_compset" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="bp_travel_purpose" value="leisure" class="ClickTaleSensitive">
            <input type="hidden" name="hotel_id" value="1852078" class="ClickTaleSensitive">
            <input type="hidden" name="ufi" value="-2669740" class="ClickTaleSensitive">
            <input type="hidden" name="from_beach_key_ufi_sr" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="hostname" value="www.booking.com" class="ClickTaleSensitive">
            <input type="hidden" name="rt_pageview_id" value="a33218b567450003" class="ClickTaleSensitive">
            <input type="hidden" name="ap_ref" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="allow_past" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="stage" value="3" class="ClickTaleSensitive">
            <input type="hidden" name="rt_pos_selected" value="1" class="ClickTaleSensitive">
            <input type="hidden" name="rt_relevance_metric_id" value="84e7c4ff-3908-482b-8a10-895843120b84" class="ClickTaleSensitive">
            <input type="hidden" name="rt_num_blocks" value="5" class="ClickTaleSensitive">
            <input type="hidden" name="is_piyoc_supported" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="lastname" value="123" class="ClickTaleSensitive">
            <input type="hidden" name="reason_to_visit_checkbox" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="free_parking_please" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="checkout" value="2021-08-14" class="ClickTaleSensitive">
            <input type="hidden" name="prd_all_included" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="interval" value="3" class="ClickTaleSensitive">
            <input type="hidden" name="bp_from" value="standard" class="ClickTaleSensitive">
            <input type="hidden" name="checkin_eta_hour" value="-1" class="ClickTaleSensitive">
            <input type="hidden" name="from_beach_non_key_ufi_sr" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="firstname" value="1312" class="ClickTaleSensitive">
            <input type="hidden" name="seen_ft_rvw" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="from_reco_block" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="bpid" value="929F2353-81D9-4228-AC52-EA7E38E6630E" class="ClickTaleSensitive">
            <input type="hidden" name="email_confirm" value="<%=email %>" class="ClickTaleSensitive">
            <input type="hidden" name="send_whatsapp_confirmation_mdot" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="lphwd" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="is_group_recommendation" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="email" value="<%=email %>" class="ClickTaleSensitive">
            <input type="hidden" name="attr_signup" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="reason_to_visit" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="rt_pos_final" value="1.1" class="ClickTaleSensitive">
            <input type="hidden" name="emk_bp_redirect" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="house_rules_agreement" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="nr_rooms_185207801_204732343_2_1_0" value="1" class="ClickTaleSensitive">
            <input type="hidden" name="smoking_preference_185207801_204732343_2_1_0" value="no" class="ClickTaleSensitive">
            <input type="hidden" name="nr_guests_185207801_204732343_2_1_0" value="2" class="ClickTaleSensitive">
            <input type="hidden" name="guest_name_185207801_204732343_2_1_0" value="<%=hoTen %>" class="ClickTaleSensitive">
            <input type="hidden" name="is_smart_deal" value="0" class="ClickTaleSensitive">
            <input type="hidden" name="final_booking_price" value="264" class="ClickTaleSensitive">
            <input type="hidden" id="mtv_last_sorter_used" name="mtv_last_sorter_used" value="">
            <input id="vpmlog" type="hidden" name="screen_dimensions" value="">
            <input type="hidden" name="form_was_rendered" value="1">
            <script id="script-booking-rooms-roomsFormName" type="text/javascript" nonce="">
                // <![CDATA[
                booking.book = {
                    formName: 'bookForm'
                };
               // ]]>
            </script>
            <div class="bui-grid">
               <aside class="bui-grid__column-4">
                  <div class="bui-group bui-group--large">
                     <section class="bui-card bp-card--booking-summary">
                        <div class="bui-card__content">
                           <header class="bui-card__header">
                              <h2 class="bui-card__title">Chi tiết đặt phòng của bạn</h2>
                           </header>
                           <div class="bui-card__text">
                              <div class="bui-group bui-group--large">
                                 <div class="bui-group bui-group--large">
                                    <div class="bui-group__item">
                                       <div class="bui-date-range bui-date-range--large bp-date-range">
                                          <div class="bui-date-range__item">
                                             <div id="bp-checkin-date__label" class="bui-date__label">Nhận phòng</div>
                                             <time class="bui-date bui-date--large" aria-describedby="bp-checkin-date__label">
                                             <span class="bui-date__title"><%=ngayDatTu %></span>
                                             <span class="bui-date__subtitle">
                                             Từ 14:00
                                             </span>
                                             </time>
                                          </div>
                                          <div class="bui-date-range__item">
                                             <div id="bp-checkout-date__label" class="bui-date__label">Trả phòng</div>
                                             <time class="bui-date bui-date--large" aria-describedby="bp-checkout-date__label">
                                             <span class="bui-date__title"><%=ngayDatDen %></span>
                                             <span class="bui-date__subtitle">
                                             Cho đến 12:00
                                             </span>
                                             </time>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="bui-group__item bui-group bui-group--small">
                                       <div class="bui-group__item bui-f-font-emphasized">Tổng thời gian lưu trú:</div>
                                       <div class="bui-group__item bui-f-font-strong">
                                          3 đêm
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </section>
                     <div class="bui-group bui-group--large" data-hotel-currency-code="US$" data-user-currency-code="VND" data-is-us-breakdown="false" data-component="bp/price-details">
                        <div class="bui-card-group">
                           <section class="bui-card bp-card--price-details js-price-details e2e-price-details">
                              <div class="bui-card__content">
                                 <header class="bui-card__header">
                                    <h2 class="bui-card__title">
                                       Tóm tắt giá
                                    </h2>
                                 </header>
                                 <div class="bui-card__text bp-price-details__breakdown-container ">
                                    <div class="bui-group bui-group--medium">
                                       <div class="bui-group__item">
                                          <ul class="bp-price-details__charges">
                                             <li class="bp-price-details__charge-line">
                                                <div class="bp-price-details__charge-type">
                                                   <div class="bp-price-details__charge-name">
                                                      <%=tour.ten %>
                                                   </div>
                                                </div>
                                                <div class="bp-price-details__charge-value">
                                                   VND&nbsp;5.047.104
                                                </div>
                                             </li>
                                             <li class="bp-price-details__charge-line">
                                                <div class="bp-price-details__charge-type" data-pb-ix="5">
                                                   10 % Thuế
                                                </div>
                                                <div class="bp-price-details__charge-value">
                                                   VND&nbsp;504.710
                                                </div>
                                             </li>
                                             <li class="bp-price-details__charge-line">
                                                <div class="bp-price-details__charge-type" data-pb-ix="5">
                                                   10 % Phí dịch vụ của chỗ nghỉ
                                                </div>
                                                <div class="bp-price-details__charge-value">
                                                   VND&nbsp;504.710
                                                </div>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="bui-card__text bp-price-details__total">
                                    <div class="bui-group bui-group--large">
                                       <div class="bui-group__item">
                                          <div class="bui-group bui-group--medium">
                                             <div class="bui-group__item">
                                                <div class="bp-price-details__total-line bp-price-details__total-line--user js-price-details__total-line--user e2e-price-details__total-line--user">
                                                   <div class="bp-price-details__charge-type">
                                                      <div class="bp-price-details__charge-name">
                                                         Giá
                                                      </div>
                                                      <div class="bp-price-details__charge-description bp-price-details__charge-description--currency e2e-price-details__currency-type">
                                                         (loại tiền tệ của bạn)
                                                      </div>
                                                   </div>
                                                   <div class="bp-price-details__charge-value e2e-price-details__total-charge--user" data-price="6056524" data-currency-code="VND" data-pd-total-usercurrency="">
                                                      <span data-component="core/animate-price" class="" data-value="6056524" data-currency="VND" data-precision="" data-animate-price-group-name="bp_user_total_price" data-animation-speed="0.7" style="display: inline-block;">
                                                      VND&nbsp;6.056.524
                                                      </span>
                                                      *
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="bui-group__item">
                                                <hr class="bui-divider">
                                             </div>
                                             <div class="bui-group__item">
                                                <div class="bp-price-details__total-line bp-price-details__total-line--property js-price-details__total-line--property e2e-price-details__total-line--property">
                                                   <div class="bp-price-details__charge-type">
                                                      <div class="bp-price-details__charge-name">
                                                         Tiền tệ của chỗ nghỉ
                                                      </div>
                                                      <div class="bp-price-details__charge-description bp-price-details__charge-description--currency e2e-price-details__currency-type">
                                                         bằng US$
                                                      </div>
                                                   </div>
                                                   <div class="bp-price-details__charge-value e2e-price-details__total-charge--property" data-price="264" data-currency-code="US$" data-pd-total-hotelcurrency="">
                                                      <span data-component="core/animate-price" class="" data-value="264" data-currency="US$" data-precision="" data-animate-price-group-name="bp_total_price" data-animation-speed="0.7" style="display: inline-block;">
                                                      US$264
                                                      </span>
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="bp-price-details__price-clarification bp-price-details__price-clarification--different-currency">
                                                <span class="js-price-details__price-clarification--no-guests" data-copy="bp_for_x_guests_y_nights_1">(cho 2 khách và</span>
                                                &nbsp;
                                                <span>
                                                3 đêm nghỉ)
                                                </span>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="bui-card__text">
                                    <div class="bui-group bui-group--medium">
                                       <p class="bui-f-font-caption e2e-price-details__currency-exchange-info">
                                          <span>*</span>
                                          Giá này được chuyển đổi để hiển thị cho bạn chi phí ước tính bằng VND. Bạn sẽ trả bằng <b>US$</b> hoặc <b>LAK</b>. Tỷ giá hối đoái có thể thay đổi trước khi bạn thanh toán.
                                       </p>
                                       <p class="bui-f-font-caption e2e-price-details__currency-exchange-info">
                                          Xin lưu ý, đơn vị phát hành thẻ của bạn có thể tính phí giao dịch bằng ngoại tệ.
                                       </p>
                                    </div>
                                 </div>
                              </div>
                           </section>
                        </div>
                     </div>
                     <section class="bui-card bp-card--prepayment-schedule">
                        <div class="bui-card__content">
                           <header class="bui-card__header">
                              <h2 class="bui-card__title">
                                 Lịch thanh toán của bạn
                              </h2>
                           </header>
                           <div class="bui-card__text">
                              <ul class="bp-schedule bp-schedule--prepayment e2e-prepayment-schedule">
                                 <li class="bp-schedule__milestone bp-schedule__milestone--reinforcement">
                                    <div class="bp-schedule__milestone-name">
                                       Không cần thanh toán hôm nay. Bạn sẽ trả khi đến nghỉ.
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </section>
                     <section class="bui-card bp-card--cancellation-schedule">
                        <div class="bui-card__content">
                           <header class="bui-card__header">
                              <h2 class="bui-card__title">
                                 Chi phí hủy là bao nhiêu?
                              </h2>
                           </header>
                           <div class="bui-card__text">
                              <ul class="bp-schedule bp-schedule--cancellation e2e-cancellation-schedule">
                                 <li class="bp-schedule__milestone">
                                    <div class="bp-schedule__milestone-name">
                                       Nếu hủy, bạn sẽ phải thanh toán
                                    </div>
                                    <div class="bp-schedule__milestone-value">
                                       <span data-component="core/animate-price" class="" data-value="6056524.31" data-currency="" data-precision="0" data-animate-price-group-name="bp_payment_cancellation_cost_1" data-animation-speed="0.7" style="display: inline-block;">
                                       VND&nbsp;6.056.524
                                       </span>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </section>
                     <svg class="bk-icon -streamline-calendar" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M22.502 13.5v8.25a.75.75 0 0 1-.75.75h-19.5a.75.75 0 0 1-.75-.75V5.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v8.25zm1.5 0V5.25A2.25 2.25 0 0 0 21.752 3h-19.5a2.25 2.25 0 0 0-2.25 2.25v16.5A2.25 2.25 0 0 0 2.252 24h19.5a2.25 2.25 0 0 0 2.25-2.25V13.5zm-23.25-3h22.5a.75.75 0 0 0 0-1.5H.752a.75.75 0 0 0 0 1.5zM7.502 6V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0zm10.5 0V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0z"></path>
                     </svg>
                     <svg class="bk-icon -streamline-gift" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M21.75 10.5H2.25a.75.75 0 0 0-.75.75v10.5A2.25 2.25 0 0 0 3.75 24h16.5a2.25 2.25 0 0 0 2.25-2.25v-10.5a.75.75 0 0 0-.75-.75zm0 1.5l-.75-.75v10.5a.75.75 0 0 1-.75.75H3.75a.75.75 0 0 1-.75-.75v-10.5l-.75.75h19.5zm0-6H2.25A2.25 2.25 0 0 0 0 8.25v2.25A1.5 1.5 0 0 0 1.5 12h21a1.5 1.5 0 0 0 1.5-1.5V8.25A2.25 2.25 0 0 0 21.75 6zm0 1.5a.75.75 0 0 1 .75.75v2.25h-21V8.25a.75.75 0 0 1 .75-.75h19.5zM11.25 6c-3.067 0-6-2.501-6-5.25a.75.75 0 0 0-1.5 0c0 3.635 3.653 6.75 7.5 6.75a.75.75 0 0 0 0-1.5zM4.5 1.5c3.067 0 6 2.501 6 5.25a.75.75 0 0 0 1.5 0C12 3.115 8.347 0 4.5 0a.75.75 0 0 0 0 1.5zm8.25 6c3.847 0 7.5-3.115 7.5-6.75a.75.75 0 0 0-1.5 0c0 2.749-2.933 5.25-6 5.25a.75.75 0 0 0 0 1.5zM19.5 0C15.653 0 12 3.115 12 6.75a.75.75 0 0 0 1.5 0c0-2.749 2.933-5.25 6-5.25a.75.75 0 0 0 0-1.5zM9.75 7.5h4.5l-.75-.75v16.5l.75-.75h-4.5l.75.75V6.75l-.75.75zm0-1.5a.75.75 0 0 0-.75.75v16.5c0 .414.336.75.75.75h4.5a.75.75 0 0 0 .75-.75V6.75a.75.75 0 0 0-.75-.75h-4.5z"></path>
                     </svg>
                     <svg class="bk-icon -streamline-arrow_nav_down" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"></path>
                     </svg>
                     <svg class="bk-icon -streamline-arrow_nav_up" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M6 14.55a.74.74 0 0 1 .22-.55l5-5c.21-.2.49-.309.78-.3a1.1 1.1 0 0 1 .78.32l5 5a.75.75 0 0 1 0 1.06.74.74 0 0 1-1.06 0L12 10.36l-4.72 4.72a.74.74 0 0 1-1.06 0 .73.73 0 0 1-.22-.53zm5.72-4.47zm.57 0z"></path>
                     </svg>
                     <svg class="bk-icon -streamline-coupon_discount" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M22.5 15v3a.75.75 0 0 1-.75.75H2.25A.75.75 0 0 1 1.5 18v-3l-.75.75a3.75 3.75 0 1 0 0-7.5L1.5 9V6a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v3l.75-.75a3.75 3.75 0 1 0 0 7.5L22.5 15zm1.5 0a.75.75 0 0 0-.75-.75 2.25 2.25 0 0 1 0-4.5A.75.75 0 0 0 24 9V6a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 6v3c0 .414.336.75.75.75a2.25 2.25 0 0 1 0 4.5A.75.75 0 0 0 0 15v3a2.25 2.25 0 0 0 2.25 2.25h19.5A2.25 2.25 0 0 0 24 18v-3zM9 9a.75.75 0 1 1-1.5 0A.75.75 0 0 1 9 9zm1.5 0A2.25 2.25 0 1 0 6 9a2.25 2.25 0 0 0 4.5 0zm6.75 6a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0zm-3.53-7.28l-7.5 7.5a.75.75 0 1 0 1.06 1.06l7.5-7.5a.75.75 0 0 0-1.06-1.06z"></path>
                     </svg>
                     <svg class="bk-icon -streamline-warning" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                     </svg>
                     <svg class="bk-icon -streamline-info_sign" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                     </svg>
                     <div class="bui-card bp-card--promo-code active_offer_block">
                        <div class="bui-card__content">
                           <header class="bui-card__header">
                              <h2 class="bui-card__title">
                                 Bạn có mã khuyến mãi không?
                              </h2>
                           </header>
                           <div class="bui-card__text">
                              <div class="bui-form__group">
                                 <label class="bui-form__label" for="coupon_code_input">
                                 Nhập mã khuyến mại
                                 </label>
                                 <div class="bui-input-text__content">
                                    <div class="bui-input-text__field">
                                       <input type="text" on:input="handleInputChange" on:keydown="handleInputKeydown" id="coupon_code_input" class="bui-input-text__control js-aob--form-input" autocomplete="false" name="coupon_code_input" value="">
                                       <div class="bui-input-text__decorator"></div>
                                    </div>
                                 </div>
                              </div>
                              <button class="bui-button bui-button--secondary bui-u-margin-top--8  js-aob--form-submit" type="button" on:click="handleSubmitButton">
                                 <div class="bui-button__loader" aria-busy="true" aria-live="polite">
                                    <div class="bui-spinner bui-spinner--size-small">
                                       <div class="bui-spinner__inner"></div>
                                    </div>
                                 </div>
                                 <span class="bui-button__text">
                                 Áp dụng
                                 </span>
                              </button>
                           </div>
                        </div>
                     </div>
                     <svg class="bk-icon -logos-booking-logo" height="42" style="display:none;" width="252" viewBox="0 0 252 42" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M15.592 22.92C15.591 20.283 13.924 18.652 11.348 18.652H7.738C6.58 18.815 6.055 19.518 6.055 20.877V26.783L11.348 26.79C13.966 26.79 15.591 25.629 15.592 22.92ZM6.055 13.391H10.819C13.496 13.391 14.449 11.689 14.449 9.911C14.449 7.576 13.057 6.181 10.735 6.181H8.025C6.671 6.268 6.055 6.966 6.055 8.428V13.391ZM21.815 23.351C21.815 28.956 17.536 32.87 10.912 32.87H0V4.87C0.02 3.085 1.872 1.285 3.64 1.218H10.777C16.737 1.218 20.587 4.222 20.587 9.202C20.587 12.462 18.959 14.346 17.988 15.183L17.152 15.9L18.109 16.441C20.432 17.751 21.815 20.333 21.815 23.351V23.351ZM148.135 20.675C148.135 15.58 145.385 14.986 143.325 14.986C139.165 14.986 138.845 19.175 138.845 20.459C138.845 23.376 140.105 26.49 143.665 26.49C145.705 26.49 148.135 25.48 148.135 20.675V20.675ZM154.045 9.738L154.025 30.732C154.025 38.739 148.045 41.584 142.505 41.584C139.815 41.584 136.845 40.858 134.555 39.639L134.105 39.4L134.835 37.53L135.345 36.243C135.905 34.855 136.715 34.509 138.095 34.928C139.155 35.312 140.735 35.739 142.475 35.739C146.045 35.739 148.015 34.05 148.015 30.994V30.356L147.505 30.732C146.215 31.72 144.575 32.205 142.505 32.205C136.445 32.205 132.215 27.445 132.215 20.63C132.215 13.811 136.305 9.228 142.385 9.228C145.445 9.228 147.325 10.309 148.375 11.221L148.675 11.482L148.855 11.132C149.325 10.23 150.275 9.738 151.515 9.738H154.045V9.738ZM67.707 21.184C67.707 17.473 65.411 14.877 62.137 14.877C58.877 14.877 56.608 17.473 56.608 21.184C56.608 24.898 58.878 27.496 62.138 27.496C65.464 27.496 67.708 24.958 67.708 21.184H67.707ZM74.088 21.184C74.088 28.054 69.052 33.04 62.138 33.04C55.234 33.04 50.228 28.054 50.228 21.184C50.228 14.318 55.234 9.331 62.138 9.331C69.052 9.331 74.088 14.318 74.088 21.184ZM105.445 32.677V13.281C105.445 10.941 104.335 9.806 102.025 9.806L99.465 9.796L99.485 27.5H99.465L99.485 32.87H105.445V32.677ZM122.505 9.278C119.175 9.278 117.055 10.765 115.865 12.018L115.465 12.423L115.325 11.873C114.975 10.529 113.795 9.788 112.025 9.788H109.165L109.185 32.683H115.225V22.131C115.225 21.099 115.365 20.205 115.635 19.387C116.355 16.914 117.995 15.378 120.525 15.378C122.555 15.378 123.725 16.453 123.725 19.232V29.203C123.725 31.573 125.195 32.683 127.555 32.683H129.785V18.261C129.785 12.475 127.825 9.278 122.505 9.278V9.278ZM91.436 21.777C91.1964 21.3119 90.8928 20.8827 90.534 20.502L90.326 20.281L90.546 20.069C90.862 19.734 91.186 19.338 91.497 18.878L97.584 9.795H90.195L85.622 16.899C85.363 17.28 84.84 17.472 84.058 17.472H82.48V4.045C82.48 1.36 80.642 0 78.84 0H76.414L76.42 32.691H82.48V23.183H83.63C84.375 23.183 84.883 23.269 85.118 23.675L88.729 30.518C89.736 32.375 90.743 32.691 92.635 32.691H97.651L93.915 26.488L91.436 21.777ZM41.648 21.184C41.648 17.473 39.358 14.877 36.079 14.877C32.819 14.877 30.553 17.473 30.553 21.184C30.553 24.898 32.819 27.496 36.079 27.496C39.405 27.496 41.649 24.958 41.649 21.184H41.648ZM48.028 21.184C48.028 28.054 43.002 33.04 36.079 33.04C29.182 33.04 24.177 28.054 24.177 21.184C24.177 14.318 29.182 9.331 36.079 9.331C43.002 9.331 48.027 14.318 48.027 21.184H48.028ZM98.764 3.81C98.764 1.704 100.464 0 102.544 0C104.634 0 106.334 1.704 106.334 3.81C106.334 5.911 104.634 7.617 102.544 7.617C100.464 7.617 98.764 5.911 98.764 3.81Z" fill="#003580"></path>
                        <path d="M187.08 25.067C187.06 25.088 184.38 27.915 180.87 27.915C177.66 27.915 174.42 25.941 174.42 21.538C174.42 17.73 176.93 15.071 180.53 15.071C181.7 15.071 183.02 15.492 183.23 16.198L183.26 16.318C183.74 17.919 185.19 18.001 185.47 18.001L188.88 18.005V15.021C188.88 11.085 183.89 9.65698 180.53 9.65698C173.35 9.65698 168.14 14.674 168.14 21.584C168.14 28.489 173.29 33.502 180.4 33.502C186.56 33.502 189.91 29.434 189.94 29.391L190.12 29.172L187.43 24.685L187.08 25.067ZM244.43 9.65698C241.73 9.65698 239.25 10.927 237.58 13.05L237.11 13.651L236.74 12.979C235.53 10.776 233.46 9.65698 230.57 9.65698C227.55 9.65698 225.53 11.35 224.58 12.358L223.97 13.024L223.73 12.144C223.39 10.877 222.26 10.178 220.56 10.178H218.06L218.04 32.984H224.01V22.917C224.01 22.036 224.12 21.163 224.34 20.248C224.93 17.816 226.56 15.202 229.3 15.462C230.99 15.626 231.81 16.936 231.81 19.466V32.984H237.44V22.917C237.44 21.813 237.55 20.99 237.79 20.162C238.3 17.842 240.37 15.459 243.02 15.459C244.93 15.459 245.93 16.545 245.93 19.466V29.649C245.93 31.954 247.28 32.984 249.57 32.984H251.99L252 18.424C252 12.607 249.45 9.65698 244.43 9.65698V9.65698ZM203.66 10.043C196.76 10.043 191.35 15.031 191.35 21.898C191.35 28.765 196.76 33.754 203.66 33.754C210.58 33.754 215.61 28.765 215.61 21.898C215.61 15.031 210.58 10.043 203.66 10.043V10.043ZM158.31 29.446C158.31 27.34 160 25.636 162.09 25.636C164.18 25.636 165.88 27.34 165.88 29.446C165.88 31.548 164.18 33.254 162.09 33.254C160 33.254 158.31 31.548 158.31 29.446ZM203.66 28.209C200.4 28.209 198.13 25.611 198.13 21.898C198.13 18.186 200.4 15.59 203.66 15.59C206.93 15.59 209.23 18.186 209.23 21.898C209.23 25.671 206.99 28.209 203.66 28.209Z" fill="#0896FF"></path>
                     </svg>
                     <svg class="bk-icon -iconset-close" height="128" style="display:none;" width="128" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M69.7 64l33.1-33.2a4 4 0 0 0-5.6-5.6L64 58.3 30.8 25.2a4 4 0 1 0-5.6 5.6L58.3 64 25.2 97.2a4 4 0 1 0 5.6 5.6L64 69.7l33.2 33.1a4 4 0 0 0 5.6-5.6z"></path>
                     </svg>
                     <section class="bui-card bp-card--genius-non-logged-in">
                        <div class="bui-card__content">
                           <div class="bui-card__header">
                              <h2 class="bui-card__title">
                                 Đăng nhập để nhận giá Genius
                              </h2>
                           </div>
                           <div class="bui-card__text">
                              <div class="bui-inline-container">
                                 <div class="bui-inline-container__start">
                                    <img src="https://cf.bstatic.com/static/img/genius/genius_trial/ge_closed_gift_refresh/46a8d74e6aafd0fd350d21aa13af5b617cc84d48.svg" alt="Genius" class="ge-bp-non-logged--giftbox" role="presentation" width="90" height="96">
                                 </div>
                                 <div class="bui-inline-container__main">
                                    <p class="bui-f-font-body">Khách Genius có thể tiết kiệm được ít nhất 10% tại một số chỗ nghỉ nhất định. Hãy đăng nhập để xem bạn có đạt đủ điều kiện không</p>
                                    <div class="bui-group bui-group--inline bui-group--vertical-align-middle bui-button-group">
                                       <div class="bui-group__item">
                                          <button class="bui-button bui-button--tertiary" type="button" data-command="show-auth-lightbox" data-command-params="tab=signin;extraClass=user-access-menu-lightbox--user-center;redirect_uri=https%3A%2F%2Faccount.booking.com%2Fauth%2Foauth2%3Flang%3Dvi%26redirect_uri%3Dhttps%253A%252F%252Fsecure.booking.com%252Flogin.html%253Fop%253Doauth_return%26aid%3D318615%26dt%3D1628233679%26iframe%3D1%26state%3DUtsDNPrza4-1BoAff6mxZa6enznwpE3xU1_FB6RDlwQqrvM_EV_Ee2tgzPlOLb94ldkLJWwQY0gC7oY-sZTY4zbSAFPFvuaEPWFNGusC5JDN-wUfXHpwkRs1vRpZkl0xIkg8emTB6W2uksIizcw1YZW7sXF6zEqCGLQlp31M5yZEMw10UBTXTKYsJ3ccJ57FJmp0jRzFEnbMj3RhDYy89ZTu_hAm1hy9oTrLpyV1SYf0h0oa1G72kGlNhrKWVE0jsrXvRfS75klmlMRDXYkinuBn87ZTnuqTapun4E5qQPNIiFwMh3R3S7JJIXdrhbC9g3cmJNbKx46kIJD7LAdJ6GqBX7RPIQhJF-Fh9TXxvFKkGVsSW6n1yg0xjKMyp_vrDgqb2M7tBA_Js30NXumvonT04R6n8l5f4s-eInLbObeD-u6b0RTM3OixHxHi6ljqhZhxMjVTeDWFeCcCkuPN0HygOHgVbmNoCa7IdqyvdzFqFK23dvbLrK7JsXVCcoPD4xzeeLfb6a3hCyHC2Hf3jQYFKw73StA-v-lpG9FaA63-xT4J8M5oVNTML2uL6sqlxmYNSv7cD1Ott7Vyj8M0Xw-nFRPwt0HxlfcJIfEW8p8qMEclWgjJjWHiRdpHgQ%26bkng_action%3Dbook%26client_id%3DvO1Kblk7xX9tUn2cpZLS%26response_type%3Dcode" data-component="iam/preload-iframe">
                                          <span class="bui-button__text">Đăng nhập</span>
                                          </button>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="genius-footer-signature ">
                              <span class="genius-footer-signature__copy">
                              Chương trình khách hàng thân thiết của Booking.com
                              </span>
                              <svg class="bk-icon -genius-new_identity-genius_logo genius-logo genius-footer-signature__logo" height="16" width="62" viewBox="0 0 503 128" role="presentation" aria-hidden="true" focusable="false">
                                 <g clip-path="url(#clip0-2497)">
                                    <path d="M481.34 101.48C481.338 102.722 480.993 103.939 480.344 104.998C479.695 106.056 478.766 106.915 477.66 107.48C474.694 109.084 471.348 109.851 467.98 109.7C463.613 109.83 459.308 108.638 455.63 106.28C452.366 104.194 449.844 101.132 448.42 97.5299C447.75 95.8199 446.54 95.3599 444.82 96.1599L431.82 101.99C430 102.8 429.48 103.99 430.28 105.76C433.059 112.341 437.829 117.887 443.92 121.62C450.38 125.787 458.58 127.873 468.52 127.88C478.12 127.88 486.237 125.423 492.87 120.51C499.503 115.597 502.817 108.93 502.81 100.51C502.81 86.5565 492.98 77.9265 473.32 74.6199C468.617 73.9564 464.051 72.5382 459.8 70.4199C456.66 68.8699 453.08 66.8999 453.08 64.4999C453.08 62.4399 454.32 60.7999 456.77 59.6099C459.882 58.283 463.25 57.6681 466.63 57.8099C473.257 57.8099 479.03 60.3832 483.95 65.5299C485.31 66.8999 486.7 67.0699 488.06 66.0399L497.33 57.4699C498.92 56.2099 499.1 54.8299 497.84 53.3599C490.613 44.5199 480.027 40.1032 466.08 40.1099C456.14 40.1099 448.2 42.3665 442.26 46.8799C439.399 48.9679 437.092 51.7225 435.537 54.9046C433.983 58.0867 433.229 61.6001 433.34 65.1399C433.285 68.1652 433.893 71.1659 435.124 73.9303C436.354 76.6948 438.175 79.1558 440.46 81.1399C445.2 85.4265 451.627 88.3165 459.74 89.8099C467.74 91.2799 473.34 92.8799 476.55 94.5999C479.76 96.3199 481.34 98.6199 481.34 101.48Z" fill="#004CB8"></path>
                                    <path d="M346.84 94.6999C346.84 104.967 349.64 113.05 355.24 118.95C360.84 124.85 368.44 127.793 378.04 127.78C381.428 127.81 384.8 127.321 388.04 126.33C390.515 125.609 392.872 124.535 395.04 123.14C397.115 121.673 399.093 120.073 400.96 118.35L403.02 123.35C403.333 124.119 403.885 124.767 404.595 125.199C405.304 125.631 406.133 125.824 406.96 125.75H421.02C421.393 125.803 421.772 125.769 422.13 125.65C422.487 125.531 422.812 125.331 423.078 125.066C423.345 124.8 423.546 124.476 423.666 124.119C423.786 123.762 423.822 123.383 423.77 123.01V44.9999C423.823 44.6263 423.789 44.2454 423.67 43.8874C423.551 43.5293 423.35 43.204 423.083 42.9371C422.816 42.6702 422.491 42.4692 422.133 42.3499C421.774 42.2306 421.394 42.1964 421.02 42.2499H403.76C403.386 42.1947 403.004 42.2276 402.644 42.3461C402.285 42.4646 401.958 42.6654 401.69 42.9325C401.422 43.1996 401.22 43.5256 401.1 43.8845C400.98 44.2434 400.946 44.6254 401 44.9999V98.1199C396.653 104.4 390.94 107.543 383.86 107.55C379.4 107.55 375.94 106.123 373.48 103.27C371.02 100.417 369.8 96.6599 369.82 91.9999V44.9999C369.82 43.1699 368.82 42.2499 366.9 42.2499H349.75C347.81 42.2499 346.84 43.1699 346.84 44.9999V94.6999Z" fill="#004CB8"></path>
                                    <path d="M305.33 15.9999C305.304 18.1028 305.71 20.1887 306.522 22.1288C307.333 24.0689 308.534 25.822 310.05 27.2799C311.524 28.7747 313.28 29.9617 315.216 30.7719C317.153 31.5821 319.231 31.9993 321.33 31.9993C323.429 31.9993 325.507 31.5821 327.444 30.7719C329.38 29.9617 331.136 28.7747 332.61 27.2799C334.124 25.8205 335.323 24.0672 336.135 22.1274C336.947 20.1877 337.353 18.1025 337.33 15.9999C337.353 13.8973 336.947 11.8122 336.135 9.87241C335.323 7.93266 334.124 6.17928 332.61 4.71991C331.136 3.22509 329.38 2.03809 327.444 1.2279C325.507 0.417708 323.429 0.000488281 321.33 0.000488281C319.231 0.000488281 317.153 0.417708 315.216 1.2279C313.28 2.03809 311.524 3.22509 310.05 4.71991C308.534 6.17784 307.333 7.93095 306.522 9.87103C305.71 11.8111 305.304 13.897 305.33 15.9999V15.9999Z" fill="#FEBB02"></path>
                                    <path d="M295.83 70C295.83 60.5133 293.23 53.18 288.03 48C282.83 42.82 275.427 40.22 265.82 40.2C257.153 40.2 249.153 43.3999 241.82 49.7999L239.59 45C239.359 44.1991 238.856 43.5037 238.168 43.0329C237.48 42.5622 236.65 42.3455 235.82 42.4199H221.75C219.81 42.4199 218.84 43.3399 218.84 45.1699V123.17C218.84 125 219.84 125.91 221.75 125.91H238.9C240.85 125.91 241.82 125 241.82 123.17V69.8C243.849 67.2349 246.351 65.0827 249.19 63.4599C252.055 61.6102 255.38 60.5988 258.79 60.54C268.263 60.54 273 65.6933 273 76V123.15C273 123.877 273.289 124.574 273.802 125.087C274.316 125.601 275.013 125.89 275.74 125.89H293.06C293.789 125.89 294.489 125.6 295.005 125.084C295.52 124.569 295.81 123.869 295.81 123.14L295.83 70Z" fill="#004CB8"></path>
                                    <path d="M208.6 87.4299C208.654 87.8022 208.62 88.1818 208.501 88.5387C208.382 88.8956 208.182 89.2198 207.916 89.4858C207.65 89.7517 207.326 89.952 206.969 90.0708C206.612 90.1895 206.232 90.2235 205.86 90.1699H146.86C147.923 95.0897 150.538 99.538 154.32 102.86C158.04 106.06 162.76 107.66 168.48 107.66C176.247 107.66 182.187 104.46 186.3 98.0599C186.99 97.0599 188.07 96.8599 189.56 97.5399L204.31 103.72C206.01 104.28 206.42 105.31 205.5 106.8C197.16 120.86 184.827 127.89 168.5 127.89C156.147 127.89 145.653 123.777 137.02 115.55C128.387 107.323 124.07 96.8066 124.07 83.9999C124.07 71.1999 128.357 60.6833 136.93 52.4499C140.918 48.4837 145.655 45.3501 150.866 43.2316C156.076 41.1131 161.656 40.052 167.28 40.1099C180.2 40.1099 190.317 44.0832 197.63 52.0299C204.943 59.9766 208.61 69.9466 208.63 81.9399L208.6 87.4299ZM180.15 63.5099C176.409 60.8135 171.891 59.4093 167.28 59.5099C162.764 59.3452 158.324 60.7009 154.67 63.3599C151.317 65.9086 148.785 69.3857 147.39 73.3599H186.82C185.937 69.3451 183.55 65.8206 180.15 63.5099Z" fill="#004CB8"></path>
                                    <path d="M114.67 108.44C114.671 109.243 114.491 110.037 114.145 110.762C113.799 111.487 113.295 112.125 112.67 112.63C100.004 122.585 84.3397 127.956 68.23 127.87C30.57 127.87 0 99.4599 0 64.4699C0 29.4799 30.57 0.129904 68.24 0.129904C84.3159 0.0447155 99.9448 5.41771 112.57 15.3699C112.853 15.5863 113.087 15.8588 113.259 16.1703C113.431 16.4818 113.537 16.8256 113.57 17.1799C113.611 17.5366 113.579 17.8979 113.476 18.2417C113.373 18.5856 113.201 18.9049 112.97 19.1799C109.97 22.8299 103.59 30.4399 100.46 34.1799C100.235 34.4673 99.9522 34.7046 99.6303 34.8767C99.3083 35.0489 98.954 35.1521 98.59 35.1799C98.2309 35.2111 97.8691 35.1706 97.5257 35.0607C97.1824 34.9508 96.8643 34.7738 96.59 34.5399C88.6472 27.8857 78.6017 24.2643 68.24 24.3199C44.93 24.3199 26 42.8299 26 64.4699C26 86.1099 44.9 103.7 68.21 103.7C76.8383 103.736 85.2888 101.247 92.52 96.5399V78.9999H72.52C71.7995 79.0018 71.1069 78.7218 70.59 78.2199C70.0903 77.7048 69.8076 77.0175 69.8 76.2999V59.2999C69.8055 58.5819 70.0886 57.8939 70.59 57.3799C71.111 56.883 71.8002 56.6009 72.52 56.5899H112C112.719 56.5925 113.408 56.8786 113.917 57.3859C114.426 57.8933 114.715 58.5811 114.72 59.2999L114.67 108.44Z" fill="#004CB8"></path>
                                    <path d="M320.71 42.1499H312.07C311.343 42.1499 310.646 42.4386 310.133 42.9524C309.619 43.4663 309.33 44.1632 309.33 44.8899V123.11C309.33 123.837 309.619 124.534 310.133 125.047C310.646 125.561 311.343 125.85 312.07 125.85H330.59C330.95 125.851 331.307 125.781 331.64 125.644C331.973 125.507 332.276 125.305 332.53 125.05C332.785 124.796 332.987 124.493 333.124 124.16C333.261 123.827 333.331 123.47 333.33 123.11V54.8799C333.33 46.2999 329.22 42.1499 320.71 42.1499Z" fill="#004CB8"></path>
                                 </g>
                                 <defs>
                                    <clipPath id="clip0-2497">
                                       <rect width="502.78" height="127.89" fill="white"></rect>
                                    </clipPath>
                                 </defs>
                              </svg>
                           </div>
                        </div>
                     </section>
                     <div data-et-view="cQYIMdUEDfCLAYVaNEZXRWVIFeIKe:9 " style="margin-top: 0 !important;"></div>
                     <div class="bui-alert bui-u-bleed@small bui-alert--error" role="status">
                        <span class="bui-alert__icon">
                           <svg class="bk-icon -streamline-alarm" height="24" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                              <path d="M20.25 12.75a8.25 8.25 0 1 1-16.5 0 8.25 8.25 0 0 1 16.5 0zm1.5 0C21.75 7.365 17.385 3 12 3s-9.75 4.365-9.75 9.75S6.615 22.5 12 22.5s9.75-4.365 9.75-9.75zM6.67 23.585l1.387-2.77a.75.75 0 1 0-1.342-.672L5.33 22.915a.75.75 0 1 0 1.342.671zM12 12H8.609a.75.75 0 0 0 0 1.5H12a.75.75 0 0 0 0-1.5zm-.75-4.5v5.25a.75.75 0 0 0 1.5 0V7.5a.75.75 0 0 0-1.5 0zM1.969 4.336l3.75-3A.75.75 0 1 0 4.78.164l-3.75 3a.75.75 0 1 0 .938 1.172zM18.67 22.915l-1.386-2.772a.75.75 0 1 0-1.342.67l1.386 2.772a.75.75 0 1 0 1.342-.67zm4.297-19.75l-3.75-3a.75.75 0 0 0-.936 1.17l3.75 3a.75.75 0 1 0 .936-1.17z"></path>
                           </svg>
                        </span>
                        <div class="bui-alert__description">
                           <span class="bui-alert__title">Nguồn cung giới hạn ở Viêng Chăn trong những ngày bạn chọn:</span>
                           <div class="bui-alert__text">1 khách sạn 5 sao giống vậy đã không còn chỗ trên trang của chúng tôi</div>
                        </div>
                     </div>
                     <section class="bui-card bp-card--fine-print">
                        <div class="bui-card__content">
                           <header class="bui-card__header">
                              <h2 class="bui-card__title">
                                 Ghi chú
                              </h2>
                           </header>
                           <div class="bui-card__text bui-f-font-caption">
                              <div class="bui-group bui-group--medium">
                                 <p>Xin lưu ý rằng chỗ nghỉ cung cấp dịch vụ đón tại sân bay với một khoản phụ phí. Du khách vui lòng liên hệ trực tiếp với chỗ nghỉ để biết thêm thông tin chi tiết.</p>
                              </div>
                           </div>
                        </div>
                     </section>
                  </div>
               </aside>
               <main id="content" class="bui-grid__column-8 booking-process__content">
                  <div id="validation-errors" data-component="bp/top-validation-errors" class="bui-group bp-validation-errors__container js-bp-validation-errors__container"></div>
                  <div class="bui-group bui-group--large">
                     <div class="bui-group__item">
                        <div class="bui-card bui-u-bleed@small bp-property-details__container js-property-details__container e2e-property-details bui-spacer--large">
                           <div class="bui-card__content">
                              <div class="bui-u-hidden@medium bui-spacer--large">
                                 <div class="bp-property-details__photo-container bp-property-details__photo-container--full">
                                    <img class="bp-property-details__photo js-property-details__photo e2e-property-details__photo" src="../images/<%=tour.anh %>" alt="" width="400" height="278" loading="lazy" aria-hidden="true">
                                 </div>
                              </div>
                              <div class="bui-inline-container">
                                 <div class="bui-inline-container__start bui-u-hidden@small">
                                    <div class="bp-property-details__photo-container bp-property-details__photo-container--small">
                                       <img class="bp-property-details__photo js-property-details__photo e2e-property-details__photo" src="../images/<%=tour.anh %>" alt="" width="160" height="160" aria-hidden="true">
                                    </div>
                                 </div>
                                 <div class="bui-inline-container__main">
                                    <div class="bui-group bui-group--large js-property-details__info">
                                       <div class="bui-group__item">
                                          <div class="bui-group bui-group--medium">
                                             <div class="bui-group__item">
                                                <div class="bui-spacer--smaller">
                                                   <div class="bui-group bui-group--inline bui-group--medium bui-group--vertical-align-middle bp-property-details__metadata">
                                                      <div class="bui-group__item">
                                                         <span class="bui-text--variant-emphasized_2 bui-text--color-neutral_alt">
                                                         Khách sạn
                                                         </span>
                                                      </div>
                                                      <div class="bui-group__item">
                                                         <span class="c-accommodation-classification-rating ">
                                                            <span class="c-accommodation-classification-rating__badge c-accommodation-classification-rating__badge--stars ">
                                                               <span class="bui-rating bui-rating--smaller" role="img" aria-label="5 out of 5">
                                                                  <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                                                                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                                                                        <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                                                                     </svg>
                                                                  </span>
                                                                  <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                                                                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                                                                        <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                                                                     </svg>
                                                                  </span>
                                                                  <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                                                                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                                                                        <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                                                                     </svg>
                                                                  </span>
                                                                  <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                                                                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                                                                        <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                                                                     </svg>
                                                                  </span>
                                                                  <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                                                                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                                                                        <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                                                                     </svg>
                                                                  </span>
                                                               </span>
                                                            </span>
                                                         </span>
                                                      </div>
                                                      <div class="bui-group__item">
                                                         <span data-et-view="TPOaXGZCHQGPGJIMADXRT:1"></span>
                                                         <svg class="bk-icon -iconset-preferred_thumbs_up_square" data-bui-component="Tooltip" data-et-mouseenter="
                                                            customGoal:TPOaXGZCHQGPGJIMADXRT:1
                                                            " data-tooltip-position="bottom" data-tooltip-text="
                                                            Đây là chỗ nghỉ Đối tác Ưu tiên. Nơi đây cam kết cung cấp cho khách những trải nghiệm tích cực đáng giá tiền với dịch vụ tốt. Chỗ nghỉ này có thể phải chi trả thêm một khoản nhỏ cho Booking.com để tham gia Chương trình. 
                                                            " fill="#FEBB02" height="20" tabindex="0" width="20" viewBox="0 0 20 20" role="presentation" aria-hidden="true" focusable="false">
                                                            <path d="m7.8199e-8 2.5025c0-1.3812 1.1187-2.5025 2.5025-2.5025h14.995c1.3812 0 2.5025 1.1188 2.5025 2.5025v14.995c0 1.3812-1.1188 2.5025-2.5025 2.5025h-14.995c-0.66376 2e-4 -1.3004-0.2634-1.7697-0.7328-0.46935-0.4693-0.73295-1.1059-0.73278-1.7697v-14.995z" fill="#FEBB02"></path>
                                                            <path d="m13.884 16h-6.3565v-6.7946l1.4956-4.5298c0.74781-2.6424 2.9912-1.8874 2.2434 0.37748l-0.7478 2.6424h4.8608c1.1217 0 1.8695 1.1324 1.1217 2.2649 0 0 1.1217 1.1325 0 2.2649 0 0 0.7478 1.5099-0.7478 2.2649 0 0 0 1.5099-1.8695 1.5099zm-10.884 0v-6.8009h3.6936v6.8009h-3.6936z" clip-rule="evenodd" fill="#fff" fill-rule="evenodd"></path>
                                                         </svg>
                                                      </div>
                                                   </div>
                                                </div>
                                                <h1 id="bp-property-details__title" class="bui-card__title bui-text--variant-headline_3 bp-property-details__name js-property-details__name e2e-property-details__name"><%=hotel.ten %></h1>
                                             </div>
                                             <div class="bui-group__item">
                                                <div data-component="booking-process/property-details/address">
                                                   <div class="" data-component="clipboard" data-text="Bourichane Road, Phonsinouan Village, Ban Phon Kheng, Sisattanak District, 00856 Viêng Chăn, Lào">
                                                      <address class="bp-property-details__address js-property-details__copy-address js-copy e2e-property-details__address-text" data-bui-component="Tooltip" data-tooltip-position="top" data-tooltip-follow="true" tabindex="0" data-tooltip-text="Copy địa chỉ">
                                                         <%=hotel.dia_chi %>
                                                      </address>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="bui-group__item">
                                          <div class="bui-group bui-group--inline bui-group--small">
                                             <div class="bui-group__item">
                                                <div class="bui-group__item">
                                                   <span class="bui-badge bui-badge--outline">
                                                      <svg aria-hidden="true" class="bk-icon -streamline-transport_shuttle bp-bui-badge__icon" fill="currentColor" focusable="false" height="14" width="14" viewBox="0 0 128 128" role="presentation">
                                                         <path d="M108.42 55.84H44.26a9 9 0 0 0-8.94 8.94v20.67H19.58a9 9 0 0 0-8.93 8.94v14.8a9 9 0 0 0 8.93 8.94h6.47c2.2 7.332 9.928 11.491 17.26 9.291a13.861 13.861 0 0 0 9.29-9.291h22.8c2.2 7.332 9.928 11.491 17.26 9.291a13.861 13.861 0 0 0 9.29-9.291h1.53c7.658-.006 13.864-6.212 13.87-13.87V64.78a9 9 0 0 0-8.93-8.94zm.93 8.94v20.67H92.68V63.84h15.74a.94.94 0 0 1 .93.94zM68 85.45V63.84h16.68v21.61zM44.26 63.84H60v21.61H43.32V64.78c0-.52.42-.94.94-.94zM39.32 120a5.87 5.87 0 1 1 5.87-5.87 5.88 5.88 0 0 1-5.87 5.87zm49.36 0a5.87 5.87 0 1 1 5.87-5.87 5.87 5.87 0 0 1-5.87 5.87zm14.8-9.87H102c-2.2-7.332-9.928-11.491-17.26-9.291a13.861 13.861 0 0 0-9.29 9.291H52.6c-2.2-7.332-9.928-11.491-17.26-9.291a13.861 13.861 0 0 0-9.29 9.291h-6.47a.94.94 0 0 1-.93-.94v-14.8a.94.94 0 0 1 .93-.94h89.77v10.81a5.87 5.87 0 0 1-5.87 5.87zm-92.29-82a4 4 0 0 1 5.467-1.451l.003.001 6.69 3.88 12.33-6-13.79-8a4 4 0 0 1 4-6.91l18.4 10.73 13.07-6.4a4.003 4.003 0 1 1 3.52 7.19l-36 17.6a4 4 0 0 1-3.76-.13l-8.54-5a4 4 0 0 1-1.39-5.52z"></path>
                                                      </svg>
                                                      Xe đưa đón sân bay
                                                   </span>
                                                </div>
                                             </div>
                                             <div class="bui-group__item">
                                                <div class="bui-group__item">
                                                   <span class="bui-badge bui-badge--outline" data-bui-component="Tooltip" data-tooltip-position="bottom" data-tooltip-text="Có chỗ đỗ xe công cộng miễn phí tại chỗ (không cần đặt chỗ trước).">
                                                      <svg aria-hidden="true" class="bk-icon -streamline-parking_sign bp-bui-badge__icon" fill="currentColor" focusable="false" height="14" width="14" viewBox="0 0 24 24" role="presentation">
                                                         <path d="M22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12zm-9.75-1.5a1.5 1.5 0 0 1-1.5 1.5H10.5l.75.75v-4.5L10.5 9h2.25a1.5 1.5 0 0 1 1.5 1.5zm1.5 0a3 3 0 0 0-3-3H10.5a.75.75 0 0 0-.75.75v4.5c0 .414.336.75.75.75h2.25a3 3 0 0 0 3-3zm-4.5 6.75v-4.5a.75.75 0 0 0-1.5 0v4.5a.75.75 0 0 0 1.5 0z"></path>
                                                      </svg>
                                                      Chỗ đỗ xe miễn phí
                                                   </span>
                                                </div>
                                             </div>
                                             <div class="bui-group__item">
                                                <div class="bui-group__item">
                                                   <span class="bui-badge bui-badge--outline" data-bui-component="Tooltip" data-tooltip-position="bottom" data-tooltip-text="
                                                      Phục vụ món 
                                                      Món Châu Á,
                                                      Món Châu Âu,
                                                      Quốc tế
                                                      ">
                                                      <svg aria-hidden="true" class="bk-icon -streamline-food bp-bui-badge__icon" fill="currentColor" focusable="false" height="14" width="14" viewBox="0 0 24 24" role="presentation">
                                                         <path d="M5.999.75v22.5a.75.75 0 0 0 1.5 0V.75a.75.75 0 0 0-1.5 0zm3 0V7.5a2.259 2.259 0 0 1-2.252 2.25 2.258 2.258 0 0 1-2.248-2.252V.75a.75.75 0 0 0-1.5 0V7.5a3.76 3.76 0 0 0 3.748 3.75 3.76 3.76 0 0 0 3.752-3.748V.75a.75.75 0 0 0-1.5 0zm6.75 15.75h3c1.183.046 2.203-.9 2.25-2.111a2.22 2.22 0 0 0 0-.168c-.25-6.672-.828-9.78-3.231-13.533a1.508 1.508 0 0 0-2.77.81V23.25a.75.75 0 0 0 1.5 0V1.503c0 .003.001 0 .003 0a.006.006 0 0 1 .008.002c2.21 3.45 2.75 6.354 2.99 12.773v.053a.696.696 0 0 1-.721.67L15.749 15a.75.75 0 0 0 0 1.5z"></path>
                                                      </svg>
                                                      2 nhà hàng trong khuôn viên
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div id="bookwrapper" class="
                     bp_inline_icons
                     bp-bs3
                     ">
                     <div id="bookwrapper_cell">
                        <div id="bookStage3Inc" class="bp_form_box_wrapper bp_form_box_wrapper--bs3 expBS3CC bui-group bui-group--large">
                           <div class="
                              booker-details
                              contact
                              improved_details
                              auth_user_info
                              ">
                              <div class="bp_legacy_form_box__title--block">
                                 <div class="bui-spacer--large">
                                    <h2 class="bui-text--variant-featured_3 bp-text--emphasized">
                                       Nhập thông tin của bạn
                                    </h2>
                                    <div class="bui-text--variant-body_2 bui-text--color-neutral_alt">
                                       Gần xong rồi! Chỉ cần điền phần thông tin <b class="bui-text--color-destructive">*</b> bắt buộc
                                    </div>
                                 </div>
                              </div>
                              <div class="content bp_legacy_form_box__content padfix ">
                                 <div class="bui-grid bui-grid--reversed bui-grid--size-small">
                                    <div class="bui-grid__column bui-grid__column-4@large">
                                       <div class="personal_details_reassurance">
                                          <div class="personal-details-reassurance__link-container">
                                             <svg class="bk-icon -streamline-person_half" height="12" role="presentation" width="12" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                                                <path d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"></path>
                                             </svg>
                                             <a class="bui-link bui-f-font-caption js-booker-details__change e2e-booker-details__change" href="#">
                                             Thay đổi
                                             </a>
                                          </div>
                                          <div class="book-form-field field_name_full_name">
                                             <div class="book-form-field-label">
                                                Tên
                                             </div>
                                             <div class="book-form-field-value">
                                                <%=hoTen %>
                                             </div>
                                          </div>
                                          <div id="label_email" class="
                                             book-form-field
                                             field_name_email_reassurance
                                             ">
                                             <div class="book-form-field-label">
                                                Email
                                             </div>
                                             <div class="book-form-field-value">
                                                <ins class="personal_details_reassurance_email_text">
                                                <%=email %>
                                                </ins>
                                             </div>
                                          </div>
                                          <input type="hidden" id="bstage_render_timestamp" name="bstage_render_timestamp" value="1628233677">
                                          <input type="hidden" name="upgrade_to" value="0">
                                       </div>
                                    </div>
                                    <div class="bui-grid__column bui-grid__column-8@large">
                                       <div class="booker-details-address" data-component="bp/billing-details-form/address-details">
                                          <div data-component="bp/billing-details-form/country" class="
                                             bp_form__field bp_form__field--country
                                             ">
                                             <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_address_country_msg" role="alert"></p>
                                             <label for="cc1" class="bp_form__field__label">
                                             Vùng/quốc gia
                                             <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                             </label>
                                             <select name="cc1" id="cc1" class="
                                                fixed_width
                                                bp_input_select
                                                bp_form__field__input
                                                " required="" aria-describedby="bp_form_address_country_msg" autocomplete="country">
                                                <option value="">
                                                   --
                                                   -- Vui lòng chọn vùng/quốc gia --
                                                   --
                                                </option>
                                                <option value="af" data-prefix="">
                                                   Afghanistan
                                                </option>
                                                <option value="eg" data-prefix="">
                                                   Ai Cập
                                                </option>
                                                <option value="al" data-prefix="">
                                                   Albania
                                                </option>
                                                <option value="dz" data-prefix="">
                                                   Algeria
                                                </option>
                                                <option value="ad" data-prefix="">
                                                   Andorra
                                                </option>
                                                <option value="ao" data-prefix="">
                                                   Angola
                                                </option>
                                                <option value="ai" data-prefix="">
                                                   Anguilla
                                                </option>
                                                <option value="ag" data-prefix="">
                                                   Antigua &amp; Barbuda
                                                </option>
                                                <option value="ar" data-prefix="">
                                                   Argentina
                                                </option>
                                                <option value="am" data-prefix="">
                                                   Armenia
                                                </option>
                                                <option value="aw" data-prefix="">
                                                   Aruba
                                                </option>
                                                <option value="az" data-prefix="">
                                                   Azerbaijan
                                                </option>
                                                <option value="at" data-prefix="">
                                                   Áo
                                                </option>
                                                <option value="pl" data-prefix="">
                                                   Ba Lan
                                                </option>
                                                <option value="bs" data-prefix="">
                                                   Bahamas
                                                </option>
                                                <option value="bh" data-prefix="">
                                                   Bahrain
                                                </option>
                                                <option value="bd" data-prefix="">
                                                   Bangladesh
                                                </option>
                                                <option value="bb" data-prefix="">
                                                   Barbados
                                                </option>
                                                <option value="by" data-prefix="">
                                                   Belarus
                                                </option>
                                                <option value="bz" data-prefix="">
                                                   Belize
                                                </option>
                                                <option value="bj" data-prefix="">
                                                   Benin
                                                </option>
                                                <option value="bm" data-prefix="">
                                                   Bermuda
                                                </option>
                                                <option value="be" data-prefix="">
                                                   Bỉ
                                                </option>
                                                <option value="bo" data-prefix="">
                                                   Bolivia
                                                </option>
                                                <option value="bq" data-prefix="">
                                                   Bonaire St Eustatius và Saba
                                                </option>
                                                <option value="ba" data-prefix="">
                                                   Bosnia và Herzegovina
                                                </option>
                                                <option value="bw" data-prefix="">
                                                   Botswana
                                                </option>
                                                <option value="br" data-prefix="">
                                                   Brazil
                                                </option>
                                                <option value="bn" data-prefix="">
                                                   Brunei Darussalam (Brunây)
                                                </option>
                                                <option value="bg" data-prefix="">
                                                   Bulgaria
                                                </option>
                                                <option value="bf" data-prefix="">
                                                   Burkina Faso
                                                </option>
                                                <option value="bi" data-prefix="">
                                                   Burundi
                                                </option>
                                                <option value="bt" data-prefix="">
                                                   Butan
                                                </option>
                                                <option value="pt" data-prefix="">
                                                   Bồ Đào Nha
                                                </option>
                                                <option value="ci" data-prefix="">
                                                   Bờ Biển Ngà
                                                </option>
                                                <option value="mk" data-prefix="">
                                                   Bắc Macedonia
                                                </option>
                                                <option value="kp" data-prefix="">
                                                   Bắc Triều Tiên
                                                </option>
                                                <option value="cm" data-prefix="">
                                                   Cameroon
                                                </option>
                                                <option value="kh" data-prefix="">
                                                   Campuchia
                                                </option>
                                                <option value="ca" data-prefix="">
                                                   Canada
                                                </option>
                                                <option value="cv" data-prefix="">
                                                   Cape Verde
                                                </option>
                                                <option value="td" data-prefix="">
                                                   Chad
                                                </option>
                                                <option value="cl" data-prefix="">
                                                   Chile
                                                </option>
                                                <option value="co" data-prefix="">
                                                   Colombia
                                                </option>
                                                <option value="km" data-prefix="">
                                                   Comoros
                                                </option>
                                                <option value="cg" data-prefix="">
                                                   Congo (Công gô)
                                                </option>
                                                <option value="cd" data-prefix="">
                                                   Congo (Cộng hòa Dân chủ Công gô)
                                                </option>
                                                <option value="cr" data-prefix="">
                                                   Costa Rica
                                                </option>
                                                <option value="hr" data-prefix="">
                                                   Croatia
                                                </option>
                                                <option value="cw" data-prefix="">
                                                   Curaçao
                                                </option>
                                                <option value="cy" data-prefix="">
                                                   Cyprus (Cộng hoà Síp)
                                                </option>
                                                <option value="um" data-prefix="">
                                                   Các tiểu đảo của Hoa Kỳ
                                                </option>
                                                <option value="cz" data-prefix="">
                                                   Cộng hoà Séc
                                                </option>
                                                <option value="do" data-prefix="">
                                                   Cộng hòa Dominica
                                                </option>
                                                <option value="ga" data-prefix="">
                                                   Cộng hòa Gabon
                                                </option>
                                                <option value="dj" data-prefix="">
                                                   Djibouti
                                                </option>
                                                <option value="dm" data-prefix="">
                                                   Dominica
                                                </option>
                                                <option value="ec" data-prefix="">
                                                   Ecuador
                                                </option>
                                                <option value="sv" data-prefix="">
                                                   El Salvador
                                                </option>
                                                <option value="gq" data-prefix="">
                                                   Equitorial Guinea
                                                </option>
                                                <option value="er" data-prefix="">
                                                   Eritrea
                                                </option>
                                                <option value="ee" data-prefix="">
                                                   Estonia
                                                </option>
                                                <option value="et" data-prefix="">
                                                   Ethiopia
                                                </option>
                                                <option value="fj" data-prefix="">
                                                   Fiji
                                                </option>
                                                <option value="gm" data-prefix="">
                                                   Gambia
                                                </option>
                                                <option value="ge" data-prefix="">
                                                   Georgia
                                                </option>
                                                <option value="gh" data-prefix="">
                                                   Ghana
                                                </option>
                                                <option value="gi" data-prefix="">
                                                   Gibraltar
                                                </option>
                                                <option value="gl" data-prefix="">
                                                   Greenland
                                                </option>
                                                <option value="gd" data-prefix="">
                                                   Grenada
                                                </option>
                                                <option value="gp" data-prefix="">
                                                   Guadeloupe
                                                </option>
                                                <option value="gu" data-prefix="">
                                                   Guam
                                                </option>
                                                <option value="gt" data-prefix="">
                                                   Guatemala
                                                </option>
                                                <option value="gg" data-prefix="">
                                                   Guernsey
                                                </option>
                                                <option value="gf" data-prefix="">
                                                   Guiana thuộc Pháp
                                                </option>
                                                <option value="gn" data-prefix="">
                                                   Guinea
                                                </option>
                                                <option value="gw" data-prefix="">
                                                   Guinea-Bissau
                                                </option>
                                                <option value="gy" data-prefix="">
                                                   Guyana
                                                </option>
                                                <option value="ht" data-prefix="">
                                                   Haiti
                                                </option>
                                                <option value="nl" data-prefix="">
                                                   Hà Lan
                                                </option>
                                                <option value="kr" data-prefix="">
                                                   Hàn Quốc
                                                </option>
                                                <option value="hn" data-prefix="">
                                                   Honduras
                                                </option>
                                                <option value="hu" data-prefix="">
                                                   Hungary
                                                </option>
                                                <option value="gr" data-prefix="">
                                                   Hy Lạp
                                                </option>
                                                <option value="hk" data-prefix="">
                                                   Hồng Kông
                                                </option>
                                                <option value="is" data-prefix="">
                                                   Iceland (Ai-xơ-len)
                                                </option>
                                                <option value="id" data-prefix="">
                                                   Indonesia
                                                </option>
                                                <option value="ir" data-prefix="">
                                                   Iran
                                                </option>
                                                <option value="iq" data-prefix="">
                                                   Iraq
                                                </option>
                                                <option value="ie" data-prefix="">
                                                   Ireland (Ai Len)
                                                </option>
                                                <option value="il" data-prefix="">
                                                   Israel
                                                </option>
                                                <option value="jm" data-prefix="">
                                                   Jamaica
                                                </option>
                                                <option value="je" data-prefix="">
                                                   Jersey
                                                </option>
                                                <option value="jo" data-prefix="">
                                                   Jordan
                                                </option>
                                                <option value="kz" data-prefix="">
                                                   Kazakhstan
                                                </option>
                                                <option value="ke" data-prefix="">
                                                   Kenya
                                                </option>
                                                <option value="ki" data-prefix="">
                                                   Kiribati
                                                </option>
                                                <option value="xk" data-prefix="">
                                                   Kosovo
                                                </option>
                                                <option value="xc" data-prefix="">
                                                   Krym
                                                </option>
                                                <option value="kw" data-prefix="">
                                                   Kuwait
                                                </option>
                                                <option value="kg" data-prefix="">
                                                   Kyrgyzstan
                                                </option>
                                                <option value="lv" data-prefix="">
                                                   Latvia
                                                </option>
                                                <option value="la" data-prefix="">
                                                   Lào
                                                </option>
                                                <option value="lb" data-prefix="">
                                                   Lebanon (Li-băng)
                                                </option>
                                                <option value="ls" data-prefix="">
                                                   Lesotho
                                                </option>
                                                <option value="lr" data-prefix="">
                                                   Liberia
                                                </option>
                                                <option value="ly" data-prefix="">
                                                   Libya (Li-bi)
                                                </option>
                                                <option value="li" data-prefix="">
                                                   Liechtenstein
                                                </option>
                                                <option value="lt" data-prefix="">
                                                   Lithuania
                                                </option>
                                                <option value="kn" data-prefix="">
                                                   Liên bang Saint Kitts và Nevis
                                                </option>
                                                <option value="lu" data-prefix="">
                                                   Luxembourg
                                                </option>
                                                <option value="ps" data-prefix="">
                                                   Lãnh thổ Palestine
                                                </option>
                                                <option value="tf" data-prefix="">
                                                   Lãnh thổ miền Nam nước Pháp
                                                </option>
                                                <option value="io" data-prefix="">
                                                   Lãnh thổ Ấn Độ Dương thuộc Anh
                                                </option>
                                                <option value="mo" data-prefix="">
                                                   Ma Cao
                                                </option>
                                                <option value="mg" data-prefix="">
                                                   Madagascar
                                                </option>
                                                <option value="mw" data-prefix="">
                                                   Malawi
                                                </option>
                                                <option value="my" data-prefix="">
                                                   Malaysia
                                                </option>
                                                <option value="mv" data-prefix="">
                                                   Maldives
                                                </option>
                                                <option value="ml" data-prefix="">
                                                   Mali
                                                </option>
                                                <option value="mt" data-prefix="">
                                                   Malta
                                                </option>
                                                <option value="mq" data-prefix="">
                                                   Martinique
                                                </option>
                                                <option value="mr" data-prefix="">
                                                   Mauritania
                                                </option>
                                                <option value="mu" data-prefix="">
                                                   Mauritius
                                                </option>
                                                <option value="yt" data-prefix="">
                                                   Mayotte
                                                </option>
                                                <option value="mx" data-prefix="">
                                                   Mexico
                                                </option>
                                                <option value="fm" data-prefix="">
                                                   Micronesia
                                                </option>
                                                <option value="md" data-prefix="">
                                                   Moldova
                                                </option>
                                                <option value="mc" data-prefix="">
                                                   Monaco
                                                </option>
                                                <option value="me" data-prefix="">
                                                   Montenegro
                                                </option>
                                                <option value="ms" data-prefix="">
                                                   Montserrat
                                                </option>
                                                <option value="ma" data-prefix="">
                                                   Morocco (Ma Rốc)
                                                </option>
                                                <option value="mz" data-prefix="">
                                                   Mozambique
                                                </option>
                                                <option value="mm" data-prefix="">
                                                   Myanmar
                                                </option>
                                                <option value="us" data-prefix="">
                                                   Mỹ
                                                </option>
                                                <option value="mn" data-prefix="">
                                                   Mông Cổ
                                                </option>
                                                <option value="no" data-prefix="">
                                                   Na Uy
                                                </option>
                                                <option value="aq" data-prefix="">
                                                   Nam Cực
                                                </option>
                                                <option value="za" data-prefix="">
                                                   Nam Phi
                                                </option>
                                                <option value="ss" data-prefix="">
                                                   Nam Sudan
                                                </option>
                                                <option value="na" data-prefix="">
                                                   Namibia
                                                </option>
                                                <option value="nr" data-prefix="">
                                                   Nauru
                                                </option>
                                                <option value="np" data-prefix="">
                                                   Nepal
                                                </option>
                                                <option value="nc" data-prefix="">
                                                   New Caledonia
                                                </option>
                                                <option value="nz" data-prefix="">
                                                   New Zealand
                                                </option>
                                                <option value="ru" data-prefix="">
                                                   Nga
                                                </option>
                                                <option value="jp" data-prefix="">
                                                   Nhật Bản
                                                </option>
                                                <option value="ni" data-prefix="">
                                                   Nicaragua
                                                </option>
                                                <option value="ne" data-prefix="">
                                                   Niger
                                                </option>
                                                <option value="ng" data-prefix="">
                                                   Nigeria
                                                </option>
                                                <option value="nu" data-prefix="">
                                                   Niue
                                                </option>
                                                <option value="om" data-prefix="">
                                                   Oman
                                                </option>
                                                <option value="pk" data-prefix="">
                                                   Pakistan
                                                </option>
                                                <option value="pw" data-prefix="">
                                                   Palau
                                                </option>
                                                <option value="pa" data-prefix="">
                                                   Panama
                                                </option>
                                                <option value="pg" data-prefix="">
                                                   Papua New Guinea
                                                </option>
                                                <option value="py" data-prefix="">
                                                   Paraguay
                                                </option>
                                                <option value="pe" data-prefix="">
                                                   Peru
                                                </option>
                                                <option value="fr" data-prefix="">
                                                   Pháp
                                                </option>
                                                <option value="ph" data-prefix="">
                                                   Philippines
                                                </option>
                                                <option value="fi" data-prefix="">
                                                   Phần Lan
                                                </option>
                                                <option value="pn" data-prefix="">
                                                   Pitcairn
                                                </option>
                                                <option value="pf" data-prefix="">
                                                   Polynesia thuộc Pháp
                                                </option>
                                                <option value="pr" data-prefix="">
                                                   Puerto Rico
                                                </option>
                                                <option value="qa" data-prefix="">
                                                   Qatar
                                                </option>
                                                <option value="cc" data-prefix="">
                                                   Quần đảo Cocos (Kneeling)
                                                </option>
                                                <option value="mp" data-prefix="">
                                                   Quần đảo Bắc Mariana
                                                </option>
                                                <option value="ky" data-prefix="">
                                                   Quần đảo Cayman
                                                </option>
                                                <option value="fk" data-prefix="">
                                                   Quần đảo Falkland (Malvinas)
                                                </option>
                                                <option value="fo" data-prefix="">
                                                   Quần đảo Faroe
                                                </option>
                                                <option value="hm" data-prefix="">
                                                   Quần đảo Heard và McDonald
                                                </option>
                                                <option value="mh" data-prefix="">
                                                   Quần đảo Marshal
                                                </option>
                                                <option value="gs" data-prefix="">
                                                   Quần đảo Nam Georgia và Nam Sandwi…
                                                </option>
                                                <option value="sb" data-prefix="">
                                                   Quần đảo Solomon
                                                </option>
                                                <option value="sj" data-prefix="">
                                                   Quần đảo Svalbard và Jan Mayen
                                                </option>
                                                <option value="tc" data-prefix="">
                                                   Quần đảo Turks và Caicos
                                                </option>
                                                <option value="vg" data-prefix="">
                                                   Quần đảo Virgin thuộc Anh
                                                </option>
                                                <option value="vi" data-prefix="">
                                                   Quần đảo Virgin thuộc Hoa Kỳ
                                                </option>
                                                <option value="re" data-prefix="">
                                                   Reunion
                                                </option>
                                                <option value="ro" data-prefix="">
                                                   Romania
                                                </option>
                                                <option value="rw" data-prefix="">
                                                   Rwanda (Ruan-đa)
                                                </option>
                                                <option value="bl" data-prefix="">
                                                   Saint Barthelemy
                                                </option>
                                                <option value="lc" data-prefix="">
                                                   Saint Lucia
                                                </option>
                                                <option value="mf" data-prefix="">
                                                   Saint Martin
                                                </option>
                                                <option value="ws" data-prefix="">
                                                   Samoa
                                                </option>
                                                <option value="as" data-prefix="">
                                                   Samoa (Mỹ)
                                                </option>
                                                <option value="sm" data-prefix="">
                                                   San Marino
                                                </option>
                                                <option value="sa" data-prefix="">
                                                   Saudi Arabia (Ả-rập Xê-út)
                                                </option>
                                                <option value="sn" data-prefix="">
                                                   Senegal
                                                </option>
                                                <option value="rs" data-prefix="">
                                                   Serbia
                                                </option>
                                                <option value="sc" data-prefix="">
                                                   Seychelles
                                                </option>
                                                <option value="sl" data-prefix="">
                                                   Sierra Leone
                                                </option>
                                                <option value="sg" data-prefix="">
                                                   Singapore
                                                </option>
                                                <option value="sx" data-prefix="">
                                                   Sint Maarten
                                                </option>
                                                <option value="sk" data-prefix="">
                                                   Slovakia
                                                </option>
                                                <option value="si" data-prefix="">
                                                   Slovenia
                                                </option>
                                                <option value="so" data-prefix="">
                                                   Somalia
                                                </option>
                                                <option value="lk" data-prefix="">
                                                   Sri Lanka
                                                </option>
                                                <option value="pm" data-prefix="">
                                                   St. Pierre và Miquelon
                                                </option>
                                                <option value="sd" data-prefix="">
                                                   Sudan
                                                </option>
                                                <option value="sr" data-prefix="">
                                                   Suriname
                                                </option>
                                                <option value="sz" data-prefix="">
                                                   Swaziland
                                                </option>
                                                <option value="sy" data-prefix="">
                                                   Syria
                                                </option>
                                                <option value="st" data-prefix="">
                                                   São Tomé và Príncipe
                                                </option>
                                                <option value="tj" data-prefix="">
                                                   Tajikistan
                                                </option>
                                                <option value="tz" data-prefix="">
                                                   Tanzania
                                                </option>
                                                <option value="th" data-prefix="">
                                                   Thái Lan
                                                </option>
                                                <option value="tr" data-prefix="">
                                                   Thổ Nhĩ Kỳ
                                                </option>
                                                <option value="ch" data-prefix="">
                                                   Thụy Sỹ
                                                </option>
                                                <option value="se" data-prefix="">
                                                   Thụy Điển
                                                </option>
                                                <option value="tg" data-prefix="">
                                                   Togo
                                                </option>
                                                <option value="tk" data-prefix="">
                                                   Tokelau
                                                </option>
                                                <option value="to" data-prefix="">
                                                   Tonga
                                                </option>
                                                <option value="tt" data-prefix="">
                                                   Trinidad và Tobago
                                                </option>
                                                <option value="cf" data-prefix="">
                                                   Trung Phi
                                                </option>
                                                <option value="cn" data-prefix="">
                                                   Trung Quốc
                                                </option>
                                                <option value="tn" data-prefix="">
                                                   Tunisia
                                                </option>
                                                <option value="tm" data-prefix="">
                                                   Turkmenistan
                                                </option>
                                                <option value="tv" data-prefix="">
                                                   Tuvalu
                                                </option>
                                                <option value="es" data-prefix="">
                                                   Tây Ban Nha
                                                </option>
                                                <option value="ug" data-prefix="">
                                                   Uganda
                                                </option>
                                                <option value="ua" data-prefix="">
                                                   Ukraine
                                                </option>
                                                <option value="ae" data-prefix="">
                                                   United Arab Emirates (Các Tiểu V…
                                                </option>
                                                <option value="uy" data-prefix="">
                                                   Uruguay
                                                </option>
                                                <option value="uz" data-prefix="">
                                                   Uzbekistan
                                                </option>
                                                <option value="au" data-prefix="">
                                                   Úc
                                                </option>
                                                <option value="vu" data-prefix="">
                                                   Vanuatu
                                                </option>
                                                <option value="va" data-prefix="">
                                                   Vatican (Thành Va-ti-căng)
                                                </option>
                                                <option value="ve" data-prefix="">
                                                   Venezuela
                                                </option>
                                                <option value="vn" data-prefix="" selected="selected">
                                                   Việt Nam
                                                </option>
                                                <option value="gb" data-prefix="">
                                                   Vương Quốc Anh
                                                </option>
                                                <option value="wf" data-prefix="">
                                                   Wallis và Futuna
                                                </option>
                                                <option value="ye" data-prefix="">
                                                   Yemen
                                                </option>
                                                <option value="it" data-prefix="">
                                                   Ý
                                                </option>
                                                <option value="zm" data-prefix="">
                                                   Zambia
                                                </option>
                                                <option value="zw" data-prefix="">
                                                   Zimbabwe
                                                </option>
                                                <option value="dk" data-prefix="">
                                                   Đan Mạch
                                                </option>
                                                <option value="tw" data-prefix="">
                                                   Đài Loan
                                                </option>
                                                <option value="bv" data-prefix="">
                                                   Đảo Bouvet
                                                </option>
                                                <option value="cx" data-prefix="">
                                                   Đảo Christmas
                                                </option>
                                                <option value="tl" data-prefix="">
                                                   Đông Timor
                                                </option>
                                                <option value="de" data-prefix="">
                                                   Đức
                                                </option>
                                                <option value="ck" data-prefix="">
                                                   Đảo Cook
                                                </option>
                                                <option value="im" data-prefix="">
                                                   Đảo Man
                                                </option>
                                                <option value="nf" data-prefix="">
                                                   Đảo Norfolk
                                                </option>
                                                <option value="vc" data-prefix="">
                                                   Đảo Saint Vincent và Grenadines
                                                </option>
                                                <option value="sh" data-prefix="">
                                                   Đảo St. Helena
                                                </option>
                                                <option value="in" data-prefix="">
                                                   Ấn Độ
                                                </option>
                                             </select>
                                             <span class="bp_form__field__extra_feedback">
                                             </span>
                                          </div>
                                          <div class="booker-details-no-addr-text">Không cần địa chỉ cho đặt phòng này</div>
                                          <div data-component="bp/personal-details-form/phone" class="bp_form__field bp_form__field--phone bp_form__field--error">
                                             <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_phone_msg" role="alert">Vui lòng điền số điện thoại hợp lệ</p>
                                             <label for="phone" class="bp_form__field__label">
                                             Điện thoại (ưu tiên số ĐTDĐ)
                                             <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                             </label>
                                             <div data-component="input-phone-country" class="c-input-phone-country" data-phone-country-default="vn">
                                                <select class="c-input-phone-country__country" tabindex="-1" data-phone-country="">
                                                   <option value="AF" data-calling-code="93">Afghanistan +93</option>
                                                   <option value="EG" data-calling-code="20">Ai Cập +20</option>
                                                   <option value="AL" data-calling-code="355">Albania +355</option>
                                                   <option value="DZ" data-calling-code="213">Algeria +213</option>
                                                   <option value="AD" data-calling-code="376">Andorra +376</option>
                                                   <option value="AO" data-calling-code="244">Angola +244</option>
                                                   <option value="AI" data-calling-code="1264">Anguilla +1264</option>
                                                   <option value="AG" data-calling-code="1268">Antigua &amp; Barbuda +1268</option>
                                                   <option value="AR" data-calling-code="54">Argentina +54</option>
                                                   <option value="AM" data-calling-code="374">Armenia +374</option>
                                                   <option value="AW" data-calling-code="297">Aruba +297</option>
                                                   <option value="AZ" data-calling-code="994">Azerbaijan +994</option>
                                                   <option value="AT" data-calling-code="43">Áo +43</option>
                                                   <option value="PL" data-calling-code="48">Ba Lan +48</option>
                                                   <option value="BS" data-calling-code="1242">Bahamas +1242</option>
                                                   <option value="BH" data-calling-code="973">Bahrain +973</option>
                                                   <option value="BD" data-calling-code="880">Bangladesh +880</option>
                                                   <option value="BB" data-calling-code="1246">Barbados +1246</option>
                                                   <option value="BY" data-calling-code="375">Belarus +375</option>
                                                   <option value="BZ" data-calling-code="501">Belize +501</option>
                                                   <option value="BJ" data-calling-code="229">Benin +229</option>
                                                   <option value="BM" data-calling-code="1441">Bermuda +1441</option>
                                                   <option value="BE" data-calling-code="32">Bỉ +32</option>
                                                   <option value="BO" data-calling-code="591">Bolivia +591</option>
                                                   <option value="BQ" data-calling-code="599">Bonaire St Eustatius và Saba +599</option>
                                                   <option value="BA" data-calling-code="387">Bosnia và Herzegovina +387</option>
                                                   <option value="BW" data-calling-code="267">Botswana +267</option>
                                                   <option value="BR" data-calling-code="55">Brazil +55</option>
                                                   <option value="BN" data-calling-code="673">Brunei Darussalam (Brunây) +673</option>
                                                   <option value="BG" data-calling-code="359">Bulgaria +359</option>
                                                   <option value="BF" data-calling-code="226">Burkina Faso +226</option>
                                                   <option value="BI" data-calling-code="257">Burundi +257</option>
                                                   <option value="BT" data-calling-code="975">Butan +975</option>
                                                   <option value="PT" data-calling-code="351">Bồ Đào Nha +351</option>
                                                   <option value="CI" data-calling-code="225">Bờ Biển Ngà +225</option>
                                                   <option value="MK" data-calling-code="389">Bắc Macedonia +389</option>
                                                   <option value="KP" data-calling-code="850">Bắc Triều Tiên +850</option>
                                                   <option value="CM" data-calling-code="237">Cameroon +237</option>
                                                   <option value="KH" data-calling-code="855">Campuchia +855</option>
                                                   <option value="CA" data-calling-code="1">Canada +1</option>
                                                   <option value="CV" data-calling-code="238">Cape Verde +238</option>
                                                   <option value="TD" data-calling-code="235">Chad +235</option>
                                                   <option value="CL" data-calling-code="56">Chile +56</option>
                                                   <option value="CO" data-calling-code="57">Colombia +57</option>
                                                   <option value="KM" data-calling-code="269">Comoros +269</option>
                                                   <option value="CG" data-calling-code="242">Congo (Công gô) +242</option>
                                                   <option value="CD" data-calling-code="243">Congo (Cộng hòa Dân chủ Công gô) +243</option>
                                                   <option value="CR" data-calling-code="506">Costa Rica +506</option>
                                                   <option value="HR" data-calling-code="385">Croatia +385</option>
                                                   <option value="CU" data-calling-code="53">Cuba +53</option>
                                                   <option value="CW" data-calling-code="599">Curaçao +599</option>
                                                   <option value="CY" data-calling-code="357">Cyprus (Cộng hoà Síp) +357</option>
                                                   <option value="UM" data-calling-code="1">Các tiểu đảo của Hoa Kỳ +1</option>
                                                   <option value="CZ" data-calling-code="420">Cộng hoà Séc +420</option>
                                                   <option value="DO" data-calling-code="1849">Cộng hòa Dominica +1849</option>
                                                   <option value="GA" data-calling-code="241">Cộng hòa Gabon +241</option>
                                                   <option value="DJ" data-calling-code="253">Djibouti +253</option>
                                                   <option value="DM" data-calling-code="1767">Dominica +1767</option>
                                                   <option value="EC" data-calling-code="593">Ecuador +593</option>
                                                   <option value="SV" data-calling-code="503">El Salvador +503</option>
                                                   <option value="GQ" data-calling-code="240">Equitorial Guinea +240</option>
                                                   <option value="ER" data-calling-code="291">Eritrea +291</option>
                                                   <option value="EE" data-calling-code="372">Estonia +372</option>
                                                   <option value="ET" data-calling-code="251">Ethiopia +251</option>
                                                   <option value="FJ" data-calling-code="679">Fiji +679</option>
                                                   <option value="GM" data-calling-code="220">Gambia +220</option>
                                                   <option value="GE" data-calling-code="995">Georgia +995</option>
                                                   <option value="GH" data-calling-code="233">Ghana +233</option>
                                                   <option value="GI" data-calling-code="350">Gibraltar +350</option>
                                                   <option value="GL" data-calling-code="299">Greenland +299</option>
                                                   <option value="GD" data-calling-code="1473">Grenada +1473</option>
                                                   <option value="GP" data-calling-code="590">Guadeloupe +590</option>
                                                   <option value="GU" data-calling-code="1671">Guam +1671</option>
                                                   <option value="GT" data-calling-code="502">Guatemala +502</option>
                                                   <option value="GG" data-calling-code="44">Guernsey +44</option>
                                                   <option value="GF" data-calling-code="594">Guiana thuộc Pháp +594</option>
                                                   <option value="GN" data-calling-code="224">Guinea +224</option>
                                                   <option value="GW" data-calling-code="245">Guinea-Bissau +245</option>
                                                   <option value="GY" data-calling-code="592">Guyana +592</option>
                                                   <option value="HT" data-calling-code="509">Haiti +509</option>
                                                   <option value="NL" data-calling-code="31">Hà Lan +31</option>
                                                   <option value="KR" data-calling-code="82">Hàn Quốc +82</option>
                                                   <option value="HN" data-calling-code="504">Honduras +504</option>
                                                   <option value="HU" data-calling-code="36">Hungary +36</option>
                                                   <option value="GR" data-calling-code="30">Hy Lạp +30</option>
                                                   <option value="HK" data-calling-code="852">Hồng Kông +852</option>
                                                   <option value="IS" data-calling-code="354">Iceland (Ai-xơ-len) +354</option>
                                                   <option value="ID" data-calling-code="62">Indonesia +62</option>
                                                   <option value="IR" data-calling-code="98">Iran +98</option>
                                                   <option value="IQ" data-calling-code="964">Iraq +964</option>
                                                   <option value="IE" data-calling-code="353">Ireland (Ai Len) +353</option>
                                                   <option value="IL" data-calling-code="972">Israel +972</option>
                                                   <option value="JM" data-calling-code="1876">Jamaica +1876</option>
                                                   <option value="JE" data-calling-code="44">Jersey +44</option>
                                                   <option value="JO" data-calling-code="962">Jordan +962</option>
                                                   <option value="KZ" data-calling-code="7">Kazakhstan +7</option>
                                                   <option value="KE" data-calling-code="254">Kenya +254</option>
                                                   <option value="KI" data-calling-code="686">Kiribati +686</option>
                                                   <option value="XK" data-calling-code="383">Kosovo +383</option>
                                                   <option value="KW" data-calling-code="965">Kuwait +965</option>
                                                   <option value="KG" data-calling-code="996">Kyrgyzstan +996</option>
                                                   <option value="LV" data-calling-code="371">Latvia +371</option>
                                                   <option value="LA" data-calling-code="856">Lào +856</option>
                                                   <option value="LB" data-calling-code="961">Lebanon (Li-băng) +961</option>
                                                   <option value="LS" data-calling-code="266">Lesotho +266</option>
                                                   <option value="LR" data-calling-code="231">Liberia +231</option>
                                                   <option value="LY" data-calling-code="218">Libya (Li-bi) +218</option>
                                                   <option value="LI" data-calling-code="423">Liechtenstein +423</option>
                                                   <option value="LT" data-calling-code="370">Lithuania +370</option>
                                                   <option value="KN" data-calling-code="1869">Liên bang Saint Kitts và Nevis +1869</option>
                                                   <option value="LU" data-calling-code="352">Luxembourg +352</option>
                                                   <option value="PS" data-calling-code="970">Lãnh thổ Palestine +970</option>
                                                   <option value="TF" data-calling-code="596">Lãnh thổ miền Nam nước Pháp +596</option>
                                                   <option value="IO" data-calling-code="246">Lãnh thổ Ấn Độ Dương thuộc Anh +246</option>
                                                   <option value="MO" data-calling-code="853">Ma Cao +853</option>
                                                   <option value="MG" data-calling-code="261">Madagascar +261</option>
                                                   <option value="MW" data-calling-code="265">Malawi +265</option>
                                                   <option value="MY" data-calling-code="60">Malaysia +60</option>
                                                   <option value="MV" data-calling-code="960">Maldives +960</option>
                                                   <option value="ML" data-calling-code="223">Mali +223</option>
                                                   <option value="MT" data-calling-code="356">Malta +356</option>
                                                   <option value="MQ" data-calling-code="596">Martinique +596</option>
                                                   <option value="MR" data-calling-code="222">Mauritania +222</option>
                                                   <option value="MU" data-calling-code="230">Mauritius +230</option>
                                                   <option value="YT" data-calling-code="269">Mayotte +269</option>
                                                   <option value="MX" data-calling-code="52">Mexico +52</option>
                                                   <option value="FM" data-calling-code="691">Micronesia +691</option>
                                                   <option value="MD" data-calling-code="373">Moldova +373</option>
                                                   <option value="MC" data-calling-code="377">Monaco +377</option>
                                                   <option value="ME" data-calling-code="382">Montenegro +382</option>
                                                   <option value="MS" data-calling-code="1664">Montserrat +1664</option>
                                                   <option value="MA" data-calling-code="212">Morocco (Ma Rốc) +212</option>
                                                   <option value="MZ" data-calling-code="258">Mozambique +258</option>
                                                   <option value="MM" data-calling-code="95">Myanmar +95</option>
                                                   <option value="US" data-calling-code="1">Mỹ +1</option>
                                                   <option value="MN" data-calling-code="976">Mông Cổ +976</option>
                                                   <option value="NO" data-calling-code="47">Na Uy +47</option>
                                                   <option value="AQ" data-calling-code="672">Nam Cực +672</option>
                                                   <option value="ZA" data-calling-code="27">Nam Phi +27</option>
                                                   <option value="SS" data-calling-code="211">Nam Sudan +211</option>
                                                   <option value="NA" data-calling-code="264">Namibia +264</option>
                                                   <option value="NR" data-calling-code="674">Nauru +674</option>
                                                   <option value="NP" data-calling-code="977">Nepal +977</option>
                                                   <option value="NC" data-calling-code="687">New Caledonia +687</option>
                                                   <option value="NZ" data-calling-code="64">New Zealand +64</option>
                                                   <option value="RU" data-calling-code="7">Nga +7</option>
                                                   <option value="JP" data-calling-code="81">Nhật Bản +81</option>
                                                   <option value="NI" data-calling-code="505">Nicaragua +505</option>
                                                   <option value="NE" data-calling-code="227">Niger +227</option>
                                                   <option value="NG" data-calling-code="234">Nigeria +234</option>
                                                   <option value="NU" data-calling-code="683">Niue +683</option>
                                                   <option value="OM" data-calling-code="968">Oman +968</option>
                                                   <option value="PK" data-calling-code="92">Pakistan +92</option>
                                                   <option value="PW" data-calling-code="680">Palau +680</option>
                                                   <option value="PA" data-calling-code="507">Panama +507</option>
                                                   <option value="PG" data-calling-code="675">Papua New Guinea +675</option>
                                                   <option value="PY" data-calling-code="595">Paraguay +595</option>
                                                   <option value="PE" data-calling-code="51">Peru +51</option>
                                                   <option value="FR" data-calling-code="33">Pháp +33</option>
                                                   <option value="PH" data-calling-code="63">Philippines +63</option>
                                                   <option value="FI" data-calling-code="358">Phần Lan +358</option>
                                                   <option value="PN" data-calling-code="872">Pitcairn +872</option>
                                                   <option value="PF" data-calling-code="689">Polynesia thuộc Pháp +689</option>
                                                   <option value="PR" data-calling-code="1939">Puerto Rico +1939</option>
                                                   <option value="QA" data-calling-code="974">Qatar +974</option>
                                                   <option value="CC" data-calling-code="61">Quần đảo Cocos (Kneeling) +61</option>
                                                   <option value="MP" data-calling-code="1670">Quần đảo Bắc Mariana +1670</option>
                                                   <option value="KY" data-calling-code="1345">Quần đảo Cayman +1345</option>
                                                   <option value="FK" data-calling-code="500">Quần đảo Falkland (Malvinas) +500</option>
                                                   <option value="FO" data-calling-code="298">Quần đảo Faroe +298</option>
                                                   <option value="HM" data-calling-code="692">Quần đảo Heard và McDonald +692</option>
                                                   <option value="MH" data-calling-code="692">Quần đảo Marshal +692</option>
                                                   <option value="GS" data-calling-code="500">Quần đảo Nam Georgia và Nam Sandwi… +500</option>
                                                   <option value="SB" data-calling-code="677">Quần đảo Solomon +677</option>
                                                   <option value="SJ" data-calling-code="378">Quần đảo Svalbard và Jan Mayen +378</option>
                                                   <option value="TC" data-calling-code="1649">Quần đảo Turks và Caicos +1649</option>
                                                   <option value="VG" data-calling-code="1284">Quần đảo Virgin thuộc Anh +1284</option>
                                                   <option value="VI" data-calling-code="1340">Quần đảo Virgin thuộc Hoa Kỳ +1340</option>
                                                   <option value="RE" data-calling-code="262">Reunion +262</option>
                                                   <option value="RO" data-calling-code="40">Romania +40</option>
                                                   <option value="RW" data-calling-code="250">Rwanda (Ruan-đa) +250</option>
                                                   <option value="BL" data-calling-code="590">Saint Barthelemy +590</option>
                                                   <option value="LC" data-calling-code="1758">Saint Lucia +1758</option>
                                                   <option value="MF" data-calling-code="590">Saint Martin +590</option>
                                                   <option value="WS" data-calling-code="685">Samoa +685</option>
                                                   <option value="AS" data-calling-code="1684">Samoa (Mỹ) +1684</option>
                                                   <option value="SM" data-calling-code="378">San Marino +378</option>
                                                   <option value="SA" data-calling-code="966">Saudi Arabia (Ả-rập Xê-út) +966</option>
                                                   <option value="SN" data-calling-code="221">Senegal +221</option>
                                                   <option value="RS" data-calling-code="381">Serbia +381</option>
                                                   <option value="SC" data-calling-code="248">Seychelles +248</option>
                                                   <option value="SL" data-calling-code="232">Sierra Leone +232</option>
                                                   <option value="SG" data-calling-code="65">Singapore +65</option>
                                                   <option value="SX" data-calling-code="1721">Sint Maarten +1721</option>
                                                   <option value="SK" data-calling-code="421">Slovakia +421</option>
                                                   <option value="SI" data-calling-code="386">Slovenia +386</option>
                                                   <option value="SO" data-calling-code="252">Somalia +252</option>
                                                   <option value="LK" data-calling-code="94">Sri Lanka +94</option>
                                                   <option value="PM" data-calling-code="508">St. Pierre và Miquelon +508</option>
                                                   <option value="SD" data-calling-code="249">Sudan +249</option>
                                                   <option value="SR" data-calling-code="597">Suriname +597</option>
                                                   <option value="SZ" data-calling-code="268">Swaziland +268</option>
                                                   <option value="SY" data-calling-code="963">Syria +963</option>
                                                   <option value="ST" data-calling-code="239">São Tomé và Príncipe +239</option>
                                                   <option value="TJ" data-calling-code="992">Tajikistan +992</option>
                                                   <option value="TZ" data-calling-code="255">Tanzania +255</option>
                                                   <option value="TH" data-calling-code="66">Thái Lan +66</option>
                                                   <option value="TR" data-calling-code="90">Thổ Nhĩ Kỳ +90</option>
                                                   <option value="CH" data-calling-code="41">Thụy Sỹ +41</option>
                                                   <option value="SE" data-calling-code="46">Thụy Điển +46</option>
                                                   <option value="TG" data-calling-code="228">Togo +228</option>
                                                   <option value="TK" data-calling-code="690">Tokelau +690</option>
                                                   <option value="TO" data-calling-code="676">Tonga +676</option>
                                                   <option value="TT" data-calling-code="1868">Trinidad và Tobago +1868</option>
                                                   <option value="CF" data-calling-code="236">Trung Phi +236</option>
                                                   <option value="CN" data-calling-code="86">Trung Quốc +86</option>
                                                   <option value="TN" data-calling-code="216">Tunisia +216</option>
                                                   <option value="TM" data-calling-code="993">Turkmenistan +993</option>
                                                   <option value="TV" data-calling-code="688">Tuvalu +688</option>
                                                   <option value="ES" data-calling-code="34">Tây Ban Nha +34</option>
                                                   <option value="UG" data-calling-code="256">Uganda +256</option>
                                                   <option value="UA" data-calling-code="380">Ukraine +380</option>
                                                   <option value="AE" data-calling-code="971">United Arab Emirates (Các Tiểu V… +971</option>
                                                   <option value="UY" data-calling-code="598">Uruguay +598</option>
                                                   <option value="UZ" data-calling-code="998">Uzbekistan +998</option>
                                                   <option value="AU" data-calling-code="61">Úc +61</option>
                                                   <option value="VU" data-calling-code="678">Vanuatu +678</option>
                                                   <option value="VA" data-calling-code="379">Vatican (Thành Va-ti-căng) +379</option>
                                                   <option value="VE" data-calling-code="58">Venezuela +58</option>
                                                   <option value="VN" data-calling-code="84">Việt Nam +84</option>
                                                   <option value="GB" data-calling-code="44">Vương Quốc Anh +44</option>
                                                   <option value="WF" data-calling-code="681">Wallis và Futuna +681</option>
                                                   <option value="YE" data-calling-code="967">Yemen +967</option>
                                                   <option value="IT" data-calling-code="39">Ý +39</option>
                                                   <option value="ZM" data-calling-code="260">Zambia +260</option>
                                                   <option value="ZW" data-calling-code="263">Zimbabwe +263</option>
                                                   <option value="DK" data-calling-code="45">Đan Mạch +45</option>
                                                   <option value="TW" data-calling-code="886">Đài Loan +886</option>
                                                   <option value="BV" data-calling-code="47">Đảo Bouvet +47</option>
                                                   <option value="CX" data-calling-code="61">Đảo Christmas +61</option>
                                                   <option value="TL" data-calling-code="670">Đông Timor +670</option>
                                                   <option value="DE" data-calling-code="49">Đức +49</option>
                                                   <option value="CK" data-calling-code="682">Đảo Cook +682</option>
                                                   <option value="IM" data-calling-code="44">Đảo Man +44</option>
                                                   <option value="NF" data-calling-code="672">Đảo Norfolk +672</option>
                                                   <option value="VC" data-calling-code="1784">Đảo Saint Vincent và Grenadines +1784</option>
                                                   <option value="SH" data-calling-code="290">Đảo St. Helena +290</option>
                                                   <option value="IN" data-calling-code="91">Ấn Độ +91</option>
                                                </select>
                                                <span class="c-input-phone-country__flag"><span class="c-input-phone-country__flag__img" data-phone-flag="" style="background-position: 0px -6000px;"></span></span>
                                                <asp:TextBox runat="server" ID="phone" class="
                                                   bp_form__field__input
                                                   bp_input_text
                                                   bp_phone_input_with_help_message
                                                   c-input-phone-country__input
                                                   " type="text" name="phone" required="" value="" size="20" data-phone-input="" data-component="input-limited" data-input-allowed-type="number space" aria-describedby="bp_form_phone_msg" placeholder="+84" />
                                             </div>
                                             <div class="booker-details-help-text" id="booker-phone-help-text">
                                                <span class="highlight_phone_help_message_wrapper">
                                                Cần thiết để chỗ nghỉ xác nhận đặt phòng của bạn
                                                </span>
                                             </div>
                                          </div>
                                          <fieldset class="bui-form__group bp-control-group     " aria-role="group">
                                             <div class="bui-group  ">
                                                <div class="bui-group__item">
                                                   <div class="bui-form__group bp-form-group bp-form-group__send_link_app   ">
                                                      <label class="bui-checkbox  ">
                                                      <input name="send_link_app" id="send_link_app" type="checkbox" class="bui-checkbox__input" value="1" checked="">  
                                                      <span class="bui-checkbox__label">   Có, tôi muốn xác nhận điện tử miễn phí	(được đề xuất)    </span>
                                                      </label>
                                                      <div class="bui-u-margin-top--4 bui-f-color-grayscale bui-f-font-caption bp-control-checkbox__subtitle">
                                                         Chúng tôi sẽ nhắn tin cho bạn đường dẫn để tải ứng dụng
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </fieldset>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="booker-details contact improved_details auth_user_info">
                              <div class="bp_legacy_form_box__title--block">
                                 <h2 class="bp_legacy_form_box__title bui-spacer--medium">
                                    Lưu thông tin của bạn
                                 </h2>
                              </div>
                              <div class="content bp_legacy_form_box__content padfix">
                                 <div class="bui-group bui-group--large">
                                    <div class="bui-group__item">
                                       <p>Dùng thông tin liên lạc của bạn để tạo tài khoản và đặt phòng nhanh hơn sau này.<br>(Chúng tôi sẽ không lưu trữ thông tin thanh toán của bạn.)</p>
                                    </div>
                                    <div class="bui-group__item">
                                       <div class="bui-group__item">
                                          <div class="bui-form__group bp-form-group bp-form-group__create_account   ">
                                             <label class="bui-checkbox  ">
                                             <input name="create_account" id="create_account" type="checkbox" class="bui-checkbox__input" value="1">  
                                             <span class="bui-checkbox__label">  Lưu thông tin của tôi để lần sau đặt nhanh hơn   </span>
                                             </label>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="bui-group__item">
                                       <p class="bui_font_body">
                                          Qua việc đăng nhập hoặc tạo tài khoản, bạn đồng ý với các 
                                          <a href="/content/terms.vi.html?aid=318615;label=New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi2658306050%3Atidsa-303472601955%3Alp9040331%3Ali%3Adec%3Adm;sid=96a61b88ba49cdbab74a0c2be36e1f22;ap_ref=0;bp_from=standard;bp_travel_purpose=leisure;bp_travel_purpose=leisure;bpid=929F2353-81D9-4228-AC52-EA7E38E6630E;cc1=vn;checkin=2021-08-11;checkout=2021-08-14;dc_issue_number=0;dotd_fb=0;email=beroot%40gmail.com;email_confirm=beroot%40gmail.com;final_booking_price=264;final_booking_price=264;firstname=1312;full_cost=0;full_cost_plain=0;guest_name_185207801_204732343_2_1_0=123%201312;hostname=www.booking.com;hotel_id=1852078;installment_count=1;interval=3;lastname=123;nr_guests_185207801_204732343_2_1_0=2;nr_rooms_185207801_204732343_2_1_0=1;promo=0;raf_cm_later=0;recommended_room_id=0;recp=0;remb=0a26525b1a5693b2a21b3a0b4a35b5a166b6a927b;rets=1a882b27c2a783b23c3a23b4100c4a62b1555c;reub=0;room1=A%2CA;rt_num_blocks=5;rt_num_blocks_per_room=%7B%22185207805%22%3A1%2C%22185207801%22%3A1%2C%22185207802%22%3A1%2C%22185207803%22%3A1%2C%22185207804%22%3A1%7D;rt_num_rooms=5;rt_pageview_id=a33218b567450003;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=84e7c4ff-3908-482b-8a10-895843120b84;seen_ft_rvw=0;smoking_preference_185207801_204732343_2_1_0=no;stage=2;total_cost=264;trips_promo=%5B%5D;ufi=-2669740;upgrade_to=0;warn_intro_error_message=okok&amp;" class="bui-link" target="_blank">
                                          Điều khoản và Điều kiện</a> cũng như 
                                          <a href="/content/privacy.vi.html?aid=318615;label=New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi2658306050%3Atidsa-303472601955%3Alp9040331%3Ali%3Adec%3Adm;sid=96a61b88ba49cdbab74a0c2be36e1f22;ap_ref=0;bp_from=standard;bp_travel_purpose=leisure;bp_travel_purpose=leisure;bpid=929F2353-81D9-4228-AC52-EA7E38E6630E;cc1=vn;checkin=2021-08-11;checkout=2021-08-14;dc_issue_number=0;dotd_fb=0;email=beroot%40gmail.com;email_confirm=beroot%40gmail.com;final_booking_price=264;final_booking_price=264;firstname=1312;full_cost=0;full_cost_plain=0;guest_name_185207801_204732343_2_1_0=123%201312;hostname=www.booking.com;hotel_id=1852078;installment_count=1;interval=3;lastname=123;nr_guests_185207801_204732343_2_1_0=2;nr_rooms_185207801_204732343_2_1_0=1;promo=0;raf_cm_later=0;recommended_room_id=0;recp=0;remb=0a26525b1a5693b2a21b3a0b4a35b5a166b6a927b;rets=1a882b27c2a783b23c3a23b4100c4a62b1555c;reub=0;room1=A%2CA;rt_num_blocks=5;rt_num_blocks_per_room=%7B%22185207805%22%3A1%2C%22185207801%22%3A1%2C%22185207802%22%3A1%2C%22185207803%22%3A1%2C%22185207804%22%3A1%7D;rt_num_rooms=5;rt_pageview_id=a33218b567450003;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=84e7c4ff-3908-482b-8a10-895843120b84;seen_ft_rvw=0;smoking_preference_185207801_204732343_2_1_0=no;stage=2;total_cost=264;trips_promo=%5B%5D;ufi=-2669740;upgrade_to=0;warn_intro_error_message=okok&amp;" class="bui-link" target="_blank">
                                          Chính sách An toàn và Bảo mật</a> của chúng tôi	
                                       </p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div id="bs3_cc_form" class="
                              payment-details
                              contact
                              improved_details
                              auth_user_info
                              payment-details__m-regular
                              " data-component="
                              bp/payment-details-form
                              ">
                              <div class=""></div>
                              <div class="payments_block_container_title">
                                 <div class="title clearfix bp_legacy_form_box__title--block bp_bs3_payment_methods_title bp_legacy_form_box__title-container--flex">
                                    <h2 class="bp_legacy_form_box__title
                                       bp_legacy_form_box__title-float bui-spacer--medium">
                                       Bạn muốn thanh toán thế nào?
                                    </h2>
                                    <span id="no-card-faq__description" class="bui-u-sr-only">- mở hộp thoại mới</span>
                                    <button class="
                                       bui-button
                                       bui-button--tertiary
                                       bp-button
                                       " type="button" data-component="no-cc-modal-trigger" aria-describedby="no-card-faq__description">
                                       <span class="bui-button__icon js-button__icon">
                                          <svg class="bk-icon -streamline-question_mark_circle" height="24" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                             <path d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                                          </svg>
                                       </span>
                                       <span class="bui-button__text js-button__text"> Không có thẻ? </span> 
                                       <span class="bui-button__loader">
                                          <div class="bui-spinner bui-spinner--size-small">
                                             <div class="bui-spinner__inner"></div>
                                          </div>
                                       </span>
                                    </button>
                                 </div>
                              </div>
                              <div class="payment-method__contents clearfix">
                                 <div class="payment-method__contents-policy-holder
                                    " data-pay-visible-for="later">
                                    <div class="svg-icon svg-baseline">
                                       <svg class="bk-icon -streamline-info_sign" height="20" width="20" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                          <path d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                                       </svg>
                                    </div>
                                    Thẻ của bạn chưa bị trừ tiền, chúng tôi chỉ cần thông tin thẻ để giữ đặt phòng cho bạn.
                                 </div>
                                 <div class="cc pp_info bp_bs3_saved_cc_new_card_separate_form">
                                    <input type="hidden" name="payment_method" value="creditcard">
                                    <div class="pay-form--wrapper clearfix">
                                       <fieldset id="book_credit_card" class=" exp_layout pay-form--fieldset   ">
                                          <div class="pay-form--field bp_form__field bp_form__field--cc_name  bp_form__field--no-msg bp_form__field--valid" data-component="bp/payment-details-form/cc-name">
                                             <p class="bp_form__field__msg" data-bp-form-field-msg="" role="alert"></p>
                                             <label for="cc_name" class="bp_form__field__label">
                                             Tên chủ thẻ
                                             <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                             </label>
                                             <input type="text" name="cc_name" id="cc_name" class="cb_confidential bp_form__field__input bp_input_text" value="<%=hoTen %>"" size="22" maxlength="30" autocomplete="off" data-tab-toggle-disable-off="">
                                          </div>
                                          <div data-component="bp/payment-details-form/cc-type" class="bp_form__field bp_form__field--cc_type bp_form__field--error">
                                             <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_cc_type_msg" role="alert">Hãy chọn loại thẻ của bạn</p>
                                             <label for="cc_type" class="bp_form__field__label">
                                             Loại thẻ
                                             <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                             </label>
                                              <asp:DropDownList ID="drlLoai" runat="server" CssClass="
                                                bp_input_select
                                                bp_form__field__input">
                                                    <asp:ListItem Value="" Text="-- Chọn --"></asp:ListItem>
                                                    <asp:ListItem Value="1" Text="MasterCard"></asp:ListItem>
                                                    <asp:ListItem Value="2" Text="Visa"></asp:ListItem>
                                                    <asp:ListItem Value="3" Text="JCB"></asp:ListItem>
                                                </asp:DropDownList>
                                            
                                             <span class="bp_form__field__extra_feedback"></span>
                                          </div>
                                          <div class="pay-form--field bp_form__field bp_form__field--cc_number bp_form__field--error" data-component="bp/payment-details-form/cc-number">
                                             <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_cc_number_msg" role="alert">Vui lòng điền số thẻ hợp lệ</p>
                                             <label for="cc_number" class="bp_form__field__label">
                                             Số thẻ
                                             <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                             </label>
                                             <asp:TextBox runat="server" type="text" name="cc_number" ID="cc_number" class="
                                                bp_input_text
                                                bp_form__field__input
                                                cb_confidential
                                                " value="" size="22" maxlength="20" autocomplete="off" data-tab-toggle-disable-off="" required="" aria-describedby="bp_form_cc_number_msg" />
                                          </div>
                                          <div data-component="bp/payment-details-form/cc-expiry" class="
                                             bp_form__field bp_form__field--cc_expiry
                                             " id="cc-expiry-combo">
                                             <fieldset class="cc_date_fieldset">
                                                <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_cc_expiry_msg" role="alert"></p>
                                                <legend class="bp_form__field__label">
                                                   Ngày hết hạn
                                                   <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                                </legend>
                                                <select name="cc_month" id="cc_month" class="bp_form__field__input bp_input_select" data-tab-toggle-disable-off="" required="" described-by="bp_form_cc_expiry_msg" aria-label="Ngày hết hạn thẻ, hãy nhập tháng">
                                                   <option value="01">
                                                      01
                                                      -
                                                      Th 1
                                                   </option>
                                                   <option value="02">
                                                      02
                                                      -
                                                      Th 2
                                                   </option>
                                                   <option value="03">
                                                      03
                                                      -
                                                      Th 3
                                                   </option>
                                                   <option value="04">
                                                      04
                                                      -
                                                      Th 4
                                                   </option>
                                                   <option value="05">
                                                      05
                                                      -
                                                      Th 5
                                                   </option>
                                                   <option value="06">
                                                      06
                                                      -
                                                      Th 6
                                                   </option>
                                                   <option value="07">
                                                      07
                                                      -
                                                      Th 7
                                                   </option>
                                                   <option value="08">
                                                      08
                                                      -
                                                      Th 8
                                                   </option>
                                                   <option value="09">
                                                      09
                                                      -
                                                      Th 9
                                                   </option>
                                                   <option value="10">
                                                      10
                                                      -
                                                      Th 10
                                                   </option>
                                                   <option value="11">
                                                      11
                                                      -
                                                      Th 11
                                                   </option>
                                                   <option value="12">
                                                      12
                                                      -
                                                      Th 12
                                                   </option>
                                                </select>
                                                <ins class="cc_expiration_date_separator"> / </ins>
                                                <select id="ccYear" name="cc_year" class="bp_form__field__input  bp_input_select" data-tab-toggle-disable-off="" required="" aria-label="Ngày hết hạn thẻ, hãy nhập năm">
                                                   <option value="2021">
                                                      2021
                                                   </option>
                                                   <option value="2022">
                                                      2022
                                                   </option>
                                                   <option value="2023">
                                                      2023
                                                   </option>
                                                   <option value="2024">
                                                      2024
                                                   </option>
                                                   <option value="2025">
                                                      2025
                                                   </option>
                                                   <option value="2026">
                                                      2026
                                                   </option>
                                                   <option value="2027">
                                                      2027
                                                   </option>
                                                   <option value="2028">
                                                      2028
                                                   </option>
                                                   <option value="2029">
                                                      2029
                                                   </option>
                                                   <option value="2030">
                                                      2030
                                                   </option>
                                                   <option value="2031">
                                                      2031
                                                   </option>
                                                   <option value="2032">
                                                      2032
                                                   </option>
                                                   <option value="2033">
                                                      2033
                                                   </option>
                                                   <option value="2034">
                                                      2034
                                                   </option>
                                                   <option value="2035">
                                                      2035
                                                   </option>
                                                   <option value="2036">
                                                      2036
                                                   </option>
                                                   <option value="2037">
                                                      2037
                                                   </option>
                                                   <option value="2038">
                                                      2038
                                                   </option>
                                                   <option value="2039">
                                                      2039
                                                   </option>
                                                   <option value="2040">
                                                      2040
                                                   </option>
                                                   <option value="2041">
                                                      2041
                                                   </option>
                                                   <option value="2042">
                                                      2042
                                                   </option>
                                                   <option value="2043">
                                                      2043
                                                   </option>
                                                   <option value="2044">
                                                      2044
                                                   </option>
                                                   <option value="2045">
                                                      2045
                                                   </option>
                                                   <option value="2046">
                                                      2046
                                                   </option>
                                                   <option value="2047">
                                                      2047
                                                   </option>
                                                   <option value="2048">
                                                      2048
                                                   </option>
                                                   <option value="2049">
                                                      2049
                                                   </option>
                                                   <option value="2050">
                                                      2050
                                                   </option>
                                                   <option value="2051">
                                                      2051
                                                   </option>
                                                </select>
                                                <span class="bp_form__field__extra_feedback"></span>
                                             </fieldset>
                                          </div>
                                          <div class="pay-form--field bp_form__field bp_form__field--cc_cvc bp_form__field--error" data-component="bp/payment-details-form/cc-cvc">
                                             <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_email_confirm_msg" role="alert">Vui lòng điền mã CVC trên thẻ của bạn (3 hoặc 4 số, tuỳ vào loại thẻ)</p>
                                             <label for="cc_cvc" class="bp_form__field__label">
                                             Mã số CVC
                                             <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                             </label>
                                             <asp:TextBox runat="server" type="text" name="cc_cvc" ID="cc_cvc" class="cb_confidential bp_form__field__input bp_input_text bp_form__field--cc_cvc" value="" size="4" maxlength="4" autocomplete="off" data-tab-toggle-disable-off="" required="" aria-describedby="bp_form_email_confirm_msg" />
                                          </div>
                                          <input type="hidden" value="264.00" name="full_cost">
                                          <input type="hidden" value="264" name="full_cost_plain">
                                       </fieldset>
                                       <div id="cc_img" class="static bp_form__cc_hint--hidden" data-component="bp/payment-details-form/cc-cvc-hint">
                                          <div id="visa" class="book_cc bp_form__cc_hint_type--hidden" data-cc-hint-type="visa">
                                             <h4>Mã số CVC</h4>
                                             <img src="https://cf.bstatic.com/static/img/visa-lg/95881ecc9cd69eee5ebc4c32c87b3b07e33d6831.png" alt="Visa">
                                             <p>
                                                Bạn có thể tìm thấy mã CVC ở mặt sau của thẻ tín dụng. Nó là 3 chữ số cuối được in trên dải đặc biệt.
                                             </p>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="bui-card bp-card--transparent bp-card--extra-info">
                           <div class="bui-card__content">
                              <div class="bui-group bui-group--large">
                                 <div class="bui-card__text">
                                    <div class="bui-form__group bp-form-group bp-form-group__mailinglist   ">
                                       <label class="bui-checkbox  ">
                                       <input name="mailinglist" id="mailinglist" type="checkbox" class="bui-checkbox__input" value="1" checked="">  
                                       <span class="bui-checkbox__label">   Nhận thông tin về các ưu đãi dành riêng cho thành viên, như hàng triệu người đang đăng ký nhận bản tin email khác    </span>
                                       </label>
                                    </div>
                                 </div>
                                 <div>
                                    <p class="payment-details-t-and-c payment-method__extras-item js-payment-details-t-and-c">
                                       Đặt phòng của bạn là đặt phòng trực tiếp với Muong Thanh Luxury Vientiane và bằng việc hoàn tất đặt phòng này, bạn đồng ý với 
                                       <a href="/bookcancel.vi.html?aid=318615;label=New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi2658306050%3Atidsa-303472601955%3Alp9040331%3Ali%3Adec%3Adm;sid=96a61b88ba49cdbab74a0c2be36e1f22;checkin=2021-08-11;checkout=2021-08-14;general=204732343;hotel_id=1852078;is_family_search=0;is_group_search=0;persons=2;policygroup_room=2021-08-14%2C185207801%3A204732343%3A1%3AUGgmb2dyYXZlO25nIERlbHV4ZSAyIEdpJiN4MUIwOyYjeDFFREQ7bmcgJiN4MTEwOyYjeDFBMTtu%0AIE5oJmlncmF2ZTtuIFJhIFMmb2NpcmM7bmc%3D%0A%3A185207801_204732343_2_1_0;refund_text_global=%20B%E1%BA%A1n%20s%E1%BA%BD%20kh%C3%B4ng%20%C4%91%C6%B0%E1%BB%A3c%20ho%C3%A0n%20ti%E1%BB%81n%20n%E1%BA%BFu%20h%E1%BB%A7y%20%C4%91%E1%BA%B7t%20ph%C3%B2ng%20n%C3%A0y.&amp;;popupit=1" target="_blank" class="popupit bui-link">
                                       điều kiện đặt phòng</a>, 
                                       <a href="/content/terms.vi.html?aid=318615;label=New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi2658306050%3Atidsa-303472601955%3Alp9040331%3Ali%3Adec%3Adm;sid=96a61b88ba49cdbab74a0c2be36e1f22;ap_ref=0;bp_from=standard;bp_travel_purpose=leisure;bp_travel_purpose=leisure;bpid=929F2353-81D9-4228-AC52-EA7E38E6630E;cc1=vn;checkin=2021-08-11;checkout=2021-08-14;dc_issue_number=0;dotd_fb=0;email=beroot%40gmail.com;email_confirm=beroot%40gmail.com;final_booking_price=264;final_booking_price=264;firstname=1312;full_cost=0;full_cost_plain=0;guest_name_185207801_204732343_2_1_0=123%201312;hostname=www.booking.com;hotel_id=1852078;installment_count=1;interval=3;lastname=123;nr_guests_185207801_204732343_2_1_0=2;nr_rooms_185207801_204732343_2_1_0=1;promo=0;raf_cm_later=0;recommended_room_id=0;recp=0;remb=0a26525b1a5693b2a21b3a0b4a35b5a166b6a927b;rets=1a882b27c2a783b23c3a23b4100c4a62b1555c;reub=0;room1=A%2CA;rt_num_blocks=5;rt_num_blocks_per_room=%7B%22185207805%22%3A1%2C%22185207801%22%3A1%2C%22185207802%22%3A1%2C%22185207803%22%3A1%2C%22185207804%22%3A1%7D;rt_num_rooms=5;rt_pageview_id=a33218b567450003;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=84e7c4ff-3908-482b-8a10-895843120b84;seen_ft_rvw=0;smoking_preference_185207801_204732343_2_1_0=no;stage=2;total_cost=264;trips_promo=%5B%5D;ufi=-2669740;upgrade_to=0;warn_intro_error_message=okok&amp;" target="_blank" class="popupit bui-link">
                                       các điều khoản chung</a> và 
                                       <a target="_blank" rel="nofollow" href="/content/privacy.vi.html?aid=318615;label=New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi2658306050%3Atidsa-303472601955%3Alp9040331%3Ali%3Adec%3Adm;sid=96a61b88ba49cdbab74a0c2be36e1f22;ap_ref=0;bp_from=standard;bp_travel_purpose=leisure;bp_travel_purpose=leisure;bpid=929F2353-81D9-4228-AC52-EA7E38E6630E;cc1=vn;checkin=2021-08-11;checkout=2021-08-14;dc_issue_number=0;dotd_fb=0;email=beroot%40gmail.com;email_confirm=beroot%40gmail.com;final_booking_price=264;final_booking_price=264;firstname=1312;full_cost=0;full_cost_plain=0;guest_name_185207801_204732343_2_1_0=123%201312;hostname=www.booking.com;hotel_id=1852078;installment_count=1;interval=3;lastname=123;nr_guests_185207801_204732343_2_1_0=2;nr_rooms_185207801_204732343_2_1_0=1;promo=0;raf_cm_later=0;recommended_room_id=0;recp=0;remb=0a26525b1a5693b2a21b3a0b4a35b5a166b6a927b;rets=1a882b27c2a783b23c3a23b4100c4a62b1555c;reub=0;room1=A%2CA;rt_num_blocks=5;rt_num_blocks_per_room=%7B%22185207805%22%3A1%2C%22185207801%22%3A1%2C%22185207802%22%3A1%2C%22185207803%22%3A1%2C%22185207804%22%3A1%7D;rt_num_rooms=5;rt_pageview_id=a33218b567450003;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=84e7c4ff-3908-482b-8a10-895843120b84;seen_ft_rvw=0;smoking_preference_185207801_204732343_2_1_0=no;stage=2;total_cost=264;trips_promo=%5B%5D;ufi=-2669740;upgrade_to=0;warn_intro_error_message=okok&amp;" class="popupit bui-link">
                                       chính sách an toàn và bảo mật</a>.
                                    </p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="bui-group bui-spacer--large">
                           <div class="
                              bui-group bui-button-group bui-group--vertical-align-middle bui-group--inline bui-group--align-end 
                              ">
                              <span id="booking-overview__description" class="bui-u-sr-only">- mở hộp thoại mới</span>
                              <div class="bui-group__item">
                                 <button class="
                                    bui-button
                                    bui-button--secondary
                                    bui-button--large
                                    js-booking-overview__trigger e2e-booking-overview__trigger
                                    bp-button
                                    " type="button" name="review" data-component="booking-overview-trigger" aria-describedby="booking-overview__description"><span class="bui-button__text js-button__text"><a href="book-room.aspx">Kiểm tra lại đặt phòng </a> </span> </button>
                              </div>
                              <div class="bui-group__item">
                                 <button class="
                                    bui-button
                                    bui-button--primary
                                    bui-button--large
                                    js-bp-submit-button--complete-booking e2e-bp-submit-button--complete-booking js-book_and_cancel-continue_btn bp-overview-buttons-submit 
                                    bp-button
                                    " type="submit" name="book">
                                    <span class="bui-button__icon js-button__icon">
                                       <svg class="bk-icon -streamline-lock_closed" height="24" role="presentation" width="24" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                                          <path d="M19.5 16.5v5.25a.75.75 0 0 1-.75.75H5.25a.75.75 0 0 1-.75-.75v-10.5a.75.75 0 0 1 .75-.75h13.5a.75.75 0 0 1 .75.75v5.25zm1.5 0v-5.25A2.25 2.25 0 0 0 18.75 9H5.25A2.25 2.25 0 0 0 3 11.25v10.5A2.25 2.25 0 0 0 5.25 24h13.5A2.25 2.25 0 0 0 21 21.75V16.5zM7.5 9.75V6a4.5 4.5 0 0 1 9 0v3.75a.75.75 0 0 0 1.5 0V6A6 6 0 0 0 6 6v3.75a.75.75 0 0 0 1.5 0zM12 15a1.125 1.125 0 1 0 .004 0h-.006a.75.75 0 0 0 .004 1.5H12a.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5z"></path>
                                       </svg>
                                    </span>
                                    <span class="bui-button__text js-button__text"> 
                                        <asp:LinkButton runat="server" ID="btnBookPay" OnClick="btnBookPayClick" style="color: white;"> Hoàn tất đặt phòng</asp:LinkButton>
                                    </span> 
                                    <span class="bui-button__loader">
                                       <div class="bui-spinner bui-spinner--light ">
                                          <div class="bui-spinner__inner"></div>
                                       </div>
                                    </span>
                                 </button>
                              </div>
                           </div>
                        </div>
                        <div class="bp_booking_conditions__link--wrapper">
                           <a class="bui-link e2e-booking-conditions__link " href="/bookcancel.vi.html?aid=318615;label=New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi2658306050%3Atidsa-303472601955%3Alp9040331%3Ali%3Adec%3Adm;sid=96a61b88ba49cdbab74a0c2be36e1f22;checkin=2021-08-11;checkout=2021-08-14;general=204732343;hotel_id=1852078;is_family_search=0;is_group_search=0;persons=2;policygroup_room=2021-08-14%2C185207801%3A204732343%3A1%3AUGgmb2dyYXZlO25nIERlbHV4ZSAyIEdpJiN4MUIwOyYjeDFFREQ7bmcgJiN4MTEwOyYjeDFBMTtu%0AIE5oJmlncmF2ZTtuIFJhIFMmb2NpcmM7bmc%3D%0A%3A185207801_204732343_2_1_0;refund_text_global=%20B%E1%BA%A1n%20s%E1%BA%BD%20kh%C3%B4ng%20%C4%91%C6%B0%E1%BB%A3c%20ho%C3%A0n%20ti%E1%BB%81n%20n%E1%BA%BFu%20h%E1%BB%A7y%20%C4%91%E1%BA%B7t%20ph%C3%B2ng%20n%C3%A0y.&amp;;popupit=1;" target="_blank" id="bookconditions" data-et-click="customGoal:cCPeYGIHICNRGFBBHVPHVPYKDcdC:3" onclick="popup_cancel_bigish(this.href); return false;" data-bui-component="Tooltip" data-tooltip-position="top" data-tooltip-text="Nhấp vào đường dẫn để xem các điều kiện đặt phòng chi tiết như: hủy đặt phòng, thanh toán trước, thuế và phụ phí.">
                           Các điều kiện đặt phòng là gì?
                           </a>
                        </div>
                     </div>
                  </div>
                  <div class="empty_phone_number_remedy_wrapper" style="display: none;">
                     <svg class="bk-icon -streamline-phone empty_phone_number_remedy_icon" fill="#6B6B6B" height="32" width="32" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                        <path d="M14.662 23.038l.012.007c2.46 1.566 5.71 1.21 7.792-.873l.774-.774a2.596 2.596 0 0 0 0-3.669l-3.26-3.26a2.596 2.596 0 0 0-3.67 0 1.093 1.093 0 0 1-1.546.002l-.001-.001-5.219-5.22a1.096 1.096 0 0 1 0-1.548 2.593 2.593 0 0 0 .002-3.666c0-.002 0-.002-.002-.003L6.284.77a2.596 2.596 0 0 0-3.669 0l-.774.774A6.285 6.285 0 0 0 .982 9.36L1 9.386A50.691 50.691 0 0 0 14.62 23.011zm.798-1.27A49.186 49.186 0 0 1 2.244 8.55l-.005-.008a4.78 4.78 0 0 1 .662-5.938l.774-.774a1.096 1.096 0 0 1 1.549 0l3.26 3.264v.002c.428.427.427 1.119 0 1.545a2.596 2.596 0 0 0 0 3.67l5.218 5.22.002.001a2.593 2.593 0 0 0 3.667-.002 1.096 1.096 0 0 1 1.548 0l3.26 3.26c.428.427.428 1.12 0 1.548l-.773.774a4.783 4.783 0 0 1-5.951.652l-.037-.022z"></path>
                     </svg>
                     <h2 class="empty_phone_number_remedy_title">
                        Nhập số điện thoại của bạn để hoàn tất đặt phòng này
                     </h2>
                     <p class="empty_phone_number_remedy_subtitle">
                        Chỗ nghỉ cần thông tin này để liên lạc với bạn trong các trường hợp cần thiết
                     </p>
                     <div data-component="bp/personal-details-form/phone" class="bp_form__field bp_form__field--phone bp_form__field--error">
                        <p class="bp_form__field__msg" data-bp-form-field-msg="" role="alert">Vui lòng điền số điện thoại hợp lệ</p>
                        <input class="bp_input_text empty_phone_number_remedy_input bp_form__field__input" type="text" value="">
                     </div>
                     <div class="empty_phone_number_remedy_actions_wrapper">
                        <button class="
                           bui-button
                           bui-button--primary
                           js-bp-submit-button--complete-phone-remedy 
                           bp-button
                           " type="button">
                           <span class="bui-button__icon js-button__icon">
                              <svg class="bk-icon -streamline-lock_closed" height="16" role="presentation" width="16" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                                 <path d="M19.5 16.5v5.25a.75.75 0 0 1-.75.75H5.25a.75.75 0 0 1-.75-.75v-10.5a.75.75 0 0 1 .75-.75h13.5a.75.75 0 0 1 .75.75v5.25zm1.5 0v-5.25A2.25 2.25 0 0 0 18.75 9H5.25A2.25 2.25 0 0 0 3 11.25v10.5A2.25 2.25 0 0 0 5.25 24h13.5A2.25 2.25 0 0 0 21 21.75V16.5zM7.5 9.75V6a4.5 4.5 0 0 1 9 0v3.75a.75.75 0 0 0 1.5 0V6A6 6 0 0 0 6 6v3.75a.75.75 0 0 0 1.5 0zM12 15a1.125 1.125 0 1 0 .004 0h-.006a.75.75 0 0 0 .004 1.5H12a.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5z"></path>
                              </svg>
                           </span>
                           <span class="bui-button__text js-button__text"> Hoàn tất đặt phòng </span> 
                        </button>
                     </div>
                  </div>
               </main>
            </div>
         </form>
      </div>
      <template id="bp_overview">
         <header class="bui-modal__header">
            <h1 class="bui-modal__title bui-spacer--small" id="modal-default-title" data-bui-ref="modal-title">
               Muong Thanh Luxury Vientiane
            </h1>
            <div class="nowrap bui-spacer--medium">
               <span class="c-accommodation-classification-rating ">
                  <span class="c-accommodation-classification-rating__badge c-accommodation-classification-rating__badge--stars ">
                     <span class="bui-rating bui-rating--smaller" role="img" aria-label="5 out of 5">
                        <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                              <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                           </svg>
                        </span>
                        <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                              <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                           </svg>
                        </span>
                        <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                              <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                           </svg>
                        </span>
                        <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                              <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                           </svg>
                        </span>
                        <span aria-hidden="true" class="bui-icon bui-rating__item bui-icon--medium" role="presentation">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" aria-hidden="true" role="img">
                              <path d="M23.555,8.729a1.505,1.505,0,0,0-1.406-.98H16.062a.5.5,0,0,1-.472-.334L13.405,1.222a1.5,1.5,0,0,0-2.81,0l-.005.016L8.41,7.415a.5.5,0,0,1-.471.334H1.85A1.5,1.5,0,0,0,.887,10.4l5.184,4.3a.5.5,0,0,1,.155.543L4.048,21.774a1.5,1.5,0,0,0,2.31,1.684l5.346-3.92a.5.5,0,0,1,.591,0l5.344,3.919a1.5,1.5,0,0,0,2.312-1.683l-2.178-6.535a.5.5,0,0,1,.155-.543l5.194-4.306A1.5,1.5,0,0,0,23.555,8.729Z"></path>
                           </svg>
                        </span>
                     </span>
                  </span>
               </span>
               <span data-et-view="TPOaXGZCHQGPGJIMADXRT:1"></span>
               <svg class="bk-icon -iconset-preferred_thumbs_up_square" data-bui-component="Tooltip" data-et-mouseenter="
                  customGoal:TPOaXGZCHQGPGJIMADXRT:1
                  " data-tooltip-position="bottom" data-tooltip-text="
                  Đây là chỗ nghỉ Đối tác Ưu tiên. Nơi đây cam kết cung cấp cho khách những trải nghiệm tích cực đáng giá tiền với dịch vụ tốt. Chỗ nghỉ này có thể phải chi trả thêm một khoản nhỏ cho Booking.com để tham gia Chương trình. 
                  " fill="#FEBB02" height="20" tabindex="0" width="20" viewBox="0 0 20 20" role="presentation" aria-hidden="true" focusable="false">
                  <path d="m7.8199e-8 2.5025c0-1.3812 1.1187-2.5025 2.5025-2.5025h14.995c1.3812 0 2.5025 1.1188 2.5025 2.5025v14.995c0 1.3812-1.1188 2.5025-2.5025 2.5025h-14.995c-0.66376 2e-4 -1.3004-0.2634-1.7697-0.7328-0.46935-0.4693-0.73295-1.1059-0.73278-1.7697v-14.995z" fill="#FEBB02"></path>
                  <path d="m13.884 16h-6.3565v-6.7946l1.4956-4.5298c0.74781-2.6424 2.9912-1.8874 2.2434 0.37748l-0.7478 2.6424h4.8608c1.1217 0 1.8695 1.1324 1.1217 2.2649 0 0 1.1217 1.1325 0 2.2649 0 0 0.7478 1.5099-0.7478 2.2649 0 0 0 1.5099-1.8695 1.5099zm-10.884 0v-6.8009h3.6936v6.8009h-3.6936z" clip-rule="evenodd" fill="#fff" fill-rule="evenodd"></path>
               </svg>
            </div>
            <div class="bui-inline-container">
               <div class="bui-inline-container__start">
                  <svg class="bk-icon -streamline-geo_pin" height="20" width="20" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                     <path d="M15 8.25a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zM12 1.5a6.75 6.75 0 0 1 6.75 6.75c0 2.537-3.537 9.406-6.75 14.25-3.214-4.844-6.75-11.713-6.75-14.25A6.75 6.75 0 0 1 12 1.5zM12 0a8.25 8.25 0 0 0-8.25 8.25c0 2.965 3.594 9.945 7 15.08a1.5 1.5 0 0 0 2.5 0c3.406-5.135 7-12.115 7-15.08A8.25 8.25 0 0 0 12 0z"></path>
                  </svg>
               </div>
               <div class="bui-inline-container__main">
                  <span class="hotel-address-text-wrap">
                  <span class="hotel-address-text-address">
                  Bourichane Road, Phonsinouan Village, Ban Phon Kheng, Sisattanak District, 00856 Viêng Chăn, Lào
                  </span>
                  </span>
               </div>
            </div>
         </header>
         <hr class="bui-divider">
         <div class="bui-modal__body bui-group">
            <div class="bui-group__item">
               <p class="bui-f-font-emphasized">Tổng thời gian lưu trú:</p>
               <p class="bui-f-font-strong">
                  3 đêm
               </p>
            </div>
            <div class="bui-group__item">
               <div class="bui-date-range bui-date-range--large bp-date-range">
                  <div class="bui-date-range__item">
                     <p id="bp-checkin-date__label" class="bui-date__label">Nhận phòng</p>
                     <time class="bui-date bui-date--large" aria-describedby="bp-checkin-date__label">
                        <p class="bui-date__title">T4 Ngày 11 Tháng 8 Năm 2021</p>
                        <p class="bui-date__subtitle">
                           Từ 14:00
                        </p>
                     </time>
                  </div>
                  <div class="bui-date-range__item">
                     <p id="bp-checkout-date__label" class="bui-date__label">Trả phòng</p>
                     <time class="bui-date bui-date--large" aria-describedby="bp-checkout-date__label">
                        <p class="bui-date__title">T7 Ngày 14 Tháng 8 Năm 2021</p>
                        <p class="bui-date__subtitle">
                           Cho đến 12:00
                        </p>
                     </time>
                  </div>
               </div>
            </div>
            <hr class="bui-divider bui-divider--light">
            <div class="bui-group__item">
               <div class="bui-group">
                  <div class="bui-group__item">
                     <p class="bui-f-font-strong">
                        1 × Phòng Deluxe 2 Giường Đơn Nhìn Ra Sông
                        <span class="e2e-cancellation">
                        <strong>Phí hủy: Toàn bộ tiền phòng</strong>
                        </span>
                     </p>
                  </div>
               </div>
            </div>
            <hr class="bui-divider bui-divider--light">
            <div class="bui-group__item">
               <div class="bui-group">
                  <div class="bui-group__item bui-inline-container">
                     <div class="bui-inline-container__main">
                        <p class="bui-f-font-heading">Giá</p>
                     </div>
                     <p class="bui-inline-container__end bui-f-font-heading">
                        <span data-component="core/animate-price" class="" data-value="6056524" data-currency="VND" data-precision="" data-animate-price-group-name="bp_user_total_price" data-animation-speed="0.7">
                        VND&nbsp;6.056.524
                        </span>
                     </p>
                  </div>
                  <p class="bui-group__item bui-f-font-caption"></p>
                  <p class="currencyDetails currency_diff_list">
                     <span class="currency_diff_list_asterix">*</span>
                     Giá này được chuyển đổi để hiển thị cho bạn chi phí ước tính bằng VND. Bạn sẽ trả bằng <b>US$</b> hoặc <b>LAK</b>. Tỷ giá hối đoái có thể thay đổi trước khi bạn thanh toán.
                  </p>
                  <p class="currencyDetails currency_diff_list">
                     Xin lưu ý, đơn vị phát hành thẻ của bạn có thể tính phí giao dịch bằng ngoại tệ.
                  </p>
                  <p></p>
               </div>
            </div>
         </div>
         <hr class="bui-divider">
         <footer class="bui-modal__footer">
            <button class="
               bui-button
               bui-button--primary
               bui-button--large
               bp-button--submit js-bp-submit-button--complete-booking
               bp-button
               " type="submit" name="book">
               <span class="bui-button__icon js-button__icon">
                  <svg class="bk-icon -streamline-lock_closed" height="24" role="presentation" width="24" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                     <path d="M19.5 16.5v5.25a.75.75 0 0 1-.75.75H5.25a.75.75 0 0 1-.75-.75v-10.5a.75.75 0 0 1 .75-.75h13.5a.75.75 0 0 1 .75.75v5.25zm1.5 0v-5.25A2.25 2.25 0 0 0 18.75 9H5.25A2.25 2.25 0 0 0 3 11.25v10.5A2.25 2.25 0 0 0 5.25 24h13.5A2.25 2.25 0 0 0 21 21.75V16.5zM7.5 9.75V6a4.5 4.5 0 0 1 9 0v3.75a.75.75 0 0 0 1.5 0V6A6 6 0 0 0 6 6v3.75a.75.75 0 0 0 1.5 0zM12 15a1.125 1.125 0 1 0 .004 0h-.006a.75.75 0 0 0 .004 1.5H12a.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5z"></path>
                  </svg>
               </span>
               <span class="bui-button__text js-button__text"> Hoàn tất đặt phòng của tôi </span> 
               <span class="bui-button__loader">
                  <div class="bui-spinner bui-spinner--light ">
                     <div class="bui-spinner__inner"></div>
                  </div>
               </span>
            </button>
         </footer>
      </template>
      <svg class="bk-icon -streamline-arrow_nav_left" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
         <path d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z"></path>
      </svg>
      <svg class="bk-icon -streamline-arrow_nav_right" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
         <path d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z"></path>
      </svg>
      <div class="bp_interstitial">
         <div class="bp_interstitial__inner_wrapper">
            <div class="bp_interstitial__preloader">
               <i class="bp_interstitial__icon"></i>
            </div>
            <h1 class="bp_interstitial__title">Đang gửi</h1>
            <p class="bp_interstitial__subtitle">đặt phòng của bạn tới chỗ nghỉ...</p>
            <div class="bp_interstitial__logo_wrapper">
               <svg class="bk-icon -logos-booking-logo-inv" height="24" role="presentation" width="144" viewBox="0 0 252 42" aria-hidden="true" focusable="false">
                  <path d="M15.592 22.92C15.591 20.283 13.924 18.652 11.348 18.652H7.738C6.58 18.815 6.055 19.518 6.055 20.877V26.783L11.348 26.79C13.966 26.79 15.591 25.629 15.592 22.92ZM6.055 13.391H10.819C13.496 13.391 14.449 11.689 14.449 9.911C14.449 7.576 13.057 6.181 10.735 6.181H8.025C6.671 6.268 6.055 6.966 6.055 8.428V13.391ZM21.815 23.351C21.815 28.956 17.536 32.87 10.912 32.87H0V4.87C0.02 3.085 1.872 1.285 3.64 1.218H10.777C16.737 1.218 20.587 4.222 20.587 9.202C20.587 12.462 18.959 14.346 17.988 15.183L17.152 15.9L18.109 16.441C20.432 17.751 21.815 20.333 21.815 23.351V23.351ZM148.135 20.675C148.135 15.58 145.385 14.986 143.325 14.986C139.165 14.986 138.845 19.175 138.845 20.459C138.845 23.376 140.105 26.49 143.665 26.49C145.705 26.49 148.135 25.48 148.135 20.675V20.675ZM154.045 9.738L154.025 30.732C154.025 38.739 148.045 41.584 142.505 41.584C139.815 41.584 136.845 40.858 134.555 39.639L134.105 39.4L134.835 37.53L135.345 36.243C135.905 34.855 136.715 34.509 138.095 34.928C139.155 35.312 140.735 35.739 142.475 35.739C146.045 35.739 148.015 34.05 148.015 30.994V30.356L147.505 30.732C146.215 31.72 144.575 32.205 142.505 32.205C136.445 32.205 132.215 27.445 132.215 20.63C132.215 13.811 136.305 9.228 142.385 9.228C145.445 9.228 147.325 10.309 148.375 11.221L148.675 11.482L148.855 11.132C149.325 10.23 150.275 9.738 151.515 9.738H154.045V9.738ZM67.707 21.184C67.707 17.473 65.411 14.877 62.137 14.877C58.877 14.877 56.608 17.473 56.608 21.184C56.608 24.898 58.878 27.496 62.138 27.496C65.464 27.496 67.708 24.958 67.708 21.184H67.707ZM74.088 21.184C74.088 28.054 69.052 33.04 62.138 33.04C55.234 33.04 50.228 28.054 50.228 21.184C50.228 14.318 55.234 9.331 62.138 9.331C69.052 9.331 74.088 14.318 74.088 21.184ZM105.445 32.677V13.281C105.445 10.941 104.335 9.806 102.025 9.806L99.465 9.796L99.485 27.5H99.465L99.485 32.87H105.445V32.677ZM122.505 9.278C119.175 9.278 117.055 10.765 115.865 12.018L115.465 12.423L115.325 11.873C114.975 10.529 113.795 9.788 112.025 9.788H109.165L109.185 32.683H115.225V22.131C115.225 21.099 115.365 20.205 115.635 19.387C116.355 16.914 117.995 15.378 120.525 15.378C122.555 15.378 123.725 16.453 123.725 19.232V29.203C123.725 31.573 125.195 32.683 127.555 32.683H129.785V18.261C129.785 12.475 127.825 9.278 122.505 9.278V9.278ZM91.436 21.777C91.1964 21.3119 90.8928 20.8827 90.534 20.502L90.326 20.281L90.546 20.069C90.862 19.734 91.186 19.338 91.497 18.878L97.584 9.795H90.195L85.622 16.899C85.363 17.28 84.84 17.472 84.058 17.472H82.48V4.045C82.48 1.36 80.642 0 78.84 0H76.414L76.42 32.691H82.48V23.183H83.63C84.375 23.183 84.883 23.269 85.118 23.675L88.729 30.518C89.736 32.375 90.743 32.691 92.635 32.691H97.651L93.915 26.488L91.436 21.777ZM41.648 21.184C41.648 17.473 39.358 14.877 36.079 14.877C32.819 14.877 30.553 17.473 30.553 21.184C30.553 24.898 32.819 27.496 36.079 27.496C39.405 27.496 41.649 24.958 41.649 21.184H41.648ZM48.028 21.184C48.028 28.054 43.002 33.04 36.079 33.04C29.182 33.04 24.177 28.054 24.177 21.184C24.177 14.318 29.182 9.331 36.079 9.331C43.002 9.331 48.027 14.318 48.027 21.184H48.028ZM98.764 3.81C98.764 1.704 100.464 0 102.544 0C104.634 0 106.334 1.704 106.334 3.81C106.334 5.911 104.634 7.617 102.544 7.617C100.464 7.617 98.764 5.911 98.764 3.81Z" fill="white"></path>
                  <path d="M187.08 25.067C187.06 25.088 184.38 27.915 180.87 27.915C177.66 27.915 174.42 25.941 174.42 21.538C174.42 17.73 176.93 15.071 180.53 15.071C181.7 15.071 183.02 15.492 183.23 16.198L183.26 16.318C183.74 17.919 185.19 18.001 185.47 18.001L188.88 18.005V15.021C188.88 11.085 183.89 9.65698 180.53 9.65698C173.35 9.65698 168.14 14.674 168.14 21.584C168.14 28.489 173.29 33.502 180.4 33.502C186.56 33.502 189.91 29.434 189.94 29.391L190.12 29.172L187.43 24.685L187.08 25.067ZM244.43 9.65698C241.73 9.65698 239.25 10.927 237.58 13.05L237.11 13.651L236.74 12.979C235.53 10.776 233.46 9.65698 230.57 9.65698C227.55 9.65698 225.53 11.35 224.58 12.358L223.97 13.024L223.73 12.144C223.39 10.877 222.26 10.178 220.56 10.178H218.06L218.04 32.984H224.01V22.917C224.01 22.036 224.12 21.163 224.34 20.248C224.93 17.816 226.56 15.202 229.3 15.462C230.99 15.626 231.81 16.936 231.81 19.466V32.984H237.44V22.917C237.44 21.813 237.55 20.99 237.79 20.162C238.3 17.842 240.37 15.459 243.02 15.459C244.93 15.459 245.93 16.545 245.93 19.466V29.649C245.93 31.954 247.28 32.984 249.57 32.984H251.99L252 18.424C252 12.607 249.45 9.65698 244.43 9.65698V9.65698ZM203.66 10.043C196.76 10.043 191.35 15.031 191.35 21.898C191.35 28.765 196.76 33.754 203.66 33.754C210.58 33.754 215.61 28.765 215.61 21.898C215.61 15.031 210.58 10.043 203.66 10.043V10.043ZM158.31 29.446C158.31 27.34 160 25.636 162.09 25.636C164.18 25.636 165.88 27.34 165.88 29.446C165.88 31.548 164.18 33.254 162.09 33.254C160 33.254 158.31 31.548 158.31 29.446ZM203.66 28.209C200.4 28.209 198.13 25.611 198.13 21.898C198.13 18.186 200.4 15.59 203.66 15.59C206.93 15.59 209.23 18.186 209.23 21.898C209.23 25.671 206.99 28.209 203.66 28.209Z" fill="#0896FF"></path>
               </svg>
            </div>
         </div>
      </div>
      <div class="bp_change_dates_lightbox" data-checkin="2021-08-11" data-checkout="2021-08-14">
         <h2 class="bp_change_dates_lightbox_title" id="bp_change_dates_lightbox_title">
            Đổi ngày
         </h2>
         <form action="book.html" method="post" class="bp_change_dates_form">
            <fieldset class="bp_change_dates_fields">
               <input type="hidden" name="bhc_csrf_token" value="DRgNYQAAAAA=vqj834bwCuAiNlOm-1zT_LvIhBjPgP3ZN9KmJ7WJgdMCC7c0365mZcuorDnyvEwu7cJOFkqZWmjvW42aGqSGbVwneJOGCkNbxC_8I71SuXgqxQQ4m4QYEIPZwz05JCUozcjHMhDK9eAwc6BOB-jsYLSBSjWNtxqv_bErfQsA5MXsvXeJNurvRV836CAjktS0BN5R539-EgdNluZr">
               <input type="hidden" name="aid" value="318615">
               <input type="hidden" name="label" value="New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025:pl:ta:p1:p2:ac:ap:neg:fi2658306050:tidsa-303472601955:lp9040331:li:dec:dm">
               <input type="hidden" name="lang" value="vi">
               <input type="hidden" name="sid" value="96a61b88ba49cdbab74a0c2be36e1f22">
               <input type="hidden" name="remb" value="0a26525b1a5693b2a21b3a0b4a35b5a166b6a927b" class="ClickTaleSensitive">
               <input type="hidden" name="reub" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="rets" value="1a882b27c2a783b23c3a23b4100c4a62b1555c" class="ClickTaleSensitive">
               <input type="hidden" name="recp" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="cc_refp" value="" class="ClickTaleSensitive">
               <input type="hidden" name="total_cost" value="264" class="ClickTaleSensitive">
               <input type="hidden" name="notstayer" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="is_24hr" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="rt_num_rooms" value="5" class="ClickTaleSensitive">
               <input type="hidden" name="rt_num_blocks_per_room" value="{&quot;185207805&quot;:1,&quot;185207801&quot;:1,&quot;185207802&quot;:1,&quot;185207803&quot;:1,&quot;185207804&quot;:1}" class="ClickTaleSensitive">
               <input type="hidden" name="bb_send_to_triplink" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="rt_pos_selected_within_room" value="1" class="ClickTaleSensitive">
               <input type="hidden" name="room1" value="A,A" class="ClickTaleSensitive">
               <input type="hidden" name="uber_travel_pass" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="emk_opt_in" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="loyalty_number" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="recommended_room_id" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="pset_discount_won" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="dotd_fb" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="promo" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="from_ski_sr" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="pay_now" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="bp_nocc_compset" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="bp_travel_purpose" value="leisure" class="ClickTaleSensitive">
               <input type="hidden" name="hotel_id" value="1852078" class="ClickTaleSensitive">
               <input type="hidden" name="ufi" value="-2669740" class="ClickTaleSensitive">
               <input type="hidden" name="from_beach_key_ufi_sr" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="hostname" value="www.booking.com" class="ClickTaleSensitive">
               <input type="hidden" name="rt_pageview_id" value="a33218b567450003" class="ClickTaleSensitive">
               <input type="hidden" name="ap_ref" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="allow_past" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="rt_pos_selected" value="1" class="ClickTaleSensitive">
               <input type="hidden" name="rt_relevance_metric_id" value="84e7c4ff-3908-482b-8a10-895843120b84" class="ClickTaleSensitive">
               <input type="hidden" name="rt_num_blocks" value="5" class="ClickTaleSensitive">
               <input type="hidden" name="is_piyoc_supported" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="lastname" value="123" class="ClickTaleSensitive">
               <input type="hidden" name="reason_to_visit_checkbox" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="free_parking_please" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="prd_all_included" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="bp_from" value="standard" class="ClickTaleSensitive">
               <input type="hidden" name="from_beach_non_key_ufi_sr" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="firstname" value="1312" class="ClickTaleSensitive">
               <input type="hidden" name="seen_ft_rvw" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="from_reco_block" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="bpid" value="929F2353-81D9-4228-AC52-EA7E38E6630E" class="ClickTaleSensitive">
               <input type="hidden" name="email_confirm" value="<%=email %>" class="ClickTaleSensitive">
               <input type="hidden" name="send_whatsapp_confirmation_mdot" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="lphwd" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="is_group_recommendation" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="email" value="<%=email %>" class="ClickTaleSensitive">
               <input type="hidden" name="attr_signup" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="reason_to_visit" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="rt_pos_final" value="1.1" class="ClickTaleSensitive">
               <input type="hidden" name="emk_bp_redirect" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="house_rules_agreement" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="nr_rooms_185207801_204732343_2_1_0" value="1" class="ClickTaleSensitive">
               <input type="hidden" name="smoking_preference_185207801_204732343_2_1_0" value="no" class="ClickTaleSensitive">
               <input type="hidden" name="nr_guests_185207801_204732343_2_1_0" value="2" class="ClickTaleSensitive">
               <input type="hidden" name="guest_name_185207801_204732343_2_1_0" value="<%=hoTen %>"" class="ClickTaleSensitive">
               <input type="hidden" name="is_smart_deal" value="0" class="ClickTaleSensitive">
               <input type="hidden" name="final_booking_price" value="264" class="ClickTaleSensitive">
               <input type="hidden" name="checkin_eta_hour" value="-1">
               <input type="hidden" name="bp_change_dates" value="1">
               <input type="hidden" name="bp_change_dates_bs3" value="1">
               <div class="bp_change_dates_checkin" data-checkin-selector="">
                  <strong class="bp_change_dates_date_label">Nhận phòng:</strong>
                  <button class="bp_change_dates_checkin_calendar bp_change_dates_open_calendar" data-dateselector-calendar="" type="button" aria-hidden="true">
                  <img src="https://cf.bstatic.com/static/img/transparent/85e02501df1560d359a473f544224481a83c9aa7.png" width="21" height="18" alt="calendar" title="Mở lịch và chọn ngày " class="icon_calendar use_sprites">
                  </button>
                  <label for="bp_change_dates_checkin_monthday_select" class="invisible_spoken">
                  Ngày nhận phòng
                  </label>
                  <select class="bp_change_dates_checkin_monthday_select" id="bp_change_dates_checkin_monthday_select" data-dateselector-day="">
                     <option class="b_monthdays" value="1">1</option>
                     <option class="b_monthdays" value="2">2</option>
                     <option class="b_monthdays" value="3">3</option>
                     <option class="b_monthdays" value="4">4</option>
                     <option class="b_monthdays" value="5">5</option>
                     <option class="b_monthdays" value="6">6</option>
                     <option class="b_monthdays" value="7">7</option>
                     <option class="b_monthdays" value="8">8</option>
                     <option class="b_monthdays" value="9">9</option>
                     <option class="b_monthdays" value="10">10</option>
                     <option class="b_monthdays" value="11" selected="selected">11</option>
                     <option class="b_monthdays" value="12">12</option>
                     <option class="b_monthdays" value="13">13</option>
                     <option class="b_monthdays" value="14">14</option>
                     <option class="b_monthdays" value="15">15</option>
                     <option class="b_monthdays" value="16">16</option>
                     <option class="b_monthdays" value="17">17</option>
                     <option class="b_monthdays" value="18">18</option>
                     <option class="b_monthdays" value="19">19</option>
                     <option class="b_monthdays" value="20">20</option>
                     <option class="b_monthdays" value="21">21</option>
                     <option class="b_monthdays" value="22">22</option>
                     <option class="b_monthdays" value="23">23</option>
                     <option class="b_monthdays" value="24">24</option>
                     <option class="b_monthdays" value="25">25</option>
                     <option class="b_monthdays" value="26">26</option>
                     <option class="b_monthdays" value="27">27</option>
                     <option class="b_monthdays" value="28">28</option>
                     <option class="b_monthdays" value="29">29</option>
                     <option class="b_monthdays" value="30">30</option>
                     <option class="b_monthdays" value="31">31</option>
                  </select>
                  <label for="bp_change_dates_checkin_yearmonth_select" class="invisible_spoken">
                  Tháng nhận phòng
                  </label>
                  <select class="bp_change_dates_checkin_yearmonth_select" id="bp_change_dates_checkin_yearmonth_select" data-dateselector-monthyear="">
                     <option class="b_months" value="2021-8" selected="selected">
                        Tháng 8 2021
                     </option>
                     <option class="b_months" value="2021-9">
                        Tháng 9 2021
                     </option>
                     <option class="b_months" value="2021-10">
                        Tháng 10 2021
                     </option>
                     <option class="b_months" value="2021-11">
                        Tháng 11 2021
                     </option>
                     <option class="b_months" value="2021-12">
                        Tháng 12 2021
                     </option>
                     <option class="b_months" value="2022-1">
                        Tháng 1 2022
                     </option>
                     <option class="b_months" value="2022-2">
                        Tháng 2 2022
                     </option>
                     <option class="b_months" value="2022-3">
                        Tháng 3 2022
                     </option>
                     <option class="b_months" value="2022-4">
                        Tháng 4 2022
                     </option>
                     <option class="b_months" value="2022-5">
                        Tháng 5 2022
                     </option>
                     <option class="b_months" value="2022-6">
                        Tháng 6 2022
                     </option>
                     <option class="b_months" value="2022-7">
                        Tháng 7 2022
                     </option>
                     <option class="b_months" value="2022-8">
                        Tháng 8 2022
                     </option>
                     <option class="b_months" value="2022-9">
                        Tháng 9 2022
                     </option>
                     <option class="b_months" value="2022-10">
                        Tháng 10 2022
                     </option>
                     <option class="b_months" value="2022-11">
                        Tháng 11 2022
                     </option>
                  </select>
               </div>
               <div class="bp_change_dates_checkout" data-checkout-selector="">
                  <strong class="bp_change_dates_date_label">Trả phòng:</strong>
                  <button class="bp_change_dates_checkout_calendar bp_change_dates_open_calendar" data-dateselector-calendar="" type="button" aria-hidden="true">
                  <img src="https://cf.bstatic.com/static/img/transparent/85e02501df1560d359a473f544224481a83c9aa7.png" width="21" height="18" alt="calendar" title="Mở lịch và chọn ngày " class="icon_calendar use_sprites">
                  </button>
                  <label for="bp_change_dates_checkout_monthday_select" class="invisible_spoken">
                  Ngày trả phòng
                  </label>
                  <select class="bp_change_dates_checkout_monthday_select" id="bp_change_dates_checkout_monthday_select" data-dateselector-day="">
                     <option class="b_monthdays" value="1">1</option>
                     <option class="b_monthdays" value="2">2</option>
                     <option class="b_monthdays" value="3">3</option>
                     <option class="b_monthdays" value="4">4</option>
                     <option class="b_monthdays" value="5">5</option>
                     <option class="b_monthdays" value="6">6</option>
                     <option class="b_monthdays" value="7">7</option>
                     <option class="b_monthdays" value="8">8</option>
                     <option class="b_monthdays" value="9">9</option>
                     <option class="b_monthdays" value="10">10</option>
                     <option class="b_monthdays" value="11">11</option>
                     <option class="b_monthdays" value="12">12</option>
                     <option class="b_monthdays" value="13">13</option>
                     <option class="b_monthdays" value="14" selected="selected">14</option>
                     <option class="b_monthdays" value="15">15</option>
                     <option class="b_monthdays" value="16">16</option>
                     <option class="b_monthdays" value="17">17</option>
                     <option class="b_monthdays" value="18">18</option>
                     <option class="b_monthdays" value="19">19</option>
                     <option class="b_monthdays" value="20">20</option>
                     <option class="b_monthdays" value="21">21</option>
                     <option class="b_monthdays" value="22">22</option>
                     <option class="b_monthdays" value="23">23</option>
                     <option class="b_monthdays" value="24">24</option>
                     <option class="b_monthdays" value="25">25</option>
                     <option class="b_monthdays" value="26">26</option>
                     <option class="b_monthdays" value="27">27</option>
                     <option class="b_monthdays" value="28">28</option>
                     <option class="b_monthdays" value="29">29</option>
                     <option class="b_monthdays" value="30">30</option>
                     <option class="b_monthdays" value="31">31</option>
                  </select>
                  <label for="bp_change_dates_checkout_yearmonth_select" class="invisible_spoken">
                  Tháng trả phòng
                  </label>
                  <select class="bp_change_dates_checkout_yearmonth_select" id="bp_change_dates_checkout_yearmonth_select" data-dateselector-monthyear="">
                     <option class="b_months" value="2021-8" selected="selected">
                        Tháng 8 2021
                     </option>
                     <option class="b_months" value="2021-9">
                        Tháng 9 2021
                     </option>
                     <option class="b_months" value="2021-10">
                        Tháng 10 2021
                     </option>
                     <option class="b_months" value="2021-11">
                        Tháng 11 2021
                     </option>
                     <option class="b_months" value="2021-12">
                        Tháng 12 2021
                     </option>
                     <option class="b_months" value="2022-1">
                        Tháng 1 2022
                     </option>
                     <option class="b_months" value="2022-2">
                        Tháng 2 2022
                     </option>
                     <option class="b_months" value="2022-3">
                        Tháng 3 2022
                     </option>
                     <option class="b_months" value="2022-4">
                        Tháng 4 2022
                     </option>
                     <option class="b_months" value="2022-5">
                        Tháng 5 2022
                     </option>
                     <option class="b_months" value="2022-6">
                        Tháng 6 2022
                     </option>
                     <option class="b_months" value="2022-7">
                        Tháng 7 2022
                     </option>
                     <option class="b_months" value="2022-8">
                        Tháng 8 2022
                     </option>
                     <option class="b_months" value="2022-9">
                        Tháng 9 2022
                     </option>
                     <option class="b_months" value="2022-10">
                        Tháng 10 2022
                     </option>
                     <option class="b_months" value="2022-11">
                        Tháng 11 2022
                     </option>
                  </select>
               </div>
               <div class="bp_change_dates_submit">
                  <button class="
                     bui-button
                     bui-button--primary
                     bp-button
                     " type="submit"><span class="bui-button__text js-button__text"> Đổi ngày </span> </button>
               </div>
            </fieldset>
         </form>
      </div>
      <template id="bp_leaving_users">
         <header class="bui-modal__header">
            <h2 class="bui-modal__title bui-spacer--small" id="modal-default-title" data-bui-ref="modal-title">
               Phòng này gần như của bạn rồi! Chúng tôi chỉ cần thêm một số chi tiết.
            </h2>
            <div class="bui-group bui-group e2e-retain-leaving-users__content">
               <p class="bui-group__item bui-f-font-body">Chúng tôi không thể lưu đặt phòng của bạn nếu bạn rời khỏi trang này. Nếu bỏ lỡ mất phòng này, bạn sẽ không tìm lại được đâu...</p>
               <div>
                  <span id="booking-bpg__description" class="bui-u-sr-only">- mở hộp thoại mới</span>
                  <button class="
                     bui-button
                     bui-button--tertiary
                     js-price-match-modal__trigger
                     bp-button
                     " type="button" data-component="price-match-trigger" data-bui-component="Popover" data-popover-content-id="bp-bpg-popover" data-popover-position="bottom" data-modal-id="bp_bpg_modal" data-popover-z-index="modal" aria-describedby="booking-bpg__description">
                     <span class="bui-button__icon js-button__icon">
                        <svg class="bk-icon -streamline-label" fill="#0071C2" height="14" role="presentation" width="14" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                           <path d="M.311 2.56v6.257a3.75 3.75 0 0 0 1.098 2.651l11.56 11.562a2.25 2.25 0 0 0 3.182 0l6.88-6.88a2.25 2.25 0 0 0 0-3.181L11.468 1.408A3.75 3.75 0 0 0 8.818.31H2.56a2.25 2.25 0 0 0-2.25 2.25zm1.5 0a.75.75 0 0 1 .75-.75h6.257a2.25 2.25 0 0 1 1.59.659l11.562 11.56a.75.75 0 0 1 0 1.06l-6.88 6.88a.75.75 0 0 1-1.06 0L2.47 10.409a2.25 2.25 0 0 1-.659-1.59V2.56zm5.25 3.75a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0z"></path>
                        </svg>
                     </span>
                     <span class="bui-button__text js-button__text"> Chúng Tôi Luôn Khớp Giá! </span> 
                     <span class="bui-button__loader">
                        <div class="bui-spinner bui-spinner--size-small">
                           <div class="bui-spinner__inner"></div>
                        </div>
                     </span>
                  </button>
                  <div class="bui-f-font-body">Phòng này có giá ít hơn VND&nbsp;825.270 so với giá trung bình của Viêng Chăn là VND&nbsp;2.844.101/ đêm</div>
               </div>
            </div>
         </header>
         <hr class="bui-divider">
         <footer class="bui-modal__footer">
            <div role="group" class="bui-inline-container bui-inline-container--align">
               <div class="bui-inline-container__main">
                  <button class="
                     bui-button
                     bui-button--secondary
                     e2e-retain-leaving-users__close-button
                     bp-button
                     " type="button" data-bui-ref="modal-close"><span class="bui-button__text js-button__text"> Đóng </span> </button>
               </div>
               <div class="bui-inline-container__end">
                  <label class="bui-checkbox">
                  <input autocomplete="off" type="checkbox" name="bp_rlu_do_not_show_again" id="rlu_persistent_dismissal" class="bui-checkbox__input">
                  <span class="bui-checkbox__label">OK! Đừng hiển thị lại nữa</span>
                  </label>
               </div>
            </div>
         </footer>
      </template>
   </div>
   <script id="script-booking-availability-rooms-env" type="text/javascript" nonce="">
       // <![CDATA[
       booking.env.b_rooms = [];
       booking.env.you_can_book_at_most_x_rooms_with_this_hotel = 'Bạn có thể đặt nhiều nhất là 0 phòng với khách sạn này';
       booking.env.b_stage = 3;
       booking.env.you_can_book_for_at_most_x_guests_per_reservation_with_this_hotel = 'Bạn có thể đặt nhiều nhất cho 0 khách trong 1 đặt phòng với khách sạn này.';
      // ]]>
   </script>
</div>
</asp:Content>

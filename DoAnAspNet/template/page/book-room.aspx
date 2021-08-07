<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="book-room.aspx.cs" Inherits="DoAnAspNet.template.page.book_room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../book/css/016b.css" rel="stylesheet" />
    <link href="../book/css/1128.css" rel="stylesheet" />
    <link href="../book/css/75f6.css" rel="stylesheet" />
    <link href="../book/css/9b699.css" rel="stylesheet" />

    <div id="bodyconstraint" class="   " style="    margin-top: 130px;">
   <div id="bodyconstraint-inner">
      <div class="bui-container booking-process__container js-booking-process__container js-booking-process__container--stage-2 e2e-stage-container" data-stage="2">
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
                        <li class="bui-nav-progress__item bui-nav-progress__item--active">
                           <span class="bui-nav-progress__indicator" aria-hidden="true">
                           2
                           </span>
                           <strong class="bui-nav-progress__title" aria-current="step">
                           Chi tiết về bạn
                           </strong>
                           <span class="bui-nav-progress__step" aria-hidden="true">
                           Bước 2/3
                           </span>
                        </li>
                        <li role="presentation" class="bui-nav-progress__divider"></li>
                        <li class="bui-nav-progress__item bui-nav-progress__item--disabled">
                           <span class="bui-nav-progress__indicator" aria-hidden="true">
                           3
                           </span>
                           <strong class="bui-nav-progress__title" aria-current="false">
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
                                          <span class="bui-date__title"><%= ngayDatTu%></span>
                                          <span class="bui-date__subtitle">
                                          Từ 14:00
                                          </span>
                                          </time>
                                       </div>
                                       <div class="bui-date-range__item">
                                          <div id="bp-checkout-date__label" class="bui-date__label">Trả phòng</div>
                                          <time class="bui-date bui-date--large" aria-describedby="bp-checkout-date__label">
                                          <span class="bui-date__title"><%= ngayDatDen%></span>
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
                                 <div class="bui-group__item">
                                    <div class="bp-booking-summary__change-selection">
                                       <div class="bui-group bui-button-group bui-group--inline bui-group--vertical-align-middle">
                                          <div class="bui-group__item">
                                             <button type="button" b_data_id="open-change-dates-lightbox" class="bui-button bui-button--tertiary bp_change_dates_link">
                                             <span class="bui-button__text">Bạn đi trong những ngày khác?</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <hr class="bui-divider">
                              <div class="bui-group bui-group--large">
                                 <div class="bui-group__item">
                                    <div class="bui-group bui-group--small">
                                       <div class="bui-f-font-strong">Bạn đã chọn:</div>
                                       <ul class="bui-list bui-list--text bp-list--compact">
                                          <li class="bui-list__item">
                                             <div>
                                                <%= room.ten%>
                                             </div>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div class="bui-group__item">
                                    <div class="bp-booking-summary__change-selection">
                                       <div class="bui-group bui-button-group bui-group--inline bui-group--vertical-align-middle">
                                          <div class="bui-group__item">
                                             <a class="bui-button bui-button--tertiary" href="https://www.booking.com/hotel/la/muong-thanh-luxury-vientiane.vi.html?aid=318615&amp;label=New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi2658306050%3Atidsa-303472601955%3Alp9040331%3Ali%3Adec%3Adm&amp;sid=96a61b88ba49cdbab74a0c2be36e1f22&amp;checkin=2021-08-11&amp;checkout=2021-08-14&amp;room1=A,A&amp;from_bs2_modify=1">
                                             <span class="bui-button__text">Đổi lựa chọn của bạn</span>
                                             </a>
                                          </div>
                                       </div>
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
                                                   <%= room.ten%>
                                                </div>
                                             </div>
                                             <div class="bp-price-details__charge-value">
                                                VND&nbsp;5.048.021
                                             </div>
                                          </li>
                                          <li class="bp-price-details__charge-line">
                                             <div class="bp-price-details__charge-type" data-pb-ix="5">
                                                10 % Thuế
                                             </div>
                                             <div class="bp-price-details__charge-value">
                                                VND&nbsp;504.802
                                             </div>
                                          </li>
                                          <li class="bp-price-details__charge-line">
                                             <div class="bp-price-details__charge-type" data-pb-ix="5">
                                                10 % Phí dịch vụ của chỗ nghỉ
                                             </div>
                                             <div class="bp-price-details__charge-value">
                                                VND&nbsp;504.802
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
                                                <div class="bp-price-details__charge-value e2e-price-details__total-charge--user" data-price="6057625" data-currency-code="VND" data-pd-total-usercurrency="">
                                                   <span data-component="core/animate-price" class="" data-value="6057625" data-currency="VND" data-precision="" data-animate-price-group-name="bp_user_total_price" data-animation-speed="0.7" style="display: inline-block;">
                                                   VND&nbsp;6.057.625
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
                                    <span data-component="core/animate-price" class="" data-value="6057625.38" data-currency="" data-precision="0" data-animate-price-group-name="bp_payment_cancellation_cost_1" data-animation-speed="0.7" style="display: inline-block;">
                                    VND&nbsp;6.057.625
                                    </span>
                                 </div>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </section>
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
                                       <button class="bui-button bui-button--tertiary" type="button" data-command="show-auth-lightbox" data-command-params="tab=signin;extraClass=user-access-menu-lightbox--user-center;redirect_uri=https%3A%2F%2Faccount.booking.com%2Fauth%2Foauth2%3Fstate%3DUtsDNPrza4-1BoDg3CfIL_2Yy72t7-F9rdpr6q7VuGJTutUJPyoXm4J92tD-vkxV5wea969rvtW1l2fFIRoHiA1Vc-GB0QKzj1Ak598wIQ2L7r9MG9uIuf5jDaBb4XLNNw6tOR63D1KtWOHRkF8Bztb5Pd5nC5MRe-ArPzsoDNcNVihFQwKkuZepWMCSQYeETZGbabMapxHS0iMIwGFb9PzcWwSE2_Xzaw7WFmRGVgCAF_HsEk7CuGhzW0PxJuZsVZt3NclTHf3Jzdr49O__RIIkUR62Bk1UBrDGg81fdjw_10kiZaP6_wl5gRz9JdKEkLqUq48fGjBsuALKJ_MMZgNzrnvIqUuO5GQv29Nw-ipbOaWE3QFolvbqTotq0bLpuSOBr4AP28go9NzaIBOjXdi9DlZcWNZDaVW008idgoo8SOpfc527v8UD-K-ejkB2Ci2Z5NjODdi3D__UpN_HVCseExMQOqtPwdjWFQbQDFAOfsP-0N7xL2uqwkfCFzx4Ean8-4FLgPbv1av2_mbb_JEw3h2RU4QrvK7OgPJvMb69dclgZd6RjLIQnckhvcWmlLDGZ8fXF0ESywLlPiTBkiEz2h1RoOl_S9pd9bVlraMDaaAKj9G9hgtGHis1mA%26response_type%3Dcode%26iframe%3D1%26client_id%3DvO1Kblk7xX9tUn2cpZLS%26lang%3Dvi%26redirect_uri%3Dhttps%253A%252F%252Fsecure.booking.com%252Flogin.html%253Fop%253Doauth_return%26dt%3D1628222617%26bkng_action%3Dbook%26aid%3D318615" data-component="iam/preload-iframe">
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
               <%--<div id="validation-errors" data-component="bp/top-validation-errors" class="bui-group bp-validation-errors__container js-bp-validation-errors__container">
                  <div class="bui-alert bui-alert--error bui-alert--large bui-u-bleed@small " data-component="bp/top-validation-errors" role="alert">
                     <span class="icon--hint bui-alert__icon" role="presentation">
                        <svg class="bk-icon -streamline-warning" height="24" role="presentation" width="24" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                           <path d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                        </svg>
                     </span>
                     <span class="invisible_spoken">Lỗi</span>
                     <div class="bui-alert__description">
                        <span class="bui-alert__title">
                        Có lỗi xảy ra! Bạn bỏ lỡ vài chi tiết rồi. Vui lòng điền những ô này để tiếp tục:
                        </span>
                        <div class="bui-group bui-group--inline bui-group--large">
                           <a href="#email_confirm" class="bui-link bui-link--primary js-bp-ga__validation-personal__email-confirm">Xác nhận địa chỉ email</a>
                        </div>
                        <!-- .bui-group -->
                        <script type="text/javascript" nonce="7Zb0XzugFnE9IUD">
                           B.env.bp_is_form_submit_error = true;
                        </script>
                     </div>
                  </div>
               </div>--%>
               <div class="bui-group bui-group--large">
                  <div class="bui-group__item">
                     <div class="bui-card bui-u-bleed@small bp-property-details__container js-property-details__container e2e-property-details bui-spacer--large">
                        <div class="bui-card__content">
                           <div class="bui-u-hidden@medium bui-spacer--large">
                              <div class="bp-property-details__photo-container bp-property-details__photo-container--full">
                                 <img class="bp-property-details__photo js-property-details__photo e2e-property-details__photo" src="../images/<%=hotel.anh %>" alt="" width="400" height="278" loading="lazy" aria-hidden="true">
                              </div>
                           </div>
                           <div class="bui-inline-container">
                              <div class="bui-inline-container__start bui-u-hidden@small">
                                 <div class="bp-property-details__photo-container bp-property-details__photo-container--small">
                                    <img class="bp-property-details__photo js-property-details__photo e2e-property-details__photo" src="../images/<%=hotel.anh %>" alt="" width="160" height="160" aria-hidden="true">
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
               <div class="bui-card bui-spacer--large bp-card-authentication--unauthenticated">
                  <div class="bui-card__content">
                     <button class="bui-link bui-link--primary bui-link--icon" type="button" data-command="show-auth-lightbox" data-command-params="tab=signin;extraClass=user-access-menu-lightbox--user-center;redirect_uri=https%3A%2F%2Faccount.booking.com%2Fauth%2Foauth2%3Fstate%3DUtQDNPrza4-1BoBWE2TO8s3nrdA44P--4sJCZc1OUSTcytUHG8lnL0uCNp9h-DjOgDfTNqYsnTtpxtk6DHbbATTm8ubEJT8kSiCApY5BkKnmmIbe_LwdGP4emwknGvgtWEZaNxhgtusxljwO0boWuGjTxGwzsOaj_e_NWmCxN3EUU-VsFsRa_tGzauKZXBHrpQ8h29Tc41pdjnEXJ7_s9h93wu0Fcv56AOmhdiRhIuMkIL8orRS4PLvNp1pVLgGYub2tfSyxWZPP3-DhQqdkBaGYPVUa7NR7xAk9jPu9ul4S33_ckArKNEQzxoJq66A92PVfKHpRccs55tdiM6-yfIgGW2BVfwxW9E1tHbNCBs93Cg5e7_6TOrmwuxDeuMEqEsHiLCFIcgLyZuIMzI7QSTK_Wv5z_0AZ4LgBs35OJAKQ8nEHlvhMyFGqCGwe_D8KoVB5aVCrPayfAreI-RTkiOen34L9-I3j9DbWxl_n10M70Vq_njIrt0Zf8axw_-qRoRtnLqthx2rb_Qviy3VJB4b1tBMTR6SeAG-6MU6vuQb1iFx9rB3Ih3FJXZoM7NVewui9OUD3vtw0Th-pFES-hSgZ2_gVm4HbVGgH-R_7YjydjvGCbpOx%26iframe%3D1%26response_type%3Dcode%26client_id%3DvO1Kblk7xX9tUn2cpZLS%26lang%3Dvi%26redirect_uri%3Dhttps%253A%252F%252Fsecure.booking.com%252Flogin.html%253Fop%253Doauth_return%26dt%3D1628222617%26bkng_action%3Dbook%26aid%3D318615" data-component="iam/preload-iframe">
                        <span aria-hidden="true" role="presentation" class="bui-icon bui-link__icon bui-icon--small">
                           <svg aria-hidden="true" class="bk-icon -streamline-person_half bp-signin-register__icon" height="16" width="16" viewBox="0 0 24 24" role="presentation" focusable="false">
                              <path d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"></path>
                           </svg>
                        </span>
                        <span class="bui-link__text">
                        Đăng nhập</span>
                     </button>
                     để đặt phòng với thông tin đã lưu của bạn hoặc 
                     <button class="bui-link bui-link--primary" type="button" data-command="show-auth-lightbox" data-command-params="tab=signup;extraClass=user-access-menu-lightbox--user-center;redirect_uri=https%3A%2F%2Faccount.booking.com%2Fauth%2Foauth2%3Fstate%3DUtQDNPrza4-1BoBWE2TO8s3nrdA44P--4sJCZc1OUSTcytUHG8lnL0uCNp9h-DjOgDfTNqYsnTtpxtk6DHbbATTm8ubEJT8kSiCApY5BkKnmmIbe_LwdGP4emwknGvgtWEZaNxhgtusxljwO0boWuGjTxGwzsOaj_e_NWmCxN3EUU-VsFsRa_tGzauKZXBHrpQ8h29Tc41pdjnEXJ7_s9h93wu0Fcv56AOmhdiRhIuMkIL8orRS4PLvNp1pVLgGYub2tfSyxWZPP3-DhQqdkBaGYPVUa7NR7xAk9jPu9ul4S33_ckArKNEQzxoJq66A92PVfKHpRccs55tdiM6-yfIgGW2BVfwxW9E1tHbNCBs93Cg5e7_6TOrmwuxDeuMEqEsHiLCFIcgLyZuIMzI7QSTK_Wv5z_0AZ4LgBs35OJAKQ8nEHlvhMyFGqCGwe_D8KoVB5aVCrPayfAreI-RTkiOen34L9-I3j9DbWxl_n10M70Vq_njIrt0Zf8axw_-qRoRtnLqthx2rb_Qviy3VJB4b1tBMTR6SeAG-6MU6vuQb1iFx9rB3Ih3FJXZoM7NVewui9OUD3vtw0Th-pFES-hSgZ2_gVm4HbVGgH-R_7YjydjvGCbpOx%26iframe%3D1%26response_type%3Dcode%26client_id%3DvO1Kblk7xX9tUn2cpZLS%26lang%3Dvi%26redirect_uri%3Dhttps%253A%252F%252Fsecure.booking.com%252Flogin.html%253Fop%253Doauth_return%26dt%3D1628222617%26bkng_action%3Dbook%26aid%3D318615" data-component="iam/preload-iframe">
                     <span class="bui-link__text">
                     đăng ký</span></button> để quản lý các đặt phòng của bạn mọi lúc mọi nơi!
                  </div>
               </div>
               <div id="bookwrapper" class="bp_inline_icons bp-bs2">
                  <div id="bookwrapper_cell">
                     <div id="bookStage2Inc" class="
                        bp_form_box_wrapper
                        bp_form_box_wrapper--bs2
                        yourdetails
                        improved_details
                        ">
                        <div class="title bp_legacy_form_box__title--block" style="position: relative">
                           <div class="bui-inline-container">
                              <div class="bui-inline-container__main">
                                 <h2 class="bui-text--variant-featured_3 bp-text--emphasized">
                                    Nhập thông tin chi tiết của bạn
                                 </h2>
                                 <div class="bui-text--variant-body_2 bui-text--color-neutral_alt bui-spacer--large">
                                    Gần xong rồi! Chỉ cần điền phần thông tin <b class="bui-text--variant-bold_2 bui-text--color-destructive">*</b> bắt buộc
                                 </div>
                              </div>
                              <div class="bui-inline-container__end"></div>
                           </div>
                        </div>
                        <form id="bookForm" class="book-form " name="bookForm" action="book.html" method="post" data-is-exclusive="0" data-is-hybrid="" data-has-schedule="" data-stage="2" data-component="bp/main-form " novalidate="">
                           <input type="hidden" name="bhc_csrf_token" value="1uwMYQAAAAA=1V7WImCxwSt5DQwmkZH6Au87RKLYkGZZe1LMvBnuYr9ou8LCDSe6fW0E1oaqZT0vI-VDNlJwNfRYBxMRE70FpLoyB6wH-N6rx0jdJfBfzEEk2XuuC6Qus37GwSmTr0JYoVMIkh4bZ9s9fNyFamI-HJan09ElywEHZ9I0BbyS7ouXEL0MNr3lNCCcsNg4gUlU2kMs1u09UeDVy2ca">
                           <input type="hidden" name="aid" value="318615">
                           <input type="hidden" name="label" value="New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025:pl:ta:p1:p2:ac:ap:neg:fi2658306050:tidsa-303472601955:lp9040331:li:dec:dm">
                           <input type="hidden" name="lang" value="vi">
                           <input type="hidden" name="sid" value="96a61b88ba49cdbab74a0c2be36e1f22">
                           <input type="hidden" name="remb" value="0a15202b1a6537b2a17b3a0b4a0b5a166b6a522b" class="ClickTaleSensitive">
                           <input type="hidden" name="reub" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="rets" value="3a108b834c4a434b55c" class="ClickTaleSensitive">
                           <input type="hidden" name="recp" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="cc_refp" value="" class="ClickTaleSensitive">
                           <input type="hidden" name="bp_travel_purpose" value="leisure" class="ClickTaleSensitive">
                           <input type="hidden" name="trips_promo" value="[]" class="ClickTaleSensitive">
                           <input type="hidden" name="rt_pageview_id" value="a33218b567450003" class="ClickTaleSensitive">
                           <input type="hidden" name="create_account" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="is_group_recommendation" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="is_24hr" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="from_ski_sr" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="upgrade_to" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="hostname" value="www.booking.com" class="ClickTaleSensitive">
                           <input type="hidden" name="rt_pos_final" value="1.1" class="ClickTaleSensitive">
                           <input type="hidden" name="room1" value="A,A" class="ClickTaleSensitive">
                           <input type="hidden" name="full_cost_plain" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="checkout" value="2021-08-14" class="ClickTaleSensitive">
                           <input type="hidden" name="bp_from" value="standard" class="ClickTaleSensitive">
                           <input type="hidden" name="full_cost" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="dotd_fb" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="ufi" value="-2669740" class="ClickTaleSensitive">
                           <input type="hidden" name="checkin" value="2021-08-11" class="ClickTaleSensitive">
                           <input type="hidden" name="dc_issue_number" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="update_profile" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="recommended_room_id" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="final_booking_price" value="264" class="ClickTaleSensitive">
                           <input type="hidden" name="send_sms_confirmation_multi_lang_to_this_number" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="hotel_id" value="1852078" class="ClickTaleSensitive">
                           <input type="hidden" name="prd_all_included" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="pset_discount_won" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="rt_num_rooms" value="5" class="ClickTaleSensitive">
                           <input type="hidden" name="tnc_checkbox" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="stage" value="2" class="ClickTaleSensitive">
                           <input type="hidden" name="pay_now" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="emk_opt_in" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="rt_num_blocks" value="5" class="ClickTaleSensitive">
                           <input type="hidden" name="rt_num_blocks_per_room" value="{&quot;185207805&quot;:1,&quot;185207801&quot;:1,&quot;185207802&quot;:1,&quot;185207803&quot;:1,&quot;185207804&quot;:1}" class="ClickTaleSensitive">
                           <input type="hidden" name="sms_confirmation" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="lphwd" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="send_sms_confirmation_to_this_number" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="from_reco_block" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="rt_relevance_metric_id" value="84e7c4ff-3908-482b-8a10-895843120b84" class="ClickTaleSensitive">
                           <input type="hidden" name="send_price_watch" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="emk_bp_redirect" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="rt_pos_selected" value="1" class="ClickTaleSensitive">
                           <input type="hidden" name="ap_ref" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="from_beach_key_ufi_sr" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="bpid" value="929F2353-81D9-4228-AC52-EA7E38E6630E" class="ClickTaleSensitive">
                           <input type="hidden" name="bp_nocc_compset" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="ap_available" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="send_whatsapp_confirmation" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="allow_past" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="interval" value="3" class="ClickTaleSensitive">
                           <input type="hidden" name="total_cost" value="264" class="ClickTaleSensitive">
                           <input type="hidden" name="cc1" value="vn" class="ClickTaleSensitive">
                           <input type="hidden" name="rt_pos_selected_within_room" value="1" class="ClickTaleSensitive">
                           <input type="hidden" name="from_beach_non_key_ufi_sr" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="send_link_app" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="sms_checkin" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="promo" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="seen_ft_rvw" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="warn_intro_error_message" value="okok" class="ClickTaleSensitive">
                           <input type="hidden" name="nr_rooms_185207801_204732343_2_1_0" value="1" class="ClickTaleSensitive">
                           <input type="hidden" name="is_smart_deal" value="0" class="ClickTaleSensitive">
                           <input type="hidden" name="final_booking_price" value="264" class="ClickTaleSensitive">
                           <input type="hidden" id="mtv_last_sorter_used" name="mtv_last_sorter_used" value="">
                           <input type="hidden" name="is_piyoc_supported" value="">
                           <input type="hidden" name="form_was_rendered" value="1">
                           <script id="script-booking-rooms-roomsFormName" type="text/javascript" nonce="7Zb0XzugFnE9IUD">
                              // <![CDATA[
                              booking.book = {
                              formName : 'bookForm'
                              };
                              // ]]>
                           </script>
                           <div class="content auth_user_info bp_legacy_form_box__content bui-spacer--large">
                              <p class="warn">
                                 <svg class="bk-icon -streamline-warning" fill="#FEBB02" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                    <path d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                                 </svg>
                                 Vui lòng nhập chi tiết bằng tiếng Việt không dấu để khách sạn có thể đọc được
                              </p>
                              <div class="bp-personal-details-form" data-component="bp/personal-details-form">
                                 <fieldset id="bp-control-group--travel_purpose" class="bui-form__group bp-control-group bp-control-group--travel_purpose js-control-group--travel_purpose    bui-spacer--medium " aria-role="radiogroup" aria-labelledby="bp-control-group__label--travel_purpose">
                                    <legend class="bp-control-group__label" id="bp-control-group__label--travel_purpose">Bạn sắp đi công tác? </legend>
                                    <div class="bui-group bui-group--large bui-group--inline  ">
                                       <div class="bui-group__item">
                                          <div class="bui-form__group bp-form-group bp-form-group__bp_travel_purpose_business   ">
                                             <label class="bui-radio  ">
                                             <input name="bp_travel_purpose" id="bp_travel_purpose_business" type="radio" class="bui-radio__input" value="business">  
                                             <span class="bui-radio__label">   
                                             Đúng
                                             </span>
                                             </label>
                                             <div class="bui-u-margin-top--4 bui-f-color-grayscale bui-f-font-caption bp-control-radio__subtitle"></div>
                                          </div>
                                       </div>
                                       <div class="bui-group__item">
                                          <div class="bui-form__group bp-form-group bp-form-group__bp_travel_purpose_leasure   ">
                                             <label class="bui-radio  ">
                                             <input name="bp_travel_purpose" id="bp_travel_purpose_leasure" type="radio" class="bui-radio__input" value="leisure" data-google-track="Click/bb_bp_select/book : selected leisure" checked="">  
                                             <span class="bui-radio__label">   
                                             Sai
                                             </span>
                                             </label>
                                             <div class="bui-u-margin-top--4 bui-f-color-grayscale bui-f-font-caption bp-control-radio__subtitle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </fieldset>
                                 <input type="hidden" name="bb_sb_tp" value="2">
                                 <div class="name">
                                    <div data-component="bp/personal-details-form/lastname" class="
                                       bp_form__field bp_form__field--lastname
                                       ">
                                       <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_lastname_msg" role="alert"></p>
                                       <label for="lastname" class="bp_form__field__label">
                                       Họ (tiếng Anh)
                                       <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                       </label>
                                       <asp:TextBox runat="server" type="text" name="lastname" ID="lastname" required="" class="
                                          bp_input_text
                                          bp_form__field__input
                                          " aria-describedby="bp_form_lastname_msg" value="1" size="20" />
                                    </div>
                                    <div data-component="bp/personal-details-form/firstname" class="
                                       bp_form__field bp_form__field--firstname
                                       ">
                                       <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_firstname_msg" role="alert"></p>
                                       <label for="firstname" class="bp_form__field__label">
                                       Tên (tiếng Anh)
                                       <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                       </label>
                                       <asp:TextBox runat="server" type="text" name="firstname" ID="firstname" class="bp_input_text bp_form__field__input" aria-describedby="bp_form_firstname_msg" value="2" size="20" />
                                    </div>
                                    <div class="clear"></div>
                                 </div>
                                 <div class="email bp-email-area ge-eligibility-check">
                                    <div data-component="bp/personal-details-form/email" class="
                                       bp_form__field bp_form__field--email
                                       u-clearfix
                                       ">
                                       <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_email_msg" role="alert"></p>
                                       <label for="email" class="bp_form__field__label">
                                       Địa chỉ email
                                       <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                       </label>
                                       <asp:TextBox runat="server" type="text" required="" ID="email" class="
                                          bp_input_text
                                          bp_form__field__input
                                          " name="email" value="aaaa2@gmail.com" size="35" maxlength="60" placeholder="Chú ý tránh lỗi chính tả" aria-describedby="_darur43mg" />
                                       <div id="ge_existing_email_popover_genius" class="js-eligible-genius-email bui-card bui-u-hidden">
                                          <div class="bui-card__content">
                                             <div class="genius-popover__g-logo">
                                                <svg class="bk-icon -genius-new_identity-genius_logo genius-logo Hạng" height="20" width="78" viewBox="0 0 503 128" role="presentation" aria-hidden="true" focusable="false">
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
                                             Nhận <b>giảm giá</b> cho đặt phòng này với tài khoản của bạn - 
                                             <button id="ge_existing_email_popover_genius__button" class="bui-link" data-command="show-auth-lightbox" data-command-params="tab=signin;extraClass=user-access-menu-lightbox--user-center;redirect_uri=https%3A%2F%2Faccount.booking.com%2Fauth%2Foauth2%3Fbkng_action%3Dbook%26aid%3D318615%26response_type%3Dcode%26iframe%3D1%26prompt%3Dsignin%26state%3DUuwDNPrza4-1BoD2skKulg-yGMc08EjuQtigF6x6wL_Xzgz6A4McpDFjyeYx6EpMclIalR4dy3jSUmA4ilngjc-d0Wnzl_6hnLZu0ID_KfBKsgkvPqT_sahCUpTSDPUjwnOLTKAkPluGTvOOf6bk_QXN0qbHy5pOuG4NtPSDlgYMrIMmsMyAChng2MPU3acTSZdn_8PAV7N4Bpx1QkLRZ_zJ3tDDeHBHKn_tH_1x_e1vE1bY2VwvxIt47KQpCtyJHwPGRhzGvZHtiBtQwjAlDdxqmgu9SmZVcykLkTLxvTmUD76DhJvUe2o7FWARYefDsZMpqrE7aTFw-MNw1J0g276LDxSHWdex4W72Th4tQornVvQz6AvRozpi2NtZDLglooth1iz5Y10mdJ_OuSKw-R8tgl4pAw_NTFh0dBynJ2tV-Kr_Rte-IcOGzxN1SE27M74JWB3yc-rSl3uLfS3KkjZszwlRMU2VjTPkoZiuLLIxGP1LJSKwGU5tly1Prf4RB2dcyhxCNuFY-nvsuehB35thCPRCrhZlEDx8Vc_Zhb0ieQ03CNirT-gQvTtv1V3rpw8egYHO2dTdi-i5JIpBseaysEfurP8o3Y1r4oZhSNdBvTkZrA_7UCWbftbTTDY_MILajwL4jC8WAjisvfge%26redirect_uri%3Dhttps%253A%252F%252Fsecure.booking.com%252Flogin.html%253Fop%253Doauth_return%26dt%3D1628222617%26lang%3Dvi%26client_id%3DvO1Kblk7xX9tUn2cpZLS">
                                             Đăng nhập</button>
                                          </div>
                                       </div>
                                       <span class="help_text" role="tooltip" id="email-tip">
                                       Email xác nhận đặt phòng sẽ được gửi đến địa chỉ này
                                       </span>
                                       <p class="bp_form__email_suggestion" data-email-suggestion="" style="display: none;"></p>
                                    </div>
                                    <div data-component="bp/personal-details-form/email-confirm" class="
                                        bp_form__field bp_form__field--email_confirm
                                        ">
                                        <p class="bp_form__field__msg" data-bp-form-field-msg="" id="bp_form_email_confirm_msg" role="alert">
                                        </p>
                                        <label for="email_confirm" class="bp_form__field__label">
                                        Xác nhận địa chỉ email
                                        <abbr class="mandatory-asterisk" title="Bắt buộc" aria-hidden="true"> *</abbr>
                                        </label>
                                            <input type="text" required="" id="email_confirm" class="bp_form__field__input bp_input_text" name="email_confirm" value="" size="35" maxlength="60" aria-describedby="bp_form_email_confirm_msg">
                                        </div>
                                    <div class="clear bp-password-label-margin"></div>
                                 </div>
                                 <fieldset id="bp-control-group--notstayer" class="bui-form__group bp-control-group bp-control-group--notstayer js-control-group--notstayer    e2e-guest-type-selection " aria-role="radiogroup" aria-labelledby="bp-control-group__label--notstayer" data-clear-guestname="1">
                                    <legend class="bp-control-group__label" id="bp-control-group__label--notstayer">Bạn đặt phòng cho ai? </legend>
                                    <div class="bui-group  ">
                                       <div class="bui-group__item">
                                          <div class="bui-form__group bp-form-group bp-form-group__notstayer_false   ">
                                             <label class="bui-radio  ">
                                             <input name="notstayer" id="notstayer_false" type="radio" class="bui-radio__input" value="0" checked="">  
                                             <span class="bui-radio__label">   Tôi là khách lưu trú chính    </span>
                                             </label>
                                          </div>
                                       </div>
                                       <div class="bui-group__item">
                                          <div class="bui-form__group bp-form-group bp-form-group__notstayer_true   ">
                                             <label class="bui-radio  ">
                                             <input name="notstayer" id="notstayer_true" type="radio" class="bui-radio__input" value="1">  
                                             <span class="bui-radio__label">   Đặt phòng này là cho người khác    </span>
                                             </label>
                                          </div>
                                       </div>
                                    </div>
                                 </fieldset>
                              </div>
                           </div>
                           <div class="bp-unit-group">
                              <p class="error disabled" id="you_can_book_for_at_most_x_guests_per_reservation_with_this_hotel" rel="you_can_book_for_at_most_0_guests_per_reservation_with_this_hotel">
                                 Bạn có thể đặt nhiều nhất cho 0 khách trong 1 đặt phòng với khách sạn này.
                              </p>
                              <div class="js-card--unit-details-container e2e-card--unit-details-container">
                                 <div class="bp-unit__container bp_form_box__content bp_form_box__content--pad js-unit__container" data-component="bp/room" data-room-id="185207801_204732343_2_1_0" data-room-sequencial-id="1">
                                    <div class="room-details-description">
                                       <div class="">
                                          <div class="bui-group bui-group--large bui-spacer--large">
                                             <div class="bui-group__item">
                                                <h2 class="bui-text bui-text--variant-strong_1 unit-details__name js-unit-details__name">
                                                   <%=room.ten %>
                                                </h2>
                                             </div>
                                             <div class="bui-group__item">
                                                <div class="bui-group bui-group--medium">
                                                   <div class="bui-group__item bp-unit-details__meal-plan">
                                                      <div class="bui-inline-container">
                                                         <div class="bui-inline-container__start">
                                                            <span class="bui-icon bui-icon--medium" role="presentation">
                                                               <svg class="bk-icon -streamline-food_coffee" fill="#008009" height="16" role="presentation" width="16" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                                                                  <path d="M3.75 4.5h12a.75.75 0 0 1 .75.75v7.5a6.75 6.75 0 0 1-13.5 0v-7.5a.75.75 0 0 1 .75-.75zm0-1.5A2.25 2.25 0 0 0 1.5 5.25v7.5a8.25 8.25 0 0 0 16.5 0v-7.5A2.25 2.25 0 0 0 15.75 3h-12zm-3 18h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zm16.5-15h1.5a3.763 3.763 0 0 1 3.75 3.752 3.762 3.762 0 0 1-3.752 3.748H17.1a.75.75 0 0 0 0 1.5h1.65A5.263 5.263 0 0 0 24 9.752 5.264 5.264 0 0 0 18.752 4.5H17.25a.75.75 0 0 0 0 1.5z"></path>
                                                               </svg>
                                                            </span>
                                                         </div>
                                                         <div class="bui-inline-container__main">
                                                            <p class="bui-text--variant-strong_2 bui-text--color-constructive">
                                                               Giá bao gồm bữa sáng
                                                            </p>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="bui-group__item">
                                                      <div class="bui-inline-container">
                                                         <div class="bui-inline-container__start">
                                                            <span class="bui-icon bui-icon--medium">
                                                               <svg class="bk-icon -streamline-stop" fill="#262626" height="16" role="presentation" width="16" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                                                                  <path d="M22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12zM4.575 20.485l15.91-15.91a.75.75 0 0 0-1.06-1.06l-15.91 15.91a.75.75 0 1 0 1.06 1.06z"></path>
                                                               </svg>
                                                            </span>
                                                         </div>
                                                         <div class="bui-inline-container__main">
                                                            <div class="bui-group bui-group--small e2e-unit-details__policies">
                                                               <div class="bui-group__item">
                                                                  <span class=" e2e-room-policy">
                                                                     <strong>Phí hủy: Toàn bộ tiền phòng</strong>
                                                                     <span class="room_policies_tooltip_icon" data-bui-component="Tooltip" data-tooltip-position="bottom" data-et-mouseenter="goal:bp_room_conditions_tooltip_viewed customGoal:cCPeYGIHICNRGFBBHVPHVPYKDcdC:2" data-et-click="goal:bp_room_conditions_tooltip_viewed customGoal:cCPeYGIHICNRGFBBHVPHVPYKDcdC:2" tabindex="0" data-tooltip-text="
                                                                        <div class='bp_bs2_booking_conditions_tooptip'>
                                                                        <p>
                                                                        <strong>
                                                                        Hủy đặt phòng:
                                                                        </strong>
                                                                        <script type='track_copy' data-hash='cCPeYGIZEYZCZQTZOUdTFcJCbFQFVO'></script>Bạn không thể hủy hoặc chỉnh sửa đặt phòng của mình. Bạn sẽ không đủ điều kiện để nhận hoàn tiền sau khi yêu cầu đặt phòng của bạn được xác nhận.
                                                                        </p>
                                                                        <p>
                                                                        <strong>Trả trước:</strong>
                                                                        Kh&amp;ocirc;ng c&amp;#x1EA7;n thanh to&amp;aacute;n tr&amp;#x1B0;&amp;#x1EDB;c.
                                                                        </p>
                                                                        </div>
                                                                        ">
                                                                        <svg class="bk-icon -streamline-question_mark_circle" fill="#0071C2" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                                                           <path d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                                                                        </svg>
                                                                     </span>
                                                                  </span>
                                                               </div>
                                                            </div>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="bui-group bui-group--inline bui-group--small bui-list bui-list--text bui-spacer--large" data-et-view="NAFLeOeJAdRNcbdeZOFZMHVVXDJXT:1">
                                             <div class="bui-group__item" data-name-en="room size">
                                                <span class=" bui-badge bui-badge--constructive bp-bui-badge">
                                                   <svg class="bk-icon -streamline-room_size" fill="#008009" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M3.75 23.25V7.5a.75.75 0 0 0-1.5 0v15.75a.75.75 0 0 0 1.5 0zM.22 21.53l2.25 2.25a.75.75 0 0 0 1.06 0l2.25-2.25a.75.75 0 1 0-1.06-1.06l-2.25 2.25h1.06l-2.25-2.25a.75.75 0 0 0-1.06 1.06zM5.78 9.22L3.53 6.97a.75.75 0 0 0-1.06 0L.22 9.22a.75.75 0 1 0 1.06 1.06l2.25-2.25H2.47l2.25 2.25a.75.75 0 1 0 1.06-1.06zM7.5 3.75h15.75a.75.75 0 0 0 0-1.5H7.5a.75.75 0 0 0 0 1.5zM9.22.22L6.97 2.47a.75.75 0 0 0 0 1.06l2.25 2.25a.75.75 0 1 0 1.06-1.06L8.03 2.47v1.06l2.25-2.25A.75.75 0 1 0 9.22.22zm12.31 5.56l2.25-2.25a.75.75 0 0 0 0-1.06L21.53.22a.75.75 0 1 0-1.06 1.06l2.25 2.25V2.47l-2.25 2.25a.75.75 0 0 0 1.06 1.06zM10.5 13.05v7.2a2.25 2.25 0 0 0 2.25 2.25h6A2.25 2.25 0 0 0 21 20.25v-7.2a.75.75 0 0 0-1.5 0v7.2a.75.75 0 0 1-.75.75h-6a.75.75 0 0 1-.75-.75v-7.2a.75.75 0 0 0-1.5 0zm13.252 2.143l-6.497-5.85a2.25 2.25 0 0 0-3.01 0l-6.497 5.85a.75.75 0 0 0 1.004 1.114l6.497-5.85a.75.75 0 0 1 1.002 0l6.497 5.85a.75.75 0 0 0 1.004-1.114z"></path>
                                                   </svg>
                                                   33 m²
                                                </span>
                                             </div>
                                             <div class="bui-group__item" data-name-en="">
                                                <span class=" bui-badge bui-badge--constructive bp-bui-badge">
                                                   <svg class="bk-icon -streamline-lake_view" fill="#008009" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M22.938 20.942a3.667 3.667 0 0 1-1.867-1.169.75.75 0 0 0-1.148.008 3.42 3.42 0 0 1-2.46 1.23c-.882-.048-1.774-.494-2.386-1.23a.75.75 0 0 0-1.154 0 3.42 3.42 0 0 1-2.46 1.23c-.882-.048-1.774-.494-2.386-1.23a.75.75 0 0 0-1.154 0 3.42 3.42 0 0 1-2.46 1.23c-.882-.048-1.774-.494-2.386-1.23a.75.75 0 0 0-1.147-.008c-.489.572-1.14.98-1.868 1.17a.75.75 0 1 0 .376 1.45 5.167 5.167 0 0 0 2.633-1.646l-1.148-.008a4.92 4.92 0 0 0 3.54 1.77c1.45-.068 2.734-.71 3.614-1.77H7.923a4.92 4.92 0 0 0 3.54 1.77c1.45-.068 2.734-.71 3.614-1.77h-1.154a4.92 4.92 0 0 0 3.54 1.77c1.45-.068 2.734-.71 3.614-1.77l-1.148.008a5.167 5.167 0 0 0 2.633 1.647.75.75 0 1 0 .376-1.452zm-5.54-12.345l3.937 3.937a.75.75 0 1 0 1.06-1.06l-3.937-3.937a.75.75 0 1 0-1.06 1.06zm3.852 8.663a6.493 6.493 0 0 0-1.902-4.59L13.97 7.29a.75.75 0 0 1 1.062-1.06l2.367 2.367a3 3 0 1 0 4.242-4.242 2.95 2.95 0 0 0-2.263-.86 1.523 1.523 0 0 1-1.164-.446 5.25 5.25 0 1 0-7.425 7.423l1.924 1.924a.65.65 0 0 1-.459 1.114H9.25c-1.995 0-4.733-1.435-7.458-3.485A1.432 1.432 0 0 0-.5 11.168a12.666 12.666 0 0 0 1.594 6.456.75.75 0 1 0 1.312-.728A11.184 11.184 0 0 1 1 11.187c0-.002-.005.012-.014.024a.068.068 0 0 1-.095.013C3.87 13.465 6.817 15.01 9.25 15.01h3a2.15 2.15 0 0 0 1.52-3.676l-1.922-1.922a3.75 3.75 0 0 1 5.304-5.304c.608.611 1.45.933 2.313.884a1.45 1.45 0 0 1 1.114.423 1.5 1.5 0 1 1-2.12 2.122L16.09 5.17v-.001a2.25 2.25 0 0 0-3.183 3.181l5.38 5.38a4.993 4.993 0 0 1 1.462 3.53.75.75 0 0 0 1.5 0z"></path>
                                                   </svg>
                                                   Nhìn ra sông
                                                </span>
                                             </div>
                                             <div class="bui-group__item" data-name-en="">
                                                <span class=" bui-badge bui-badge--constructive bp-bui-badge">
                                                   <svg class="bk-icon -streamline-weather_snowflake" fill="#008009" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M11.25.75v7.5a.75.75 0 0 0 1.5 0V.75a.75.75 0 0 0-1.5 0zm4.031.914l-3.75 3h.938l-3.75-3a.75.75 0 1 0-.938 1.172l3.75 3a.75.75 0 0 0 .938 0l3.75-3a.75.75 0 1 0-.938-1.172zM1.883 7.024l6.495 3.75a.75.75 0 0 0 .75-1.299l-6.495-3.75a.75.75 0 1 0-.75 1.3zM4.69 3.99l.723 4.748.468-.812-4.473 1.748a.75.75 0 0 0 .546 1.398l4.473-1.748a.75.75 0 0 0 .468-.812l-.723-4.748a.75.75 0 1 0-1.482.226zM2.632 18.274l6.495-3.75a.75.75 0 1 0-.75-1.298l-6.495 3.75a.75.75 0 1 0 .75 1.299zm-1.224-3.948l4.473 1.748-.468-.812-.723 4.748a.75.75 0 0 0 1.482.226l.723-4.748a.75.75 0 0 0-.468-.812l-4.473-1.748a.75.75 0 0 0-.546 1.398zM12.75 23.25v-7.5a.75.75 0 0 0-1.5 0v7.5a.75.75 0 0 0 1.5 0zm-4.031-.914l3.75-3h-.938l3.75 3a.75.75 0 0 0 .937-1.172l-3.75-3a.75.75 0 0 0-.937 0l-3.75 3a.75.75 0 0 0 .938 1.172zm13.399-5.36l-6.495-3.75a.75.75 0 0 0-.75 1.298l6.495 3.75a.75.75 0 0 0 .75-1.299zm-2.807 3.034l-.724-4.748-.468.812 4.473-1.748a.75.75 0 0 0-.546-1.398l-4.473 1.748a.75.75 0 0 0-.468.812l.723 4.748a.75.75 0 0 0 1.483-.226zm2.057-14.285l-6.495 3.75a.75.75 0 0 0 .75 1.3l6.495-3.75a.75.75 0 0 0-.75-1.3zm1.224 3.95l-4.473-1.749.468.812.724-4.748a.75.75 0 0 0-1.483-.226l-.723 4.748a.75.75 0 0 0 .468.812l4.473 1.748a.75.75 0 0 0 .546-1.398zM11.625 7.6L8.377 9.475a.75.75 0 0 0-.375.65v3.75a.75.75 0 0 0 .375.65l3.248 1.874a.75.75 0 0 0 .75 0l3.248-1.875a.75.75 0 0 0 .375-.649v-3.75a.75.75 0 0 0-.375-.65L12.375 7.6a.75.75 0 0 0-.75 0zm.75 1.3h-.75l3.248 1.874-.375-.649v3.75l.375-.65-3.248 1.876h.75l-3.248-1.876.375.65v-3.75l-.375.65L12.375 8.9z"></path>
                                                   </svg>
                                                   Điều hòa không khí
                                                </span>
                                             </div>
                                             <div class="bui-group__item" data-name-en="">
                                                <span class=" bui-badge bui-badge--constructive bp-bui-badge">
                                                   <svg class="bk-icon -streamline-shower" fill="#008009" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M15.375 10.875a1.875 1.875 0 1 1-3.75 0 1.875 1.875 0 0 1 3.75 0zm1.5 0a3.375 3.375 0 1 0-6.75 0 3.375 3.375 0 0 0 6.75 0zm.375 12.375V18.7l-.667.745C20.748 18.98 24 15.925 24 10.5a2.25 2.25 0 0 0-4.5 0c0 1.945-.609 3.154-1.64 3.848a3.973 3.973 0 0 1-2.132.652H9a3.75 3.75 0 1 0 0 7.5h3a2.25 2.25 0 0 0 0-4.5H9a.75.75 0 0 0 0 1.5h3a.75.75 0 0 1 0 1.5H9a2.25 2.25 0 0 1 0-4.5h6.74a5.426 5.426 0 0 0 2.957-.908C20.154 14.613 21 12.932 21 10.5a.75.75 0 0 1 1.5 0c0 4.6-2.628 7.069-6.083 7.455a.75.75 0 0 0-.667.745v4.55a.75.75 0 0 0 1.5 0zm-7.5-1.5v1.5a.75.75 0 0 0 1.5 0v-1.5a.75.75 0 0 0-1.5 0zM.75 1.5h1.5l-.53-.22 1.402 1.402a.75.75 0 0 0 1.06-1.06L2.78.22A.75.75 0 0 0 2.25 0H.75a.75.75 0 1 0 0 1.5zm2.983 3.754a.01.01 0 0 1 .016.002c-.542-1.072-.1-2.426 1.008-2.988a2.25 2.25 0 0 1 2.037 0c-.041-.022-.043-.029-.04-.034l.002-.002-3.013 3.012zm1.07 1.05l3.002-3A1.489 1.489 0 0 0 7.51.951 3.766 3.766 0 0 0 4.079.929 3.75 3.75 0 0 0 2.43 5.971a1.49 1.49 0 0 0 2.382.323zm3.408-.968l1.116.62a.75.75 0 1 0 .728-1.312l-1.116-.62a.75.75 0 1 0-.728 1.312zm1.964-2.233l1.615.44a.75.75 0 1 0 .394-1.448l-1.615-.44a.75.75 0 1 0-.394 1.448zm4.217 1.15l1.615.44a.75.75 0 0 0 .396-1.447l-1.615-.44a.75.75 0 0 0-.396 1.447zM5.697 7.388l.577 1.038a.75.75 0 1 0 1.312-.728L7.009 6.66a.75.75 0 1 0-1.312.728zM3.284 8.94l.44 1.615a.75.75 0 1 0 1.448-.394l-.44-1.615a.75.75 0 1 0-1.448.394zm1.15 4.219l.246.896a.75.75 0 1 0 1.446-.396l-.245-.896a.75.75 0 1 0-1.446.396z"></path>
                                                   </svg>
                                                   Phòng tắm riêng trong phòng
                                                </span>
                                             </div>
                                             <div class="bui-group__item" data-name-en="">
                                                <span class=" bui-badge bui-badge--constructive bp-bui-badge">
                                                   <svg class="bk-icon -streamline-tv_flat_screen" fill="#008009" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M22.5 10.375v6.5a.25.25 0 0 1-.25.25H1.75a.25.25 0 0 1-.25-.25v-13a.25.25 0 0 1 .25-.25h20.5a.25.25 0 0 1 .25.25v6.5zm1.5 0v-6.5a1.75 1.75 0 0 0-1.75-1.75H1.75A1.75 1.75 0 0 0 0 3.875v13c0 .966.784 1.75 1.75 1.75h20.5a1.75 1.75 0 0 0 1.75-1.75v-6.5zm-16.5 12h9a.75.75 0 0 0 0-1.5h-9a.75.75 0 0 0 0 1.5zm3.75-4.5v3.75a.75.75 0 0 0 1.5 0v-3.75a.75.75 0 0 0-1.5 0z"></path>
                                                   </svg>
                                                   TV màn hình phẳng
                                                </span>
                                             </div>
                                             <div class="bui-group__item" data-name-en="">
                                                <span class=" bui-badge bui-badge--constructive bp-bui-badge">
                                                   <svg class="bk-icon -streamline-soundproof" fill="#008009" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M10.413 17.368l3.284 2.09c.947.713 2.357.511 3.103-.483.292-.39.45-.863.45-1.35v-5.25a.75.75 0 0 0-1.5 0v5.25a.75.75 0 0 1-1.2.6l-3.331-2.123a.75.75 0 0 0-.806 1.266zM17.25 5.625a2.25 2.25 0 0 0-3.6-1.8L7.097 7.992l.403-.117h-3a2.25 2.25 0 0 0-2.25 2.25v3a2.25 2.25 0 0 0 2.25 2.25h.625a.75.75 0 0 0 0-1.5H4.5a.75.75 0 0 1-.75-.75v-3a.75.75 0 0 1 .75-.75h3a.75.75 0 0 0 .403-.117l6.6-4.2A.816.816 0 0 1 15 4.875a.75.75 0 0 1 .75.75.75.75 0 0 0 1.5 0zM3.48 20.451l18-15a.75.75 0 0 0-.96-1.152l-18 15a.75.75 0 0 0 .96 1.152z"></path>
                                                   </svg>
                                                   Hệ thống cách âm
                                                </span>
                                             </div>
                                             <div class="bui-group__item" data-name-en="">
                                                <span class=" bui-badge bui-badge--constructive bp-bui-badge">
                                                   <svg class="bk-icon -streamline-food_and_drink" fill="#008009" height="16" width="16" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M48.25 4v36a20.13 20.13 0 0 1-16 19.59V124a4 4 0 0 1-8 0V59.58A20.09 20.09 0 0 1 8.25 40V4a4 4 0 0 1 8 0v36a12 12 0 0 0 8 11.28V4a4 4 0 0 1 8 0v47.29a12.1 12.1 0 0 0 8-11.3V4a4 4 0 0 1 8 0zm65 120a4 4 0 0 1-4 4H77.28a4 4 0 0 1 0-8h12V95.7c-14.139-2.16-24.023-15.135-22.35-29.34l6-59.17a8 8 0 0 1 8-7.19h24.67a8 8 0 0 1 8 7.19l6 59.23c1.633 14.181-8.24 27.115-22.35 29.28V120h12a4 4 0 0 1 3.96 4zM80.89 8l-2.43 24H108l-2.4-24zM83 84.88A18.49 18.49 0 0 0 93.17 88h.15a18.48 18.48 0 0 0 10.17-3.12 18.48 18.48 0 0 0 8.12-17.59L108.85 40H77.64l-2.76 27.23A18.49 18.49 0 0 0 83 84.88z"></path>
                                                   </svg>
                                                   Minibar
                                                </span>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="bp_room_details_holder  ">
                                          <div class="max-persons-details">
                                             <label for="nr_guests_185207801_204732343_2_1_0" class="room-detail-label"><strong>Khách:</strong></label>
                                             <select class="ClickTaleSensitive bp_bs2_guest_dropdown bp_input_select notranslate" name="nr_guests_185207801_204732343_2_1_0" id="nr_guests_185207801_204732343_2_1_0" data-room-guests-select="">
                                                <option value="2" selected="">2</option>
                                                <option value="1">1</option>
                                             </select>
                                          </div>
                                          <div class="smoking-details">
                                             <div class="bui-inline-container bui-inline-container--size-small">
                                                <div class="bui-inline-container__start">
                                                   <svg aria-label="Không hút thuốc" class="bk-icon -streamline-no_smoking" fill="#333333" height="20" role="img" width="20" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                                                      <path d="M19.5 9h2.25a.75.75 0 0 1 .75.75v3a.75.75 0 0 1-.75.75h-7.5a.75.75 0 0 0 0 1.5h7.5A2.25 2.25 0 0 0 24 12.75v-3a2.25 2.25 0 0 0-2.25-2.25H19.5a.75.75 0 0 0 0 1.5zM5.25 13.5h-1.5l.75.75v-6L3.75 9h7.5a.75.75 0 0 0 0-1.5h-7.5a.75.75 0 0 0-.75.75v6c0 .414.336.75.75.75h1.5a.75.75 0 0 0 0-1.5zM15 12v2.25a.75.75 0 0 0 1.5 0V12a.75.75 0 0 0-1.5 0zM0 8.25v6a.75.75 0 0 0 1.5 0v-6a.75.75 0 0 0-1.5 0zm1.28 15.53l22.5-22.5A.75.75 0 0 0 22.72.22L.22 22.72a.75.75 0 1 0 1.06 1.06zM4.5.75A2.25 2.25 0 0 1 2.25 3 2.25 2.25 0 0 0 0 5.25a.75.75 0 0 0 1.5 0 .75.75 0 0 1 .75-.75A3.75 3.75 0 0 0 6 .75a.75.75 0 0 0-1.5 0z"></path>
                                                   </svg>
                                                </div>
                                                <div class="bui-inline-container__main bui-f-font-emphasized">
                                                   Không hút thuốc
                                                   <input type="hidden" name="smoking_preference_185207801_204732343_2_1_0" value="no">
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       <table class="guest-details-holder" data-component="guest-name-email-handler">
                                          <tbody>
                                             <tr class="guest-details">
                                                <th class="guest-name-details just-guest-name">
                                                   <label for="guest_name_185207801_204732343_2_1_0">
                                                   Tên đầy đủ của khách
                                                   </label>
                                                </th>
                                                <th class="guest-email-details guest_email bui-u-hidden">
                                                   <label for="guest_email_185207801_204732343_2_1_0">
                                                   Email của khách
                                                   <span class="optional-input">
                                                   (không bắt buộc)
                                                   </span>
                                                   </label>
                                                </th>
                                             </tr>
                                             <tr class="guest-details">
                                                <td class="guest-name-details just-guest-name">
                                                   <input type="text" name="guest_name_185207801_204732343_2_1_0" id="guest_name_185207801_204732343_2_1_0" class="
                                                      guest-name-input
                                                      ClickTaleSensitive
                                                      login_for_name
                                                      bp_input_text
                                                      " value="
                                                      1 2
                                                      " size="22" maxlength="60" placeholder="Họ (tiếng Anh), Tên (tiếng Anh)">
                                                </td>
                                                <td class="guest-email-details guest_email bui-u-hidden">
                                                   <input type="text" name="guest_email_185207801_204732343_2_1_0" value="" placeholder="Địa chỉ email" class="
                                                      guest-email-input
                                                      ClickTaleSensitive
                                                      bp_input_text
                                                      " id="guest_email_185207801_204732343_2_1_0" size="22" maxlength="60">
                                                </td>
                                             </tr>
                                             <tr class="guest-details">
                                                <td></td>
                                                <td class="guest_email guest-email-no-spam-container guest-email-details bui-u-hidden"><span class="guest-email-no-spam-message">Email chỉ được sử dụng để gửi thông tin đặt phòng. Chúng tôi sẽ không gửi quảng cáo – <b>đảm bảo.</b></span></td>
                                             </tr>
                                          </tbody>
                                       </table>
                                       <table class="bbtebp__optionals-table" data-guest-optionals="185207801_204732343_2_1_0">
                                          <tbody>
                                             <tr></tr>
                                          </tbody>
                                       </table>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <h2 class="bp_form_box__title bui-spacer--medium bui-u-margin-top--24">
                              Thêm vào kỳ nghỉ
                           </h2>
                           <section class="bui-card bui-u-bleed@small bp-card--reservation-addons bp-card--legacy bui-u-margin-bottom--24">
                              <div class="bui-card__content">
                                 <div class="bui-card__text">
                                    <ul id="bp-control-group--reservation-addons-container" class="bui-list bui-list--text bui-list--divided bp-addon__list bp-addon__list--reservation-addons-container js-bp-addon__list--reservation-addons-container reservation-addons__container " aria-role="group">
                                       <li class="bui-list__item">
                                          <div class="bui-list__body bp-addon bp-addon__airport_shuttle_please  ">
                                             <div class="bui-list__description  ">
                                                <div class="bui-form__group bp-form-group bp-form-group__airport_shuttle_please   ">
                                                   <label class="bui-checkbox  ">
                                                   <input name="airport_shuttle_please" id="airport_shuttle_please" type="checkbox" class="bui-checkbox__input" value="1">  
                                                   <span class="bui-checkbox__label">   
                                                   Tôi muốn đặt xe đưa đón sân bay
                                                   </span>
                                                   </label>
                                                   <div class="bui-u-margin-top--4 bui-f-color-grayscale bui-f-font-caption bp-control-checkbox__subtitle">
                                                      Chúng tôi sẽ cho chỗ nghỉ biết bạn quan tâm đến dịch vụ này để họ có thể cung cấp thêm chi tiết và giá cả cho bạn.
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="bui-list__item-action bp-addon__icon">
                                                <span aria-hidden="true" class="bui-icon bui-icon--largest">
                                                   <svg class="bk-icon -streamline-transport_shuttle" height="128" width="128" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M108.42 55.84H44.26a9 9 0 0 0-8.94 8.94v20.67H19.58a9 9 0 0 0-8.93 8.94v14.8a9 9 0 0 0 8.93 8.94h6.47c2.2 7.332 9.928 11.491 17.26 9.291a13.861 13.861 0 0 0 9.29-9.291h22.8c2.2 7.332 9.928 11.491 17.26 9.291a13.861 13.861 0 0 0 9.29-9.291h1.53c7.658-.006 13.864-6.212 13.87-13.87V64.78a9 9 0 0 0-8.93-8.94zm.93 8.94v20.67H92.68V63.84h15.74a.94.94 0 0 1 .93.94zM68 85.45V63.84h16.68v21.61zM44.26 63.84H60v21.61H43.32V64.78c0-.52.42-.94.94-.94zM39.32 120a5.87 5.87 0 1 1 5.87-5.87 5.88 5.88 0 0 1-5.87 5.87zm49.36 0a5.87 5.87 0 1 1 5.87-5.87 5.87 5.87 0 0 1-5.87 5.87zm14.8-9.87H102c-2.2-7.332-9.928-11.491-17.26-9.291a13.861 13.861 0 0 0-9.29 9.291H52.6c-2.2-7.332-9.928-11.491-17.26-9.291a13.861 13.861 0 0 0-9.29 9.291h-6.47a.94.94 0 0 1-.93-.94v-14.8a.94.94 0 0 1 .93-.94h89.77v10.81a5.87 5.87 0 0 1-5.87 5.87zm-92.29-82a4 4 0 0 1 5.467-1.451l.003.001 6.69 3.88 12.33-6-13.79-8a4 4 0 0 1 4-6.91l18.4 10.73 13.07-6.4a4.003 4.003 0 1 1 3.52 7.19l-36 17.6a4 4 0 0 1-3.76-.13l-8.54-5a4 4 0 0 1-1.39-5.52z"></path>
                                                   </svg>
                                                </span>
                                             </div>
                                          </div>
                                       </li>
                                       <li class="bui-list__item">
                                          <div class="bui-list__body bp-addon bp-addon__interested_car_rentals  ">
                                             <div class="bui-list__description  ">
                                                <div class="bui-form__group bp-form-group bp-form-group__interested_car_rentals   ">
                                                   <label class="bui-checkbox  ">
                                                   <input name="interested_car_rentals" id="interested_car_rentals" type="checkbox" class="bui-checkbox__input" value="1">  
                                                   <span class="bui-checkbox__label">   Tôi muốn thuê một chiếc xe    </span>
                                                   </label>
                                                   <div class="bui-u-margin-top--4 bui-f-color-grayscale bui-f-font-caption bp-control-checkbox__subtitle">
                                                      Đừng bỏ lỡ những điểm tuyệt vời của chuyến đi - xem các lựa chọn thuê xe trong xác nhận đặt phòng.
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </section>
                           <h2 class="bp_form_box__title bui-spacer--medium bui-u-margin-top--24">
                              Các Yêu Cầu Đặc Biệt
                           </h2>
                           <section class="bui-card bui-u-bleed@small bp-card--special-requests bp-card--legacy bui-u-margin-bottom--24 e2e-card--special-requests" data-component="booking-process/special-requests">
                              <div class="bui-card__content">
                                 <div class="bui-card__text">
                                    <div class="bui-group bui-group--large">
                                       <div class="bui-group__item">
                                          <p class="bui-text--variant-body_2">
                                             Các yêu cầu đặc biệt không đảm bảo sẽ được đáp ứng – tuy nhiên, chỗ nghỉ sẽ cố gắng hết sức để thực hiện. Bạn luôn có thể gửi yêu cầu đặc biệt sau khi hoàn tất đặt phòng của mình!
                                          </p>
                                       </div>
                                       <div class="bui-group__item">
                                          <div class="bui-form__group bp-form-group bp-form-group__remarks   ">
                                             <label class="bui-form__label" for="remarks">
                                             Vui lòng ghi yêu cầu của bạn bằng tiếng Anh.
                                             <span class="bp-form-field__indicator bp-form-field__indicator--optional bui-text--variant-small_1 bui-text--color-neutral_alt">(không bắt buộc)</span>
                                             </label>
                                             <div class="bp-form-group__input-container">
                                                <textarea name="remarks" id="remarks" class="bui-form__control bui-input-textarea bp-special-requests__requests js-special-requests__requests" rows="3"></textarea>
                                             </div>
                                             <div id="form-field__helper--remarks" class="bui-form__error js-form-field__helper--remarks"></div>
                                          </div>
                                       </div>
                                       <div class="bui-group__item">
                                          <div class="bui-group bui-group--large">
                                             <div class="bui-group__item">
                                                <div class="bui-group bui-group--large">
                                                   <fieldset class="bui-form__group bp-control-group    js-quiet-room__container " aria-role="group">
                                                      <div class="bui-group  ">
                                                         <div class="bui-group__item">
                                                            <div class="bui-form__group bp-form-group bp-form-group__quiet_room_chosen   ">
                                                               <label class="bui-checkbox  ">
                                                               <input name="quiet_room_chosen" id="quiet_room_chosen" type="checkbox" class="bui-checkbox__input" value="1">  
                                                               <span class="bui-checkbox__label">   
                                                               Tôi muốn phòng yên tĩnh
                                                               </span>
                                                               </label>
                                                            </div>
                                                         </div>
                                                      </div>
                                                   </fieldset>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </section>
                           <h2 class="bp_form_box__title bui-spacer--medium bui-u-margin-top--24">
                              Thời gian đến của bạn
                           </h2>
                           <section class="bui-card bui-u-bleed@small bp-card--arrival-time bp-card--legacy bui-u-margin-bottom--24">
                              <div class="bui-card__content">
                                 <div class="bui-card__text">
                                    <div class="bui-group bui-group--large">
                                       <div class="bui-group__item">
                                          <ul class="bui-list bui-list--text bui-list--icon">
                                             <li class="bui-list__item">
                                                <span class="bui-list__icon" role="presentation">
                                                   <svg class="bk-icon -streamline-checkmark_selected" fill="#008009" height="24" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M56.62 93.54a4 4 0 0 1-2.83-1.18L28.4 67a4 4 0 1 1 5.65-5.65l22.13 22.1 33-44a4 4 0 1 1 6.4 4.8L59.82 91.94a4.06 4.06 0 0 1-2.92 1.59zM128 64c0-35.346-28.654-64-64-64C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.33-.039 63.961-28.67 64-64zm-8 0c0 30.928-25.072 56-56 56S8 94.928 8 64 33.072 8 64 8c30.914.033 55.967 25.086 56 56z"></path>
                                                   </svg>
                                                </span>
                                                <div class="bui-list__body">
                                                   <div class="bui-list__description">
                                                      Phòng của bạn sẽ sẵn sàng để nhận vào lúc 14:00
                                                   </div>
                                                </div>
                                             </li>
                                             <li class="bui-list__item">
                                                <span class="bui-list__icon" role="presentation">
                                                   <svg class="bk-icon -streamline-front_desk" fill="#008009" height="24" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                                      <path d="M14.244 14.156a6.75 6.75 0 0 0-6.75-5.906A6.747 6.747 0 0 0 .73 14.397a.75.75 0 0 0 1.494.134 5.25 5.25 0 0 1 5.27-4.781 5.253 5.253 0 0 1 5.262 4.594.75.75 0 1 0 1.488-.188zM10.125 4.125a2.625 2.625 0 1 1-5.25 0V1.5h5.25v2.625zm1.5 0V1.5a1.5 1.5 0 0 0-1.5-1.5h-5.25a1.5 1.5 0 0 0-1.5 1.5v2.625a4.125 4.125 0 0 0 8.25 0zM23.25 22.5H.75l.75.75v-7.5a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v7.5l.75-.75zm0 1.5a.75.75 0 0 0 .75-.75v-7.5a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 15.75v7.5c0 .414.336.75.75.75h22.5zM4.376 5.017a9.42 9.42 0 0 1 3.12-.517 9.428 9.428 0 0 1 3.133.519.75.75 0 0 0 .49-1.418A10.917 10.917 0 0 0 7.498 3a10.91 10.91 0 0 0-3.611.6.75.75 0 0 0 .49 1.417zM15.75 14.27a3.001 3.001 0 0 1 6 .16.75.75 0 1 0 1.5.04 4.501 4.501 0 1 0-9-.24.75.75 0 1 0 1.5.04zm3.75-3.77V8.25a.75.75 0 0 0-1.5 0v2.25a.75.75 0 0 0 1.5 0zM17.25 9h3a.75.75 0 0 0 0-1.5h-3a.75.75 0 0 0 0 1.5z"></path>
                                                   </svg>
                                                </span>
                                                <div class="bui-list__body">
                                                   <div class="bui-list__description">
                                                      Lễ tân 24 giờ - Luôn có trợ giúp mỗi khi bạn cần!
                                                   </div>
                                                </div>
                                             </li>
                                          </ul>
                                       </div>
                                       <div class="bui-group__item">
                                          <div class="bui-grid">
                                             <div class="bui-grid__column bui-grid__column-6@medium">
                                                <div class="bui-form__group bp-form-group bp-form-group__checkin_eta_hour  ">
                                                   <label class="bui-form__label" for="checkin_eta_hour">Thêm thời gian đến dự kiến của bạn  
                                                   <span class="bp-form-field__indicator bp-form-field__indicator--optional bui-text--variant-small_1 bui-text--color-neutral_alt">(không bắt buộc)</span>
                                                   </label>
                                                   <div class="bui-input-select">
                                                      <select name="checkin_eta_hour" class="
                                                         bui-form__control
                                                         " id="checkin_eta_hour">
                                                         <option value="" disabled="" selected="">Vui lòng chọn</option>
                                                         <option value="-1">Tôi không biết</option>
                                                         <option value="0">00:00 – 01:00 </option>
                                                         <option value="1">01:00 – 02:00 </option>
                                                         <option value="2">02:00 – 03:00 </option>
                                                         <option value="3">03:00 – 04:00 </option>
                                                         <option value="4">04:00 – 05:00 </option>
                                                         <option value="5">05:00 – 06:00 </option>
                                                         <option value="6">06:00 – 07:00 </option>
                                                         <option value="7">07:00 – 08:00 </option>
                                                         <option value="8">08:00 – 09:00 </option>
                                                         <option value="9">09:00 – 10:00 </option>
                                                         <option value="10">10:00 – 11:00 </option>
                                                         <option value="11">11:00 – 12:00 </option>
                                                         <option value="12">12:00 – 13:00 </option>
                                                         <option value="13">13:00 – 14:00 </option>
                                                         <option value="14">14:00 – 15:00 </option>
                                                         <option value="15">15:00 – 16:00 </option>
                                                         <option value="16">16:00 – 17:00 </option>
                                                         <option value="17">17:00 – 18:00 </option>
                                                         <option value="18">18:00 – 19:00 </option>
                                                         <option value="19">19:00 – 20:00 </option>
                                                         <option value="20">20:00 – 21:00 </option>
                                                         <option value="21">21:00 – 22:00 </option>
                                                         <option value="22">22:00 – 23:00 </option>
                                                         <option value="23">23:00 – 00:00 </option>
                                                         <option value="24">00:00 – 01:00 (ngày hôm sau)</option>
                                                         <option value="25">01:00 – 02:00 (ngày hôm sau)</option>
                                                      </select>
                                                      <svg class="bk-icon -iconset-dropdown bui-input-select__icon" height="16" role="presentation" width="16" viewBox="0 0 128 128" aria-hidden="true" focusable="false">
                                                         <path d="M92 52a4 4 0 0 1-2.8-1.2L64 25.7 38.8 50.8a4 4 0 0 1-5.6-5.6L64 14.3l30.8 30.9A4 4 0 0 1 92 52zm0 24a4 4 0 0 0-2.8 1.2L64 102.3 38.8 77.2a4 4 0 0 0-5.6 5.6L64 113.7l30.8-30.9A4 4 0 0 0 92 76z"></path>
                                                      </svg>
                                                   </div>
                                                   <div id="form-field__helper--checkin_eta_hour" class="bui-form__helper js-form-field__helper--checkin_eta_hour">Thời gian theo múi giờ của Viêng Chăn</div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </section>
                           <h2 class="bp_form_box__title bui-spacer--medium bui-u-margin-top--24">
                              Bạn muốn bù đắp để giảm bớt ảnh hưởng từ các đặt chỗ của mình?
                           </h2>
                           <section class="bui-card bui-u-bleed@small bp-card--carbon-offset bp-card--legacy bui-u-margin-bottom--24">
                              <div class="bui-card__content bui-group">
                                 <div class="bui-group__item bui-inline-container">
                                    <div class="bui-inline-container__main">
                                       <div class="bui-group__item">
                                          <p class="bui-text--variant-body_2">
                                             Chúng tôi đang tìm cách bù đắp cho môi trường vì lượng phát thải carbon từ hoạt động du lịch đã gây ảnh hưởng lên hành tinh, con người và đời sống hoang dã. Tất cả vì một tương lai du lịch bền vững.
                                          </p>
                                       </div>
                                       <div class="bui-group bui-button-group bui-group--inline bui-group--vertical-align-middle">
                                          <div class="bui-group__item">
                                             <button data-modal-id="carbon-offset-learn-more" data-bui-component="Modal" data-modal-close-aria-label="Đóng" class="bui-button bui-button--tertiary" type="button" data-et-click="customGoal:HBAZECedMIFOIEeUWe:2">
                                             <span class="bui-button__text">Tìm hiểu thêm</span>
                                             </button>
                                          </div>
                                       </div>
                                       <div class="bui-group__item bui-u-margin-top--4">
                                          <label class="bui-checkbox">
                                          <input type="checkbox" id="carbon_offset_selected" class=" bui-checkbox__input" name="carbon_offset_selected" value="1">
                                          <span class="bui-checkbox__label">
                                          Ok, trong tương lai, tôi sẵn sàng đóng góp <b>VND&nbsp;91.329</b> để bù đắp cho môi trường vì ảnh hưởng của carbon từ các đặt chỗ của tôi
                                          </span>
                                          </label>
                                       </div>
                                    </div>
                                    <div class="bui-inline-container__end">
                                       <span class="bui-icon bui-icon--largest" role="presentation">
                                          <svg class="bk-icon -streamline-earth_heart" fill="#008009" height="32" width="32" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                             <path d="M12.664 22.48c-5.788.365-10.776-4.03-11.141-9.818-.366-5.787 4.03-10.775 9.817-11.14a10.5 10.5 0 0 1 11.067 9.069.75.75 0 1 0 1.486-.202A12 12 0 0 0 11.245.024C4.631.442-.392 6.143.025 12.757c.418 6.614 6.119 11.637 12.733 11.22a.75.75 0 1 0-.094-1.497zM7.079 16.5a2.25 2.25 0 0 0 2.183-2.796l-.75-3A2.25 2.25 0 0 0 6.329 9H.976a.75.75 0 0 0-.735.6c-.9 4.42.755 8.97 4.284 11.779a.75.75 0 0 0 1.202-.44l1.008-5.042L6 16.5h1.079zm0-1.5H6a.75.75 0 0 0-.735.603l-1.008 5.042 1.202-.44A10.496 10.496 0 0 1 1.711 9.9l-.735.6h5.353a.75.75 0 0 1 .727.568l.75 3A.75.75 0 0 1 7.08 15zM20.985 4.5h-4.064a2.25 2.25 0 0 0-2.183 1.704l-.75 3a.75.75 0 0 0 1.456.364l.75-3A.75.75 0 0 1 16.92 6h4.064a.75.75 0 0 0 0-1.5zm1.853 8.536a3.75 3.75 0 0 0-5.302.125l-.829.87h1.086l-.83-.87a3.75 3.75 0 0 0-5.435 5.167l5.179 5.438a.75.75 0 0 0 1.086 0l5.171-5.43a3.75 3.75 0 0 0-.126-5.3zm-1.036 1.086a2.25 2.25 0 0 1 .076 3.18l-5.171 5.43h1.086l-5.17-5.43a2.25 2.25 0 0 1 3.264-3.098l.82.862a.75.75 0 0 0 1.086 0l.829-.87a2.25 2.25 0 0 1 3.18-.074z"></path>
                                          </svg>
                                       </span>
                                    </div>
                                 </div>
                              </div>
                           </section>
                           <template id="carbon-offset-learn-more" style="display: none !important;">
                              <header class="bui-modal__header">
                                 <h2 class="bui-modal__title" data-bui-ref="modal-title">
                                    Bạn muốn bù đắp để giảm ảnh hưởng từ đặt chỗ của mình vì một tương lai tốt hơn?
                                 </h2>
                                 <div class="bui-u-text-center">
                                    <img src="https://cf.bstatic.com/static/img/experiment_carbon_offset/globe/d479f30ced78e8a215c93aa89b23876513504652.png" srcset="https://cf.bstatic.com/static/img/experiment_carbon_offset/globe_2x/c665f62ad76fa8e6ae555950763dc02423ffccfe.png 2x" alt="" role="presentation" width="160" height="192">
                                 </div>
                                 <p class="bui-modal__paragraph">
                                    Trong tương lai, chúng tôi muốn mang đến cho bạn cơ hội giảm bớt sự ảnh hưởng do phát thải carbon từ các đặt chỗ của bạn lên hành tinh chúng ta thông qua hành động bù đắp cho môi trường.
                                 </p>
                                 <p class="bui-modal__paragraph">
                                    Đóng góp của bạn sẽ được chuyển đến các tổ chức giúp giảm thiểu lượng carbon, cũng như nâng cao nhận thức của mọi người, cải thiện chất lượng cuộc sống và tạo thêm những cộng đồng bền vững.
                                 </p>
                                 <div class="bui-f-font-caption">
                                    Mọi đóng góp sẽ được chuyển trực tiếp đến <a href="https://www.myclimate.org/" target="_blank">MyClimate.org</a>
                                 </div>
                              </header>
                              <footer class="bui-modal__footer">
                                 <div class="bui-group bui-group--inline bui-group--vertical-align-middle bui-button-group">
                                    <div class="bui-group__item">
                                       <button data-bui-ref="modal-close" class="bui-button" type="button">
                                       <span class="bui-button__text">
                                       Tôi đã hiểu
                                       </span>
                                       </button>
                                    </div>
                                 </div>
                              </footer>
                           </template>
                           <div class="bui-group bui-spacer--large">
                              <div class="
                                 bui-group bui-button-group bui-group--vertical-align-middle bui-group--inline bui-group--align-end 
                                 ">
                                 <span id="booking-bpg__description" class="bui-u-sr-only">- mở hộp thoại mới</span>
                                 <div class="bui-group__item">
                                    <button class="
                                       bui-button
                                       bui-button--tertiary
                                       js-price-match-modal__trigger
                                       bp-button
                                       " type="button" data-component="price-match-trigger" data-bui-component="Popover" data-popover-content-id="bp-bpg-popover" data-popover-position="bottom" data-modal-id="bp_bpg_modal" aria-describedby="booking-bpg__description">
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
                                 </div>
                                 <div class="bui-group__item">
                                    <button class="
                                       bui-button
                                       bui-button--primary
                                       bui-button--large
                                       js-bp-submit-button--next-step e2e-bp-submit-button--next-step
                                       bp-button
                                       " type="submit" name="book" data-bui-component="Popover" data-popover-content-id="bp-submit-popover" data-popover-position="top end">
                                       <span class="bui-button__text js-button__text"><asp:LinkButton runat="server" ID="btnBookPay" OnClick="btnBookPayClick" style="color: white;"> Tiếp theo: Chi tiết cuối cùng</asp:LinkButton> </span> 
                                       <span class="bui-button__icon bui-button__icon--end js-button__icon">
                                          <svg class="bk-icon -streamline-arrow_nav_right" height="24" role="presentation" width="24" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                                             <path d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z"></path>
                                          </svg>
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
                        </form>
                     </div>
                  </div>
               </div>
            </main>
         </div>
         <svg class="bk-icon -iconset-warning" height="128" style="display:none;" width="128" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
            <path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 91a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm8-61l-5 39h-6l-5-39a8 8 0 1 1 16 0z"></path>
         </svg>
         <script type="text/javascript" nonce="7Zb0XzugFnE9IUD">
            booking.env.b_prompt_text = "Họ (tiếng Anh), Tên (tiếng Anh)";
            booking.env.b_prompt_text_email = "Địa chỉ email";
         </script>
         <div class="bp_change_dates_lightbox" data-checkin="2021-08-11" data-checkout="2021-08-14">
            <h2 class="bp_change_dates_lightbox_title" id="bp_change_dates_lightbox_title">
               Đổi ngày
            </h2>
            <form action="book.html" method="post" class="bp_change_dates_form">
               <fieldset class="bp_change_dates_fields">
                  <input type="hidden" name="bhc_csrf_token" value="1uwMYQAAAAA=1V7WImCxwSt5DQwmkZH6Au87RKLYkGZZe1LMvBnuYr9ou8LCDSe6fW0E1oaqZT0vI-VDNlJwNfRYBxMRE70FpLoyB6wH-N6rx0jdJfBfzEEk2XuuC6Qus37GwSmTr0JYoVMIkh4bZ9s9fNyFamI-HJan09ElywEHZ9I0BbyS7ouXEL0MNr3lNCCcsNg4gUlU2kMs1u09UeDVy2ca">
                  <input type="hidden" name="aid" value="318615">
                  <input type="hidden" name="label" value="New_Vietnamese_VI_VN_27026978065-VUi9UAodhyPVe7ppYJAAHgS102063657025:pl:ta:p1:p2:ac:ap:neg:fi2658306050:tidsa-303472601955:lp9040331:li:dec:dm">
                  <input type="hidden" name="lang" value="vi">
                  <input type="hidden" name="sid" value="96a61b88ba49cdbab74a0c2be36e1f22">
                  <input type="hidden" name="remb" value="0a15202b1a6537b2a17b3a0b4a0b5a166b6a522b" class="ClickTaleSensitive">
                  <input type="hidden" name="reub" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="rets" value="3a108b834c4a434b55c" class="ClickTaleSensitive">
                  <input type="hidden" name="recp" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="cc_refp" value="" class="ClickTaleSensitive">
                  <input type="hidden" name="bp_travel_purpose" value="leisure" class="ClickTaleSensitive">
                  <input type="hidden" name="trips_promo" value="[]" class="ClickTaleSensitive">
                  <input type="hidden" name="rt_pageview_id" value="a33218b567450003" class="ClickTaleSensitive">
                  <input type="hidden" name="create_account" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="is_group_recommendation" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="is_24hr" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="from_ski_sr" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="upgrade_to" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="hostname" value="www.booking.com" class="ClickTaleSensitive">
                  <input type="hidden" name="rt_pos_final" value="1.1" class="ClickTaleSensitive">
                  <input type="hidden" name="room1" value="A,A" class="ClickTaleSensitive">
                  <input type="hidden" name="full_cost_plain" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="bp_from" value="standard" class="ClickTaleSensitive">
                  <input type="hidden" name="full_cost" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="dotd_fb" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="ufi" value="-2669740" class="ClickTaleSensitive">
                  <input type="hidden" name="dc_issue_number" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="update_profile" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="recommended_room_id" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="final_booking_price" value="264" class="ClickTaleSensitive">
                  <input type="hidden" name="send_sms_confirmation_multi_lang_to_this_number" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="hotel_id" value="1852078" class="ClickTaleSensitive">
                  <input type="hidden" name="prd_all_included" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="pset_discount_won" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="rt_num_rooms" value="5" class="ClickTaleSensitive">
                  <input type="hidden" name="tnc_checkbox" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="pay_now" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="emk_opt_in" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="rt_num_blocks" value="5" class="ClickTaleSensitive">
                  <input type="hidden" name="rt_num_blocks_per_room" value="{&quot;185207805&quot;:1,&quot;185207801&quot;:1,&quot;185207802&quot;:1,&quot;185207803&quot;:1,&quot;185207804&quot;:1}" class="ClickTaleSensitive">
                  <input type="hidden" name="sms_confirmation" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="lphwd" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="send_sms_confirmation_to_this_number" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="from_reco_block" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="rt_relevance_metric_id" value="84e7c4ff-3908-482b-8a10-895843120b84" class="ClickTaleSensitive">
                  <input type="hidden" name="send_price_watch" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="emk_bp_redirect" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="rt_pos_selected" value="1" class="ClickTaleSensitive">
                  <input type="hidden" name="ap_ref" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="from_beach_key_ufi_sr" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="bpid" value="929F2353-81D9-4228-AC52-EA7E38E6630E" class="ClickTaleSensitive">
                  <input type="hidden" name="bp_nocc_compset" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="ap_available" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="send_whatsapp_confirmation" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="allow_past" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="total_cost" value="264" class="ClickTaleSensitive">
                  <input type="hidden" name="cc1" value="vn" class="ClickTaleSensitive">
                  <input type="hidden" name="rt_pos_selected_within_room" value="1" class="ClickTaleSensitive">
                  <input type="hidden" name="from_beach_non_key_ufi_sr" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="send_link_app" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="promo" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="seen_ft_rvw" value="0" class="ClickTaleSensitive">
                  <input type="hidden" name="warn_intro_error_message" value="okok" class="ClickTaleSensitive">
                  <input type="hidden" name="nr_rooms_185207801_204732343_2_1_0" value="1" class="ClickTaleSensitive">
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
         <div id="bp-submit-popover" class="bui-card bui-u-hidden">
            <div class="bui-card__content">
               <div class="bui-group">
                  <div class="bui-group__item">
                     <div class="bui-f-font-display_one">Muong Thanh Luxury Vientiane</div>
                     <div class="bui-f-font-strong">
                        Phòng Deluxe 2 Giường Đơn Nhìn Ra Sông
                     </div>
                  </div>
                  <hr class="bui-group__item bui-divider">
                  <div class="bui-group__item bp-date-range bui-date-range bui-date-range--large">
                     <div class="bui-date-range__item">
                        <div id="bp-checkin-date__label" class="bui-date__label">Nhận phòng</div>
                        <time class="bui-date bui-date--large" aria-describedby="bp-checkin-date__label">
                        <span class="bui-date__title">T4 Ngày 11 Tháng 8 Năm 2021</span>
                        <span class="bui-date__subtitle">
                        Từ 14:00
                        </span>
                        </time>
                     </div>
                     <div class="bui-date-range__item">
                        <div id="bp-checkout-date__label" class="bui-date__label">Trả phòng</div>
                        <time class="bui-date bui-date--large" aria-describedby="bp-checkout-date__label">
                        <span class="bui-date__title">T7 Ngày 14 Tháng 8 Năm 2021</span>
                        <span class="bui-date__subtitle">
                        Cho đến 12:00
                        </span>
                        </time>
                     </div>
                  </div>
                  <div class="bui-group__item bui-group bui-group--small">
                     <div class="bui-group__item bui-f-font-emphasized">Tổng thời gian lưu trú:</div>
                     <div class="bui-group__item bui-f-font-strong">
                        3 đêm
                     </div>
                  </div>
                  <div class="bui-group__item">
                     <div class="bui-alert bp-alert-temp bui-u-bleed@small bui-alert--inline bui-alert--success" role="status">
                        <span class="bui-alert__icon">
                           <svg class="bk-icon -streamline-checkmark" height="24" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                              <path d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z"></path>
                           </svg>
                        </span>
                        <div class="bui-alert__description">
                           <div class="bui-alert__text">Không cần thanh toán trước - bạn trả khi đến nghỉ.</div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div id="bp-bpg-popover" class="bui-card bui-u-hidden">
            <div class="pp-bpg-tooltip--header">
               Chúng Tôi Luôn Khớp Giá!
            </div>
            <div class="pp-bpg-tooltip--image"></div>
            <div class="pp-bpg-tooltip--text">
               Giá phòng thấp •
               <span class="&quot;no_booking_fees_fr_tooltip&quot;">Không tính phí đặt phòng</span> •
               Tìm được giá thấp hơn? Chúng tôi sẽ hoàn lại số tiền chênh lệch!
            </div>
         </div>
         <svg class="bk-icon -streamline-checkmark_selected" height="128" style="display:none;" width="128" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
            <path d="M56.62 93.54a4 4 0 0 1-2.83-1.18L28.4 67a4 4 0 1 1 5.65-5.65l22.13 22.1 33-44a4 4 0 1 1 6.4 4.8L59.82 91.94a4.06 4.06 0 0 1-2.92 1.59zM128 64c0-35.346-28.654-64-64-64C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.33-.039 63.961-28.67 64-64zm-8 0c0 30.928-25.072 56-56 56S8 94.928 8 64 33.072 8 64 8c30.914.033 55.967 25.086 56 56z"></path>
         </svg>
         <svg class="bk-icon -streamline-close_circle" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
            <path d="M22.5 11.999c0 5.799-4.701 10.5-10.5 10.5s-10.5-4.701-10.5-10.5 4.701-10.5 10.5-10.5 10.5 4.701 10.5 10.5zm1.5 0c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-15.97 5.03l9-9a.75.75 0 0 0-1.06-1.06l-9 9a.75.75 0 1 0 1.06 1.06zm9-1.06l-9-9a.75.75 0 0 0-1.06 1.06l9 9a.75.75 0 1 0 1.06-1.06z"></path>
         </svg>
         <svg class="bk-icon -streamline-info_sign" height="24" style="display:none;" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
            <path d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
         </svg>
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
                     <div class="bui-f-font-body">Phòng này có giá ít hơn VND&nbsp;827.212 so với giá trung bình của Viêng Chăn là VND&nbsp;2.846.420/ đêm</div>
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
      <script id="script-booking-availability-rooms-env" type="text/javascript" nonce="7Zb0XzugFnE9IUD">
         // <![CDATA[
         booking.env.b_rooms = [];
         booking.env.you_can_book_at_most_x_rooms_with_this_hotel = 'Bạn có thể đặt nhiều nhất là 0 phòng với khách sạn này';
         booking.env.b_stage = 2;
         booking.env.you_can_book_for_at_most_x_guests_per_reservation_with_this_hotel = 'Bạn có thể đặt nhiều nhất cho 0 khách trong 1 đặt phòng với khách sạn này.';
         // ]]>
      </script>
   </div>
</div>
</asp:Content>

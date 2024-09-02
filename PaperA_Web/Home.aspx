﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PaperA_Web.index" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <title>Paper A - EatWell</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700|Raleway" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">



    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body data-spy="scroll" data-target="#site-navbar" data-offset="200">

    <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar">
        <div class="container">
            <a class="navbar-brand" href="Home.aspx">EatWell</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#site-nav" aria-controls="site-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span>Menu
       
            </button>

            <div class="collapse navbar-collapse" id="site-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="#section-home" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="#section-about" class="nav-link">About</a></li>
                    <li class="nav-item"><a href="#section-menu" class="nav-link">Menu</a></li>
                    <li class="nav-item"><a href="#section-reserve" class="nav-link">Reservation</a></li>
                    <li class="nav-item"><a href="#section-contact" class="nav-link">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->

    <section class="site-cover" style="background-image: url(images/bg_3.jpg);" id="section-home">
        <div class="container">
            <div class="row align-items-center justify-content-center text-center site-vh-100">
                <div class="col-md-12">
                    <h1 class="site-heading site-animate mb-3">Welcome To EatWell</h1>
                    <h2 class="h5 site-subheading mb-5 site-animate">Come and eat well with our delicious &amp; healthy foods.</h2>
                    <p><a href="#section-menu" class="btn btn-outline-white btn-lg site-animate">Shop Now!</a></p>
                </div>
            </div>
        </div>
    </section>
    <!-- END section -->

    <section class="site-section" id="section-about">
        <div class="container">
            <div class="row">
                <div class="col-md-5 site-animate mb-5">
                    <h4 class="site-sub-title">Our Story</h4>
                    <h2 class="site-primary-title display-4">Welcome</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                    <!--p><a href="#" class="btn btn-secondary btn-lg">Learn More About Us</a></p!-->
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
                    <img src="images/about_img_1.jpg" alt="Free Template by colorlib.com" class="img-fluid">
                </div>
            </div>
        </div>
    </section>
    <!-- END section -->

    <!--
        Dynamically populate "Delicios Menu"
        each tab should have its own food type.
        Display the image, name, price and descripotion.
        Link the name and image to "about meal
        -->
    <section class="site-section" id="section-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center mb-5 site-animate">
                    <h2 class="display-4">Delicious Menu</h2>
                    <div class="row justify-content-center">
                        <div class="col-md-7">
                            <p class="lead">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 text-center">

                    <ul class="nav site-tab-nav nav-pills mb-5" id="pills-tab" role="tablist">
                        <li class="nav-item site-animate">
                            <a class="nav-link active" id="pills-breakfast-tab" data-toggle="pill" href="#pills-breakfast" role="tab" aria-controls="pills-breakfast" aria-selected="true">Breakfast</a>
                        </li>
                        <li class="nav-item site-animate">
                            <a class="nav-link" id="pills-lunch-tab" data-toggle="pill" href="#pills-lunch" role="tab" aria-controls="pills-lunch" aria-selected="false">Lunch</a>
                        </li>
                        <li class="nav-item site-animate">
                            <a class="nav-link" id="pills-dinner-tab" data-toggle="pill" href="#pills-dinner" role="tab" aria-controls="pills-dinner" aria-selected="false">Dinner</a>
                        </li>
                    </ul>

                    <div class="tab-content text-left">
                        <div class="tab-pane fade show active" id="pills-breakfast" role="tabpanel" aria-labelledby="pills-breakfast-tab">
                            <div class="row">

                                <div class="col-md-6 site-animate" id="breakfast_1" runat="server">
                                </div>

                                <div class="col-md-6 site-animate" id="breakfast_2" runat="server">
                                </div>

                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-lunch" role="tabpanel" aria-labelledby="pills-lunch-tab">

                            <div class="row">

                                <div class="col-md-6 site-animate" id="lunch_1" runat="server">
                                </div>

                                <div class="col-md-6 site-animate" id="lunch_2" runat="server">
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane fade" id="pills-dinner" role="tabpanel" aria-labelledby="pills-dinner-tab">
                            <div class="row">

                                <div class="col-md-6 site-animate" id="dinner_1" runat="server">
                                </div>

                                <div class="col-md-6 site-animate" id="dinner_2" runat="server">
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END section -->

    <section class="site-section bg-light" id="section-reserve">

        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">

                        <div class="col-lg-12 p-5">

                            <h1 class="mb-4">Reserve A Table</h1>
                            <!--Turn form, and form controls into a html server tag-->
                            <form action="#" method="post" id="form_1" runat="server">
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="m_fname">First Name</label>
                                        <input type="text" class="form-control" id="m_fname" runat="server">
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="m_lname">Last Name</label>
                                        <input type="text" class="form-control" id="m_lname" runat="server">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 form-group">
                                        <label for="m_email">Email</label>
                                        <input type="email" class="form-control" id="m_email" runat="server">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="m_people">How Many People</label>
                                        <select name="" id="m_people" class="form-control" runat="server">
                                            <option value="1">1 Person</option>
                                            <option value="2">2 People</option>
                                            <option value="3">3 People</option>
                                            <option value="4">4+ People</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="m_phone">Phone</label>
                                        <input type="text" class="form-control" id="m_phone" runat="server">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="m_date">Date</label>
                                        <input type="text" class="form-control" id="m_date" runat="server">
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="m_time">Time</label>
                                        <input type="text" class="form-control" id="m_time" runat="server">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 form-group">
                                        <label for="m_message">Message</label>
                                        <textarea class="form-control" id="m_message" runat="server" cols="30" rows="7"></textarea>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 form-group" id="feedback" runat="server">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 form-group">
                                        <asp:Button class="btn btn-primary btn-lg btn-block" ID="btnReserve" runat="server" Text="Reserve Now" OnClick="btnReserve_Click" />
                                        <asp:Button class="btn btn-primary btn-lg btn-block" ID="btnUpdate" runat="server" Text="Update Reservation" Visible="false" OnClick="btnUpdate_Click" />
                                    </div>
                                </div>
                                <br />
                                <div class="row" id="email_input" runat="server">
                                    <div class="col-md-12 form-group">
                                        <label for="m_email">Email</label>
                                        <input type="email" class="form-control" id="email_Edit" runat="server">
                                    </div>
                                </div>

                                <div class="row" id="btn_row" runat="server">
                                    <div class="col-md-12 form-group">
                                        <asp:Button class="btn btn-primary btn-lg btn-block" ID="btnEdit" runat="server" Text="Edit Reservation" OnClick="btnEdit_Click" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section class="site-section bg-light" id="section-contact">
        <div class="container">
            <div class="row">

                <div class="col-md-12 text-center mb-5 site-animate">
                    <h2 class="display-4">Get In Touch</h2>
                    <div class="row justify-content-center">
                        <div class="col-md-7">
                            <p class="lead">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-7 mb-5 site-animate">
                    <form method="post">
                        <div class="form-group">
                            <label for="name" class="sr-only">Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Name">
                        </div>
                        <div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <input type="text" class="form-control" id="email" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="message" class="sr-only">Message</label>
                            <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Write your message"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary btn-lg" value="Send Message">
                        </div>
                    </form>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-4 site-animate">
                    <p>
                        <img src="images/about_img_1.jpg" alt="" class="img-fluid">
                    </p>
                    <p class="text-black">
                        Address:
                        <br>
                        121 Street, Melbourne Victoria
                        <br>
                        3000 Australia
                        <br>
                        <br>
                        Phone:
                        <br>
                        90 987 65 44
                        <br>
                        <br>
                        Email:
                        <br>
                        <a href="mailto:info@yoursite.com">info@yoursite.com</a>
                    </p>

                </div>

            </div>
        </div>
    </section>
    <!-- END section -->


    <footer class="site-footer site-bg-dark site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4 site-animate">
                            <h2 class="site-heading-2">About Us</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque, similique, delectus blanditiis odit expedita amet. Sed labore ipsum vel dolore, quis, culpa et magni autem sequi facere eos tenetur, ex?</p>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-3 site-animate">
                            <div class="site-footer-widget mb-4">
                                <h2 class="site-heading-2">The Restaurant</h2>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="py-2 d-block">About Us</a></li>
                                    <li><a href="#" class="py-2 d-block">Chefs</a></li>
                                    <li><a href="#" class="py-2 d-block">Events</a></li>
                                    <li><a href="#" class="py-2 d-block">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2 site-animate">
                            <div class="site-footer-widget mb-4">
                                <h2 class="site-heading-2">Useful links</h2>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="py-2 d-block">Foods</a></li>
                                    <li><a href="#" class="py-2 d-block">Drinks</a></li>
                                    <li><a href="#" class="py-2 d-block">Breakfast</a></li>
                                    <li><a href="#" class="py-2 d-block">Brunch</a></li>
                                    <li><a href="#" class="py-2 d-block">Dinner</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2 site-animate">
                            <div class="site-footer-widget mb-4">
                                <h2 class="site-heading-2">Useful links</h2>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="py-2 d-block">Foods</a></li>
                                    <li><a href="#" class="py-2 d-block">Drinks</a></li>
                                    <li><a href="#" class="py-2 d-block">Breakfast</a></li>
                                    <li><a href="#" class="py-2 d-block">Brunch</a></li>
                                    <li><a href="#" class="py-2 d-block">Dinner</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row site-animate">
                <div class="col-md-12 text-center">
                    <div class="site-footer-widget mb-4">
                        <ul class="site-footer-social list-unstyled ">
                            <li class="site-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                            <li class="site-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                            <li class="site-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-12 text-center">
                    <p>
                        &copy;
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        All rights reserved | Made with <i class="icon-heart" aria-hidden="true"></i>by <a href="https://colorlib.com" target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </footer>



    <!-- loader -->
    <div id="site-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
        </svg>
    </div>


    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>

    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>

    <script src="js/jquery.animateNumber.min.js"></script>


    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>

    <script src="js/main.js"></script>

</body>
</html>

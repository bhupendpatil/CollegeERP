﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Design2.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section id="imgBanner">
      <h2>Course Details</h2>
    </section>

    <section id="courseArchive">
        <div class="container">
            <div class="aboutus_area wow fadeInLeft">
                <h2 class="titile">Courses Offered</h2>
                <p>
                    B.Sc (Computer Science & Information Technology)<br />
                    <br />

                    B.Sc (Computer Science)<br />
                    <br />

                    Bachelors of Mass Media<br />
                    <br />

                    Bachelors in Commerce<br />
                    <br />

                    Bachelor of Management Studies (BMS)<br />
                    <br />
                </p>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="courseArchive_content">
                        <div class="singlecourse_ferimg_area">
                            <div class="singlecourse_ferimg">
                                <img src="img/course-single.jpg" alt="img">
                            </div>
                            <div class="singlecourse_bottom">
                                <h2>Introduction To Matrix</h2>
                                <span class="singlecourse_author">Bhanuj Maam, Teacher
                                </span>
                            </div>
                        </div>
                        <div class="single_course_content">
                            <h2>About The Coures</h2>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
                            <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                            <table class="table table-striped course_table">
                                <thead>
                                    <tr>
                                        <th>Course Title</th>
                                        <th>Instructor</th>
                                        <th>Timing</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Basic Of Matrix</td>
                                        <td>Bhanuj Maam</td>
                                        <td>08:00 to 13:00</td>
                                    </tr>
                                    <tr>
                                        <td>Matrix Overview</td>
                                        <td>Sarita Maam</td>
                                        <td>08:00 to 13:00</td>
                                    </tr>
                                    <tr>
                                        <td>Matrix Application</td>
                                        <td>Mayuri Maam</td>
                                        <td>08:00 to 13:00</td>
                                    </tr>
                                    <tr>
                                        <td>Advanced Matrix</td>
                                        <td>Shubhangi Maam</td>
                                        <td>08:00 to 13:00</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="related_course">
                            <h2>More Courses</h2>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="single_course wow fadeInUp">
                                        <div class="singCourse_imgarea">
                                            <img src="img/course-1.jpg">
                                            <div class="mask">
                                                <a class="course_more" href="#">View Course</a>
                                            </div>
                                        </div>
                                        <div class="singCourse_content">
                                            <h3 class="singCourse_title"><a href="#">Introduction To Matrix</a></h3>
                                            <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
                                        </div>
                                        <div class="singCourse_author">
                                            <p>Sarita Maam, Teacher</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="single_course wow fadeInUp">
                                        <div class="singCourse_imgarea">
                                            <img src="img/course-1.jpg">
                                            <div class="mask">
                                                <a class="course_more" href="#">View Course</a>
                                            </div>
                                        </div>
                                        <div class="singCourse_content">
                                            <h3 class="singCourse_title"><a href="#">Introduction To Matrix</a></h3>
                                            <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
                                        </div>
                                        <div class="singCourse_author">
                                            <p>Pushpanjali Maam, Teacher</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="courseArchive_sidebar">
                        <div class="single_sidebar">
                            <h2>Events <span class="fa fa-angle-double-right"></span></h2>
                            <ul class="news_tab">
                                <li>
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#" class="news_img">
                                                <img alt="img" src="img/news.jpg" class="media-object">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <a href="#">Dummy text of the printing and typesetting industry</a>
                                            <span class="feed_date">27.02.15</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#" class="news_img">
                                                <img alt="img" src="img/news.jpg" class="media-object">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <a href="#">Dummy text of the printing and typesetting industry</a>
                                            <span class="feed_date">28.02.15</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#" class="news_img">
                                                <img alt="img" src="img/news.jpg" class="media-object">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <a href="#">Dummy text of the printing and typesetting industry</a>
                                            <span class="feed_date">28.02.15</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="single_sidebar">
                            <h2>Quick Links <span class="fa fa-angle-double-right"></span></h2>
                            <ul>
                                <li><a href="#">Link 1</a></li>
                                <li><a href="#">Link 2</a></li>
                                <li><a href="#">Link 3</a></li>
                                <li><a href="#">Link 4</a></li>
                                <li><a href="#">Link 5</a></li>
                            </ul>
                        </div>
                        <div class="single_sidebar">
                            <h2>Sponsor Add <span class="fa fa-angle-double-right"></span></h2>
                            <a class="side_add" href="#">
                                <img src="img/side-add.jpg" alt="img"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>


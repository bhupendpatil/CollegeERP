<%@ Page Title="" Language="C#" MasterPageFile="~/Design2.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section id="slider">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="slider_area">
                    <div id="slides">
                        <ul class="slides-container">
                            <li>
                                <img src="img/slider/2.jpg" alt="img">
                                <div class="slider_caption">
                                    <h2>One of the best college in Navi Mumbai</h2>
                                </div>
                            </li>
                            <li>
                                <img src="img/slider/3.jpg" alt="img">
                                <div class="slider_caption slider_right_caption">
                                    <h2>Better Education Environment</h2>
                                </div>
                            </li>
                            <li>
                                <img src="img/slider/4.jpg" alt="img">
                                <div class="slider_caption">
                                    <h2>Find out you in better way</h2>
                                </div>
                            </li>
                        </ul>
                        <nav class="slides-navigation">
                            <a href="#" class="next"></a>
                            <a href="#" class="prev"></a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="aboutUs">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10">
                    <div class="aboutus_area wow fadeInLeft">
                        <h2 class="titile">About Us</h2>
                        <p>
                            The College is managed by Jawaharlal Nehru institute of Education, Science and Technological Research Trust Nanded (M.S), under the dynamic leadership of Honourable Shri V. M. Jadhav, former Member of Parliament (Rajya Sabha). Aim of the trust is to carry out educational. technical and research activities.<br />
                            <br />

                            The trust has a number of schools, BEd, DEd, Engineering and Management Colleges. Yashwantrao Chavan College of Arts, Commerce & Science was established in the year 2008-2009 with BSc (Information Technology) and BSc (Computer Science). The College has also started Junior college of Arts, Commerce & Science along with degree courses like BCom, BMM & BMS from academic year 2010-11.<br />
                            <br />

                            The College is having excellent infrastructure and all modern facilities required by the University of Mumbai. The College provides healthy environment for teaching, learning, innovation and character building. All the faculty members of our institution take personal interest in the overall development of the students.<br />
                            <br />

                            Spacious campus with good facilties for collaborative and interactive learning.<br />
                            <br />

                            Innovative and responsive pedagogy with latest tools and technology.<br />
                            <br />

                            Competent and qualified faculty members.<br />
                            <br />

                            Industry and career-centric learning to complement professional courses.<br />
                            <br />

                            Rich resource material availability in well-equipped library.<br />
                            <br />

                            Strategic tie-ups with international institutes facilitating global exposure.<br />
                            <br />

                            Placement assistance with soft-skill training.<br />
                            <br />

                            Emphasis on extra curricular activites like industrial visits, educational tours, annual festival, sports day, etc.<br />
                            <br />

                            Education loan available with leading Banks.<br />
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="whyUs">
        <div class="row">
            <div class="col-lg-12 col-sm-12">
                <div class="whyus_top">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="title_area">
                                    <h2 class="title_two">Why Us</h2>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_whyus_top wow fadeInUp">
                                    <div class="whyus_icon">
                                        <span class="fa fa-desktop"></span>
                                    </div>
                                    <h3>Technology</h3>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_whyus_top wow fadeInUp">
                                    <div class="whyus_icon">
                                        <span class="fa fa-users"></span>
                                    </div>
                                    <h3>Best Tutor</h3>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_whyus_top wow fadeInUp">
                                    <div class="whyus_icon">
                                        <span class="fa fa-flask"></span>
                                    </div>
                                    <h3>Practical Training</h3>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_whyus_top wow fadeInUp">
                                    <div class="whyus_icon">
                                        <span class="fa fa-support"></span>
                                    </div>
                                    <h3>Support</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-sm-12">
                <div class="whyus_bottom">
                    <div class="slider_overlay"></div>
                    <div class="container">
                        <div class="skills">
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_skill wow fadeInUp">
                                    <div id="myStat" data-dimension="150" data-info="" data-width="10" data-fontsize="25" data-percent="35" data-fgcolor="#999" data-bgcolor="#fff"></div>
                                    <h4>Repeate Learners</h4>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_skill wow fadeInUp">
                                    <div id="myStathalf2" data-dimension="150" data-info="" data-width="10" data-fontsize="25" data-percent="90" data-fgcolor="#999" data-bgcolor="#fff"></div>
                                    <h4>Success Rate</h4>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_skill wow fadeInUp">
                                    <div id="myStat2" data-dimension="150" data-info="" data-width="10" data-fontsize="25" data-percent="100" data-fgcolor="#999" data-bgcolor="#fff"></div>
                                    <h4>Student Engagement</h4>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="single_skill wow fadeInUp">
                                    <div id="myStat3" data-dimension="150" data-info="" data-width="10" data-fontsize="25" data-percent="65" data-fgcolor="#999" data-bgcolor="#fff"></div>
                                    <h4>Certified Courses</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="ourTutors">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">Our Tutors</h2>
                        <span></span>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="ourTutors_content">
                        <ul class="tutors_nav">
                            <li>
                                <div class="single_tutors">
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Sarita Maam</h3>
                                        <span>.Net / DMBS</span>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Pushpanjali Maam</h3>
                                        <span>.Net / Data Structure</span>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Aradhna MAAM</h3>
                                        <span>DCN</span>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Triveni Maam</h3>
                                        <span>DBMS / SE</span>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Vaishali Maam</h3>
                                        <span>Java / Python</span>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="single_tutors">
                                    <div class="singTutors_content">
                                        <h3 class="tutors_name">Prajakta Maam</h3>
                                        <span>Android(2 unit)</span>
                                    </div>
                                    <div class="singTutors_social">
                                        <ul class="tutors_socnav">
                                            <li><a class="fa fa-facebook" href="#"></a></li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-instagram" href="#"></a></li>
                                            <li><a class="fa fa-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="studentsTestimonial">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">What our Student says</h2>
                        <span></span>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="studentsTestimonial_content">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="single_stsTestimonial wow fadeInUp">
                                    <div class="stsTestimonial_msgbox">
                                        <p>Thanks college</p>
                                    </div>
                                    <div class="stsTestimonial_content">
                                        <h3>Shubham Jadhav</h3>
                                        <span>Ex. Student</span>
                                        <p>Web Developer</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="single_stsTestimonial wow fadeInUp">
                                    <div class="stsTestimonial_msgbox">
                                        <p>Everything's great here.<br />
                                            Thanks :D.</p>
                                    </div>
                                    <div class="stsTestimonial_content">
                                        <h3>Bhupend Patil</h3>
                                        <span>Ex. Student</span>
                                        <p>Hacker</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="single_stsTestimonial wow fadeInUp">
                                    <div class="stsTestimonial_msgbox">
                                        <p>Proud to be from this college.</p>
                                    </div>
                                    <div class="stsTestimonial_content">
                                        <h3>Abhishek Aher</h3>
                                        <span>Ex. Student</span>
                                        <p>Software Tester</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



</asp:Content>


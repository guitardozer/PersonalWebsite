﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head runat="server">
    <!--[if IE]>
    <meta http-equiv="Page-Enter" content="blendTrans(duration=0)" />
    <meta http-equiv="Page-Exit" content="blendTrans(duration=0)" />
    <![endif]-->

    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="Content/app/style.css" />

    <script type="text/javascript" src="Scripts/jquery-2.1.4.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.11.4.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="Scripts/app/home.js"></script>
    <script type="text/javascript" src="http://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/alphabet.js"></script>

    <title>Home | Eugene Nitka</title>
</head>
<body>
    <div class="wrapper">
        <div class="nav">
            <div class="container">
                <ul class="pull-left">
                    <li><a href="Home" class="bounce-up"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                    <li><a href="Experience.html" class="bounce-up">Experience</a></li>
                    <li><a href="#" class="bounce-up">Projects</a></li>
                </ul>
                <ul class="pull-right">
                    <li><a href="About.html" class="bounce-up">About</a></li>
                    <li class="dropdown bounce-up">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="Contact.aspx">Contact<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="mailto:een5041@psu.edu" target="_top"><span class="glyphicon glyphicon-envelope"></span>&nbsp;Email</a></li>
                            <li><a href="http://www.linkedin.com/in/eugenenitka"><span class="glyphicon glyphicon-globe"></span>&nbsp;Linkedin</a></li>
                            <li>
                                <p class="divider"></p>
                            </li>
                            <li><a href="Contact">More</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="jumbotron">
            <div class="container">
                <h1>Eugene Nitka III</h1>
                <p>Software Engineer whose compiling and profiling!</p>
                <a href="#" class="slide-left">Check out my experience!</a>
            </div>
        </div>

        <div class="summary">
            <div class="container">
                <div class="row">
                    <div class="col-sm-offset-1 col-sm-2 ">
                        <div class="thumbnail">
                            <img class="img-rounded img-responsive" alt="Profile Pic" src="/Content/app/profilepic.jpg" />
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3>A bit about me</h3>
                        <p>
                            I was taught the importance of hard work and determination at a young age, which has led to years of success and achievement. 
                            Whether its software programming/development, software architectural design, software testing, game development, photography, 
                            playing guitar, or extracurricular activities, I am driven by a passion to succeed and a will to learn. Any job worth doing is 
                            worth doing well, and any job I’m given is always worth doing.
                        </p>
                        <p><a href="About.html" class="slide-left">Want to know more? Click here!</a></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="push"></div>
    </div>

    <div class="footer">
        <div class="container">
            <p>All icons are from <a href="http://glyphicons.com/">GLYPHICONS</a> or <a href="http://fontawesome.io">Font Awesome by Dave Gandy</a>. All Content <i class="fa fa-copyright"></i>&nbsp;Eugene Nitka 2015 Unless Otherwise Stated</p>
        </div>
    </div>
</body>
</html>


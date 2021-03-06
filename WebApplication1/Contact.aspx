﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head id="Head1" runat="server">
    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="Content/app/style.css" />

    <script type="text/javascript" src="Scripts/jquery-2.1.4.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.11.4.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="http://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/alphabet.js"></script>
    <script type="text/javascript" src="Scripts/app/home.js"></script>

    <script type="text/javascript">
        var main = function () {

            $(".form-group input, .form-group textarea").on('input', function () {
                var from = $("#ContactFrom");
                var subject = $("#ContactSubject");
                var message = $("#ContactMessage");
                if (from.val() != "" && subject.val() != "" && message.val() != "") {
                    $(".form-group .btn-primary").removeClass("disabled");
                }
                else {
                    $(".form-group .btn-primary").addClass("disabled");
                }
            });

            $("#ContactClear").on("click", function () {
                $("#ContactFrom").val("");
                $("#ContactSubject").val("");
                $("#ContactMessage").val("");
                $(".form-group .btn-primary").addClass("disabled");
            });
        }

        $(document).ready(main);
    </script>

    <title>Contact | Eugene Nitka</title>
</head>
<body>
    <div class="wrapper">
        <div class="nav">
            <div class="container">
                <ul class="pull-left">
                    <li><a href="Home"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                    <li><a href="Experience.html">Experience</a></li>
                    <li><a href="#">Projects</a></li>
                </ul>
                <ul class="pull-right">
                    <li><a href="About.html">About</a></li>
                    <li class="dropdown">
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

        <div class="contact-panel">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <h2>Send me an email:</h2>
                        <p>
                            Use the form below or email me at <a href="mailto:een5041@psu.edu" target="_top">een5041@psu.edu</a> if you'd like to inquire about work or
                            to keep in touch.
                        </p>
                        <p>Note: This is still a work in progress. I apologize for the inconvience.</p>
                        <form class="form-horizontal" runat="server" action="Contact.aspx" id="form1" visible="true">
                            <p style="color: red; font-weight: bold;" class="col-sm-offset-2 col-sm-10">
                                <i class="fa fa-exclamation-circle"></i>&nbsp;All fields are required
                            </p>
                            <div class="form-group">
                                <label for="ContactTo" class="col-sm-2 control-label">To: </label>
                                <div class="col-sm-3">
                                    <input runat="server" disabled="disabled" value="een5041@psu.edu" id="ContactTo" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ContactFrom" class="col-sm-2 control-label">From: </label>
                                <div class="col-sm-10">
                                    <input runat="server" id="ContactFrom" class="form-control" placeholder="Valid email here..." />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ContactFrom" class="col-sm-2 control-label">Subject: </label>
                                <div class="col-sm-10">
                                    <input runat="server" id="ContactSubject" class="form-control" placeholder="Subject here..." />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ContactFrom" class="col-sm-2 control-label">Message: </label>
                                <div class="col-sm-10">
                                    <textarea runat="server" id="ContactMessage" rows="4" cols="50" class="form-control" style="resize: none"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <!--<asp:Button runat="server" ID="ContactSend" CssClass="btn btn-primary disabled" Text="Submit" OnClick="Send_Email" />
                                    <asp:LinkButton runat="server" ID="ContactSend2" CssClass="btn btn-primary disabled" Text="Submit" OnClick="Send_Email">
                                        <i aria-hidden="true" class="glyphicon glyphicon-ok"></i>&nbsp;Submit
                                    </asp:LinkButton>-->
                                    <button type="button" class="btn btn-primary disabled" id="ContactSubmit" onclick="Send_Email" runat="server">
                                        <i aria-hidden="true" class="glyphicon glyphicon-ok"></i>&nbsp;Submit
                                    </button>
                                    <button type="button" class="btn btn-default" id="ContactClear">Clear</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-offset-1 col-sm-3">
                        <h3>Other contacts:</h3>
                        <table class="table table-condensed contacts">
                            <tbody>
                                <tr>
                                    <td><i class="fa fa-2x fa-envelope"></i></td>
                                    <td style="vertical-align: middle;"><a href="mailto:een5041@psu.edu" class="slide-left">een5041@psu.edu</a></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-2x fa-linkedin"></i></td>
                                    <td style="vertical-align: middle;"><a href="http://www.linkedin.com/in/eugenenitka" class="slide-left" onclick="window.open(this.href); return false;" onkeypress="window.open(this.href); return false;">linkedin.com/in/eugenenitka</a></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-2x fa-github"></i></td>
                                    <td style="vertical-align: middle;"><a href="https://github.com/guitardozer" class="slide-left" onclick="window.open(this.href); return false;" onkeypress="window.open(this.href); return false;">guitardozer (Eugene Nitka)</a></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-2x fa-twitter"></i></td>
                                    <td style="vertical-align: middle;"><a href="https://twitter.com/guitardozer" class="slide-left" onclick="window.open(this.href); return false;" onkeypress="window.open(this.href); return false;">@guitardozer</a></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-2x fa-skype"></i></td>
                                    <td style="vertical-align: middle;"><span class="slide-left" >guitar.dozer</span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-2x fa-steam-square"></i></td>
                                    <td style="vertical-align: middle;"><span class="slide-left" >guitardozer</span></td>
                                </tr>
                            </tbody>
                        </table>
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

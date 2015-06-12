<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head id="Head1" runat="server">
    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.css" />
    <link rel="stylesheet" href="Content/app/style.css" />

    <script type="text/javascript" src="Scripts/jquery-2.1.4.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.11.4.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="http://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/alphabet.js"></script>
    <!--With a FREE version, you must always add link to www.glyphicons.com-->
    <title>Contact | Eugene Nitka</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="nav">
            <div class="container">
                <ul class="pull-left">
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="#">Experience</a></li>
                    <li><a href="#">Projects</a></li>
                </ul>
                <ul class="pull-right">
                    <li><a href="#">About</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="Contact.aspx">Contact<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="mailto:een5041@psu.edu" target="_top"><span class="glyphicon glyphicon-envelope"></span> Email</a></li>
                            <li><a href="http://www.linkedin.com/in/eugenenitka"><span class="glyphicon glyphicon-globe"></span> Linkedin</a></li>
                            <li>
                                <p class="divider"></p>
                            </li>
                            <li><a href="Contact.aspx">More</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="contact-panel">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h2>Send me an email:</h2>
                    </div>
                    <div class="col-md-4">
                        <h3>Other contacts:</h3>
                        <table class="table table-condensed">
                            <tbody>
                                <tr>
                                    <td><span>
                                        <img alt="Email" src="/Content/app/general/glyphicons-11-envelope.png" /></span></td>
                                    <td><a href="mailto:een5041@psu.edu" target="_top">een5041@psu.edu</a></td>
                                </tr>
                                <tr>
                                    <td><span>
                                        <img alt="Linkedin" src="/Content/app/social/social-18-linked-in.png" /></span></td>
                                    <td><a href="http://www.linkedin.com/in/eugenenitka">linkedin.com/in/eugenenitka</a></td>
                                </tr>
                                <tr>
                                    <td><span>
                                        <img alt="Github" src="/Content/app/social/social-22-github.png" /></span></td>
                                    <td><a href="https://github.com/guitardozer">github.com/guitardozer</a></td>
                                </tr>
                                <tr>
                                    <td><span>
                                        <img alt="Steam" src="/Content/app/social/social-53-steam.png" /></span></td>
                                    <td>guitardozer</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

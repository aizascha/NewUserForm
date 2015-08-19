<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubmitRequest.aspx.cs" Inherits="SubmitRequest" %>

<!DOCTYPE html>

<script runat="server">

</script>
<!--
  Sample New Employee Request Form

  @author  Kevin McCann
  @email   Kevin@kmccn.org
  @version 2.0
  @since   2014-07-28
-->
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Submit Request</title>

    <!-- Customized Bootstrap w/ Chosen-Select -->
    <link rel="stylesheet" type="text/css" href="css/nuff.css">
    <link rel="stylesheet" type="text/css" href="css/nuff-theme.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" type='text/css' href="css/font-awesome.min.css">

    <!-- Google Fonts -->
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ubuntu+Mono|Ubuntu|Vollkorn">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <header class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-header">
                    <h1>New User Request Submitted</h1>
                </div>
            </div>
        </div>
    </header>
    <main class="container">
        <div class="row">
            <section id="posted-wizard">
                <div id="posted-nuffwiz" class="col-md-6 col-md-offset-3 well">
                    <div id="posted-tab-content">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </section>
        </div>
    </main>
</body>
</html>


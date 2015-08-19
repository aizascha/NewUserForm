<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>
<!--
  Sample New Employee Request Form

  @author  Kevin McCann
  @email   Kevin@kmccn.org
  @version 2.0
  @since   2014-07-28
-->
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
    <head lang="en">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Access Request Form</title>

        <!-- Customized Bootstrap w/ Chosen-Select -->
        <link rel="stylesheet" type="text/css" href="css/nuff.css">
        <link rel="stylesheet" type="text/css" href="css/nuff-theme.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" type='text/css' href="css/font-awesome.min.css">

        <!-- Google Fonts -->
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ubuntu+Mono|Ubuntu|Vollkorn">

        <!-- jQuery UI -->
        <link rel="stylesheet" type='text/css' href="css/jquery-ui.min.css">

        <!--  Bootstrap Wizard - Pagination -->
        <link rel="stylesheet" type='text/css' href="css/prettify.css">

        <!--  Bootstrap Validator -->
        <link rel="stylesheet" type='text/css' href="css/bootstrapValidator.min.css">

        <!--  Bootstrap-Datepicker -->
        <link rel="stylesheet" type='text/css' href="css/bootstrap-datepicker3.css">

        <!--  Modernizr -->
        <script src="js/modernizr.inputs.min.js"></script>

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
                        <h1>New User Form</h1>
                    </div>
                </div>
            </div>
        </header>
        <main class="container">
            <!-- <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <section class="alert alert-info">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <div class="text-center"><strong>Notice!</strong>  While this page works with Internet Explorer, Chrome is highly recommended.</div>
                    </section>
                </div>
            </div> -->
            <div class="row">
                <section id="wizard">
                    <div id="nuffwiz" class="col-md-6 col-md-offset-3 well">
                        <form class="form-horizontal" id="nuffform" action="SubmitRequest.aspx" method="post">
                            <ul>
                                <li><a href="#tab1" data-toggle="tab" style="display: none;">First</a></li>
                                <li><a href="#tab2" data-toggle="tab" style="display: none;">Second</a></li>
                                <li><a href="#tab3" data-toggle="tab" style="display: none;">Third</a></li>
                                <li><a href="#tab4" data-toggle="tab" style="display: none;">Forth</a></li>
                                <li><a href="#tab5" data-toggle="tab" style="display: none;">Fifth</a></li>
                            </ul>
                            <div class="tab-content">
                                <!-- First Page -->
                                <div class="tab-pane" id="tab1">
                                    <!-- Requestor's Information -->
                                    <fieldset>
                                        <legend>Requestor's Information</legend>
                                        <div class="form-group">
                                            <label for="reqName" class="col-md-4 control-label">Requestor's Name</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                                    <input class="form-control" id="reqName" name="reqName" placeholder="Your name" type="text" autofocus>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="reqTitle" class="col-md-4 control-label">Requestor's Title</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-list-alt"></i></span>
                                                    <input class="form-control" id="reqTitle" name="reqTitle" placeholder="Your title" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="reqPhone" class="col-md-4 control-label">Requestor's Phone</label>
                                            <div class="col-md-4">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                                    <input class="form-control" id="reqPhone" name="reqPhone" placeholder="555-555-1212" type="tel">
                                                </div>
                                            </div>
                                            <label for="reqExt" class="col-md-2 control-label">Extension</label>
                                            <div class="col-md-2">
                                                <input class="form-control" id="reqExt" name="reqExt" placeholder="1234" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="reqEmail" class="col-md-4 control-label">Requestor's Email</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                                    <input class="form-control" id="reqEmail" name="reqEmail" placeholder="your.email@contoso.com" type="email">
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <!-- Supervisor Information -->
                                    <fieldset>
                                        <legend>Employee's Supervisor Information</legend>
                                        <div class="form-group">
                                            <label for="supCheck" class="col-md-4 control-label">Same as requestor?</label>
                                            <div class="col-md-8 checkbox" style="padding-left: 34px">
                                                <input id="supCheck" name="supCheck" type="checkbox" checked>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="supName" class="col-md-4 control-label">Supervisor's Name</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                                    <input class="form-control" id="supName" name="supName" placeholder="Supervisor's name" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="supTitle" class="col-md-4 control-label">Supervisor's Title</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-list-alt"></i></span>
                                                    <input class="form-control" id="supTitle" name="supTitle" placeholder="Supervisor's title" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="supPhone" class="col-md-4 control-label">Supervisor's Phone</label>
                                            <div class="col-md-4">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                                    <input class="form-control" id="supPhone" name="supPhone" placeholder="555-555-1212" type="tel" disabled>
                                                </div>
                                            </div>
                                            <label for="supExt" class="col-md-2 control-label">Extension</label>
                                            <div class="col-md-2">
                                                <input class="form-control" id="supExt" name="supExt" placeholder="1234" type="text" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="supEmail" class="col-md-4 control-label">Supervisor's Email</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                                    <input class="form-control" id="supEmail" name="supEmail" placeholder="supervisor.email@contoso.com" type="email" disabled>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <!-- Second Page -->
                                <div class="tab-pane" id="tab2">
                                    <!-- Employee's  Information -->
                                    <fieldset>
                                        <legend>New Employee Information</legend>
                                        <div class="form-group">
                                            <label for="empFirst" class="col-md-4 control-label">First Name</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-male"></i></span>
                                                    <input class="form-control" id="empFirst" name="empFirst" placeholder="Employee's first name" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empLast" class="col-md-4 control-label">Last Name</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-male"></i></span>
                                                    <input class="form-control" id="empLast" name="empLast" placeholder="Employee's last name" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empPref" class="col-md-4 control-label">Preferred Name</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                                    <input class="form-control" id="empPref" name="empPref" placeholder="Employee's preferred name" type="text">
                                                </div>
                                                <span class="help-block">For example:  Chuck instead of Charles.</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empTitle" class="col-md-4 control-label">Title</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-list-alt"></i></span>
                                                    <input class="form-control" id="empTitle" name="empTitle" placeholder="Employee's title" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Phone required?</label>
                                            <div class="col-md-6">
                                                <div class="radio">
                                                    <label>
                                                        <input name="empPhone" id="empPhoneOld" value="Reassign" type="radio">
                                                        Reassign existing extension
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input name="empPhone" id="empPhoneNo" value="No" checked="" type="radio">
                                                        No phone number required
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input name="empPhone" id="empPhoneNew" value="New" type="radio">
                                                        Assign new phone number
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <input class="form-control" id="empExt" name="empExt" placeholder="1234" type="text" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empCheck" class="col-md-4 control-label">Email required?</label>
                                            <div class="col-md-8 checkbox" style="padding-left: 34px">
                                                <input id="empCheck" name="empCheck" type="checkbox">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empEmail" class="col-md-4 control-label">Preferred Email</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                                    <input class="form-control" id="empEmail" name="empEmail" placeholder="preferred.email@contoso.com" type="email" autocomplete="off" disabled>
                                                </div>
                                                <span class="help-block">Not guaranteed to be available if there is another employee with the same name.</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empDate" class="col-md-4 control-label">Start Date</label>
                                            <div class="col-md-8">
                                                <div class="input-group date">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    <input class="form-control" id="empDate" name="empDate" type="text">
                                                </div>
                                                <span class="help-block">Please allow 3 days for completion of new hire request.</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empDiv" class="col-md-4 control-label">Division</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-sitemap"></i></span>
                                                    <select class="form-control chosen-select" id="empDiv" name="empDiv">
                                                        <option value="">Select Division</option>
                                                        <option value="Division1">Division1</option>
                                                        <option value="Division2">Division2</option>
                                                        <option value="Division3">Division3</option>
                                                        <option value="Division4">Division4</option>
                                                        <option value="Division5">Division5</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empDept" class="col-md-4 control-label">Department</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-flag"></i></span>
                                                    <select class="form-control chosen-select" id="empDept" name="empDept">
                                                        <option value="">Select Department</option>
                                                        <option class="Division1" value="Department A">Department A</option>
                                                        <option class="Division1" value="Department B">Department B</option>
                                                        <option class="Division1" value="Department C">Department C</option>
                                                        <option class="Division2" value="Department D">Department D</option>
                                                        <option class="Division2" value="Department E">Department E</option>
                                                        <option class="Division2" value="Department F">Department F</option>
                                                        <option class="Division3" value="Department G">Department G</option>
                                                        <option class="Division3" value="Department H">Department H</option>
                                                        <option class="Division3" value="Department I">Department I</option>
                                                        <option class="Division4" value="Department J">Department J</option>
                                                        <option class="Division4" value="Department K">Department K</option>
                                                        <option class="Division4" value="Department L">Department L</option>
                                                        <option class="Division5" value="Department M">Department M</option>
                                                        <option class="Division5" value="Department N">Department N</option>
                                                        <option class="Division5" value="Department O">Department O</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="empLoc" class="col-md-4 control-label">Location</label>
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-home"></i></span>
                                                    <select class="form-control chosen-select" id="empLoc" name="empLoc">
                                                        <option value="">Select Location</option>
                                                        <option value="Location 1">Location 1</option>
                                                        <option value="Location 2">Location 2</option>
                                                        <option value="Location 3">Location 3</option>
                                                        <option value="Location 4">Location 4</option>
                                                        <option value="Location 5">Location 5</option>
                                                        <option value="New Location">New Location</option>
                                                    </select>
                                                </div>
                                                <span class="help-block">Select "New Location" if location not listed.</span>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <!-- Third Page -->
                                <div class="tab-pane" id="tab3">
                                    <!-- Application Access Information -->
                                    <fieldset>
                                        <legend>Application Access Information</legend>
                                        <!-- Hidden field for formatting purposes -->
                                        <div class="form-group hidden">
                                            <label for="accStart" class="col-md-4 control-label">Access Start</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="accStart" name="accStart" type="checkbox" checked>
                                                    </span>
                                                    <input class="form-control" id="accStartDetails" name="accStartDetails" placeholder="" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Accuplus -->
                                        <div class="form-group">
                                            <label for="accuplus" class="col-md-3 control-label">Accuplus</label>
                                            <div class="col-md-5 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="accuplus" name="accuplus" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="accuFac" name="accuFac" placeholder="Accuplus Facility" type="text" disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <select class="chosen-select form-control" id="accuLev" name="accuLev" disabled>
                                                    <option value="">Select Access</option>
                                                    <option value="5 - Warehouse">5 - Warehouse</option>
                                                    <option value="7 - CSR">7 - CSR</option>
                                                    <option value="9 - Manager">9 - Manager</option>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- AS/400 -->
                                        <div class="form-group">
                                            <label for="as400" class="col-md-4 control-label">AS400</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="as400" name="as400" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="as400Mimic" name="as400Mimic" placeholder="Username to mirror access from" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Secondary AS/400 -->
                                        <div class="form-group">
                                            <label for="gilAS400" class="col-md-4 control-label">MochaSoft AS400</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="gilAS400" name="gilAS400" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="gilAS400Mimic" name="gilAS400Mimic" placeholder="Username to mirror access from" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- CargoWise -->
                                        <div class="form-group">
                                            <label for="cargoWise" class="col-md-4 control-label">CargoWise</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="cargoWise" name="cargoWise" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="cargoWiseGrp" name="cargoWiseGrp" placeholder="CargoWise Group" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Dispatcher -->
                                        <div class="form-group">
                                            <label for="dispatcher" class="col-md-4 control-label">Dispatcher</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="dispatcher" name="dispatcher" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="dispatcherGrp" name="dispatcherGrp" placeholder="Dispatcher Group" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Exceed -->
                                        <div class="form-group">
                                            <label for="exceed" class="col-md-4 control-label">Exceed</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="exceed" name="exceed" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="exceedFac" name="exceedFac" placeholder="Exceed Facility" type="text" disabled>
                                                </div>
                                                <span class="help-block">Exceed accounts are created by a Manager at the employees location.  Only select this if Security access is required.</span>
                                            </div>
                                        </div>
                                        <!-- Foursite -->
                                        <div class="form-group">
                                            <label for="foursite" class="col-md-4 control-label">Foursite</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="foursite" name="foursite" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="foursiteMimic" name="foursiteMimic" placeholder="Username to mirror access from" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Freight Logix -->
                                        <div class="form-group">
                                            <label for="frtLgx" class="col-md-4 control-label">Freight Logix</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="frtLgx" name="frtLgx" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="frtLgxMimic" name="frtLgxMimic" placeholder="Username to mirror access from" type="text" disabled>
                                                </div>
                                                <span class="help-block">Freight Logix is now Accellos One.</span>
                                            </div>
                                        </div>
                                        <!-- Lawson -->
                                        <div class="form-group">
                                            <label for="lawson" class="col-md-3 control-label">Lawson</label>
                                            <div class="col-md-5 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="lawson" name="lawson" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="lawsonMimic" name="lawsonMimic" placeholder="Username to mirror" type="text" disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <select class="chosen-select form-control" id="lawsonLev" name="lawsonLev" disabled>
                                                    <option value="">Select Access</option>
                                                    <option>Requestor Only</option>
                                                    <option>Approver Only</option>
                                                    <option>Full Access</option>
                                                </select>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <!-- Fourth Page -->
                                <div class="tab-pane" id="tab4">
                                    <!-- Application Access Continued -->
                                    <fieldset>
                                        <legend>Application Access Continued</legend>
                                        <!-- Primary Manhattan -->
                                        <div class="form-group">
                                            <label for="prManhattan" class="col-md-4 control-label">Primary Manhattan</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="prManhattan" name="prManhattan" type="checkbox">
                                                    </span>
                                                    <select class="chosen-select form-control" id="prMhRole" name="prMhRole" disabled>
                                                        <option value="">Select User Role</option>
                                                        <option value="CSR Associate">CSR Associate</option>
                                                        <option value="CSR Mgr">CSR Mgr</option>
                                                        <option value="CSR Spv">CSR Spv</option>
                                                        <option value="Clerical Inbound">Clerical Inbound</option>
                                                        <option value="Clerical Outbound">Clerical Outbound</option>
                                                        <option value="Guard">Guard</option>
                                                        <option value="Labor Mgmt Engineer">Labor Mgmt Engineer</option>
                                                        <option value="Operations Admin">Operations Admin</option>
                                                    </select>
                                                </div>
                                                <div class="checkbox">
                                                    <label for="prSciAccess">
                                                        <input id="prSciAccess" name="prSciAccess" type="checkbox" disabled>
                                                        SEC Access?
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Secondary Manhattan -->
                                        <div class="form-group">
                                            <label for="secManhattan" class="col-md-4 control-label">Secondary Manhattan</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="secManhattan" name="secManhattan" type="checkbox">
                                                    </span>
                                                    <select class="chosen-select form-control" id="secMhRole" name="secMhRole" disabled>
                                                        <option value="">Select User Role</option>
                                                        <option value="General">General</option>
                                                        <option value="Billing">Billing</option>
                                                        <option value="Cycle Count">Cycle Count</option>
                                                        <option value="Inbound Management">Inbound Management</option>
                                                        <option value="Inventory Management">Inventory Management</option>
                                                        <option value="Item Management">Item Management</option>
                                                        <option value="Location Management">Location Management</option>
                                                        <option value="Order Management">Order Management</option>
                                                        <option value="Shipment Management">Shipment Management</option>
                                                        <option value="Task Management">Task Management</option>
                                                    </select>
                                                </div>
                                                <div class="checkbox">
                                                    <label for="secSciAccess">
                                                        <input id="secSciAccess" name="secSciAccess" type="checkbox" disabled>
                                                        SEC Access?
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- MS Reports -->
                                        <div class="form-group">
                                            <label for="msRpt" class="col-md-4 control-label">MS Reports</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="msRpt" name="msRpt" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="msRptFac" name="msRptFac" placeholder="MS Reports Facility" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- CustomApp -->
                                        <div class="form-group">
                                            <label for="customapp" class="col-md-4 control-label">CustomApp</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="customapp" name="customapp" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="customappMimic" name="customappMimic" placeholder="Username to mirror access from" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- QHOS -->
                                        <div class="form-group">
                                            <label for="qhos" class="col-md-4 control-label">QHOS</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="qhos" name="qhos" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="qhosMimic" name="qhosMimic" placeholder="Username to mirror access from" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- RightFax -->
                                        <div class="form-group">
                                            <label for="rFax" class="col-md-4 control-label">RightFax</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="rFax" name="rFax" type="checkbox">
                                                    </span>
                                                    <select class="chosen-select form-control" id="rFaxGrp" name="rFaxGrp" disabled>
                                                        <option value="">Select RightFax Group</option>
                                                        <option value="BENEFITS">BENEFITS</option>
                                                        <option value="CLAIMS">CLAIMS</option>
                                                        <option value="EVERYONE">EVERYONE</option>
                                                        <option value="INVOICING">INVOICING</option>
                                                        <option value="REAL ESTATE ACCT">REAL ESTATE ACCT</option>
                                                        <option value="TRAVEL">TRAVEL</option>
                                                    </select>
                                                </div>
                                                <div class="checkbox">
                                                    <label for="rFaxNum">
                                                        <input id="rFaxNum" name="rFaxNum" type="checkbox" disabled>
                                                        Assign fax number?
                                                    </label>
                                                </div>
                                                <span class="help-block">RightFax not required for faxing in locations with IP Phones as they have eFax capability.  If group access is not required but a RightFax number is, select EVERYONE as the group and check the assign box.</span>
                                            </div>
                                        </div>
                                        <!-- SCMS -->
                                        <div class="form-group">
                                            <label for="scms" class="col-md-4 control-label">SCMS</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="scms" name="scms" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="scmsGrp" name="scmsGrp" placeholder="SCMS Group" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- TMT -->
                                        <div class="form-group">
                                            <label for="tmt" class="col-md-4 control-label">TMT</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="tmt" name="tmt" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="tmtGrp" name="tmtGrp" placeholder="TMT Group" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- TMW -->
                                        <div class="form-group">
                                            <label for="tmw" class="col-md-4 control-label">TMW</label>
                                            <div class="col-md-8 ">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input id="tmw" name="tmw" type="checkbox">
                                                    </span>
                                                    <input class="form-control" id="tmwMimic" name="tmwMimic" placeholder="Username to mirror access from" type="text" disabled>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <!-- Fifth Page -->
                                <div class="tab-pane" id="tab5">
                                    <!-- Additional Information -->
                                    <fieldset>
                                        <legend>Additional Information</legend>
                                        <!-- Mirror AD account from -->
                                        <div class="form-group">
                                            <label for="adAcct" class="col-md-7 control-label">Mirror Windows/Network account from</label>
                                            <div class="col-md-5 ">
                                                <input class="form-control" id="adAcct" name="adAcct" placeholder="Windows Username" type="text">
                                                <span class="help-block">To ensure the correct user memberships and permissions on the ABC domain, please provide a name of an existing user on the network which we can copy permissions from.</span>
                                            </div>
                                        </div>
                                        <!-- Distribution Groups -->
                                        <div class="form-group">
                                            <label for="distList" class="col-md-4 control-label">Distribution Groups</label>
                                            <div class="col-md-8">
                                                <textarea class="form-control" id="distList" name="distList" placeholder="Enter one group per line" rows="4"></textarea>
                                            </div>
                                        </div>
                                        <!-- Share Folders -->
                                        <div class="form-group">
                                            <label for="netShares" class="col-md-4 control-label">Shared Folders</label>
                                            <div class="col-md-8">
                                                <textarea class="form-control" id="netShares" name="netShares" placeholder="Enter the complete path, one per line" rows="4"></textarea>
                                                <span class="help-block">Enter the entire network path.  For example:  \\contoso\Shared\RealEstate</span>
                                            </div>
                                        </div>
                                        <!-- Additional Information -->
                                        <div class="form-group">
                                            <label for="addInfo" class="col-md-4 control-label">Additional Information</label>
                                            <div class="col-md-8">
                                                <textarea class="form-control" id="addInfo" name="addInfo" placeholder="" rows="4"></textarea>
                                                <span class="help-block">Please enter any additional requirements here.  Do not use this box for requesting software installation or new computer setup.  Please submit a separate help request if computer setup is needed.</span>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <!-- Buttons -->
                                <div class="col-md-8 col-md-offset-4" id="nuffbtns">
                                    <button type="button" class="btn btn-warning button-previous" name="previous" value="Previous">Previous</button>
                                    <button type="button" class="btn btn-danger" name="resetBtn" id="resetBtn" value="Reset">Reset</button>
                                    <button type="button" class="btn btn-primary button-next" name="next" id="nextBtn" value="Next">Next</button>
                                    <button type="submit" class="btn btn-primary button-submit" data-toggle="confirmation" style="display:none;" name="submitNow" value="Submit">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </main>

        <!-- Progress Bar -->
        <footer class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="progress progress-striped active">
                    <div id="progbar"  class="progress-bar"></div>
                </div>
            </div>
            <div class="col-md-1"></div>
        </footer>

        <!-- jQuery -->
        <script src="js/jquery-1.11.1.min.js" type="text/javascript" charset="utf-8"></script>

        <!-- Bootstrap JavaScript -->
        <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

        <!-- jQuery UI JavaScript -->
        <script src="js/jquery-ui.min.js"></script>

        <!-- Chosen - jQuery selects plugin -->
        <script src="js/chosen.jquery.min.js"></script>

        <!-- Chained - jQuery chained selects plugin -->
        <script src="js/jquery.chained.min.js"></script>

        <!--  Bootstrap Wizard - Pagination -->
        <script src="js/jquery.bootstrap.wizard.min.js"></script>
        <script src="js/prettify.js"></script>

        <!-- Bootstrap-Datepicker -->
        <script src="js/bootstrap-datepicker.js"></script>

        <!-- Modernizr - Check for 'placeholder' input attribute with jQuery plugin fallback -->
        <script src="js/jquery.placeholder.js"></script>

        <!--  Moment.js -->
        <script src="js/moment.js"></script>

        <!--  Bootstrap Validator -->
        <script src="js/bootstrapValidator.min.js"></script>
        
        <!--  Bootstrap Confirmation -->
        <script src="js/bootstrap-confirmation.min.js"></script>

        <!-- Initialize functions on document.ready() -->
        <script type="text/javascript">
            $(document).ready(function () {
                // Bootstrap Wizard - Pagination initialization
                var $nuffwiz = $('#nuffwiz');
                $nuffwiz.bootstrapWizard({
                    'nextSelector': '.button-next',
                    'previousSelector': '.button-previous',
                    onTabShow: function (tab, navigation, index) {
                        var $total = navigation.find('li').length;
                        var $current = index + 1;
                        var $percent = ($current / $total) * 100;
                        $('#progbar').css({width: $percent + '%'});

                        // If it's the first tab then hide the Previous button
                        if ($current === 1) {
                            $nuffwiz.find('.button-previous').hide();
                        } else {
                            $nuffwiz.find('.button-previous').show();
                        }

                        // If it's the last tab then hide the Next button and show the Submit button instead
                        if ($current >= $total) {
                            $nuffwiz.find('.button-next').hide();
                            $nuffwiz.find('.button-submit').show();
                            $nuffwiz.find('.button-submit').removeClass('disabled');
                        } else {
                            $nuffwiz.find('.button-next').show();
                            $nuffwiz.find('.button-submit').hide();
                        }
                    }
                });
                window.prettyPrint && prettyPrint();

                // Chosen & Chained initialization
                $('.chosen-select').chosen({disable_search_threshold: 10, width: "100%"});
                var $empDept = $("#empDept");
                $empDept.chained("#empDiv");
                $empDept.trigger("chosen:updated");
                $("#empDiv").on('change', function () {
                    $empDept.trigger("chosen:updated");
                });
                
                // Bootstrap-Datepicker initialization
                var datepicker = $.fn.datepicker.noConflict(); // return $.fn.datepicker to previously assigned value
                $.fn.bootstrapDP = datepicker;                 // give $().bootstrapDP the bootstrap-datepicker functionality
                $('#empDate').bootstrapDP({
                    daysOfWeekDisabled: "0,6",
                    autoclose: true,
                    todayHighlight: true
                }).on('changeDate show', function(e) {
                    $('#nuffform').bootstrapValidator('revalidateField', 'empDate');
                });

                // Modernizr placeholder initialization
                if (!Modernizr.input.placeholder) {
                    $("input[placeholder],textarea[placeholder]").placeholder();
                }

                // Disable unneeded input fields
                // Disable Supervisor section if same as Requestor
                $('#supCheck').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = !($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('supName', isChecked)
                                      .enableFieldValidators('supPhone', isChecked)
                                      .enableFieldValidators('supEmail', isChecked);

                    if ($(this).is(':checked') === true) {
                        $('#supName').prop('disabled', true)
                                     .val('');
                        $('#supTitle').prop('disabled', true)
                                      .val('');
                        $('#supPhone').prop('disabled', true)
                                      .val('');
                        $('#supExt').prop('disabled', true)
                                    .val('');
                        $('#supEmail').prop('disabled', true)
                                      .val('');
                    } else {
                        $('#supName').prop('disabled', false);
                        $('#supTitle').prop('disabled', false);
                        $('#supPhone').prop('disabled', false);
                        $('#supExt').prop('disabled', false);
                        $('#supEmail').prop('disabled', false);
                    }
                });

                // Enable employee phone extension input if required
                $('input[name=empPhone]').on('change', function () {
                    var $empPhoneOld = $('#empPhoneOld');
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($empPhoneOld.is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('empExt', isChecked);

                    if (!$empPhoneOld.is(':checked') === true) {
                        $('#empExt').prop('disabled', true)
                                     .val('');
                    } else {
                        $('#empExt').prop('disabled', false);
                    }
                });

                // Disable Preferred Email address field if email is not required
                $('#empCheck').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('empEmail', isChecked);

                    if (!(isChecked)) {
                        $('#empEmail').prop('disabled', true)
                                      .val('');
                    } else {
                        $('#empEmail').prop('disabled', false);
                    }
                });

                // Disable Application details if access not required
                /* Accuplus */
                $('#accuplus').on('change', function () {
                    var $accuLev = $('#accuLev');
                    var $accuFac = $('#accuFac');
                    if ($(this).is(':checked') === false) {
                        $accuLev.prop('disabled', true);
                        $accuLev.prop('selectedIndex', 0);
                        $accuLev.trigger("chosen:updated");
                        $accuFac.prop('disabled', true);
                        $accuFac.prop('value', null);
                    } else {
                        $accuLev.prop('disabled', false);
                        $accuLev.trigger("chosen:updated");
                        $accuFac.prop('disabled', false);
                    }
                });
                /* AS400 */
                $('#as400').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('as400Mimic', isChecked);

                    var $as400Mimic = $('#as400Mimic');
                    if (!(isChecked)) {
                        $as400Mimic.prop('disabled', true);
                        $as400Mimic.prop('value', null);
                    } else {
                        $as400Mimic.prop('disabled', false);
                    }
                });
                /* Secondary AS400 */
                $('#gilAS400').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('gilAS400Mimic', isChecked);

                    var $gilAS400Mimic = $('#gilAS400Mimic');
                    if (!(isChecked)) {
                        $gilAS400Mimic.prop('disabled', true);
                        $gilAS400Mimic.prop('value', null);
                    } else {
                        $gilAS400Mimic.prop('disabled', false);
                    }
                });
                /* cargoWise */
                $('#cargoWise').on('change', function () {
                    var $cargoWiseGrp = $('#cargoWiseGrp');
                    if ($(this).is(':checked') === false) {
                        $cargoWiseGrp.prop('disabled', true);
                        $cargoWiseGrp.prop('value', null);
                    } else {
                        $cargoWiseGrp.prop('disabled', false);
                    }
                });
                /* Dispatcher */
                $('#dispatcher').on('change', function () {
                    var $dispatcherGrp = $('#dispatcherGrp');
                    if ($(this).is(':checked') === false) {
                        $dispatcherGrp.prop('disabled', true);
                        $dispatcherGrp.prop('value', null);
                    } else {
                        $dispatcherGrp.prop('disabled', false);
                    }
                });
                /* Exceed */
                $('#exceed').on('change', function () {
                    var $exceedFac = $('#exceedFac');
                    if ($(this).is(':checked') === false) {
                        $exceedFac.prop('disabled', true);
                        $exceedFac.prop('value', null);
                    } else {
                        $exceedFac.prop('disabled', false);
                    }
                });
                /* Foursite */
                $('#foursite').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('foursiteMimic', isChecked);

                    var $foursiteMimic = $('#foursiteMimic');
                    if (!(isChecked)) {
                        $foursiteMimic.prop('disabled', true);
                        $foursiteMimic.prop('value', null);
                    } else {
                        $foursiteMimic.prop('disabled', false);
                    }
                });
                /* Freight Logix */
                $('#frtLgx').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('frtLgxMimic', isChecked);

                    var $frtLgxMimic = $('#frtLgxMimic');
                    if (!(isChecked)) {
                        $frtLgxMimic.prop('disabled', true);
                        $frtLgxMimic.prop('value', null);
                    } else {
                        $frtLgxMimic.prop('disabled', false);
                    }
                });
                /* Lawson */
                $('#lawson').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('lawsonLev', isChecked);

                    var $lawsonLev = $('#lawsonLev');
                    var $lawsonMimic = $('#lawsonMimic');
                    if (!(isChecked)) {
                        $lawsonLev.prop('disabled', true);
                        $lawsonLev.prop('selectedIndex', 0);
                        $lawsonLev.trigger("chosen:updated");
                        $lawsonMimic.prop('disabled', true);
                        $lawsonMimic.prop('value', null);
                    } else {
                        $lawsonLev.prop('disabled', false);
                        $lawsonLev.trigger("chosen:updated");
                        $lawsonMimic.prop('disabled', false);
                    }
                });
                /* Primary Manhattan */
                $('#prManhattan').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('prMhRole', isChecked);

                    var $prMhRole = $('#prMhRole');
                    var $prSciAccess = $('#prSciAccess');
                    if (!(isChecked)) {
                        $prMhRole.prop('disabled', true);
                        $prMhRole.prop('selectedIndex', 0);
                        $prMhRole.trigger("chosen:updated");
                        $prSciAccess.prop('disabled', true);
                        $prSciAccess.prop('checked', null);
                    } else {
                        $prMhRole.prop('disabled', false);
                        $prSciAccess.prop('disabled', false);
                        $prMhRole.trigger("chosen:updated");
                    }
                });
                /* Secondary Manhattan */
                $('#secManhattan').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('secMhRole', isChecked);

                    var $secMhRole = $('#secMhRole');
                    var $secSciAccess = $('#secSciAccess');
                    if (!(isChecked)) {
                        $secMhRole.prop('disabled', true);
                        $secMhRole.prop('selectedIndex', 0);
                        $secMhRole.trigger("chosen:updated");
                        $secSciAccess.prop('disabled', true);
                        $secSciAccess.prop('checked', null);
                    } else {
                        $secMhRole.prop('disabled', false);
                        $secSciAccess.prop('disabled', false);
                        $secMhRole.trigger("chosen:updated");
                    }
                });
                /* MS Reports */
                $('#msRpt').on('change', function () {
                    var $msRptFac = $('#msRptFac');
                    if ($(this).is(':checked') === false) {
                        $msRptFac.prop('disabled', true);
                        $msRptFac.prop('value', null);
                    } else {
                        $msRptFac.prop('disabled', false);
                    }
                });
                /* CustomApp */
                $('#customapp').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('customappMimic', isChecked);

                    var $customappMimic = $('#customappMimic');
                    if (!(isChecked)) {
                        $customappMimic.prop('disabled', true);
                        $customappMimic.prop('value', null);
                    } else {
                        $customappMimic.prop('disabled', false);
                    }
                });
                /* QHOS */
                $('#qhos').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('qhosMimic', isChecked);

                    var $qhosMimic = $('#qhosMimic');
                    if (!(isChecked)) {
                        $qhosMimic.prop('disabled', true);
                        $qhosMimic.prop('value', null);
                    } else {
                        $qhosMimic.prop('disabled', false);
                    }
                });
                /* RightFax */
                $('#rFax').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('rFaxGrp', isChecked);

                    var $rFaxGrp = $('#rFaxGrp');
                    var $rFaxNum = $('#rFaxNum');
                    if (!(isChecked)) {
                        $rFaxGrp.prop('disabled', true);
                        $rFaxGrp.prop('selectedIndex', 0);
                        $rFaxGrp.trigger("chosen:updated");
                        $rFaxNum.prop('disabled', true);
                        $rFaxNum.prop('checked', null);
                    } else {
                        $rFaxGrp.prop('disabled', false);
                        $rFaxNum.prop('disabled', false);
                        $rFaxGrp.trigger("chosen:updated");
                    }
                });
                /* SCMS */
                $('#scms').on('change', function () {
                    var $scmsGrp = $('#scmsGrp');
                    if ($(this).is(':checked') === false) {
                        $scmsGrp.prop('disabled', true);
                        $scmsGrp.prop('value', null);
                    } else {
                        $scmsGrp.prop('disabled', false);
                    }
                });
                /* TMT */
                $('#tmt').on('change', function () {
                    var $tmtGrp = $('#tmtGrp');
                    if ($(this).is(':checked') === false) {
                        $tmtGrp.prop('disabled', true);
                        $tmtGrp.prop('value', null);
                    } else {
                        $tmtGrp.prop('disabled', false);
                    }
                });
                /* TMW */
                $('#tmw').on('change', function () {
                    var bootstrapValidator = $('#nuffform').data('bootstrapValidator'),
                        isChecked = ($(this).is(':checked') == true);

                    bootstrapValidator.enableFieldValidators('tmwMimic', isChecked);

                    var $tmwMimic = $('#tmwMimic');
                    if (!(isChecked)) {
                        $tmwMimic.prop('disabled', true);
                        $tmwMimic.prop('value', null);
                    } else {
                        $tmwMimic.prop('disabled', false);
                    }
                });

                // Set Bootstrap Validator options
                $.fn.bootstrapValidator.DEFAULT_OPTIONS = $.extend({}, $.fn.bootstrapValidator.DEFAULT_OPTIONS, {
                    excluded: [':disabled'],
                    feedbackIcons: {
                        valid: 'fa fa-check',
                        invalid: 'fa fa-times',
                        validating: 'fa fa-refresh'
                    },
                    live: 'enabled',
                    submitButtons: 'button[type="submit"]'
                });

                // Validate fields
                $('#nuffform').bootstrapValidator({
                    fields: {
                        reqName: {
                            threshold: 1,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter your name'
                                },
                                stringLength: {
                                    min: 6,
                                    max: 40,
                                    message: 'You must enter your first and last name'
                                },
                                regexp: {
                                    regexp: /^[a-zA-Z\s'-]+$/,
                                    message: 'Your name can only consist of letters and a hyphen or apostrophe if needed'
                                }
                            }
                        },
                        reqPhone: {
                            group: '.col-md-4',
                            validators: {
                                notEmpty: {
                                    message: 'You must enter your phone number'
                                },
                                phone: {
                                    country: 'US',
                                    message: 'Please enter a valid 10 digit phone number'
                                }
                            }
                        },
                        reqEmail: {
                            validators: {
                                notEmpty: {
                                    message: 'You must enter your email address'
                                },
                                emailAddress: {
                                    message: 'Please enter a valid email address'
                                }
                            }
                        },
                        supName: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter the Supervisor\'s name'
                                },
                                stringLength: {
                                    min: 6,
                                    max: 40,
                                    message: 'You must enter the first and last name'
                                },
                                regexp: {
                                    regexp: /^[a-zA-Z\s'-]+$/,
                                    message: 'The name can only consist of letters and a hyphen or apostrophe if needed'
                                }
                            }
                        },
                        supPhone: {
                            enabled: false,
                            group: '.col-md-4',
                            validators: {
                                notEmpty: {
                                    message: 'You must enter your phone number'
                                },
                                phone: {
                                    country: 'US',
                                    message: 'Please enter a valid 10 digit phone number'
                                }
                            }
                        },
                        supEmail: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter your email address'
                                },
                                emailAddress: {
                                    message: 'Please enter a valid email address'
                                }
                            }
                        },
                        empFirst: {
                            validators: {
                                notEmpty: {
                                    message: 'You must enter the employee\'s first name'
                                },
                                regexp: {
                                    regexp: /^[a-zA-Z\s'-]+$/,
                                    message: 'The Employee\'s name can only consist of letters and a hyphen or apostrophe if needed'
                                }
                            }
                        },
                        empLast: {
                            validators: {
                                notEmpty: {
                                    message: 'You must enter the employee\'s last name'
                                },
                                regexp: {
                                    regexp: /^[a-zA-Z\s'-]+$/,
                                    message: 'The Employee\'s name can only consist of letters and a hyphen or apostrophe if needed'
                                }
                            }
                        },
                        empTitle: {
                            validators: {
                                notEmpty: {
                                    message: 'You must enter the employee\'s title'
                                }
                            }
                        },
                        empExt: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter the existing extension'
                                }
                            }
                        },
                        empEmail: {
                            enabled: false,
                            validators: {
                                emailAddress: {
                                    message: 'Please enter a valid email address'
                                }
                            }
                        },
                        empDate: {
                            validators: {
                                notEmpty: {
                                    message: 'You must enter the start date'
                                },
                                date: {
                                    message: 'You must enter a valid starting date'
                                }/*,
                                callback: {
                                    message: 'The start date must be at least 3 days in the future.',
                                    callback: function(value, validator) {
                                        var m = new moment(value, 'MM/DD/YYYY', true);
                                        var now = new moment();
                                        if (!m.isValid()) {
                                            return false;
                                        }
                                        return m.isAfter(now.add(2,'days'));
                                    }
                                }*/
                            }
                        },
                        empDiv: {
                            validators: {
                                notEmpty: {
                                    message: 'You must select a division'
                                }
                            }
                        },
                        empDept: {
                            validators: {
                                notEmpty: {
                                    message: 'You must select a department'
                                }
                            }
                        },
                        empLoc: {
                            validators: {
                                notEmpty: {
                                    message: 'You must select a location'
                                }
                            }
                        },
                        as400Mimic: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter an account or name to mirror'
                                }
                            }
                        },
                        gilAS400Mimic: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter an account or name to mirror'
                                }
                            }
                        },
                        foursiteMimic: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter an account or name to mirror'
                                }
                            }
                        },
                        frtLgxMimic: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter an account or name to mirror'
                                }
                            }
                        },
                        lawsonLev: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must select an access level'
                                }
                            }
                        },
                        prMhRole: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must select a WMOS user role'
                                }
                            }
                        },
                        secMhRole: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must select a user role'
                                }
                            }
                        },
                        customappMimic: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter an account or name to mirror'
                                }
                            }
                        },
                        qhosMimic: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter an account or name to mirror'
                                }
                            }
                        },
                        rFaxGrp: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must select a RightFax group'
                                }
                            }
                        },
                        tmwMimic: {
                            enabled: false,
                            validators: {
                                notEmpty: {
                                    message: 'You must enter an account or name to mirror'
                                }
                            }
                        },
                        adAcct: {
                            validators: {
                                notEmpty: {
                                    message: 'You must enter an account or name to mirror'
                                }
                            }
                        }
                    }
                });

                // Modernizr - Check for autofocus and provide to reqName field
                if (!Modernizr.input.autofocus) {
                    $("#reqName").focus();
                }

                // Reset Button - Resets form to default values and fills placeholder data
                $('#resetBtn').on('click', function () {
                    $('#nuffform').trigger("reset");
                    $('.chosen-select').val('').trigger("chosen:updated");
                    if (!Modernizr.input.placeholder) {
                        $("input[placeholder],textarea[placeholder]").val('').placeholder();
                    }
                    $('#nuffwiz').bootstrapWizard('first');
                    $('#nuffform').bootstrapValidator('resetForm', true);
                });

                // Bootstrap-confirmation initialization
                $('[data-toggle=confirmation]').confirmation({ popout: true });
            });
        </script>
    </body>
</html>

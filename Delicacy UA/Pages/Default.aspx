<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Delicacy_UA.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
    <style type="text/css">
        .auto-style9 {
            margin-left: 279px;
        }
        .auto-style10 {
            margin-left: 181px;
            height: 408px;
            width: 718px;
            margin-right: 372px;
            margin-top: 0px;
        }
    </style>
     
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
   

    <p class="auto-style1" style="text-transform: capitalize; color: #800080; text-decoration: blink">
    <strong><em>Počni svoje putovanije s nama!</em></strong></p>

    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"  >
  <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

 <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="/ukrajinske_delicije/fonkonfeti.jpg" alt="..." class="auto-style9"/>
                                </div>
                                <div class="item">
                                    <img src="/ukrajinske_delicije/fon2.1.jpeg"  alt="..." class="auto-style10"/>
                                </div>
                            </div>

        
  <!-- Controls -->
     <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
                        </div>
    
    <script src="../Scripts/jquery-3.2.1.js"></script>
        <script src="../Scripts/bootstrap.js"></script>

    </asp:Content>

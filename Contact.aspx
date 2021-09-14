<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Ertist.Contact" %>

<%@ Register Src="~/EmailControl.ascx" TagPrefix="uc1" TagName="EmailControl" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    /* Add a background color and some padding around the form */
    .container {
      border-radius: 5px;
      padding: 50px;
    }

    .column{
       float: left;
       width: 50%;
    }

    .container:after {
      content: "";
      display: table;
      clear: both;
    }

    .map-responsive{
        overflow:hidden;
        padding-bottom:56.25%;
        position:relative;
        height:0;
    }

    .map-responsive iframe{
        left:0;
        top:0;
        height:100%;
        width:100%;
        position:absolute;
    }

    </style>

    <h1 style="font-size: clamp(26px,4vw,36px);text-align:center;">Contact</h1>

    <div class="container">

        <div class="column" style="padding:5%;">
            <div class="map-responsive">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10828.427777083267!2d101.71484205076611!3d3.2199886056912783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc3843bfb6a031%3A0x2dc5e067aae3ab84!2sTunku%20Abdul%20Rahman%20University%20College!5e0!3m2!1sen!2smy!4v1631630301394!5m2!1sen!2smy" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <br />
                <address>
                <strong>ERTIST</strong><br />
                Kampus Utama, Jalan Genting Kelang, 53300 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur<br />
                <abbr title="Phone">P:</abbr>
                +60341450123
            </address>

            <address>
                <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            </address>
        </div>

        <div class="column" style="border-left: 6px solid darkred;padding:5%;">
            <uc1:EmailControl runat="server" ID="EmailControl" />
        </div>

    </div>

</asp:Content>

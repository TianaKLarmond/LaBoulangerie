<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LaBoulangerie.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <br>
    <div class="jumbotron center">
        <h1>We'd love to hear from you!</h1>
        <h4 class="text-body-secondary">Please contact us, or leave a comment below, if you have any questions or feedback.</h4>
    </div>
    <div class="container">
        <br><br>
        <div class="row">
            <div class="col-sm">
                <h2>Contact Us</h2>
                <br>
                <form class="form-horizontal" action="/action_page.php">
                    <div class="form-group">
                        <label class="control-label" for="name">Name</label>
                        <div>
                            <input style="width:100%" type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
                            <br>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="subject">Subject</label>
                        <div>
                            <input style="width:100%" type="text" class="form-control" id="subject" placeholder="Enter subject" name="subject" required>
                            <br>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="message">Message</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="message" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div>
                            <br>
                            <button class="btn btn-primary" style="box-shadow: 0 2px 4px darkslategray" type="submit" onclick="Confirmation()">
                                Send message &nbsp; <i class="bi bi-send"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm">
                <h5 class="text-container">Customer Care</h5>
                <address>
                    <abbr title="Phone"><i class="bi bi-telephone"></i></abbr>
                    123 456 7890
                </address>
                 <address>
                    <strong><i class="bi bi-envelope"></i></strong> <a href="mailto:laboulangerie@outlook.com">laboulangerie@outlook.com</a><br />
                </address>
                <br />
                <h5 class="text-container">Opening Hours</h5>
                <p class="text-container">Monday–Friday<br>8a.m.–4p.m.</p>
                <br>
                <h5 class="text-container">Address</h5>
                <address>
                    <i class="bi bi-house"></i>
                    1 Earth Avenue, Solar System, Milky Way, Universe<br />
                </address>
                <br />
                <img class="text-end" src="Images/ContactImage.png" alt="Woman working at a laptop" width="500"/>
            </div>
        </div>
    </div>

    <script>
        function Email() {
            let name = document.getElementById('name').value;
            let email = "tiana.larmond@19gmail.com";
            let subject = document.getElementById('subject').value;
            let message = document.getElementById('message').value;

            //"%0D%0A" is the url encoded version of the newline character
            //window.open("mailto:" + email + "?subject=" + subject + "&body=" + name + "%0D%0A" + message );
            window.location = "mailto:" + email + "?subject=" + subject + "&body=" + name + "%0D%0A" + message;
        }


        function Confirmation() {

            let answer = prompt("Are you sure you want to SEND? \nYes or No?", "");

            if (answer == 'Yes' || answer == 'yes' || answer == 'YES') {
                //document.write("<h3>Message SENT!<h3>");
                //alert("Message SENT!");
                Email();
            }
            else if (answer == 'No' || answer == 'no' || answer == 'NO') {
                //document.write("<h3>Message CANCELLED!<h3>");
                alert("Message CANCELLED!");
            }
        }
    </script>
</asp:Content>
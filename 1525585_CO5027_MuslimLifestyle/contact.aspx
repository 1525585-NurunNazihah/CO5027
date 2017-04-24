<%@ Page Title="Contact Us | Muslim Lifestyle" Language="C#" MasterPageFile="~/muslimlifestyle.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1525585_CO5027_MuslimLifestyle.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
			<div class="content">
				<section id="left-content">
					<h1>Contact Us</h1>

                        <p>
                            <asp:Label ID="lblName" runat="server" Text="*Name"></asp:Label> 
                            <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name." CssClass="validation" Display="Dynamic"></asp:RequiredFieldValidator>    
                            <asp:TextBox ID="txtName" runat="server" placeholder="Your Name..."></asp:TextBox>                      
                        </p>
                        
                        <p>
                            <asp:Label ID="lblEmail" runat="server" Text="*Email"></asp:Label>
                            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="This field is required" CssClass="validation" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegExpEmailCheck" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please use a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validation" Display="Dynamic"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email..."></asp:TextBox>
                        </p>
                        
                        <p>
                            <asp:Label ID="lblSubject" runat="server" Text="*Subject"></asp:Label>
                            <asp:RequiredFieldValidator ID="reqSubject" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please enter your subject" CssClass="validation" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtSubject" runat="server" placeholder="Your Subject..."></asp:TextBox>

                        </p>

                        <p>
                            <asp:Label ID="lblMsg" runat="server" Text="*Message"></asp:Label>
                            <asp:RequiredFieldValidator ID="reqMessage" runat="server" ControlToValidate="txtMsg" ErrorMessage="Please enter your message." CssClass="validation" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtMsg" runat="server" placeholder="Write Something..." TextMode="MultiLine" Width="100%"></asp:TextBox>
                        </p>

                        <p>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            <asp:Literal ID="litResult" runat="server"></asp:Literal>
                        </p>

				</section>
				
				<section id="right-content">

					<h1>Visit Our Store</h1>
                    <p><strong>Address: </strong>
                        <span>First Floor, Times Square Kg Jaya Setia, Berakas, Bandar Seri Begawan BE 2713
                        Negara Brunei Darussalam</span></p>
                       
                    <p><strong>Telephone: </strong><span>888 1212</span></p>

                    <!-- REF: Getting Started  |  Google Maps JavaScript API  |  Google Developers. (2017). Google Developers. 
                         From https://developers.google.com/maps/documentation/javascript/tutorial -->
                    <h1>Map Location</h1>
                    <div id="map">
                        <script>
                          function initMap() {
                            var uluru = { lat: 4.939561, lng: 114.940122 };
                            var map = new google.maps.Map(document.getElementById('map'), {
                              zoom: 16,
                              center: uluru
                            });
                            var marker = new google.maps.Marker({
                              position: uluru,
                              map: map
                            });
                          }
                        </script>
                        <script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCgYp_-BQ9hKz7fWCF1gPktEn5ThSlvZrg&callback=initMap"></script>
                     </div>
				</section>
			</div>
</asp:Content>

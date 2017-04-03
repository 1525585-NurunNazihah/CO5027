<%@ Page Title="Contact Us | Muslim Lifestyle" Language="C#" MasterPageFile="~/muslimlifestyle.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1525585_CO5027_MuslimLifestyle.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="wrap">
			<div class="content">
				<section id="left-content">
					<h1>Contact Us</h1>

                        <p>
                            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label> 
                            <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." style="text-align: right" CssClass="validation"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtName" runat="server" placeholder="Your Name..."></asp:TextBox>
                            
                        </p>
                        
                        <p>
                            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is requied" CssClass="validation"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegExpEmailCheck" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validation"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email..."></asp:TextBox>
                        </p>
                        
                        <p>
                            <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
                            <asp:TextBox ID="txtSubject" runat="server" placeholder="Write Something..."></asp:TextBox>

                        </p>

                        <p>
                            <asp:Label ID="lblMsg" runat="server" Text="Message"></asp:Label>
                            <asp:TextBox ID="txtMsg" runat="server" placeholder="Write Something..." TextMode="MultiLine" Width="100%"></asp:TextBox>
                        </p>

                        <p>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            <asp:Literal ID="litResult" runat="server"></asp:Literal>
                        </p>

				</section>
				
				<section id="right-content">
					<h1>Visit Our Store</h1>
                    <p><strong>Address: </strong><br />First Floor, Airport Mall, Kg Jaya Setia, Berakas, Bandar Seri Begawan BE 2713
                        Negara Brunei Darussalam</p>
                    <br />
                    <p><strong>Telephone: </strong><br />888 1212</p>
                    <br />
                    <h1>Map Location</h1>
                    <div id="map">

                    </div>

				</section>
			</div>
			
			<section class="content">
				<h1>Map Location</h1>
                <div class="map"></div>
			</section>
		</div>
</asp:Content>

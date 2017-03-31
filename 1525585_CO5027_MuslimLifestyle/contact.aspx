<%@ Page Title="Contact Us | Muslim Lifestyle" Language="C#" MasterPageFile="~/muslimlifestyle.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1525585_CO5027_MuslimLifestyle.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrap">
			<div class="content">
				<section id="left-content">
					<h1>Contact Us</h1>

                        <p>
                            <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </p>

                    <p>
                            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </p>

                    <p>
                            <asp:Label ID="lblSub" runat="server" Text="Subject: "></asp:Label>
                            <asp:TextBox ID="txtSub" runat="server"></asp:TextBox>
                        </p>

                    <p>
                            <asp:Label ID="lblMsg" runat="server" Text="Message:"></asp:Label>
&nbsp;<asp:TextBox ID="txtMsg" runat="server" Height="16px" Width="129px"></asp:TextBox>
                        </p>

				</section>
				
				<section id="right-content">
					<h1>Contact Information</h1>

				</section>
			</div>
			
			<section class="content">
				<h1>Map Location</h1>
			</section>
		</div>
</asp:Content>

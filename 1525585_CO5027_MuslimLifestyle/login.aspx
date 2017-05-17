<%@ Page Title="" Language="C#" MasterPageFile="~/muslimlifestyle.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_1525585_CO5027_MuslimLifestyle.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section id="left-content">	
    <asp:Panel id="leftcontent" DefaultButton="btnLogin" Runat="Server">
		
					<h1>I'm Already Registered</h1>
                    <p>
                        <asp:Label ID="lblUsernam_login" runat="server" AssociatedControlID="txtLoginUsername" Text="UserName:"></asp:Label>
                        <asp:TextBox ID="txtLoginUsername" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="lblPassword_login" runat="server" AssociatedControlID="txtLoginPassword" Text="Password:"></asp:Label>
                        <asp:TextBox ID="txtLoginPassword" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>                       
                    </p>
                    <p>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ValidationGroup="signin" />
                        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
                    </p>
					
    </asp:Panel>
</section>

<section id="right-content">
    <asp:Panel id="rightcontent" DefaultButton="btnRegister" Runat="Server">	
        
					<h1>New to Muslim Lifestyle?</h1>
                    <p>
                        <asp:Label ID="lblUsername" runat="server" AssociatedControlID="txtRegName" Text="UserName:"></asp:Label>
                        <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtRegName" ErrorMessage="This field is required" CssClass="validation" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtRegName" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="lblEmail_login" runat="server" AssociatedControlID="txtRegEmail" Text="Email:"></asp:Label>
                        <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtRegEmail" ErrorMessage="This field is required" CssClass="validation" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegExpEmailCheck" runat="server" ControlToValidate="txtRegEmail" ErrorMessage="Please use a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validation" Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtRegPassword" Text="Password:"></asp:Label>
                        <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtRegPassword" ErrorMessage="This field is required" CssClass="validation" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" CssClass="txtbox"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password:"></asp:Label>
                        <asp:RequiredFieldValidator ID="reqConfirm" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="This field is required" CssClass="validation" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="comparePwrd" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Password Mismatch" CssClass="validation"  ControlToCompare="txtRegPassword"></asp:CompareValidator>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" ValidationGroup="signup" />
                        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
                    </p>
                
    </asp:Panel>
    </section> 
</asp:Content>

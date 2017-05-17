<%@ Page Title="Product | Muslim Lifestyle" Language="C#" MasterPageFile="~/muslimlifestyle.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="_1525585_CO5027_MuslimLifestyle.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <section class="content">
            	<h1>PRODUCTS</h1>	
                <div>
                    <asp:Repeater ID="rptrProduct" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>

                        <ItemTemplate>
                            <li class="product-container">                           
                                <%--<a href ="#"><img src ="<%#Eval ("ProdImg") %>" alt="" class="img-circle"></a>--%>
                                <%--<a href ="#"><img src ="/UploadedImages/<%#Eval ("ProdImg") %>" alt="" class="img-circle"></a>--%>
                                <h3><%# Eval ("ProdName") %></h3>
                                <p><strong>$ <%#Eval ("ProdPrice") %></strong></p>
                                <p class="btnView"><a href ="<%# Eval("ProdID", "viewproduct.aspx?ProdID={0}") %>" >
                                    View Details
                                </a></p>
                            </li>
                        </ItemTemplate>

                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]">
                    </asp:SqlDataSource>

                </div>
	     </section>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/muslimlifestyle.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="_1525585_CO5027_MuslimLifestyle.viewproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <table>
            <tr>
                <td><asp:Image ID="imageControl" runat="server" CssClass="img-circle" width="250px" Height="250"  /></td>
                <td>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            ProdName:
            <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
            <br />
            ProdPrice:
            <asp:TextBox ID="ProdPriceTextBox" runat="server" Text='<%# Bind("ProdPrice") %>' />
            <br />
            ProdQty:
            <asp:TextBox ID="ProdQtyTextBox" runat="server" Text='<%# Bind("ProdQty") %>' />
            <br />
            ProdStatus:
            <asp:TextBox ID="ProdStatusTextBox" runat="server" Text='<%# Bind("ProdStatus") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProdName:
            <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
            <br />
            ProdPrice:
            <asp:TextBox ID="ProdPriceTextBox" runat="server" Text='<%# Bind("ProdPrice") %>' />
            <br />
            ProdQty:
            <asp:TextBox ID="ProdQtyTextBox" runat="server" Text='<%# Bind("ProdQty") %>' />
            <br />
            ProdStatus:
            <asp:TextBox ID="ProdStatusTextBox" runat="server" Text='<%# Bind("ProdStatus") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            ProdName:
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Bind("ProdName") %>' />
            <br />
            ProdPrice:
            <asp:Label ID="ProdPriceLabel" runat="server" Text='<%# Bind("ProdPrice") %>' />
            <br />
            ProdQty:
            <asp:Label ID="ProdQtyLabel" runat="server" Text='<%# Bind("ProdQty") %>' />
            <br />
            ProdStatus:
            <asp:Label ID="ProdStatusLabel" runat="server" Text='<%# Bind("ProdStatus") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [ID], [ProdName], [ProdPrice], [ProdQty], [ProdStatus] FROM [tblProduct] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                    </td>
            </tr>
        </table>
        

        <asp:Button ID="btnCart" runat="server" OnClick="Button1_Click" Text="Add To Cart" />
</div>
</asp:Content>

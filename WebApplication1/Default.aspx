<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="title" style="margin-top: 140px; margin-left: 400px;">
        <h1>
            <u>Hospital Bill</u>
        </h1>
    </div>
    <div style="margin-top: 40px; margin-left: 240px;">
        Bill No:
        <asp:TextBox ID="Billno" runat="server" placeholder="Bill No" />
        Bill Date:
        <asp:TextBox ID="BillDate" runat="server" placeholder="Bill Date"/>
        <br />
        <br />
        Patient Name :
        <asp:TextBox ID="PatientName" runat="server" placeholder="Patient Name" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PatientName" ErrorMessage="only Alphabets" ForeColor="Red"></asp:RequiredFieldValidator>
        Gender :
        <asp:DropDownList ID="Gender" runat="server">
            <asp:ListItem Value=""></asp:ListItem>
            <asp:ListItem> Male </asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
       <%-- Date of birth :
<asp:Calendar ID="Calendar1" runat="server" SelectionMode="DayWeekMonth">
            </asp:Calendar>--%>       
         Date of birth :
        <asp:TextBox ID="birthday" runat="server" placeholder="dayofbirth" />
        <br />
        <br />
        Address :
        <asp:TextBox ID="Address" runat="server" placeholder="Address"/>
        Email Id :
        <asp:TextBox ID="Emailid" runat="server" placeholder="Email Id" />
        Mobile No :
        <asp:TextBox ID="Mobile" runat="server" placeholder="Mobile No" />
        <br />
        <br />
        Investigation :
        <asp:DropDownList ID="investigation" runat="server">
            <asp:ListItem Value=""></asp:ListItem>
            <asp:ListItem> ok </asp:ListItem>
            <asp:ListItem>better</asp:ListItem>
        </asp:DropDownList>
        Fee :
        <asp:TextBox ID="Fee" runat="server" placeholder="Fee" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="146px" Width="793px">
            <Columns>
                <asp:BoundField DataField="billno" HeaderText="billno" InsertVisible="False" ReadOnly="True" SortExpression="billno" />
                <asp:BoundField DataField="investigation" HeaderText="investigation" SortExpression="investigation" />
                <asp:BoundField DataField="fee" HeaderText="fee" SortExpression="fee" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hospitalbillConnectionString3 %>" SelectCommand="SELECT [billno], [investigation], [fee] FROM [bill]"></asp:SqlDataSource>

        <br />
        <br />
        <asp:Button ID="Add" runat="server" Text="Add" OnClick="Add_Click" />
        <asp:Button ID="Edit" runat="server" Text="Edit" />
        <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click"/>
        <asp:Button ID="Clear" runat="server" Text="Clear" />
        <asp:Button ID="Export" runat="server" Text="Export" />
        <asp:Button ID="Print" runat="server" Text="Print" />

    </div>
</asp:Content>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align="center">Student Info Manage Form</div>
        <table class="nav-justified" style="height: 305px; width: 95%">
            <tr>
                <td style="width: 120px">&nbsp;</td>
                <td style="width: 159px">Student ID</td>
                <td>
                    <asp:TextBox ID="txtID" runat="server" Width="270px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="btnGet" runat="server" BackColor="#CC99FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="32px" OnClick="btnGet_Click" Text="Get" Width="107px" />
                </td>
            </tr>
            <tr>
                <td style="width: 120px">&nbsp;</td>
                <td style="width: 159px">Student Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px">&nbsp;</td>
                <td style="width: 159px">Address</td>
                <td>
                    <asp:DropDownList ID="ddlAddress" runat="server">
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>CANADA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 120px">&nbsp;</td>
                <td style="width: 159px">Age</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 25px"></td>
                <td style="width: 159px; height: 25px">Contact</td>
                <td style="height: 25px">
                    <asp:TextBox ID="txtContact" runat="server" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px">&nbsp;</td>
                <td style="width: 159px">&nbsp;</td>
                <td>&nbsp;&nbsp;<asp:Button ID="btnInsert" runat="server" BackColor="#CC99FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="32px" OnClick="btnInsert_Click" Text="Insert" Width="107px" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" BackColor="#CC99FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="32px" OnClick="btnUpdate_Click" Text="Update" Width="107px" />
&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" BackColor="#CC99FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="32px" OnClientClick="return confirm('are you sure to delete?');" OnClick="btnDelete_Click" Text="Delete" Width="107px" />
&nbsp;
                    <asp:Button ID="btnSearch" runat="server" BackColor="#CC99FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="32px" OnClick="btnSearch_Click" Text="Search" Width="107px" />
                </td>
            </tr>
            <tr>
                <td style="width: 120px">&nbsp;</td>
                <td style="width: 159px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="551px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>

</asp:Content>

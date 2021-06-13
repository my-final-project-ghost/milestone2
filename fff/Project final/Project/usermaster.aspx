<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="usermaster.aspx.cs" Inherits="Project.WebForm1" %>


<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        




        string Fname = "";
        string Lname = "";
        string Email = "";
        string Phone = "";
        string Location = "";

        if (Request.Cookies["userInfo"] != null)
        {
            Fname = Request.Cookies["userInfo"].Values["Fn"];
            Lname = Request.Cookies["userInfo"].Values["Ln"];
            Email = Request.Cookies["userInfo"].Values["Em"];
            Phone = Request.Cookies["userInfo"].Values["Ph"];
            Location = Request.Cookies["userInfo"].Values["Lo"];

        }

        txtfname.Text =  Fname + " " +Lname;
        txtemail.Text =  Email;
        txtlocation.Text =  Location;
        txtmobile.Text = Phone;

       
    }

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            direction: ltr;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>



        <table class="w-100">
                <tbody class="auto-style1">
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="IDENTITY" Font-Names="arialblack" Font-Overline="False" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Name" Font-Names="Yu Gothic Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="txtfname0" runat="server" Text=":"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="txtfname" runat="server" Text="First name" Font-Bold="True" Font-Names="Yu Gothic Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="E-mail" Font-Names="Yu Gothic Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        :</td>
                    <td>
                        <asp:Label ID="txtemail" runat="server" Text="First name" Font-Bold="True" Font-Names="Yu Gothic Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Phone number" Font-Names="Yu Gothic Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        :</td>
                    <td>
                        <asp:Label ID="txtmobile" runat="server" Text="First name" Font-Bold="True" Font-Names="Yu Gothic Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Location" Font-Names="Yu Gothic Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">:</td>
                    <td>
                        <asp:Label ID="txtlocation" runat="server" Text="First name" Font-Bold="True" Font-Names="Yu Gothic Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </p>
</asp:Content>

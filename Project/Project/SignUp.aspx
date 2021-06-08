<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project.SignUp" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click1(object sender, EventArgs e)
    {
        // 1- Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";

        // 2- Create SQL Insert statement string

        string strInsert = String.Format("INSERT INTO User1 VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtfname.Text, txtlname.Text, txtemail.Text, txtmobile.Text, rdbgender.SelectedValue, ddllocation.SelectedValue, txtid.Text , txtpassword.Text);

        // 3- Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);


        try
        {



            conn.Open();


            cmdInsert.ExecuteNonQuery();


            conn.Close();
            lblMsg.Text = "Welcome " + txtfname.Text + ", Your Account has been Successfully Created!!";
        }
        catch (SqlException err)
        {
            lblMsg.Text = "The system is not available at the moment, you may try later !!";

        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 277px;
        }
        .auto-style4 {
            height: 23px;
            width: 277px;
        }
        .auto-style5 {
            width: 181px;
        }
        .auto-style6 {
            height: 23px;
            width: 181px;
        }
        .auto-style7 {
            width: 277px;
            height: 27px;
        }
        .auto-style8 {
            width: 181px;
            height: 27px;
        }
        .auto-style9 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="First Name" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label9" runat="server" Text="Last Name" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtfname" runat="server" Font-Names="Elephant" Width="171px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtlname" runat="server" Font-Names="Elephant" Width="171px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text="Email" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Mobile Phone" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtemail" runat="server" Font-Names="Elephant" Width="171px" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtmobile" runat="server" Font-Names="Elephant" Width="171px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label10" runat="server" Text="Gender" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="rdbgender" runat="server" Font-Names="Yu Gothic UI Semilight" Font-Overline="False" Font-Size="Medium" RepeatDirection="Horizontal">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label11" runat="server" Text="Location " Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddllocation" runat="server" Font-Names="Yu Gothic UI Semilight" Font-Size="Medium">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="National ID" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtid" runat="server" Font-Names="Elephant" Width="171px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Upload 2 sides of ID" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="FileUpload1" runat="server" Font-Names="Yu Gothic UI Semilight" />
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Password" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server" Text="Confirm Password" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtpassword" runat="server" Font-Names="Elephant" Width="171px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtconfirm" runat="server" Font-Names="Elephant" Width="171px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Submit" Font-Names="Elephant" Height="35px" Width="191px" OnClick="Button1_Click1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

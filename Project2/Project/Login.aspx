<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>
<%@ Import Namespace="System.Data.SqlClient" %>

 <link rel="stylesheet" href="lib/twitter-bootstrap/css/bootstrap.css">
 
    <script src="https://kit.fontawesome.com/a076d05399.js" ></script>
  <link rel="stylesheet" href="Css/login.css">
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";

        // 2- Create SQL Select statement
        string strSelect = "SELECT * FROM User1 "
            + " WHERE email = '" + txtemail.Text + "' AND Password = '"
            + txtpassword.Text + "'";


        // 3- Create SQL Select Command
        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

        // 4- Create data reader object
        SqlDataReader reader;

        // 5- Open the database
        conn.Open();

        // 6- Execute Select command

        reader = cmdSelect.ExecuteReader();

        if (reader.Read())
            Response.Redirect("~/index.html");
       // else
           // lblMsg.Text = "Incorrect Username and/or Password, Please try again!!";

        // 7- close the database
        conn.Close();

    }




</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 103%;
        }
        .auto-style4 {
            height: 26px;
            direction: ltr;
        }
        .auto-style7 {
            height: 50px;
            padding-left:10px;
            padding-top:10px;
            direction: ltr;
        }
        .auto-style8 {
            height: 26px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="">
            <img src="Img/Logo.png" alt="Logo" width="100" height="100" />

        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="container sss ">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Index.html">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SignUp.aspx">Signup</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.aspx">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#">contact us</a>
                    </li>
                </ul>

            </div>
            </div>
    </nav>

    <form id="form1" runat="server">
                    <div class="container tbl">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/Logo.png" Width="100px" Height="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#002768" Text="Sign In"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Arial" Font-Size="Small" Width="224px" class=" btn btn-dark dropdown-toggle dropp " ForeColor="#E3B520">
                            <asp:ListItem>Choose Role</asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                            <asp:ListItem>Police Officer</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"  class="form-control" Font-Size="Small" placeholder="Enter Email" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="password"  class="form-control" Font-Size="Small" placeholder="Enter Password" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Login" Font-Names="Elephant" Height="35px" Width="224px" OnClick="Button1_Click" class="btn btn-dark" BorderColor="#E3B520" ForeColor="#E3B520" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" NavigateUrl="~/Navbar.html">Forget password?</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SignUp.aspx">Signup</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

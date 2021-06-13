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

        ///////////////////////////////////////////////user////////////////////////////////////
        if (DropDownList1.SelectedValue == "User")
        {
            string strSelect = "SELECT * FROM User1 "
    + " WHERE email = '" + txtemail.Text + "' AND Password = '"
    + txtpassword.Text + "'";


            
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            
            SqlDataReader reader;

           
            conn.Open();

            

            reader = cmdSelect.ExecuteReader();

          
            if (reader.Read()) {
              


                string Fname = (string)reader.GetValue(0);
                string Lname = (string)reader.GetValue(1);
                string Phone = (string)reader.GetValue(3);
                string Location = (string)reader.GetValue(5);


                HttpCookie koko = new HttpCookie("userInfo");

                koko.Values.Add("Em", txtemail.Text);
                koko.Values.Add("Pa", txtpassword.Text);
                koko.Values.Add("Fn", Fname);
                koko.Values.Add("Ln", Lname);
                koko.Values.Add("Ph", Phone);
                koko.Values.Add("Lo", Location);
                koko.Expires = DateTime.Now.AddDays(3);
                Response.Cookies.Add(koko);
                Response.Redirect("~/usermaster.aspx");





                if (DropDownList1.SelectedValue == "User")
                    Response.Redirect("~/userHome.aspx");
              

            }
            else
                LblMsg.Text = "Incorrect Username and/or Password, Please try again!!";


            conn.Close();

        }
        //////////////////////////////////////////////////////admin////////////////////////////////////////////
        else if (DropDownList1.SelectedValue == "Admin") {
            string strSelect = "SELECT * FROM Admin1 "
       + " WHERE Id = '" + txtemail.Text + "' AND password = '"
       + txtpassword.Text + "'";


            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            SqlDataReader reader;

            conn.Open();


            reader = cmdSelect.ExecuteReader();


            


            if (reader.Read()) {
                





                if (DropDownList1.SelectedValue == "Admin")
                    Response.Redirect("~/adminhome.aspx");
               

            }
            else
                LblMsg.Text = "Incorrect Username and/or Password, Please try again!!";

        }
        ////////////////////////////////police///////////////////////////
        ///
        else if (DropDownList1.SelectedValue == "Police Officer") {
            string strSelect = "SELECT * FROM Police1 "
       + " WHERE Id = '" + txtemail.Text + "' AND password = '"
       + txtpassword.Text + "'";


            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            SqlDataReader reader;

            conn.Open();


            reader = cmdSelect.ExecuteReader();

            if (reader.Read()) {


              



                if (DropDownList1.SelectedValue == "Police Officer")
                    Response.Redirect("~/plicecomp.aspx");
               

            }
            else
                LblMsg.Text = "Incorrect Username and/or Password, Please try again!!";




            conn.Close();


        }


    }




</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in</title>
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
                        <a class="nav-link" href="#">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="report.aspx">Report</a>
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
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Arial" Font-Size="Small" Width="224px" class=" btn btn-dark dropdown-toggle dropp " ForeColor="#E3B520" AutoPostBack="True">
                            <asp:ListItem>Choose Role</asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                            <asp:ListItem>Police Officer</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
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
                        &nbsp;&nbsp;<asp:Label ID="LblMsg" runat="server" Font-Names="arialblack" ForeColor="Red"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
     <footer class="bg-dark text-center text-white fixed-bottom footback">
        <!-- Grid container -->
        <div class="container p-4 pb-0">
            <!-- Section: Social media -->
            <section class="">
                <!-- Facebook -->
                <a class="btn btn-dark btn-floating m-1"
                   style="background-color: #3b5998;"
                   href="https://www.facebook.com/MoiEgy" target="_blank"
                   role="button">
                    <i class="fab fa-facebook-f"></i>
                </a>

                <!-- Twitter -->
                <a class="btn btn-dark btn-floating m-1"
                   style="background-color: #55acee;"
                   href="https://twitter.com/moiegy?lang=ar" target="_blank"
                   role="button">
                    <i class="fab fa-twitter"></i>
                </a>

                <!-- Google -->
                <a class="btn btn-dark btn-floating m-1"
                   style="background-color: #dd4b39;"
                   href="#"
                   role="button">
                    <i class="fab fa-google"></i>
                </a>

                <!-- Instagram -->
                <a class="btn btn-dark btn-floating m-1"
                   style="background-color: #ac2bac;"
                   href="https://www.instagram.com/moiegy/" target="_blank"
                   role="button">
                    <i class="fab fa-instagram"></i>
                </a>

               
               
            </section>
        </div>
    
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2021 Copyright:
            <a class="text-white" href="https://www.linkedin.com/in/mahmoud-khaled-9739b1189/">Mahmoud Khaled</a>
        </div>
    </footer>
</body>
</html>

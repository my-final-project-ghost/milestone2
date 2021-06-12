
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="Project.report" %>
 <link rel="stylesheet" href="lib/twitter-bootstrap/css/bootstrap.css">
 
    <script src="https://kit.fontawesome.com/a076d05399.js" ></script>
   <link rel="stylesheet" href="Css/report.css">
  <link rel="stylesheet" href="Css/navbar.css">

<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";

      

        string strInsert = String.Format("INSERT INTO Comp1 VALUES('{0}', '{1}', '{2}', '{3}','{3}')", txtfname.Text, txtphone.Text, txtsubject.Text,txtmessage.Text),NULL;

       
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);


        try
        {



            conn.Open();


            cmdInsert.ExecuteNonQuery();


            conn.Close();


          
            lblMsg.Visible=true;

            lblMsg.Text = "Thanks " + txtfname.Text + ", We will help you as soon as possible.";
        }
        catch (SqlException err)
        {
            lblMsg.Text = "The system is not available at the moment, you may try later !!";

        }



    }
</script>
<head runat="server">
    <title>Report</title>
    <style type="text/css">
        .auto-style1 {
            width: 1455px;
        }
        .auto-style3 {
            width: 1143px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            margin-left: 40px;
            width: 195px;
        }
        .auto-style5 {
            height: 26px;
            width: 195px;
        }
        .auto-style8 {
            width: 195px;
        }
        .auto-style11 {
            width: 1143px;
        }
        .auto-style14 {
            width: 315px;
            height: 10px;
        }
        .auto-style15 {
            width: 5px;
            height: 10px;
        }
        .auto-style16 {
            width: 303px;
            height: 10px;
        }
        .auto-style17 {
            width: 195px;
            direction: ltr;
        }
        .auto-style18 {
            width: 160px;
        }
        .auto-style19 {
            width: 160px;
            height: 26px;
        }
        .auto-style20 {
            width: 160px;
            height: 10px;
        }
        .auto-style21 {
            height: 10px;
            width: 195px;
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
                        <a class="nav-link" href="#">Signup</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.aspx">Login</a>
                    </li>
                    <li class="nav-item">
<a class="nav-link " href="report.html">Report</a>           

                    </li>
                </ul>

            </div>
            </div>
    </nav>
    <br /><br /><br />
    <form id="form1" runat="server">
                    <div class="container tbl">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Arial Black" Font-Size="X-Large" Text="Report"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style3" colspan="4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Do you want to report any crime? We will help you as soon as possible."></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="Label1" runat="server" Text="Name" Font-Names="Segoe UI Black" Font-Size="Medium"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Your phone number" Font-Names="Segoe UI Black" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Required Name" ForeColor="Red" Font-Names="Arial"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtfname" runat="server" Height="29px" Width="371px" class="form-control" Font-Names="Arial" Font-Size="Small"></asp:TextBox>
                   </td>
                    <td class="auto-style15">
                        </td>
                    <td class="auto-style14">
                    <asp:TextBox ID="txtphone" runat="server" Height="29px" Width="423px" class="form-control"  Font-Names="Arial" Font-Size="Small" placeholder="ex: 021065216442"></asp:TextBox>
                        
                    
                    </td>
                    <td class="auto-style14">
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="Required Phone" ForeColor="Red" Font-Names="Arial"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="Label2" runat="server" Text="Subject" Font-Names="Segoe UI Black" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsubject" ErrorMessage="Required Subject" ForeColor="Red" Font-Names="Arial"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11" colspan="4">
                        <asp:TextBox ID="txtsubject" runat="server" Height="29px" Width="812px"  class="form-control" Font-Names="Arial" Font-Size="Small"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style3" colspan="4">
                        <asp:Label ID="Label3" runat="server" Text="Your report" Font-Names="Segoe UI Black" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmessage" ErrorMessage="Required Message" ForeColor="Red" Font-Names="Arial"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11" colspan="4">
                        <asp:TextBox ID="txtmessage" runat="server" Height="72px" TextMode="MultiLine" class="form-control" Width="812px" Font-Names="Arial" Font-Size="Small"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmessage" ErrorMessage="Maximum 254 characters" ForeColor="Red" ValidationExpression="^.{1,254}$" Font-Names="Arial"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style11" colspan="4">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Width="810px"  class="btn btn-dark" BorderColor="#E3B520" ForeColor="#E3B520" Font-Names="Segoe UI Black" Font-Size="Medium" Height="51px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="lblMsg" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="#343A40" Visible="False"></asp:Label>
                     <i class="fas fa-check " id="fass"> 
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style11" colspan="4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
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
        <script src="lib/twitter-bootstrap/js/bootstrap.min.js"></script>

</body>
</html>

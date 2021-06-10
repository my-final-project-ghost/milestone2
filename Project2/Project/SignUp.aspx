<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project.SignUp" %>

<%@ Import Namespace="System.Data.SqlClient" %>
 <link rel="stylesheet" href="lib/twitter-bootstrap/css/bootstrap.css">
 
    <script src="https://kit.fontawesome.com/a076d05399.js" ></script>
   <link rel="stylesheet" href="Css/signup.css">
  <link rel="stylesheet" href="Css/navbar.css">

<!DOCTYPE html>
<script src="JS/JavaScript.js"></script>

<script runat="server">



    protected void Button1_Click1(object sender, EventArgs e)
    {
        // 1- Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";

        // 2- Create SQL Insert statement string

        string strInsert = String.Format("INSERT INTO User1 VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtfname.Text, txtlname.Text, txtemail.Text, txtmobile.Text, rdbgender.SelectedValue, ddllocation.SelectedValue, txtid.Text, txtpassword.Text);

        // 3- Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);


         try
         {



        conn.Open();


        cmdInsert.ExecuteNonQuery();


        conn.Close();
        if (FileUpload1.HasFile ) {
            FileUpload1.SaveAs(Server.MapPath("NationalID") + "\\" + txtfname.Text +txtlname.Text+"front"+ ".jpg");
        }
        if (FileUpload2.HasFile ) {
            FileUpload1.SaveAs(Server.MapPath("NationalID") + "\\" + txtfname.Text +txtlname.Text+"back"+ ".jpg");
        }

        //            Page.Validate();
        //   if (Page.IsValid == true)
        //lblMsg.Text = "eeeeee " + txtfname.Text + ", Your Account has been Successfully Created!!"; 
        //       else
        //lblMsg.Text = "Welcome " + txtfname.Text + ", Your Account has been Successfully Created!!";
                  //  lblMsg.Attributes.Add("style", "visible:True");

        lblMsg.Text = "Welcome " + txtfname.Text + ", Your Account has been Created!!";
        
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
            width: 333px;
        }
        .auto-style4 {
            height: 23px;
            width: 333px;
        }
        .auto-style7 {
            width: 333px;
            height: 27px;
        }
        .auto-style11 {
            height: 26px;
            width: 333px;
        }
        .auto-style19 {
            height: 26px;
            width: 442px;
        }
        .auto-style20 {
            width: 442px;
        }
        .auto-style21 {
            width: 442px;
            height: 27px;
        }
        .auto-style22 {
            height: 23px;
            width: 442px;
        }
        .auto-style23 {
            width: 333px;
            height: 52px;
        }
        .auto-style24 {
            width: 442px;
            height: 52px;
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
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="container fff ">

            <table class="auto-style1">

                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" Text="Welcome to Signup Page"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style21">

                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text="First Name" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style21">

                        <asp:Label ID="Label9" runat="server" Text="Last Name" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
  
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtfname" runat="server" Font-Names="Arial" Width="171px" class="form-control" Font-Size="Small" placeholder="Enter name"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not Vaild firstname" ControlToValidate="txtfname" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ></asp:RegularExpressionValidator>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfname" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">

                        <asp:TextBox ID="txtlname" runat="server" Font-Names="Arial" Width="171px" class="form-control" Font-Size="Small" placeholder="Enter name"></asp:TextBox >
  
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Not Vaild lastname" ClientIDMode="Static" ControlToValidate="txtlname" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ></asp:RegularExpressionValidator>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlname" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text="Email" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:Label ID="Label1" runat="server" Text="Mobile Phone" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtemail" runat="server" Font-Names="Arial"  class="form-control"  TextMode="Email" Font-Size="Small" placeholder="Enter Email"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txtmobile" runat="server" Font-Names="Arial" class="form-control" Font-Size="Small" placeholder="Enter Phone" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobile" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label10" runat="server" Text="Gender" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small" Font-Italic="False"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:RadioButtonList ID="rdbgender" runat="server" Font-Names="Yu Gothic UI Semilight" Font-Overline="False" Font-Size="Medium" RepeatDirection="Horizontal">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label11" runat="server" Text="Location " Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:DropDownList ID="ddllocation" runat="server" Font-Names="Arial" Font-Size="Small">
                            <asp:ListItem>Choose one</asp:ListItem>
                            <asp:ListItem>Mukkattam</asp:ListItem>
                            <asp:ListItem>Nasr city</asp:ListItem>
                            <asp:ListItem>5th Settlement</asp:ListItem>
                            <asp:ListItem>7th Settlement</asp:ListItem>
                            <asp:ListItem>Embaba</asp:ListItem>
                            <asp:ListItem>Al-Muhandsin</asp:ListItem>
                            <asp:ListItem>El-Zmalek</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="National ID" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtid" runat="server" Font-Names="Arial" class="form-control"   Font-Size="Small" placeholder="Enter National ID"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Not Vaild ID number" ControlToValidate="txtid" ForeColor="Red" ValidationExpression="\d{13}" ></asp:RegularExpressionValidator>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Upload First sides of ID" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:FileUpload ID="FileUpload1" runat="server" Font-Names="Arial" multiple="multiple" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label12" runat="server" Text="Upload other sides of ID" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style20">
                        <asp:FileUpload ID="FileUpload2" runat="server" Font-Names="Arial" multiple="multiple" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload2" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;<asp:Label ID="Label5" runat="server" Text="Password" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label8" runat="server" Text="Confirm Password" Font-Bold="True" Font-Names="Yu Gothic UI Semilight" Font-Size="Small"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtpassword" runat="server" Font-Names="Arial" class="form-control"  TextMode="Password" Font-Size="Small" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpassword" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtconfirm" runat="server" Font-Names="Arial" class="form-control"  TextMode="Password" Font-Size="Small"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtconfirm" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirm" ErrorMessage="Unmatched password" ForeColor="Red"></asp:CompareValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style20">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Sign Up" Font-Names="Elephant" Height="35px" Width="191px" OnClick="Button1_Click1" class="btn btn-dark" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMsg" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="#343A40"></asp:Label>
                    <i class="fas fa-check">    
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

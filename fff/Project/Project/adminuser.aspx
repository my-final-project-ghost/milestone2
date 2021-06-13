<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminuser.aspx.cs" Inherits="Project.WebForm2" %>
<%@ Import Namespace="System.Data.SqlClient" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 354px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="1270px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mobilephone" HeaderText="mobilephone" SortExpression="mobilephone" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
            <asp:BoundField DataField="nationalid" HeaderText="nationalid" SortExpression="nationalid" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
            <ControlStyle BackColor="#343A40" BorderColor="#E3B520" Font-Names="Arial" ForeColor="#E3B520" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#222023" BorderColor="#DDAE21" Font-Names="Arial" />
        <HeaderStyle BackColor="#222023" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" Font-Names="Arial" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#DDAE21" BorderColor="#DDAE21" Font-Bold="True" Font-Names="arialblack" ForeColor="Black" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [User1] WHERE [ID] = @ID" InsertCommand="INSERT INTO [User1] ([First Name], [LastName], [email], [mobilephone], [gender], [location], [nationalid], [password]) VALUES (@First_Name, @LastName, @email, @mobilephone, @gender, @location, @nationalid, @password)" SelectCommand="SELECT * FROM [User1]" UpdateCommand="UPDATE [User1] SET [First Name] = @First_Name, [LastName] = @LastName, [email] = @email, [mobilephone] = @mobilephone, [gender] = @gender, [location] = @location, [nationalid] = @nationalid, [password] = @password WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="nationalid" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="nationalid" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                        <asp:Button ID="Button2" runat="server" Text="Add user" Font-Names="Elephant" Height="35px" Width="187px" OnClick="Button2_Click2" class="btn btn-dark" BorderColor="#E3B520" ForeColor="#E3B520" />
                    <br />
    <br />
    <style>
        .ss{
            
        }
    </style>

    <script runat="server">



    protected void Button1_Click1(object sender, EventArgs e)
    {
            
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";


        string strInsert = String.Format("INSERT INTO User1 VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtfname.Text, txtlname.Text, txtemail.Text, txtmobile.Text, rdbgender.SelectedValue, ddllocation.SelectedValue, txtid.Text, txtpassword.Text);

        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
            




            conn.Open();


            cmdInsert.ExecuteNonQuery();


            conn.Close();
            if (FileUpload1.HasFile ) {
                FileUpload1.SaveAs(Server.MapPath("NationalID") + "\\" + txtfname.Text +txtlname.Text+"front"+ ".jpg");
            }
            if (FileUpload2.HasFile ) {
                FileUpload1.SaveAs(Server.MapPath("NationalID") + "\\" + txtfname.Text +txtlname.Text+"back"+ ".jpg");
            }

           

        
        
    }


    protected void Button2_Click2(object sender, EventArgs e)
    {
txtemail.Visible=true;
txtfname.Visible=true;
txtid.Visible=true;
            txtlname.Visible=true;
            txtmobile.Visible=true;
            txtpassword.Visible=true;
            FileUpload1.Visible=true;
            FileUpload2.Visible=true;
            ddllocation.Visible=true;
            rdbgender.Visible=true;
            lbl0.Visible=true;
            lbl1.Visible=true;
            lbl2.Visible=true;
            lbl3.Visible=true;
            lbl4.Visible=true;
            lbl5.Visible=true;
            lbl6.Visible=true;
            lbl7.Visible=true;
            lbl8.Visible=true;
            lbl9.Visible=true;
            Button1.Visible=true;
}
    </script>



  

    <div id="divv">
    <table class="w-100">
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl1" runat="server" Text="First Name" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:TextBox ID="txtfname" runat="server" Font-Names="Arial" Width="171px" class="form-control" Font-Size="Small" placeholder="Enter name" Visible="False"></asp:TextBox>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">

                        <asp:Label ID="lbl2" runat="server" Text="Last Name" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
  
                    </td>
            <td>

                        <asp:TextBox ID="txtlname" runat="server" Font-Names="Arial" Width="171px" class="form-control" Font-Size="Small" placeholder="Enter name" Visible="False"></asp:TextBox >
  
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl3" runat="server" Text="Email" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:TextBox ID="txtemail" runat="server" Font-Names="Arial"  class="form-control"  TextMode="Email" Font-Size="Small" placeholder="Enter Email" Width="171px" Visible="False"></asp:TextBox>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl4" runat="server" Text="Mobile Phone" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:TextBox ID="txtmobile" runat="server" Font-Names="Arial" class="form-control" Font-Size="Small" placeholder="Enter Phone" Width="172px" Visible="False" ></asp:TextBox>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl5" runat="server" Text="Gender" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Font-Italic="False" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:RadioButtonList ID="rdbgender" runat="server" Font-Names="Segoe UI Black" Font-Overline="False" Font-Size="Medium" RepeatDirection="Horizontal" Visible="False">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl6" runat="server" Text="Location " Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:DropDownList ID="ddllocation" runat="server" Font-Names="Arial" Font-Size="Small" class=" btn btn-dark dropdown-toggle dropp" ForeColor="#E3B520" Visible="False">
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
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl7" runat="server" Text="National ID" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:TextBox ID="txtid" runat="server" Font-Names="Arial" class="form-control"   Font-Size="Small" placeholder="Enter National ID" Width="178px" Visible="False"></asp:TextBox>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl8" runat="server" Text="Upload First sides of ID" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Font-Names="Arial" multiple="multiple" Visible="False" />
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl9" runat="server" Text="Upload other sides of ID" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                        </td>
            <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" Font-Names="Arial" multiple="multiple" Visible="False" />
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><asp:Label ID="lbl0" runat="server" Text="Password" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                        </td>
            <td>
                        <asp:TextBox ID="txtpassword" runat="server" Font-Names="Arial" class="form-control"  TextMode="Password" Font-Size="Small" Width="176px" Visible="False" ></asp:TextBox>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                        <asp:Button ID="Button1" runat="server" Text="Sign Up" Font-Names="Segoe UI Black" Height="35px" Width="191px" OnClick="Button1_Click1" class="btn btn-dark" BorderColor="#E3B520" ForeColor="#E3B520" Visible="False" />
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                        &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                        &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                        &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                        &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                        &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
    <br />
    <br />
</asp:Content>

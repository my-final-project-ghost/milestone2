<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminpolice.aspx.cs" Inherits="Project.WebForm3" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 232px;
        }
        .auto-style7 {
            width: 232px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;<br />
&nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        
        </p>
&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="1270px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Police1] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Police1] ([Id], [name], [email], [password]) VALUES (@Id, @name, @email, @password)" SelectCommand="SELECT * FROM [Police1]" UpdateCommand="UPDATE [Police1] SET [name] = @name, [email] = @email, [password] = @password WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
                        <asp:Button ID="Button2" runat="server" Text="Add user" Font-Names="Elephant" Height="35px" Width="187px" OnClick="Button2_Click2" class="btn btn-dark" BorderColor="#E3B520" ForeColor="#E3B520" />
    </p>

     <script runat="server">



    protected void Button1_Click1(object sender, EventArgs e)
    {
            
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";


       string  strInsert = String.Format("INSERT INTO Police1 VALUES('{0}', '{1}', '{2}', '{3}')", txtid.Text, txtfname.Text, txtemail.Text,txtpassword.Text);

        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
            




            conn.Open();


            cmdInsert.ExecuteNonQuery();


            conn.Close();
          
           

        
        
    }


    protected void Button2_Click2(object sender, EventArgs e)
    {
txtemail.Visible=true;
txtfname.Visible=true;
txtid.Visible=true;
            txtpassword.Visible=true;
          
      
            lbl0.Visible=true;
            lbl1.Visible=true;
          
            lbl3.Visible=true;
            lbl4.Visible=true;
         
            Button1.Visible=true;
}
    </script>








    <table class="w-100">
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl4" runat="server" Text="ID" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:TextBox ID="txtid" runat="server" Font-Names="Arial" class="form-control"  TextMode="Password" Font-Size="Small" Width="176px" Visible="False" ></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl1" runat="server" Text=" Name" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:TextBox ID="txtfname" runat="server" Font-Names="Arial" Width="176px" class="form-control" Font-Size="Small" Visible="False"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="auto-style6">
                        <asp:Label ID="lbl3" runat="server" Text="Email" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                    </td>
            <td>
                        <asp:TextBox ID="txtemail" runat="server" Font-Names="Arial"  class="form-control"  TextMode="Email" Font-Size="Small"  Width="176px" Visible="False"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="auto-style6"><asp:Label ID="lbl0" runat="server" Text="Password" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="Medium" Visible="False"></asp:Label>
                        </td>
            <td>
                        <asp:TextBox ID="txtpassword" runat="server" Font-Names="Arial" class="form-control"  TextMode="Password" Font-Size="Small" Width="176px" Visible="False" ></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                        <asp:Button ID="Button1" runat="server" Text="Sign Up" Font-Names="Segoe UI Black" Height="35px" Width="191px" OnClick="Button1_Click1" class="btn btn-dark" BorderColor="#E3B520" ForeColor="#E3B520" Visible="False" />
                    </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/police.Master" AutoEventWireup="true" CodeBehind="plicecomp.aspx.cs" Inherits="Project.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;

        
        </p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="1270px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" InsertVisible="False" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                <ControlStyle BackColor="#343A40" BorderColor="#E3B520" Font-Names="arial" ForeColor="#E3B520" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Comp1] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Comp1] ([name], [phone], [subject], [message], [status]) VALUES (@name, @phone, @subject, @message, @status)" SelectCommand="SELECT * FROM [Comp1]" UpdateCommand="UPDATE [Comp1] SET [name] = @name, [phone] = @phone, [subject] = @subject, [message] = @message, [status] = @status WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="subject" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="subject" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
</asp:SqlDataSource>
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

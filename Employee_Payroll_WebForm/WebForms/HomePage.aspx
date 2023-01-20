<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Employee_Payroll_WebForm.WebForms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/HomePage.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <h2 style="margin-left: 540px">Employee Details</h2>
            <div style="margin-left: 1140px">
                 <asp:Button ID="Button1" runat="server" Text="+ Add User" OnClick="Button1_Click" Height="40px" Width="122px" BackColor="#42515F" Font-Bold="true" ForeColor="White"/>
            </div>
                <br />
            </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" Width="1155px"  CellPadding="3" AutoGenerateColumns="False" GridLines="Vertical" HorizontalAlign="Center"  DataSourceID="SqlDataSource1" AllowPaging="True" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Emp_Id" PageSize="5">
                <Columns>
                    <asp:TemplateField HeaderText="Profile_Image" SortExpression="Profile_Image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Profile_image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Profile_image") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                    <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:CommandField HeaderText="Action" ShowCancelButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#42515F" Font-Bold="true" ForeColor="White" Height="60px" />
                <PagerStyle BackColor="#42515F" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFFFF" ForeColor="Black" Height="58PX" />
                 <SelectedRowStyle BackColor="#008ABC" Font-Bold="true" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Payroll_Details_WebFormConnectionString %>" 
                SelectCommand="SELECT * FROM [Employee_Details]"
                DeleteCommand="DELETE FROM [Employee_Details] WHERE [Emp_Id] = @original_ID AND 
                [Profile_Image] = @original_img AND 
                [Name] = @original_name AND 
                [Gender] = @original_gender AND 
                [Department] = @original_Department AND 
                [Salary] = @original_salary AND 
                [Start_Date] = @original_startdate AND 
                [Notes]=@original_notes"
                UpdateCommand="UPDATE [Employee_Details] SET [Profile_Image]= @Profile_Image, [Name]=@Name, 
                [Gender]=@Gender, 
                [Department]=@Department,
                [Salary]=@Salary, 
                [Start_Date]=@Start_Date, 
                [Notes]=@Notes 
                WHERE [Emp_Id]= @Emp_Id ">
                <UpdateParameters>
                    <asp:Parameter Name="Profile_Image" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Salary" Type="String" />
                    <asp:Parameter Name="Start_Date" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="Emp_Id" Type="Int32" />
                </UpdateParameters>
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_img" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_Department" Type="String" />
                    <asp:Parameter Name="original_salary" Type="String" />
                    <asp:Parameter Name="original_startdate" Type="String" />
                    <asp:Parameter Name="original_notes" Type="String" />
                </DeleteParameters>
                 </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

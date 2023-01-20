<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Employee_Payroll_WebForm.WebForms.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/SignUp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="MainContainer">
        <form method="post">
            <div>
                <h2 style="margin-left: 520px">Create Account</h2>
                <h3 style="margin-left: 520px">to continue to Employee Payroll</h3>
            </div>
            <br />
            <div style="margin-left: 520px">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" PlaceHolder="First Name" required="required" ToolTip="Enter Your First Namw"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" PlaceHolder="Last Name" required="required" ToolTip="Enter Your First Namw"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid First Name" 
                        ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-zA-Z]{2,}" Display="Dynamic">
                </asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Last Name" 
                        ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-zA-Z]{2,}" Display="Dynamic">
                </asp:RegularExpressionValidator>

            <br />
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="389px" PlaceHolder="Enter Email" ToolTip="Enter Your email" required="required"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Correct EMail" Display="Dynamic" 
                        ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[a-z0-9A-Z]+[@]+[a-zA-Z]+[.][a-zA-Z]{2,3}">
                </asp:RegularExpressionValidator>
            <br />
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="389px" PlaceHolder="Enter Mobile Number" required="required"></asp:TextBox>
                <br />
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Correct Mobile Number" Display="Dynamic" 
                    ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="[7-9]{1}[0-9]{9}">
                </asp:RegularExpressionValidator>
                <br />
            <br />
                <asp:TextBox ID="TextBox5" runat="server" Height="30px" PlaceHolder="Enter Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" PlaceHolder="Confirm Password"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter Correct Password" 
                    Display="Dynamic" ControlToValidate="TextBox5"   ForeColor="Red" ValidationExpression="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}">
                </asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Password Didn't Match" 
                    Display="Dynamic" ControlToValidate="TextBox6"   ForeColor="Red" ValidationExpression="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}">
                </asp:RegularExpressionValidator>
            </div>
            <br />
            <div>
                <div style="margin-left: 520px">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Password" />
                    <br />
                    <br />
                    <div>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign in Instead</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" />
                        <br />
                        <br />
                    </div>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </div>
                
            </div>
        </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Payroll_Details_WebFormConnectionString %>" SelectCommand="SELECT * FROM [Registration_Details]"></asp:SqlDataSource>
    </div>
    </asp:Content>

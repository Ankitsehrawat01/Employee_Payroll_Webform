<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Employee_Payroll_WebForm.WebForms.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <form>
            <div>
                 <h2 style="margin-left: 560px">Sign in</h2>
                 <h3 style="margin-left: 560px">to continue to Employee Payroll</h3>
            </div>
            <br />
            <div style="margin-left: 560px">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="250px" PlaceHolder="Enter Emaail" ToolTip="Enter your Email" name="email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" Display="Dynamic" 
                ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct Email" 
                    ControlToValidate="TextBox1" ForeColor="Red"
                    ValidationExpression="[a-z0-9A-Z]+[@]+[a-zA-Z]+[.][a-zA-Z]{2,3}"></asp:RegularExpressionValidator>
                <br />
            <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="250px" PlaceHolder="Enter Password" name="password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" 
                Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter the correct password"
                ValidationExpression="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}" ControlToValidate="TextBox2" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server">Forget Password?</asp:LinkButton>
            <br />
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
&nbsp;&nbsp;&nbsp;
            <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" style="height: 29px" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </form>
    </div>
    
    

</asp:Content>

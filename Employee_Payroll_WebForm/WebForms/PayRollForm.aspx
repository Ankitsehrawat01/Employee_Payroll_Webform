<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="PayRollForm.aspx.cs" Inherits="Employee_Payroll_WebForm.WebForms.PayRollForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/PayRollForm.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="Mainbox">
    <form method="post">
        <div>
            <h2 style="margin-left: 420px">Employee Payroll From</h2>
        </div>
        <br/>
        <div style="margin-left: 420px">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="380px"></asp:TextBox>
            <br />
         <br/>
            <asp:Label ID="Label2" runat="server" Text="Profile Image"  RepeatDirection="Horizontal"></asp:Label>
&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="../Assets/Images/avtar1.png"> <img src="../Assets/Images/avtar1.png" alt="Img1" width="50px"> </asp:ListItem>
                <asp:ListItem Value="../Assets/Images/avtar2.png"> <img src="../Assets/Images/avtar2.png" alt="Img2" width="50px"> </asp:ListItem>
                <asp:ListItem Value="../Assets/Images/avtar3.png"> <img src="../Assets/Images/avtar3.png" alt="Img2" width="50px"> </asp:ListItem>
                <asp:ListItem Value="../Assets/Images/avtar4.png"> <img src="../Assets/Images/avtar4.png" alt="Img4" width="50px"> </asp:ListItem>
            </asp:RadioButtonList>
        <br />
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Male" Text="Male"> <img src="../Assets/Images/male.jpg" alt="Img" width="50px"> </asp:ListItem>
                <asp:ListItem Value="Female" Text="Female"> <img src="../Assets/Images/female.png" alt="Img" width="50px"> </asp:ListItem>
                <asp:ListItem Value="Other" Text="Other"> <img src="../Assets/Images/others.png" alt="Img" width="50px"></asp:ListItem>
            </asp:RadioButtonList>
        <br />
            <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="HR" Text="HR"></asp:ListItem>
                <asp:ListItem Value="Sales" Text="Sales"></asp:ListItem>
                <asp:ListItem Value="Finance" Text="Finance"></asp:ListItem>
                <asp:ListItem Value="Engineer" Text="Engineer"></asp:ListItem>
                <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
            </asp:CheckBoxList>
            
        <br />
            <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" RepeatDirection="Horizontal" Height="29px" Width="401px">
                <asp:ListItem Value="Select Salary" Text="Select Salary"></asp:ListItem>
                <asp:ListItem Value="30000" Text="30000"></asp:ListItem>
                <asp:ListItem Value="40000" Text="40000"></asp:ListItem>
                <asp:ListItem Value="50000" Text="50000"></asp:ListItem>
                <asp:ListItem Value="60000" Text="60000"></asp:ListItem>
                <asp:ListItem Value="70000" Text="70000"></asp:ListItem>
                <asp:ListItem Value="80000" Text="80000"></asp:ListItem>
                <asp:ListItem Value="90000" Text="90000"></asp:ListItem>
                <asp:ListItem Value="100000" Text="100000"></asp:ListItem>
                <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
            </asp:DropDownList>
            <br />
    <br />
            <asp:Label ID="Label6" runat="server" Text="Start Date"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlDay" runat="server" Height="29px" Width="120px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlMonth" runat="server" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" Height="29px" Width="120px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlYear" runat="server" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" Height="31px" Width="120px">
            </asp:DropDownList>
            <br />
    <br />
            <asp:Label ID="Label7" runat="server" Text="Notes"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="71px" Width="390px"></asp:TextBox>
            <br />
    <br />
            <asp:Button ID="Button1" runat="server" Text="Cancel" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Reset" OnLoad="Page_Load" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server"></asp:Label>
        </div>
 </form>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Payroll_Details_WebFormConnectionString %>" SelectCommand="SELECT * FROM [Employee_Details]"></asp:SqlDataSource>
</asp:Content>

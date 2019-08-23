<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="TimeTable.aspx.cs" Inherits="Student_TimeTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container text-center" style="padding-top: 1%">
        <h1>Time Table</h1>
        <br />
        <asp:Table ID="Table1" CssClass="table table-bordered" runat="server">
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server" id="className"></asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">Monday</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">Tuesday</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">Wednesday</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">Thursday</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">Friday</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">Saturday</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server" >7:30 to 8:20</asp:TableHeaderCell>
                <asp:TableCell runat="server" id="m1"></asp:TableCell>
                <asp:TableCell runat="server" id="t1"></asp:TableCell>
                <asp:TableCell runat="server" id="w1"></asp:TableCell>
                <asp:TableCell runat="server" id="th1"></asp:TableCell>
                <asp:TableCell runat="server" id="f1"></asp:TableCell>
                <asp:TableCell runat="server" id="s1"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server" >8:20 to 9:10</asp:TableHeaderCell>
                <asp:TableCell runat="server" id="m2"></asp:TableCell>
                <asp:TableCell runat="server" id="t2"></asp:TableCell>
                <asp:TableCell runat="server" id="w2"></asp:TableCell>
                <asp:TableCell runat="server" id="th2"></asp:TableCell>
                <asp:TableCell runat="server" id="f2"></asp:TableCell>
                <asp:TableCell runat="server" id="s2"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server" >9:10 to 10:00</asp:TableHeaderCell>
                <asp:TableCell runat="server" id="m3"></asp:TableCell>
                <asp:TableCell runat="server" id="t3"></asp:TableCell>
                <asp:TableCell runat="server" id="w3"></asp:TableCell>
                <asp:TableCell runat="server" id="th3"></asp:TableCell>
                <asp:TableCell runat="server" id="f3"></asp:TableCell>
                <asp:TableCell runat="server" id="s3"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server" >10:00 to 10:30</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server" ColSpan="6">Break</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server" >10:30 to 11:20</asp:TableHeaderCell>
                <asp:TableCell runat="server" id="m4"></asp:TableCell>
                <asp:TableCell runat="server" id="t4"></asp:TableCell>
                <asp:TableCell runat="server" id="w4"></asp:TableCell>
                <asp:TableCell runat="server" id="th4"></asp:TableCell>
                <asp:TableCell runat="server" id="f4"></asp:TableCell>
                <asp:TableCell runat="server" id="s4"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server" >11:20 to 12:10</asp:TableHeaderCell>
                <asp:TableCell runat="server" id="m5"></asp:TableCell>
                <asp:TableCell runat="server" id="t5"></asp:TableCell>
                <asp:TableCell runat="server" id="w5"></asp:TableCell>
                <asp:TableCell runat="server" id="th5"></asp:TableCell>
                <asp:TableCell runat="server" id="f5"></asp:TableCell>
                <asp:TableCell runat="server" id="s5"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

</asp:Content>


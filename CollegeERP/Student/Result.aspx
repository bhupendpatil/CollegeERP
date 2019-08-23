<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Student_Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Result</h1>
        <p>*If you see nothing below then results aren't uploaded yet*</p>
        <p>*Tip: Right-Click and open image in new tab to view image properly :D*</p>
        <br />
        <div class="form-group row d-flex justify-content-center" style="height: 328px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="resultDB" ForeColor="Black" GridLines="Horizontal" Height="163px">
                <Columns>
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="Exam" HeaderText="Exam" SortExpression="Exam" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Width="100" ControlStyle-Height = "100">
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="resultDB" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeERPConnectionString %>" SelectCommand="SELECT [Class], [Exam], [Image] FROM [Result]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>


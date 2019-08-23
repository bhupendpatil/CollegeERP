<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Assignment.aspx.cs" Inherits="Student_Assignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Assignment</h1>
        <h6>*If there's nothing below then there are no assignments*</h6>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" backcolor="White" bordercolor="#CCCCCC" borderstyle="None" borderwidth="1px" cellpadding="4" datasourceid="AssignmentData" forecolor="Black" gridlines="Horizontal" width="487px">
            <Columns>
                <asp:BoundField DataField="Assignment" HeaderText="Assignment" SortExpression="Assignment" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="LastDate" HeaderText="Last Date" SortExpression="LastDate" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:gridview>
            <asp:sqldatasource id="AssignmentData" runat="server" connectionstring="<%$ ConnectionStrings:CollegeERPConnectionString %>" selectcommand="SELECT * FROM [Assignment]"></asp:sqldatasource>
        </div>
    </div>

</asp:Content>


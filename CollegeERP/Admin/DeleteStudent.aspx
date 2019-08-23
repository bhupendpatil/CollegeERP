<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DeleteStudent.aspx.cs" Inherits="Admin_DeleteStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container text-center" style="padding-top: 1%">
        <h1>Delete Student</h1>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Label runat="server" Text="Enter Username of student to delete" CssClass="col-form-label" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="SUsername" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <asp:TextBox runat="server" ID="SUsername" CssClass="col-sm-3 form-control"></asp:TextBox>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <h6>
                <asp:HyperLink Target="_blank" href="/Admin/ViewStudent.aspx" runat="server" ForeColor="Black">check here for correct username</asp:HyperLink></h6>
        </div>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Button ID="StudentDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="StudentDelete_Click" />
            &nbsp;
            <asp:Button ID="StudentClear" runat="server" Text="Clear" CausesValidation="False" CssClass="btn btn-outline-dark" OnClick="StudentClear_Click" />
        </div>
    </div>
</asp:Content>


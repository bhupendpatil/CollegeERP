<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DeleteAdmin.aspx.cs" Inherits="Admin_DeleteAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Delete Admin</h1>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Label runat="server" Text="Enter Username of admin to delete" CssClass="col-form-label" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="AUsername" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <asp:TextBox ID="AUsername" runat="server" CssClass="col-sm-3 form-control"></asp:TextBox>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <h6>
                <asp:HyperLink Target="_blank" href="/Admin/ViewAdmin.aspx" runat="server" ForeColor="Black">check here for correct username</asp:HyperLink></h6>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <h6>You cannot delete logged in admin.</h6>
        </div>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Button ID="AdminDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="AdminDelete_Click" />
            &nbsp;
                <asp:Button ID="AdminClear" runat="server" Text="Clear" CausesValidation="False" CssClass="btn btn-outline-dark" OnClick="AdminClear_Click" />
        </div>
    </div>


</asp:Content>


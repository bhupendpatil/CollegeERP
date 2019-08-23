<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DeleteFaculty.aspx.cs" Inherits="Admin_DeleteFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Delete Faculty</h1>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Label runat="server" Text="Enter Username of faculty to delete" CssClass="col-form-label" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="FUser" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <asp:TextBox ID="FUser" runat="server" CssClass="col-sm-3 form-control"></asp:TextBox>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <h6>
                <asp:HyperLink Target="_blank" href="/Admin/ViewFaculty.aspx" runat="server" ForeColor="Black">check here for correct username</asp:HyperLink></h6>
        </div>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Button ID="FacultyDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="FacultyDelete_Click" />
            &nbsp;
            <asp:Button ID="FacultyClear" runat="server" CausesValidation="False" Text="Clear" CssClass="btn btn-outline-dark" OnClick="FacultyClear_Click" />
        </div>
    </div>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="DeleteAssignment.aspx.cs" Inherits="Faculty_DeleteAssignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Delete Assignment</h1>
        <br />

        <div class="form-group row d-flex justify-content-center">
            <asp:Label runat="server" Text="Enter Assignment name" CssClass="col-form-label" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="AssignmentName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <asp:TextBox runat="server" id="AssignmentName" CssClass="col-sm-3 form-control"></asp:TextBox>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <h6>
                <asp:HyperLink Target="_blank" href="/Faculty/ViewAssignment.aspx" runat="server" ForeColor="Black">check here for correct Assignment Name</asp:HyperLink></h6>
        </div>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Button ID="AssignmentDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="AssignmentDelete_Click" />
            &nbsp;
            <asp:Button ID="AssignmentClear" runat="server" CausesValidation="False" Text="Clear" CssClass="btn btn-outline-dark" OnClick="AssignmentClear_Click"  />
        </div>

    </div>

</asp:Content>


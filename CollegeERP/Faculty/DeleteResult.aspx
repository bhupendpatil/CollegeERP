<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="DeleteResult.aspx.cs" Inherits="Faculty_DeleteResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container text-center" style="padding-top: 1%">
        <h1>Delete Result</h1>
        <br />

        <div class="form-group row d-flex justify-content-center">
            <asp:Label runat="server" Text="Class" CssClass="col-form-label" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="ClassName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <asp:TextBox runat="server" id="ClassName" CssClass="col-sm-3 form-control"></asp:TextBox>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <asp:Label runat="server" Text="File Link" CssClass="col-form-label" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="ImageName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <asp:TextBox runat="server" id="ImageName" CssClass="col-sm-3 form-control"></asp:TextBox>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <h6>
                <asp:HyperLink Target="_blank" href="/Faculty/ViewResult.aspx" runat="server" ForeColor="Black">check here for correct details</asp:HyperLink></h6>
        </div>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Button ID="ResultDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="ResultDelete_Click" />
            &nbsp;
            <asp:Button ID="ResultClear" runat="server" CausesValidation="False" Text="Clear" CssClass="btn btn-outline-dark" OnClick="ResultClear_Click" />
        </div>

    </div>
</asp:Content>


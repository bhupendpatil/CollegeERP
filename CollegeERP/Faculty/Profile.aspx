<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Faculty_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Profile</h1>
        <br />
        <form>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Name" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <div class="col-sm-3">
                    <asp:label id="FName" runat="server" text="Name" cssclass="form-control"></asp:label>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Email" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <div class="col-sm-3">
                    <asp:label id="FEmail" runat="server" text="EmailID" cssclass="form-control"></asp:label>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Contact" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <div class="col-sm-3">
                    <asp:label id="FContact" runat="server" text="Contact number" cssclass="form-control"></asp:label>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Department" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <div class="col-sm-3">
                    <asp:label id="FDepartment" runat="server" text="Department" cssclass="form-control"></asp:label>
                </div>
            </div>
        </form>
    </div>

</asp:Content>


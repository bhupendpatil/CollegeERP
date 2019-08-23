<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Pages_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container text-center" style="padding-top: 8%">
        <h1>Student</h1><br />
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Username" cssclass="col-sm-1 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="studentUser" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="studentUser" autocomplete="off" runat="server" cssclass="form-control"></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Password" cssclass="col-sm-1 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="studentPass" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="studentPass" runat="server" cssclass="form-control" textmode="Password"></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:button id="Button1" runat="server" text="Login" cssclass="btn btn-dark" onclick="StudentLogin_Click" />
                &nbsp;                
                <asp:button id="StudentsClear" runat="server" text="Clear" CausesValidation="False" cssclass="btn btn-outline-dark" onclick="StudentsClear_Click" />
            </div>
    </div>
</asp:Content>


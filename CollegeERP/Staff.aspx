<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container text-center" style="padding-top: 8%">
        <h1>Staff</h1><br />
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Type" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <div class="col-sm-3">
                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                        <asp:label runat="server" class="btn btn-dark btn-sm " text="Faculty">
                            <asp:RadioButton ID="RadioFaculty" GroupName="StaffSpecification" runat="server" />
                        </asp:label>
                        <asp:label runat="server" class="btn btn-dark btn-sm " text="Admin">
                            <asp:RadioButton ID="RadioAdmin" GroupName="StaffSpecification" runat="server" />
                        </asp:label>
                    </div>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Username" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="staffUser" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="staffUser" runat="server" autocomplete="off" cssclass="form-control"></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Password" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="staffPass" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="staffPass" runat="server" cssclass="form-control" textmode="Password"></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:button id="StaffLogin" runat="server" text="Login" cssclass="btn btn-dark" onclick="StaffLogin_Click" />
                &nbsp;
                <asp:button id="StaffClear" runat="server" text="Clear" CausesValidation="False" cssclass="btn btn-outline-dark" onclick="StaffClear_Click" />
            </div>
    </div>
</asp:Content>


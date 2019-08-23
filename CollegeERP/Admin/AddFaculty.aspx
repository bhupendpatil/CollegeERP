<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddFaculty.aspx.cs" Inherits="Admin_AddFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Add Faculty</h1>
        <br />
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Username" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="FFUser" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="FFUser" runat="server" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="First Name" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="FFName" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="FFName" runat="server" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Last Name" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="FLName" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="FLName" runat="server" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Email" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="FEmail" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="FEmail" runat="server" cssclass="form-control" ></asp:textbox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="FEmail" Display="Dynamic" ErrorMessage="Check Email ID" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Contact" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="FContact" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="FContact"  runat="server" cssclass="form-control" ></asp:textbox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="[0-9]{10}" ControlToValidate="FContact" Display="Dynamic" ErrorMessage="10 digit number" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Department" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="FDepartment" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="FDepartment" runat="server" cssclass="form-control" ></asp:textbox>
                </div>
            </div>            
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Password" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="Fpass" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="Fpass" runat="server" TextMode="Password" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Confirm Password" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="Fcpass" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="Fcpass" runat="server" TextMode="Password" cssclass="form-control" ></asp:textbox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Password -_-" ControlToCompare="Fpass" ControlToValidate="Fcpass" ForeColor="Red"></asp:CompareValidator>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:Button ID="AddStudent" runat="server" Text="Add" CssClass="btn btn-dark" OnClick="AddStudent_Click"/>
                &nbsp;
                <asp:Button ID="ClearStudent" runat="server" Text="Clear" CausesValidation="False" CssClass="btn btn-outline-dark" OnClick="ClearStudent_Click"/>               
            </div>

    </div>

</asp:Content>


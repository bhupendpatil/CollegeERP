<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Admin_AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Add Student</h1>
        <br />
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Username" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SUser" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox runat="server" id="SUser" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="First Name" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SFName" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox runat="server" ID="SFName" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="LastName" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SLName" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox runat="server" ID="SLName" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Email" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SEmail" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox runat="server" ID="SEmail" cssclass="form-control" ></asp:textbox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="SEmail" Display="Dynamic" ErrorMessage="Check Email ID" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Contact" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SContact" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox  runat="server" id="SContact" cssclass="form-control" ></asp:textbox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="[0-9]{10}" ControlToValidate="SContact" Display="Dynamic" ErrorMessage="10 digit number" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Department" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SDepartment" forecolor="Red"></asp:requiredfieldvalidator>           
                <div class="col-sm-3">
                    <asp:textbox runat="server" ID="SDepartment" cssclass="form-control" ></asp:textbox>
                </div>
            </div> 
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Class" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SClass" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox runat="server" ID="SClass" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Year" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SYear" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox runat="server" ID="SYear" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Password" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="Spass" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox runat="server" ID="Spass" TextMode="Password" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Confirm Password" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="SCPass" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox runat="server" ID="SCPass" TextMode="Password" cssclass="form-control" ></asp:textbox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Password -_-" ControlToCompare="Spass" ControlToValidate="Scpass" ForeColor="Red"></asp:CompareValidator>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:Button ID="AddStudent" runat="server" Text="Add" CssClass="btn btn-dark" OnClick="AddStudent_Click"/>
                &nbsp;
                <asp:Button ID="ClearStudent" runat="server" Text="Clear" CauseValidation="False" CssClass="btn btn-outline-dark" OnClick="ClearStudent_Click"/>
            </div>
    </div>

</asp:Content>


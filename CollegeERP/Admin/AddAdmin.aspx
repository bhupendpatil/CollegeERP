<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="Admin_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Add Admin</h1>
        <br />
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Username" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="AUser" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="AUser" runat="server" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="First Name" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="FName" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="FName" runat="server" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="LastName" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" controltovalidate="LName" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="LName" runat="server" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Email" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="Email" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="Email" runat="server" cssclass="form-control" ></asp:textbox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email" Display="Dynamic" ErrorMessage="Check Email ID" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Contact" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="Contact" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="Contact" runat="server" cssclass="form-control" ></asp:textbox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="[0-9]{10}" ControlToValidate="Contact" Display="Dynamic" ErrorMessage="10 digit number" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>            
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Password" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="pass" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-3">
                    <asp:textbox id="pass" runat="server" TextMode="Password" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Confirm Password" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="cpass" forecolor="Red"></asp:requiredfieldvalidator>   
                <div class="col-sm-3">
                    <asp:textbox ID="cpass" runat="server" TextMode="Password" cssclass="form-control" ></asp:textbox>                    
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Password -_-" ControlToCompare="pass" ControlToValidate="cpass" ForeColor="Red"></asp:CompareValidator>
                </div>                
            </div>
            <div class="form-group row d-flex justify-content-center">                
                <asp:Button ID="AddAdmin" runat="server" Text="Add" CssClass="btn btn-dark" OnClick="AddAdmin_Click"/>
                &nbsp;
                <asp:Button ID="ClearAdmin" runat="server" Text="Clear" CausesValidation="False" CssClass="btn btn-outline-dark" OnClick="ClearAdmin_Click"/>               
            </div>
    </div>

</asp:Content>


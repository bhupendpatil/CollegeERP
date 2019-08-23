<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="AddResult.aspx.cs" Inherits="Faculty_AddResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container text-center" style="padding-top: 1%">
        <h1>Add Result</h1><br />
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Class" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="ResultClass" ForeColor="Red"></asp:RequiredFieldValidator>
                <div class="col-sm-5">
                    <asp:textbox runat="server" ID="ResultClass" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
         <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Exam" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="ResultExam" ForeColor="Red"></asp:RequiredFieldValidator>
                <div class="col-sm-5">
                    <asp:textbox runat="server" ID="ResultExam" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
           <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Upload Image" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="ResultImage" ForeColor="Red"></asp:RequiredFieldValidator>
                <div class="col-sm-5">
                    <asp:FileUpload ID="ResultImage" CssClass="form-control" runat="server" />
                </div>
            </div>
            <br/>
            <div class="form-group row d-flex justify-content-center">
                <asp:Button ID="ResultAdd" runat="server" Text="Add" CssClass="btn btn-dark" OnClick="ResultAdd_Click" />
                &nbsp;
                <asp:Button ID="ResultClear" runat="server" CausesValidation="False" Text="Clear" CssClass="btn btn-outline-dark" OnClick="ResultClear_Click"/>              
            </div>
    </div>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddEvents.aspx.cs" Inherits="Admin_AddEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container text-center" style="padding-top: 1%">
        <h1>Add Event</h1><br />

            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Event Name" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="EName" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-5">
                    <asp:textbox runat="server" ID="EName" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Incharge" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="EIncharge" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-5">
                    <asp:textbox runat="server" ID="EIncharge" cssclass="form-control" ></asp:textbox>
                </div>
            </div>
            <div class="form-group row d-flex justify-content-center">
                <asp:label runat="server" text="Date" cssclass="col-sm-2 col-form-label" font-bold="True"></asp:label>
                <asp:requiredfieldvalidator runat="server" errormessage="*" Display="Dynamic" controltovalidate="EDate" forecolor="Red"></asp:requiredfieldvalidator>
                <div class="col-sm-5 input-group date form_date" data-date="" data-date-format="dd/mm/yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <asp:textbox runat="server" ID="EDate" cssclass="form-control" ></asp:textbox>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove fas fa-redo"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar far fa-calendar-alt"></span></span>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ControlToValidate="EDate" Display="Dynamic" ErrorMessage="dd/mm/yyyy format" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>               
            </div>
            <br />
            <div class="form-group row d-flex justify-content-center">
                <asp:Button ID="EventAdd" runat="server" Text="Add" CssClass="btn btn-dark" OnClick="EventAdd_Click" />
                &nbsp;
                <asp:Button ID="EventClear" runat="server" Text="Clear" CausesValidation="False" CssClass="btn btn-outline-dark" OnClick="EventClear_Click"/>
            </div>

    </div>

</asp:Content>


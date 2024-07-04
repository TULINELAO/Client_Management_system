<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Client_Management_system.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>

            <div class="panel-heading">Contact tab </div>
<div class="panel-body">
<div class="row">

     <div>
    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False"  CssClass="table-striped table-hover ListFont" BorderStyle="None" Width="100%">
        <Columns>
            
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="ClientCode" HeaderText="ClientCode" />
            <asp:BoundField DataField="LinkedContacts" HeaderText="LinkedContacts" />
            
        </Columns>
    </asp:GridView>
</div>

    </div>
    </div>
    </main>
</asp:Content>

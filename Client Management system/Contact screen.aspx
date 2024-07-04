<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Contact screen.aspx.cs" Inherits="Client_Management_system.Contact_screen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<main aria-labelledby="title">
     <h3>Contact  page</h3>


    
<div class="panel-body">
<div class="row">

      <%--display contact data in a grid view--%>
     <div>
    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" DataSourceID="Contact_DS"  CssClass="table-striped table-hover ListFont" BorderStyle="None" Width="100%">
        <Columns>
            
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="Surname" HeaderText="Surname" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="nOfLinkedContacts" HeaderText="Number of linked contacts" />
        <%--  <asp:BoundField DataField="ClientCode" HeaderText="ClientCode" />--%>   
            
            
        </Columns>
    </asp:GridView>


                          <div class="d-flex justify-content-end"> 

<asp:Button ID="Nextpbtn" runat="server" Text="Create contact" class="btn btn-primary" OnClick="CreateContact"/>
   
</div>


     

</div>
</div>
    </div> 
    
     <%--   Define SQL datasource for contact data--%>

            <asp:SqlDataSource ID="Contact_DS" runat="server" ConnectionString="<%$ ConnectionStrings:ClientManagementConnectionString %>"
    SelectCommand="SELECT name, Surname, email,nOfLinkedContacts FROM ContactView ORDER BY Surname">
</asp:SqlDataSource>
              
      </asp:SqlDataSource>

</main>
</asp:Content>


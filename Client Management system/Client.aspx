<%@ Page Title="Client page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="Client_Management_system.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        
        <h3>Client  page</h3>

        <%--display client data in a grid view--%>
             <div>
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False"   DataSourceID="Client_DS"  CssClass="table-striped table-hover ListFont" BorderStyle="None" Width="100%">
                <Columns>
                    
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="ClientCode" HeaderText="ClientCode" />
                    <asp:BoundField DataField="nOfLinkedContacts" HeaderText="Number of linked contacts" />

                    
                    
                </Columns>


            </asp:GridView>
        </div>


                 <div class="d-flex justify-content-end"> 

<asp:Button ID="Nextpbtn" runat="server" Text="Create client" class="btn btn-primary" OnClick="CreateClient"/>
   
</div>
     <%--   Define SQL datasource for client data--%>

            <asp:SqlDataSource ID="Client_DS" runat="server" ConnectionString="<%$ ConnectionStrings:ClientManagementConnectionString %>"
    SelectCommand="SELECT name, ClientCode, nOfLinkedContacts FROM ClientView ORDER BY ClientCode">
</asp:SqlDataSource>
              
      </asp:SqlDataSource>








            </main>
</asp:Content>


     
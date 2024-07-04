<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Client form redirect.aspx.cs" Inherits="Client_Management_system.Client_form_redirect" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
       

            <table width="80%" align="center">
      <tr>
        <td>
          <asp:Button Text="General" BorderStyle="None" ID="General" CssClass="Initial" runat="server"
              OnClick="General_Click" />
          <asp:Button Text="Client" BorderStyle="None" ID="Client" CssClass="Initial" runat="server"
              OnClick="Client_Click" />
          
            <br />
            <br />
            <br />


          <asp:MultiView ID="MainView" runat="server">
         <asp:View ID="View1" runat="server">
         <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
         <tr>
         <td>
         <h3>Client form  </h3>
         

        <div class="form-group">
    <label for="TextBox1">Name:</label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*name is required" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
</div>

<br />

<div class="form-group">
    <label for="TextBox2">Client Code:</label>
    <asp:TextBox ID="TextBox2" runat="server" Enabled="false"></asp:TextBox>
   
</div>

  <div class="d-flex justify-content-end"> 

<asp:Button ID="Nextpbtn" runat="server" Text="Save" class="btn btn-primary" />
   
</div>


         </h3>
         </td>
         </tr>
         </table>
         </asp:View>
         <asp:View ID="View2" runat="server">
          <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
          <tr>
          <td>
          <h3> Client list </h3>


        <%--      GridView displaying client data--%>
 <div>
    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False"   DataSourceID="Client2_DS"  CssClass="table-striped table-hover ListFont" BorderStyle="None" Width="100%">
        <Columns>
            
            <asp:BoundField DataField="FullName" HeaderText="FullName" />
            <asp:BoundField DataField="email" HeaderText="Email Address" />
          

        

    <asp:TemplateField>
    <ItemTemplate>
        <asp:Button ID="btnSave" runat="server" Text="Link"
            CommandName="Link" CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
            onRowCommand=""
            />
    </ItemTemplate>
</asp:TemplateField>
            
        </Columns>


    </asp:GridView>
</div>                  


                  </td>
                </tr>
              </table>
            </asp:View>           
          </asp:MultiView>
        </td>
      </tr>
    </table>
   

            <asp:SqlDataSource ID="Client2_DS" runat="server" ConnectionString="<%$ ConnectionStrings:ClientManagementConnectionString %>"
    SelectCommand="SELECT FullName, email  FROM LinkingContactsView ORDER BY FullName">
</asp:SqlDataSource>
              
      </asp:SqlDataSource>

    </main>
</asp:Content>



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Net.Http;

using System.Threading.Tasks;

using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;

namespace Client_Management_system
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


           
        }

       
 protected void CreateClient(object sender, EventArgs e)
        {
            
            Response.Redirect("Client form redirect.aspx");
        }
        

       
        public class MyData
        {
            public string name { get; set; }
            public string ClientCode { get; set; }
           // public int LinkedContacts { get; set; }


           
        }
    }
}













        /*}

        private async Task FetchClients()
        {
         if (!IsPostBack)
            {
                await FetchClients();
            }

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = await

                  client.GetAsync("");
                  response.EnsureSuccessStatusCode();
                    string responseBody = await response.Content.ReadAsStringAsync();
                    List<Client> clients = Newtonsoft.Json.JsonConvert.DeserializeObject<List<Client>>(responseBody);

                    string tableHtml = GenerateClientsTable(clients);
                    ClientsTable.Text = tableHtml;
                }
                catch (HttpRequestException e)
                {
                    ClientsTable.Text = "<p>No clients found.</p>";
                }
            }
        }

        private string GenerateClientsTable(List<Client> clients)
        {
            if (clients.Count == 0)
            {
                return "<p>No clients found.</p>";
            }

            string tableHtml = @"
                <table class='table table-striped'>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Client Code</th>
                            <th class='text-center'>No. of Linked Contacts</th>
                        </tr>
                    </thead>
                    <tbody>";

            foreach (Client client in clients)
            {
                tableHtml += $@"
                    <tr>
                        <td><a href='ClientDetails.aspx?clientCode={client.ClientCode}'>{client.Name}</a></td>
                        <td>{client.ClientCode}</td>
                        <td class='text-center'>{client.LinkedContacts.Count}</td>
                    </tr>";
            }

            tableHtml += @"
                    </tbody>
                </table>";

            return tableHtml;
        }
    }

    public class Client
    {
        public string Name { get; set; }
        public string ClientCode { get; set; }
        public List<Contacts> LinkedContacts { get; set; }
    }

    public class Contacts
    {
        public string Name { get; set; }
    }*/
    





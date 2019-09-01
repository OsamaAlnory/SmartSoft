<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin.Master" AutoEventWireup="true" CodeBehind="School_Classes.aspx.cs" Inherits="SmartSoft.Pages.School_Classes" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
         .egen{
            background-color:whitesmoke!important;
            padding:6%;
        }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <center>
     <div class="main-panel">
                  <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">
                 <p>skolans namn</p>
            </a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
         </div>
      </nav>

          <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
             <!-- Lägg till klass-->
            <div class="row">
                 <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-warning">
                  <h4 class="card-title">Lägg till klass:</h4>
                 </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead>
                       
                     <th style="background-color:#ffc411">Klassnamn</th> 
                      <th style="background-color:#ffc411">Lärare</th>
                     
                    </thead>
                    <tbody>
                      <tr>
                         <td><asp:TextBox CssClass="form-control egen" placeholder="Skriv här.." ID="klassnamn" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox CssClass="form-control egen" placeholder="Skriv här.." ID="teachernamn" runat="server"></asp:TextBox></td>
                        <td> <asp:Button CssClass="btn btn-warning pull-right" OnClick="addklass_Click" ID="addklass" runat="server" Text="Lägg till"></asp:Button></td>
                      </tr>
                       </tbody>
                  </table>
                </div>
              </div>
            </div>
            </div>
              <!-- Visa klasser-->
                <div class="row">
                 <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-warning">
                  <h4 class="card-title">Klasser</h4>
                 </div>
                <div class="card-body table-responsive">
                     <asp:GridView CssClass="table table-hover" ID="Class_Grid" runat="server" RowHeaderColumn="0" 
                   HeaderStyle-BackColor="#ffc411" HeaderStyle-Font-Bold="true" 
                   HeaderStyle-ForeColor="White" RowStyle-BackColor="WhiteSmoke" 
               DataSourceID="SqlDataSource1" AutoGenerateColumns="false" AllowSorting="true" Font-Size="Small"
                GridLines="Both">

                           <Columns>
                        <asp:BoundField DataField="Class" HeaderText="Klassnamn" 
                   SortExpression="Class" />

                        <asp:BoundField DataField="Teacher" HeaderText="Läraren" 
                   SortExpression="Teacher" />
                               </Columns>
                          </asp:GridView>

                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="data source=89.221.254.36;initial catalog=MSSQL600027;persist security info=True;user id=MSSQL600027;password=Nzo1MDoxNQ;MultipleActiveResultSets=True;App=EntityFramework"
                   SelectCommand="SELECT [Class],[Teacher] FROM [Classes]"></asp:SqlDataSource>
                  <%--<table class="table table-hover">
                    <thead class="text-warning">
                       
                      <th>Klassnamn</th>
                      <th>Lärare</th>
                       
                    </thead>
                    <tbody>
                      <tr>
                         <td>Dakot</td>
                        <td>$36,738</td>
                         
                      </tr>
                      <tr>
                         <td>Minerva Hooper</td>
                        <td>$23,789</td>
                         
                      </tr>
                      <tr>
                         <td>Sage Rodriguez</td>
                        <td>$56,142</td>
                        
                      </tr>
                      <tr>
                         <td>Philip Chaney</td>
                        <td>$38,735</td>
                       </tr>
                    </tbody>
                  </table>--%>
                </div>
              </div>
            </div>
            </div>
             </div>
          </div>
         





         </div>
    </center>
      <script>
        function hello() {
            alert('sad');
        }
    </script>
</asp:Content>

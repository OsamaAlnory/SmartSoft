<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin.Master" AutoEventWireup="true" Async="true" CodeBehind="School_Courses.aspx.cs" Inherits="SmartSoft.Pages.School_Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        .egen{
            background-color:whitesmoke !important;
            padding:6px;
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

                  <div class="row">
                 <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Lägg till klass:</h4>
                 </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead class="text-primary">
                      
                     <th>Kursnamn</th> 
                      <th>Lärare|Välj en:</th>
                        <th>Klass|Välj en:</th>
                       
                    </thead>
                    <tbody>
                      <tr>
                        
                        <td><asp:TextBox CssClass="form-control egen" placeholder="Skriv här.." ID="Kursnamn" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList CssClass="form-control egen" DataTextField="Teacher" DataValueField="ID" ID="Teacher_dropdown" runat="server">
                             </asp:DropDownList>
                         </td>
                            <td>
                            <asp:DropDownList CssClass="form-control egen" DataTextField="Class" DataValueField="ID"  ID="Class_dropdown" runat="server">
                             </asp:DropDownList>
                         </td>
                        <td> <asp:Button CssClass="btn btn-primary pull-right" ID="addkurs" runat="server" OnClick="addkurs_Click"  Text="Lägg till"></asp:Button></td>
                      </tr>
                     </tbody>
                  </table>
                </div>
              </div>
            </div>
            </div>
             <!-- Show Courses-->
          <div class="row">
                 <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Kurser</h4>
                 </div>
                <div class="card-body">
                         <asp:GridView CssClass="table table-hover" ID="Course_Grid" runat="server" RowHeaderColumn="0" 
                   HeaderStyle-BackColor="#b922d4" HeaderStyle-Font-Bold="true" 
                   HeaderStyle-ForeColor="White" RowStyle-BackColor="WhiteSmoke" 
               DataSourceID="SqlDataSource1" AutoGenerateColumns="false" AllowSorting="true" Font-Size="Small"
                GridLines="Both">

                           <Columns>
                        <asp:BoundField DataField="CourseName" HeaderText="Kursnamn" 
                   SortExpression="CourseName" />

                        <asp:BoundField DataField="Teacher" HeaderText="Läraren" 
                   SortExpression="Teacher" />

                               <asp:BoundField DataField="Class" HeaderText="Klassen" 
                   SortExpression="Class" />
                               </Columns>
                          </asp:GridView>

                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="data source=89.221.254.36;initial catalog=MSSQL600027;persist security info=True;user id=MSSQL600027;password=Nzo1MDoxNQ;MultipleActiveResultSets=True;App=EntityFramework"
                   SelectCommand="SELECT [CourseName],[Teacher], [Class] FROM [Courses]"></asp:SqlDataSource>
                  <%--<div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
                         <th>
                          Kursnamn
                        </th>
                        <th>
                          Lärare
                        </th>
                           <th>
                          Klass
                        </th>
                        </thead>
                      <tbody>
                        <tr>
                           <td>
                            Dakota Rice
                          </td>
                          <td>
                            Niger
                          </td>
                             <td>
                            Niger
                          </td>
                         </tr>
                        <tr>
                           <td>
                            Minerva Hooper
                          </td>
                          <td>
                            Curaçao
                          </td>
                             <td>
                            Niger
                          </td>
                         </tr>
                        <tr>
                           
                          <td>
                            Sage Rodriguez
                          </td>
                          <td>
                            Netherlands
                          </td>
                             <td>
                            Niger
                          </td>
                         </tr>
                        <tr>
                           
                          <td>
                            Philip Chaney
                          </td>
                          <td>
                            Korea, South
                          </td>
                             <td>
                            Niger
                          </td>
                         </tr>
                        <tr>
                           
                          <td>
                            Doris Greene
                          </td>
                          <td>
                            Malawi
                          </td>
                             <td>
                            Niger
                          </td>
                         </tr>
                        <tr>
                          
                          <td>
                            Mason Porter
                          </td>
                          <td>
                            Chile
                          </td>
                             <td>
                            Niger
                          </td>
                         </tr>
                      </tbody>
                    </table>
                  </div>--%>
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

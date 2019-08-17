<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin.Master" AutoEventWireup="true" CodeBehind="School_Courses.aspx.cs" Inherits="SmartSoft.Pages.School_Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                      <th>Lärare</th>
                        <th>Klass</th>
                       
                    </thead>
                    <tbody>
                      <tr>
                        
                        <td><asp:TextBox CssClass="form-control" ID="klassnamn" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                            <asp:ListItem>-------| Välj En</asp:ListItem>
                            <asp:ListItem>Yosef</asp:ListItem>
                            <asp:ListItem>Martin</asp:ListItem>
                            <asp:ListItem>Nayef</asp:ListItem>
                            </asp:DropDownList>

                        </td>

                           <td>
                            <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                            <asp:ListItem>-------| Välj En</asp:ListItem>
                            <asp:ListItem>2_tek1</asp:ListItem>
                            <asp:ListItem>3_tek2</asp:ListItem>
                            <asp:ListItem>3_IT2</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td> <asp:Button CssClass="btn btn-primary pull-right" ID="addklass" runat="server" Text="Lägg till"></asp:Button></td>
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
                  <div class="table-responsive">
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
                  </div>
                </div>
              </div>
            </div>
  		 </div>



        </div>
      </div>





         </div>
    </center>
</asp:Content>

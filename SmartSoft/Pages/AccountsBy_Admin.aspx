<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin.Master" AutoEventWireup="true" CodeBehind="AccountsBy_Admin.aspx.cs" Inherits="SmartSoft.Pages.AccountsBy_Admin" %>
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
            <h2 class="col-md-12 card-header card-header-primary">skapa konto:</h2>
            <hr />
          <div class="row">
                <!-- Lägg till elev-->
            <div class="col-sm-4">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Lägg till Lärare</h4>
                 </div>
                <div class="card-body">
                  <form>
                    <div class="row">
                       <div class="col-md-6">
                        <div class="form-group">
                          <label>Username</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>E-Post</label>
                          <input type="email" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Fist Name</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Last Name</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label>Adress</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label>City</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label>Country</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label>Postal Code</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                     <button type="submit" class="btn btn-primary pull-right">Lägga till</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
               <!-- Lägg till elev-->
                    <div class="col-sm-4">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Lägg till elev</h4>
                  
                </div>
                <div class="card-body">
                  <form>
                    <div class="row">
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Username</label>
                          <input type="text" runat="server" id="student_usernmae" name="student_username" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Password</label>
                          <input runat="server" name="student_pass" id="student_pass" type="password" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Email</label>
                          <input runat="server" name="student_epost" id="student_epost" type="email" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>School</label>
                          <asp:DropDownList CssClass="form-control" ID="school_dropdown" runat="server">
                        <asp:ListItem>---------|Välj en skola</asp:ListItem>
                         <asp:ListItem>Nti-Gymnasiet</asp:ListItem>
                         <asp:ListItem>Olympiaskolan</asp:ListItem>
                         <asp:ListItem>LBS</asp:ListItem>
                         <asp:ListItem>Procivitas</asp:ListItem>
                         </asp:DropDownList>
                        </div>
                      </div>
                    </div>
                  <asp:Button ID="add_students" OnClick="add_students_Click" runat="server" CssClass="btn btn-primary pull-right" Text="Lägga till"></asp:Button>
                     <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
                <!-- Lägg till föräldrar-->
                  <div class="col-sm-4">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Lägg till föräldrar</h4>
                  
                </div>
                <div class="card-body">
                  <form>
                    <div class="row">
                       
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Username</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Email address</label>
                          <input type="email" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Fist Name</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Last Name</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label>Adress</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label>City</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label>Country</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label>Postal Code</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                     <button type="submit" class="btn btn-primary pull-right">Lägga till</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
           </div>
            </div>
          





           </div>
        </div>
      


          
         
      
       
      
          
        
         </center>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin.Master" AutoEventWireup="true" CodeBehind="AccountsBy_Admin.aspx.cs" Inherits="SmartSoft.Pages.AccountsBy_Admin" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
       
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

          <!-- Content--->     
           <div class="content">
        <div class="container-fluid">
            <h2 class="col-md-12 card-header card-header-primary">skapa konto:</h2>
            <hr />
            <div class="row">
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
                                <input type="button" runat="server" value="Lägg till" name="add_students" id="add_students" class="btn btn-primary pull-right" />
                                <div class="clearfix"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Lägg till Lärare-->
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
                                            <input type="text" runat="server" id="teacher_username" name="teacher_username" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input runat="server" name="teacher_pass" id="teacher_pass" type="password" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                 <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input runat="server" name="teacher_epost" id="teacher_epost" type="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>School</label>
                                            <asp:DropDownList CssClass="form-control" ID="teacher_dropdownlist" runat="server">
                                                <asp:ListItem>---------|Välj en skola</asp:ListItem>
                                                <asp:ListItem>Nti-Gymnasiet</asp:ListItem>
                                                <asp:ListItem>Olympiaskolan</asp:ListItem>
                                                <asp:ListItem>LBS</asp:ListItem>
                                                <asp:ListItem>Procivitas</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                              
                                <input name="add_teacher" id="add_teachers" runat="server" type="button" class="btn btn-primary pull-right" value="Lägg till" />
                                 <div class="clearfix"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Lägg till Föräldrar-->
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
                                <button runat="server" name="add_parents" id="add_parents" type="button" class="btn btn-primary pull-right">Lägga till</button>
                                <div class="clearfix"></div>
                            </form>
                        </div>
                    </div>
                </div>


            </div>
            </div>
            </div>
           
        </div>
    
    <script>
        function hello() {
            alert('sad');
        }
    </script>
</asp:Content>

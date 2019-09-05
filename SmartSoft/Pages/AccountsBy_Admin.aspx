<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin.Master" AutoEventWireup="true" CodeBehind="AccountsBy_Admin.aspx.cs" Inherits="SmartSoft.Pages.AccountsBy_Admin" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!--

                    -->
                <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
       <div class="main-panel">
                 <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">
                <asp:Label runat="server" ID="school_name" Text="Skolnamn"></asp:Label>
                 
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
            <h2 class="col-md-12 card-header card-header-primary">Skapa konto:</h2>
            <hr />
            <div class="row">
                <!-- Lägg till elev-->
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title">Lägg till elev</h4>
                        </div>
                        <div class="card-body">
                            
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Användarnamn</label>
                                            <input type="text" runat="server" id="s_name" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Lösenord</label>
                                            <input runat="server" id="s_pass" type="password" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>E-mail</label>
                                            <input runat="server" id="s_post" type="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Skola</label>
                                            <asp:DropDownList CssClass="form-control" DataValueField="ID" DataTextField="School" ID="s_drop" runat="server">
                                               
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <input type="button" runat="server" value="Lägg till" id="add_students" class="btn btn-primary pull-right" />
                                <div class="clearfix"></div>
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
                                 <div class="row">
                                     <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Användarnamn</label>
                                            <input runat="server" id="t_name" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Lösenord</label>
                                            <input runat="server" id="t_pass" type="password" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                 <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input runat="server" id="t_post" type="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Skola</label>
                                            <asp:DropDownList CssClass="form-control" DataValueField="ID" DataTextField="School" ID="t_drop" runat="server">
                                                
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <input name="add_teacher" id="add_teachers" runat="server" type="button" class="btn btn-primary pull-right" value="Lägg till" />
                                 <div class="clearfix"></div>
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
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Användarnamn</label>
                                            <input runat="server" id="us" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>E-mail</label>
                                            <input type="email" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Förnamn</label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Efternamn</label>
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
                                            <label>Stad</label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Land</label>
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
                        </div>
                    </div>
                </div>


            </div>
            </div>
            </div>
           
        </div>
    </ContentTemplate>
        </asp:UpdatePanel>
    <!--
    
    -->
    
</asp:Content>

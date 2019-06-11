<%@ Page Title="Owner" Language="C#" MasterPageFile="~/Pages/Base.Master" AutoEventWireup="true" CodeBehind="Owner.aspx.cs" Inherits="SmartSoft.Pages.Owner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          
     <div class="container text-center egen">
            <div class="row">
                <div class="col-md-6">
                    <h3>Inloggad Som:</h3>
                 </div>
                 <div class="col-md-6">
                    <h3>Mohanad</h3>
                     <asp:Button CssClass="logut_btn"  ID="btn_logut" runat="server" Text="Logga Ut" />
                 </div>
            </div>
            <hr />
            <h1>Owner Page (Administratör)</h1>
            <hr />
            <br /><br />
            <div class="row">
                <div class="col-md-3 st st1" style="margin-left: 50px;">
                    <i class="glyphicon glyphicon-user" aria-hidden="true"></i>
                    <h3>Antalet Skolor</h3>
                    <h4 id="st1h">Klicka för att visa..</h4>
                </div>
                <div class="col-md-3 st st2  col-md-offset-1">
                    <i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
                    <h3>Antalet Lärare</h3>
                    <h4 id="st2h">Klicka för att visa..</h4>
                </div>
                <div class="col-md-3 st st3 col-md-offset-1">
                    <i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>
                    <h3>Antalet Elever</h3>
                    <h4 id="st3h">Klicka för att visa..</h4>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                   <div class="col-md-6"> 
                   <div class="left-section">
                   <br />
                   <div class="top-section-left">
                        <h2>Lägg till admin</h2>
                    </div>
                    <hr />
                    <div class="bottom-section-left">
                    <br />
                    <h3>Username:</h3>
                    <asp:TextBox CssClass="fields" ID="username" runat="server"></asp:TextBox>
                    <h3>Password:</h3>
                    <asp:TextBox ID="password" TextMode="Password" CssClass="fields" runat="server"></asp:TextBox>
                    <h3>School:</h3>
                    <asp:TextBox ID="school" CssClass="fields" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    </div>
                    <br />
                    <asp:Button ID="btn_add" CssClass="add_btn"  runat="server" Text="Lägg till" />
                    </div>
                    </div>
                         <div class="col-md-6"> 
                        <div class="right-section">
                        <br />
                        <div class="top-section-right">
                         <h2>Se Rektorer</h2>
                        </div>
                        <hr />
                        <div class="bottom-section-right">
                         <p>Rektorer med Ta bort knapp visas här!..</p>
                            <asp:GridView ID="adminsList" AutoGenerateColumns="true" runat="server">
                                 <Columns>
                                     <asp:BoundField HeaderText="ID"/>
                                     <asp:BoundField HeaderText="Username"/>
                                     <asp:BoundField HeaderText="School"/>
                                     <asp:TemplateField>
                                         <ItemTemplate>
                                             <asp:LinkButton runat="server" ID="admin_delete_btn">Delete</asp:LinkButton>
                                         </ItemTemplate>
                                      </asp:TemplateField>


                                </Columns>
                              </asp:GridView>
                        </div>
                        <br />
                        <br />
                            <br />
                         </div>
                        </div>
                                            <p class="toolbar">Fuck</p>
             </div>
        </div>

</asp:Content>

<%@ Page Title="Owner" Language="C#" MasterPageFile="~/Pages/Base.Master" Async="true" AutoEventWireup="true" CodeBehind="Owner.aspx.cs" Inherits="SmartSoft.Pages.Owner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:HiddenField ID="_AdminId" runat="server" />
     <div class="container text-center egen">
            <div class="row">
                <div class="col-md-6">
                    <h3>Inloggad Som:</h3>
                 </div>
              
                 <div class="col-md-6">
                    <h3>
                        <asp:Label ID="Loggedlbl" runat="server"></asp:Label>

                    </h3>
                     <asp:Button CssClass="logut_btn" OnClick="btn_logut_Click"  ID="btn_logut" runat="server" Text="Logga Ut" />
                 </div>
            </div>
            <hr />
            <h1>Owner Page (Administratör)</h1>
            <hr />
            <br /><br />
            <div class="row">
                <div class="col-md-4 st st1">
                    <i class="glyphicon glyphicon-globe" aria-hidden="true"></i>
                    <h3>Antalet Skolor</h3>
                    <h4 id="st1h">Klicka för att visa</h4>
                </div>
                <div class="col-md-4 st st2">
                    <i class="glyphicon glyphicon-user" aria-hidden="true"></i>
                    <h3>Antalet Lärare</h3>
                    <h4 id="st2h">Klicka för att visa</h4>
                </div>
                <div class="col-md-4 st st3">
                    <i class="glyphicon glyphicon-education" aria-hidden="true"></i>
                    <h3>Antalet Elever</h3>
                    <h4 id="st3h">Klicka för att visa</h4>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                   <div class="col-md-6"> 
                   <div class="left-section">
                   <br />
                   <div class="top-section-left">
                        <h2>Lägg till Rektor / Owner</h2>
                     </div>
                      <hr />
                     <div class="bottom-section-left">
                    <br />
                    <h3>Username:</h3>
                    <asp:TextBox CssClass="fields" TextMode="SingleLine" ID="username" runat="server"></asp:TextBox>
                    <h3>Password:</h3>
                    <asp:TextBox ID="password" TextMode="Password" CssClass="fields" runat="server"></asp:TextBox>
                    <h3>E-post:</h3>
                    <asp:TextBox ID="epost" TextMode="Email" CssClass="fields" runat="server"></asp:TextBox>
                    <h3>School:</h3>
                    <asp:TextBox ID="school" CssClass="fields" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    </div>
                            
                    <br />
                    <asp:Button ID="btn_add" OnClick="btn_add_Click" CssClass="add_btn"  runat="server" Text="Lägg till" />
                    </div>
                    </div>
                         <div class="col-md-6"> 
                        <div class="right-section">
                        <br />
                        <div class="top-section-right">
                         <h2>Se Rektorer</h2>
                        </div>
                        <hr />
                        <div id="acc" class="bottom-section-right">
                            <div class="row">
                            <div class="col-md-6">
                                <h3 class="h3_lbl">Username:</h3>
                                 <hr />
                                </div>
                                 <div class="col-md-6">
                                       <h3 class="h3_lbl">Action:</h3>
                                     <hr />
                                     </div>
                              </div>
                            <div id="bsr">

                               </div>
                        <br />
                        </div>
                            <br />
              </div>
                </div>
         <input id="some_cr" runat="server" type="hidden"/>
         </div>
         </div>
      <script> 

          $(document).ready(function () {
              ref();
          });

        function ref() {
            var bla = $('#<%=some_cr.ClientID%>').val();
            var a = bla.split(","), i;
            var _html = "";
            for (x = 0; x < a.length; x++) {
            _html += "<div class=\"row\"><div class=\"col-md-6\"><h3 class=\"h3_lbl\">"+a[x]+"";
            _html += "</h3></div><div class=\"col-md-6\"><button id=\"del_"+a[x]+"\" class=\"remove_btn\">";
            _html += "Delete</button></div></div><hr/>";
            }
            if (a.length == 0) {
            _html = "<div class=\"no-acc\"><p>No Accounts!</p></div>";
            }
            document.getElementById('bsr').innerHTML = _html;
        }

    </script>
</asp:Content>

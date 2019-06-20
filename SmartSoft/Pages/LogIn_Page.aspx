<%@ Page Title="Logga_?!IN" Language="C#" MasterPageFile="~/Pages/LoginService.Master" AutoEventWireup="true" CodeBehind="LogIn_Page.aspx.cs" Inherits="SmartSoft.Pages.LogIn_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-t-30 p-b-50">
                    <span class="login100-form-title p-b-41">
                         Inloggning
                    </span>
                    <div class="login100-form">
                    <form class="login100-form validate-form p-b-33 p-t-5 bg">
                        <div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" id="_User" type="text" name="username" runat="server" placeholder="User name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
                        <div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" id="_Pass" type="password" runat="server" name="pass" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
                        <br />
                        <a href="Forgot_Password.aspx"><h6  class="login100-form-btn" style="font-size:small">glömt Lösenord?</h6></a>
                         <div class="container-login100-form-btn m-t-32">
						<button runat="server" id="login_btn" name="login_btn" class="login100-form-btn">
							Logga IN
						</button>
					</div>
                    </form>
                         </div>
                      <center>
                     <h3 class="bg-secondary" style="padding:10px; margin:40px; font-size:medium; color:white">Copyrights@ Smartsoft-2019</h3>
                        </center>
                </div>
            </div>
        </div>
      <div id="dropDownSelect1"></div>

    <script>

        function admin() {
            alert('Rätt-Admin')
        }

        function Lärare() {
            alert('Rätt-Lärare')
        }

        function Elev() {
            alert('Rätt-Elev')
        }

        function NoType() {
            alert('Fel-Info')
        }

        function Wrong() {
            alert('Fel-Info')
        }

        function Empty() {
            alert('Fel-Empty')
        }


    </script>
</asp:Content>

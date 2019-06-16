<%@ Page Title="Forgot_?Password" Language="C#" MasterPageFile="~/Pages/LoginService.Master" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="SmartSoft.Pages.Forgot_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-t-30 p-b-50">
                    <span class="login100-form-title p-b-41">
                         Var vanlig och skriv din E-post:
                    </span>
                    <div class="login100-form">
                        <h3 style="font-size:medium; text-align:center">För att få ditt lösenord skickad till det angivna mailet om det finns i vårt system!</h3>
                    <form class="login100-form validate-form p-b-33 p-t-5 bg">
                        
                        <div class="wrap-input100 validate-input" data-validate="Enter E-post">
						<input class="input100" type="password" runat="server" name="pass" placeholder="E-Post">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
                        
                         <div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							 Skicka
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
   
      <div class="container text-center bg">
        
          
      </div>
</asp:Content>

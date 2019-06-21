<%@ Page Title="Firts_Login_Ad" Language="C#" MasterPageFile="~/Pages/LoginService.Master" AutoEventWireup="true" CodeBehind="AdminFirstLogin.aspx.cs" Inherits="SmartSoft.Pages.AdminFirstLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="limiter bg bg2">
            <div class="container-login100">
                <div class="wrap-login100 p-t-30 p-b-50">
                    <span class="login100-form-title p-b-41">
                         Information:
                    </span>
                    <div class="login100-form ">
                    <form class="login100-form validate-form p-b-33 p-t-5 bg ">
                         <div class="wrap-input100 validate-input" data-validate = "skolnamn">
						<input class="input100" id="_skolnamn" type="text" name="skolnamn" runat="server" placeholder="skolnamn">
						<span class="focus-input100" data-placeholder="&#xe801;"></span>
					</div>
                         <div class="wrap-input100 validate-input" data-validate = "Ditt Namn">
						<input class="input100" id="_dittnamn" type="text" name="dittnamn" runat="server" placeholder="Ditt Namn">
						<span class="focus-input100" data-placeholder="&#xe8a7;"></span>
					</div>
                         <div class="wrap-input100 validate-input" data-validate = "Gatunamn">
						<input class="input100" id="_Gatunamn" type="text" name="Gatunamn" runat="server" placeholder="Gatunamn">
						<span class="focus-input100" data-placeholder="&#xe833;"></span>
					</div>
                         <div class="wrap-input100 validate-input" data-validate = "Postnummer">
						<input class="input100" id="_Postnummer" type="number" name="Postnummer" runat="server" placeholder="Postnummer">
						<span class="focus-input100" data-placeholder="&#xe802;"></span>
					</div>
                         <div class="wrap-input100 validate-input" data-validate = "Stad">
						<input class="input100" id="_Stad" type="text" name="Stad" runat="server" placeholder="Stad">
						<span class="focus-input100" data-placeholder="&#xe800;"></span>
					</div>
                         <div class="wrap-input100 validate-input" data-validate = "Email">
						<input class="input100" id="_Email" type="email" name="Email" runat="server" placeholder="E-post">
						<span class="focus-input100" data-placeholder="&#xe818;"></span>
					</div>
                         <div class="wrap-input100 validate-input" data-validate = "Skol-Logo">
                              <center> <label for="file2" id="lbl1" class=" egen1 text-center">Skol-Logo:</label></center>
 					</div>
                         <div class="wrap-input100 validate-input" data-validate = "Skol-Logo">
                       <asp:FileUpload CssClass="input100 egen2" ID="FileUpload1" AllowMultiple="false" runat="server"/> 
                               <span class="focus-input100" data-placeholder="&#xe827;"></span>
 					</div>
                         <div class="container-login100-form-btn m-t-32">
						<button runat="server" id="upload_btn" name="upload_btn" class="login100-form-btn">
							Spara
						</button>
					</div>
                    </form>
                    </div>
                    <!---Footer--->
                        <center>
                     <h3 class="bg-secondary" style="padding:10px; margin:40px; font-size:medium; color:white"><asp:Label ID="CopyRights" runat="server"></asp:Label></h3>
                     </center>
                </div>
            </div>
        </div>
      <div id="dropDownSelect1"></div>
 </asp:Content>

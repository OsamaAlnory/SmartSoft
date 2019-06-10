<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SmartSoft.Pages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="~/css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="../css/Base.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center egen">
            <h1>Owner Page (Administratör)</h1>
            <br /><br />
            <div class="row">
                <div class="col-md-3 stats1" style="margin-left: 50px;">
                    <i class="glyphicon glyphicon-user" aria-hidden="true"></i>
                    <h3>5ra</h3>
                </div>
                <div class="col-md-3 stats2 col-md-offset-1">
                    <i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
                    <h3>fuck</h3>
                </div>
                <div class="col-md-3 stats3 col-md-offset-1">
                    <i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>
                    <h3>zip</h3>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-6 left-section">
                    <div class="top-section-left">
                        <h2>Lägg till admin</h2>
                    </div>
                    <hr />
                    <div class="bottom-section-left">
                    <br />
                    <h3>Username:</h3>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    <h3>Password:</h3>
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    <h3>School:</h3>
                    <asp:TextBox ID="school" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    </div>
                    <br />
                    <asp:Button ID="btn_add" OnClick="btn_add_Click" runat="server" Text="Lägg till" />


                </div>
                <div class="col-md-6">

                </div>
            </div>
        </div>
    </form>
</body>
</html>

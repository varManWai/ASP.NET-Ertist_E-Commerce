<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterMain.aspx.cs" Inherits="Ertist.RegisterMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ertist Register</title>

    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <div class="col text-center" style="margin:3%; padding:10px; color:white; background: #1a1a1a; text-shadow: 0 0 15px rgba(255,255,255,.5), 0 0 10px rgba(255,255,255,.5);">
            <h1>Registration.</h1>
        </div>
    </header>

    <form id="form1" runat="server">
        
        <div class="row"  style="margin:5%;">
            <div class="col-sm-6">
                <div class="card text-center">
                    <div class="card-header" style="background-color:gainsboro;">
                        <bold>User</bold>
                    </div>
                    <div class="card-body">
                        <img src="Image/reg_user.jpg" alt="user" class="card-title" height="200px" width="200px"/>
                        <p class="card-text">Pick the artworks and bring it home.</p>
                        <asp:Button ID="btn_user" runat="server" Text="Register" class="btn btn-outline-dark"/>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card text-center">
                    <div class="card-header" style="background-color:gainsboro;">
                        <bold>Artist</bold>
                    </div>
                    <div class="card-body">
                        <img src="Image/reg_artist.jpg" class="card-title" alt="artist" height="200px" width="200px" />
                        <p class="card-text">Create the artworks and bring money home.</p>
                        <asp:Button ID="btn_artist" runat="server" Text="Register" CssClass="btn btn-outline-dark" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <footer>
        <div class="col text-center">
            <h6>ERTIST</h6>
        </div>
    </footer>

</body>
    
</html>

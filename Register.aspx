<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ertist.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Form</title>

    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <style>
        body {
            background-color: black;
            background: linear-gradient(to right, #434545, #787a7a);
        }

        .card-img-left {
            width: 45%;
            background: url('Image/reg.jpg');
            background-size: cover;
        }

        .btn-login {
            font-size: 0.9rem;
            letter-spacing: 0.05rem;
            padding: 0.75rem 1rem;
        }

    </style>
</head>

<body>
    <div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
        <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
          <div class="card-img-left d-none d-md-flex">
            <!-- Background image for card set in CSS! -->
          </div>
          <div class="card-body p-4 p-sm-5">
            <h5 class="card-title text-center mb-5 fs-5">Register</h5>
            <form id="form1" runat="server">

              <div class="mb-3">
                  Username : <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
              </div>

              <div class="mb-3">
                  Email address : <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
              </div>

              <hr>

              <div class="mb-3">
                  Password : <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
              </div>

              <div class="mb-3">
                  Confirm password : <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
              </div>

              <hr class="my-4">

                <div class="d-grid mb-2">
                    <asp:Button ID="submitReg" runat="server" Text="Register" CssClass="btn btn-lg btn-dark btn-login fw-bold text-uppercase"/>
                </div>

                <div class="d-grid mb-2">
                    <asp:Button ID="loginPage" runat="server" Text="Have an account? Sign In" CssClass="btn btn-lg btn-light btn-login fw-bold text-uppercase" OnClick="loginPage_Click"/>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>

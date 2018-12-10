<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerCreate.aspx.cs" Inherits="GRASSLY.CustomerCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Create</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <div class="container">
            <br />
            <div>
                <h1 class="display-3 text-center">New Customer</h1><br />
            <div class="form-group row">
                <asp:Label ID="Label1" for="txtFirst" class="col-sm-3 col-form-label" runat="server" Text="First Name:"></asp:Label>              
                <div class="col-sm-6">
                    <asp:TextBox ID="txtFirst" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <asp:Label ID="Label2" runat="server" class="col-sm-3 col-form-label" Text="Last Name:"></asp:Label>                             
                <div class="col-sm-6">
                    <asp:TextBox ID="txtLast" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <asp:Label ID="Label3" runat="server" class="col-sm-3 col-form-label" Text="Phone:"></asp:Label>                           
                <div class="col-sm-6">
                    <asp:TextBox ID="txtPhone" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <asp:Label ID="Label4" runat="server" class="col-sm-3 col-form-label" Text="Address:"></asp:Label>                         
                <div class="col-sm-6">
                    <asp:TextBox ID="txtAddress"  class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                 <asp:Label ID="Label5" runat="server" class="col-sm-3 col-form-label" Text="City:"></asp:Label>                        
                <div class="col-sm-6">
                    <asp:TextBox ID="txtCity" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <asp:Label ID="Label6" runat="server" class="col-sm-3 col-form-label" Text="Postal Code:"></asp:Label>                       
                <div class="col-sm-6">
                    <asp:TextBox ID="txtPostal" class="form-control" runat="server" Height="34px"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <asp:Label ID="Label7" runat="server" class="col-sm-3 col-form-label" Text="E-mail:"></asp:Label>                      
                <div class="col-sm-6">
                    <asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-1">
                            <asp:Button ID="btnCreateCust" class="btn btn-success " runat="server" OnClick="btnCreateCust_Click" Text="Create" />
                 </div>   
                <div class="col-sm-1">
                    <asp:Button ID="btnDeleteCust" class="btn btn-danger" runat="server" OnClick="btnDeleteCust_Click" Text="Delete" Visible="False" />
                 </div> 
                <div class="col-sm-1 offset-sm-6">
                            <asp:Button ID="btnCancelCust" class="btn btn-default" runat="server" Text="Cancel" OnClick="btnCancelCust_Click" />
                 </div>
               
            </div>

            </div>
            <br />
                            <asp:Label ID="lblCust" runat="server"></asp:Label>
            <br />
        </div>

        <!-- #Include virtual="/Includes/Footer.aspx" -->
    </form>
</body>
</html>

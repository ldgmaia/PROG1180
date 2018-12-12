<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceRepair.aspx.cs" Inherits="GRASSLY.PlaceRepair" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Place Repair</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->
        <div class="container">
            <br />
                <h1 class="display-3 text-center">Place a Repair</h1><br />
            <div class="form-group row">
              <asp:Label ID="Label2" Class="col-sm-3 col-form-label" runat="server" Text="Customer Name:"></asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCustomer" class="form-control" runat="server"></asp:TextBox> 
                </div>                 
            </div>
            <div class="form-group row">
                <div class="col-sm-8">
                            <asp:DropDownList ID="DropDownListw" class="form-control" runat="server" AppendDataBoundItems="True"  DataTextField="Vendor" DataValueField="id">
                                <asp:ListItem Value="-1">Select Customer</asp:ListItem>
                                <asp:ListItem Value="-1">Customer Name: Bob UnderHill - Phone: 9058889632 -email- b.underhill@gmail.com </asp:ListItem>
                            </asp:DropDownList>
                </div>                 
            </div>

            <div class="form-group row">
                <asp:Label ID="Label3" runat="server" class="col-sm-3 col-form-label" Text="Sales Employee:"></asp:Label>                     
                <div class="col-sm-5">
                            <asp:DropDownList ID="ddlSalesEmp" class="form-control" runat="server" AppendDataBoundItems="True"  DataTextField="Vendor" DataValueField="id">
                                 <asp:ListItem Value="-1">Select Employee</asp:ListItem>
                                <asp:ListItem Value="-1">Emily Rosten</asp:ListItem>
                            </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label for="example-datetime-local-input" class="col-sm-3 col-form-label">Date and time</label>
                <div class="col-sm-5">
                    <input class="form-control" type="datetime-local" value="2018-08-19T13:45:00" id="example-datetime-local-input" />
                </div>
            </div>

            <div class="form-group row">
                <label for="exampleFormControlTextarea1" class="col-sm-3 col-form-label">Repair Desc:</label>
                <div class="col-sm-5">
                    <textarea class="form-control col-sm-9" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="Label1" runat="server" class="col-sm-3 col-form-label" Text="Equip Model:"></asp:Label>                     
                <div class="col-sm-5">
                            <asp:DropDownList ID="DropDownList15" class="form-control" runat="server" AppendDataBoundItems="True"  DataTextField="Vendor" DataValueField="id">
                                 <asp:ListItem Value="-1">Select Model</asp:ListItem>
                                <asp:ListItem Value="-1">20in Cordless</asp:ListItem>
                                 <asp:ListItem Value="-1">17-inch 2 stroke</asp:ListItem>
                                 <asp:ListItem Value="-1">EU1000i</asp:ListItem>
                            </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Warranty:</label>
                <div class="checkbox col-sm-3">
                  <label><input type="checkbox" value=""></label>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-1">
                    <asp:Button ID="btnCustSearch" runat="server" class="btn btn-primary" Text="Request" OnClick="btnCustSearch_Click" />
                 </div>                
            </div>
        </div>
        <!-- #Include virtual="/Includes/Footer.aspx" -->
    
    </form>

</body>
</html>

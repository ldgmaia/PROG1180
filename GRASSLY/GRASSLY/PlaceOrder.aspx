﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="GRASSLY.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Place Orders</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>
<body>

    <!-- #Include virtual="/Includes/NavBar.aspx" -->

    <form id="form1" runat="server">
        <div class="container">

                <h1 class="display-3 text-center">Place Order</h1><br />
            <div class="form-group row">
                <label for="DropDownList1" class="col-sm-3 col-form-label">Customer Name:</label>
                <div class="col-sm-3">
                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" DataSourceID="dsCustName" DataTextField="custFirst" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label for="DetailsView1" class="col-sm-3 col-form-label">Customer Details:</label>
                <div class="col-sm-3">
                    <asp:DetailsView ID="DetailsView1" class="table table-striped table-bordered" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsCustDetails">
                        <Fields>
                            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                            <asp:BoundField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                            <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                            <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                            <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                            <asp:BoundField DataField="custPostal" HeaderText="Postal" SortExpression="custPostal" />
                            <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                    </asp:DetailsView>
                </div>
            </div>
            <div class="form-group row">
                <label for="DropDownList2" class="col-sm-3 col-form-label">Product Name:</label>
                <div class="col-sm-3">
                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" AutoPostBack="True" DataSourceID="dsProduct" DataTextField="prodName" DataValueField="id" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label for="FormView1" class="col-sm-3 col-form-label">Product Details:</label>
                <div class="col-sm-3">
                    <asp:FormView ID="FormView1" class="table table-striped table-bordered" runat="server" DataKeyNames="id" DataSourceID="dsProduct">
                        <EditItemTemplate>
                            id:
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            prodName:
                            <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                            <br />
                            prodDescription:
                            <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                            <br />
                            prodBrand:
                            <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            prodName:
                            <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                            <br />
                            prodDescription:
                            <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                            <br />
                            prodBrand:
                            <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            id:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            prodName:
                            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Bind("prodName") %>' />
                            <br />
                            prodDescription:
                            <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Bind("prodDescription") %>' />
                            <br />
                            prodBrand:
                            <asp:Label ID="prodBrandLabel" runat="server" Text='<%# Bind("prodBrand") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>

                <p <%--class="display-3"--%> style="font-weight: bold">
                    

                </p>
                <p <%--class="display-3"--%> style="font-weight: bold">
                    <asp:Button ID="btnPlaceOrder" class="btn btn-primary" runat="server" Text="Place Order" Width="114px" />
                </p>
                <p class="display-3" style="font-weight: normal">&nbsp;</p>
                <p class="display-3" style="font-weight: bold">
                    <asp:ObjectDataSource ID="dsCustName" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
                </p>
                <p class="display-3" style="font-weight: bold">
                    <asp:ObjectDataSource ID="dsCustDetails" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.CustomerCRUDTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_id" Type="Int32" />
                            <asp:Parameter Name="Original_custFirst" Type="String" />
                            <asp:Parameter Name="Original_custLast" Type="String" />
                            <asp:Parameter Name="Original_custPhone" Type="String" />
                            <asp:Parameter Name="Original_custAddress" Type="String" />
                            <asp:Parameter Name="Original_custCity" Type="String" />
                            <asp:Parameter Name="Original_custPostal" Type="String" />
                            <asp:Parameter Name="Original_custEmail" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="custFirst" Type="String" />
                            <asp:Parameter Name="custLast" Type="String" />
                            <asp:Parameter Name="custPhone" Type="String" />
                            <asp:Parameter Name="custAddress" Type="String" />
                            <asp:Parameter Name="custCity" Type="String" />
                            <asp:Parameter Name="custPostal" Type="String" />
                            <asp:Parameter Name="custEmail" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="custFirst" Type="String" />
                            <asp:Parameter Name="custLast" Type="String" />
                            <asp:Parameter Name="custPhone" Type="String" />
                            <asp:Parameter Name="custAddress" Type="String" />
                            <asp:Parameter Name="custCity" Type="String" />
                            <asp:Parameter Name="custPostal" Type="String" />
                            <asp:Parameter Name="custEmail" Type="String" />
                            <asp:Parameter Name="Original_id" Type="Int32" />
                            <asp:Parameter Name="Original_custFirst" Type="String" />
                            <asp:Parameter Name="Original_custLast" Type="String" />
                            <asp:Parameter Name="Original_custPhone" Type="String" />
                            <asp:Parameter Name="Original_custAddress" Type="String" />
                            <asp:Parameter Name="Original_custCity" Type="String" />
                            <asp:Parameter Name="Original_custPostal" Type="String" />
                            <asp:Parameter Name="Original_custEmail" Type="String" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </p>
                <p class="display-3" style="font-weight: bold">
                    <asp:SqlDataSource ID="dsProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [prodName], [prodDescription], [prodBrand] FROM [product]"></asp:SqlDataSource>
                </p>
            </div>


        <!-- #Include virtual="/Includes/Footer.aspx" -->

    </form>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GRASSLY.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bootstrap Template</title>
    <!-- #Include virtual="/Includes/Header.aspx" -->
</head>

<body>
    <form id="form1" runat="server">

        <!-- #Include virtual="/Includes/NavBar.aspx" -->

        <br />

        <div class="container">
            <h2 class="display-3 text-center" style="font-weight: bold">Sales</h2>
            <!-- (Use for Titles) -->
            <br />
            <div class="form-group row">
                <label for="email" class="col-sm-3 col-form-label">Email address:</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" id="email" />
                </div>
            </div>

            <div class="form-group row">
                <label for="inputPassword" class="col-sm-3 col-form-label">Password</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password" />
                </div>
            </div>

            <div class="form-group row">
                <label for="exampleFormControlTextarea1" class="col-sm-3 col-form-label">Example textarea</label>
                <div class="col-sm-9">
                    <textarea class="form-control col-sm-9" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
            </div>

            <div class="form-group row">
                <label for="sel1" class="col-sm-3 col-form-label">Select list (select one):</label>
                <div class="col-sm-9">
                    <select class="form-control" id="sel1" name="sellist1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Select Checkbox:</label>
                <div class="form-check-inline">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox" class="form-check-input" id="check1" name="option1" value="something" checked />Option 1
                    </label>
                </div>
                <div class="form-check-inline">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2" value="something" />Option 2
                    </label>
                </div>
                <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" disabled />Option 3
                    </label>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Select a Radio:</label>
                <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optradio" />Option 1
                    </label>
                </div>
                <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optradio" />Option 2
                    </label>
                </div>
                <div class="form-check-inline disabled">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="optradio" disabled />Option 3
                    </label>
                </div>
            </div>

            <div class="form-group row">
                <label for="example-number-input" class="col-sm-3 col-form-label">Number</label>
                <div class="col-sm-9">
                    <input class="form-control" type="number" value="42" id="example-number-input" />
                </div>
            </div>

            <div class="form-group row">
                <label for="example-datetime-local-input" class="col-sm-3 col-form-label">Date and time</label>
                <div class="col-sm-9">
                    <input class="form-control" type="datetime-local" value="2018-08-19T13:45:00" id="example-datetime-local-input" />
                </div>
            </div>

            <div class="form-group row">
                <label for="example-date-input" class="col-sm-3 col-form-label">Date</label>
                <div class="col-sm-9">
                    <input class="form-control" type="date" value="2018-08-19" id="example-date-input" />
                </div>
            </div>

            <div class="form-group row">
                <label for="example-month-input" class="col-sm-3 col-form-label">Month</label>
                <div class="col-sm-9">
                    <input class="form-control" type="month" value="2018-08" id="example-month-input" />
                </div>
            </div>

            <div class="form-group row">
                <label for="example-week-input" class="col-sm-3 col-form-label">Week</label>
                <div class="col-sm-9">
                    <input class="form-control" type="week" value="2018-W33" id="example-week-input" />
                </div>
            </div>

            <div class="form-group row">
                <label for="example-time-input" class="col-sm-3 col-form-label">Time</label>
                <div class="col-sm-9">
                    <input class="form-control" type="time" value="13:45:00" id="example-time-input" />
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
            <br />
            <br />


            <br />
            <asp:GridView ID="GridView1" class="table table-striped table-bordered dt-responsive" Style="width: 100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="custFirst" HeaderText="custFirst" SortExpression="custFirst" />
                    <asp:BoundField DataField="custLast" HeaderText="custLast" SortExpression="custLast" />
                    <asp:BoundField DataField="custPhone" HeaderText="custPhone" SortExpression="custPhone" />
                    <asp:BoundField DataField="custAddress" HeaderText="custAddress" SortExpression="custAddress" />
                    <asp:BoundField DataField="custCity" HeaderText="custCity" SortExpression="custCity" />
                    <asp:BoundField DataField="custPostal" HeaderText="custPostal" SortExpression="custPostal" />
                    <asp:BoundField DataField="custEmail" HeaderText="custEmail" SortExpression="custEmail" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="GRASSLYLIB.EmmasDataSetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
            <br />
            <br />
        </div>
            
        <!-- #Include virtual="/Includes/Footer.aspx" -->
    
    </form>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab2Form.MyWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Form</title>
    <link href="Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style>
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .form-title {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .address-container {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        .address-container .form-control {
            flex: 1;
        }
        .terms {
            display: flex;
            align-items: center;
        }
        .terms label {
            margin-left: 5px;
        }
        .submit-button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <h1 class="form-title">Student Registration Form</h1>

        <div class="form-group">
            <label for="txtStudentName">Student Name:</label>
            <asp:TextBox ID="txtStudentName" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtDOB">Date of Birth:</label>
            <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label>Address:</label>
            <div class="address-container">
                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" />
                <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" />
                <asp:TextBox ID="txtLocalLevel" runat="server" CssClass="form-control" placeholder="Local Level" />
                <asp:TextBox ID="txtWardNo" runat="server" CssClass="form-control" placeholder="Ward No" />
            </div>
        </div>

        <div class="form-group terms">
            <asp:CheckBox ID="chkTerms" runat="server" />
            <label for="chkTerms">I agree to the Terms and Conditions</label>
        </div>

        <div class="form-group">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="submit-button" />
        </div>
    </form>
</body>
</html>
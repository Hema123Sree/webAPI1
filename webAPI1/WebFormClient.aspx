<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormClient.aspx.cs" Inherits="webAPI1.WebFormClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script>
        function GetAllStudents() {
            $.ajax({
                type: "GET",
                url: "http://localhost:63586/api/Students/",
                contentType: "application/json",
                dataType: "json",
                success: function (data) {
                    $.each(data, function (key, value) {
                        //stringify
                        var jsonData = JSON.stringify(value);
                        //Parse JSON
                        var objData = $.parseJSON(jsonData);
                        var id = objData.StudentID;
                        var fname = objData.FirstName;
                        var lname = objData.LastName;
                        $('<tr><td>' + id + '</td><td>' + fname +
                            '</td><td>' + lname + '</td></tr>').appendTo('#students');
                    });
                },
                error: function (xhr) {
                    alert(xhr.responseText);
                }
            });
        }
        $(document).ready(GetAllStudents);
           
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                    <th>Student ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    </tr>
                </thead>
                <tbody id="students">

                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

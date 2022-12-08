<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="my_issued_books.aspx.cs" Inherits="Library_Management_System.student.my_issued_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    

    <div class="breadcrumbs">
        <div class="col-sm-4">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>My Issued Books</h1>
                </div>
            </div>
        </div>

    </div>

    <div class="container-fluid" style="min-height:500px; background-color:white">
        
        <asp:DataList ID="d1" runat="server">

            <HeaderTemplate>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Student Enrollment Number</th>
                        <th>Books ISBN</th>
                        <th>Books Issue Date</th>
                        <th>Books Approx Return Date</th>
                        <th>Student UserName</th>
                        <th>Is Books Return</th>
                        <th>Books Return Date</th>
                        <th>Lateday</th>
                        <th>Penalty (Rs.)</th>
                    </tr>
                        </thead>
                    <tbody>
            </HeaderTemplate>
            

            <ItemTemplate>
                <tr>
                    <td><%#Eval("student_enrollment_no") %></td>
                    <td><%#Eval("books_isbn") %></td>
                    <td><%#Eval("books_issue_date") %></td>
                    <td><%#Eval("books_approx_return_date") %></td>
                    <td><%#Eval("student_username") %></td>
                    <td><%#Eval("is_books_return") %></td>
                    <td><%#Eval("books_returned_date") %></td>
                    <td><%#Eval("lateday") %></td>
                    <th><%#Eval("penalty") %></th>
                </tr>
            </ItemTemplate>


            <FooterTemplate>
                </tbody>
                </table>
            </FooterTemplate>

        </asp:DataList>

    </div>


</asp:Content>

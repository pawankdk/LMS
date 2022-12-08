<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="return_books.aspx.cs" Inherits="Library_Management_System.librarian.return_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    

       <div class="container-fluid" style="min-height:500px; background-color:white; padding:20px">
           <div class="card-header">
                <strong class="card-title">Return Books</strong>
            </div>
        <br />
        <asp:DataList ID="d1" runat="server">

            <HeaderTemplate>
                <table class="table table-bordered" >
                    
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
                        <th>Return Bookss</th>
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
                    <td><a href="returnbook.aspx?id=<%#Eval("id") %>" class="btn btn-success">Return Books</a></td>
                </tr>
            </ItemTemplate>


            <FooterTemplate>
                </tbody>
                </table>
            </FooterTemplate>

        </asp:DataList>

    </div>

  

</asp:Content>

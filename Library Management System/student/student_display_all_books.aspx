<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="student_display_all_books.aspx.cs" Inherits="Library_Management_System.student.student_display_all_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet"/>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">All Books</strong>
            </div>

            <div class="card-body">

                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table" id="example">
                            <thead>
                            <tr>
                                <th scope="col">Books Image</th>
                                <th scope="col">Books Title</th>
                                <th scope="col">Books PDF</th>
                                <th scope="col">Books Video</th>
                                <th scope="col">Author Name</th>
                                <th scope="col">Books ISBN</th>
                                <th scope="col">Available Quantity</th>
                                
                            </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td><img src = "../librarian/<%#Eval("books_image") %>" height="100" width="100" /></td>
                            <td><b><%#Eval("books_title") %></b></td>
                            <td><%#Eval("books_pdf") %> <br /> <%#checkpdf(Eval("books_pdf"),Eval("id")) %></td>
                            <td><%#Eval("books_video") %> <br /> <%#checkvideo(Eval("books_video"),Eval("id")) %></td>
                            <td><%#Eval("books_author_name") %></td>
                            <td><%#Eval("books_isbn") %></td>
                            <td><%#Eval("available_qty") %></td>
                            
                       </tr> 
                    </ItemTemplate>

                    <FooterTemplate>
                             </tbody>
                        </table>
                    </FooterTemplate>

                </asp:Repeater>

                
                
                
           
            </div>
        </div>
    </div>


     <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                "pagingType": "full_numbers"
            });
        });
     </script>

</asp:Content>

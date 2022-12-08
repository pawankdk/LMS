<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="display_all_books_category.aspx.cs" Inherits="Library_Management_System.librarian.display_all_books_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View All Book Publication</strong>
                        </div>
                        <div class="card-body">
                            <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">Books Author Name</th>
                                  <th scope="col">Books ISBN</th>
                                  <th scope="col">Books Category</th>
                                  <th scope="col">Edit Category</th>
                                  <th scope="col">Delete Category</th>
                              </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">Atish Ojha</th>
                              <td>5520</td>
                              <td>Development</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                          <tr>
                              <th scope="row">Ojha</th>
                              <td>20125</td>
                              <td>Cooking</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                          <tr>
                              <th scope="row">Java Deveelopers</th>
                              <td>854120</td>
                              <td>Programming</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                      </tbody>
                  </table>
                        </div>
                    </div>
                </div>

</asp:Content>

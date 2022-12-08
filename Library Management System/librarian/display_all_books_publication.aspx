<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="display_all_books_publication.aspx.cs" Inherits="Library_Management_System.librarian.display_all_books_publication" %>
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
                                  <th scope="col">Books Published City</th>
                                  <th scope="col">Books Publisher</th>
                                  <th scope="col">Books Published Date</th>
                                  <th scope="col">Edit Publication</th>
                                  <th scope="col">Delete Publication</th>
                              </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">Atish Ojha</th>
                              <td>5520</td>
                              <td>Mahendranagar</td>
                              <td>Atish.Pvt.Lim</td>
                              <td>2010</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                          <tr>
                              <th scope="row">Ojha</th>
                              <td>20125</td>
                              <td>Kanchanpur</td>
                              <td>Ojha.live</td>
                              <td>2052</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                          <tr>
                              <th scope="row">Java Deveelopers</th>
                              <td>854120</td>
                              <td>Kathmandu</td>
                              <td>dev.li</td>
                              <td>2075</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                      </tbody>
                  </table>
                        </div>
                    </div>
                </div>

</asp:Content>

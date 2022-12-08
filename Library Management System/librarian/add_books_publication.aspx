<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="add_books_publication.aspx.cs" Inherits="Library_Management_System.librarian.add_books_publication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add New Books Publication</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                 
                                  <form action="" id="fo1" runat="server" method="post" novalidate="novalidate">

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Books Author Name</label>
                                          <asp:TextBox ID="authorname" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Books ISBN</label>
                                          <asp:TextBox ID="isbn" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Books Published City</label>
                                          <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Books Publisher</label>
                                          <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Books Published Date</label>
                                          <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                      </div>
                                      
                                                                            
                                      <div>
                                          <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Add New Books Publication"/>
                                      </div>

                                      <div class="alert alert-success" id="msg" runat="server" style="margin-top:10px; display:none;">
                                        <strong>Your Books Category Added Successfuly!</strong>
                                      </div>

                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div><!--/.col-->

</asp:Content>

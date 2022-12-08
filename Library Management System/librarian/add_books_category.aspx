<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="add_books_category.aspx.cs" Inherits="Library_Management_System.librarian.add_books_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add New Books Category</strong>
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
                                          <select class="browser-default custom-select">
                                              <option selected>Select Book Category</option>
                                              <option value="1">Fantasy</option>
                                              <option value="2">Adventure</option>
                                              <option value="3">Romance</option>
                                              <option value="4">Contemporary</option>
                                              <option value="5">Dystopian</option>
                                              <option value="6">Mystery</option>
                                              <option value="7">Horror</option>
                                              <option value="8">Thriller</option>
                                              <option value="9">Paranormal</option>
                                              <option value="10">Historical Fiction</option>
                                              <option value="11">Science Fiction</option>
                                              <option value="12">Memoir</option>
                                              <option value="13">Cooking</option>
                                              <option value="14">Art</option>
                                              <option value="15">Self-help / Perdonal</option>
                                              <option value="16">Development</option>
                                              <option value="17">Motivational</option>
                                              <option value="18">Health</option>
                                              <option value="19">History</option>
                                              <option value="20">Travel</option>
                                              <option value="21">Guid / How-to</option>
                                              <option value="22">Families & Relationships</option>
                                              <option value="23">Humor</option>
                                              <option value="24">Children's</option>
                                           </select>
                                      </div>


                                      
                                      <div>
                                          <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Add New Books Category"/>
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

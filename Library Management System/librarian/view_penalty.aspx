<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="view_penalty.aspx.cs" Inherits="Library_Management_System.librarian.view_penalty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

   
   <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View All Penalty</strong>
                        </div>
                        <div class="card-body">
                            <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">Student ID</th>
                                  <th scope="col">Student Name</th>
                                  <th scope="col">Penalty (Rs.)</th>
                                  <th scope="col">Penalty Clear</th>
                                  <th scope="col">Edit Penalty</th>
                                  <th scope="col">Delete Penalty</th>
                              </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td>Himal</td>
                              <td>50</td>
                              <td>no</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                          <tr>
                              <th scope="row">5</th>
                              <td>Mahesh</td>
                              <td>30</td>
                              <td>no</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                          <tr>
                              <th scope="row">6</th>
                              <td>Deepak</td>
                              <td>10</td>
                              <td>yes</td>
                              <td><a href="#" class="btn btn-primary">Edit</a></td>
                              <td><a href="#" class="btn btn-danger">Delete</a></td>
                          </tr>
                      </tbody>
                  </table>
                        </div>
                    </div>
                </div>

</asp:Content>

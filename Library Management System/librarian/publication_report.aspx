﻿<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="publication_report.aspx.cs" Inherits="Library_Management_System.librarian.publication_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

     <center>

            <h1>Publication Report Generator</h1>
        <br />
        <p>Generate reports on all Publications.</p>
        <br />
        <form action="/">
        From: <input type="date" />
        To : <input type="date" />
          <input type="submit" />
        </form>

        </center>

</asp:Content>

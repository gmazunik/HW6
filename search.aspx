<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<h2>SEARCH</h2>
	<div class="centerWrapper">

		<% If Not IsPostBack Then%>
			Search for a song by title:&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="tbSearch" runat="server" AutoPostBack="True"></asp:TextBox>
		<% Else%>
			Search for another song by title:&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="tbSearch2" runat="server" AutoPostBack="True"></asp:TextBox>
			
			<asp:GridView 
				ID="GridView1" 
				runat="server" 
				AllowPaging="True" 
				AllowSorting="True" 
				AutoGenerateColumns="False" 
				DataKeyNames="songID" 
				DataSourceID="SqlDataSource1"
				PageSize="10" 
				Gridlines="None"
				CssClass="cssgridview"
				AlternatingRowStyle-CssClass="alt"
				PagerStyle-CssClass="pgr"
			>				
				<Columns>
					<asp:BoundField DataField="songTitle" HeaderText="Song Title" SortExpression="songTitle" />
					<asp:HyperLinkField DataNavigateUrlFields="songID" DataNavigateUrlFormatString="./songDetails.aspx?songID={0}" Text="View Details" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_songDatabase %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
		<% End If%>

	</div>
</asp:Content>


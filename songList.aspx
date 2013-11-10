<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="songList.aspx.vb" Inherits="update_songList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="centerWrapper">
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
	</div>
</asp:Content>


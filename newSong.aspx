<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newSong.aspx.vb" Inherits="songDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="centerWrapper">
		<asp:DetailsView 
			ID="DetailsView1" 
			runat="server" 
			AutoGenerateRows="False" 
			DataKeyNames="songID" 
			DataSourceID="SqlDataSource1"
			HeaderText="Add a New Song"
			CssClass="cssdetailsview"
			HeaderStyle-CssClass="header"
			FieldHeaderStyle-CssClass="fieldheader"
			ItemStyle-CssClass="item"
			AlternatingRowStyle-CssClass="altrow"
			CommandRowStyle-CssClass="command"
			PagerStyle-CssClass="pager" DefaultMode="Insert"
		>
<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
			<Fields>
				<asp:BoundField DataField="songTitle" HeaderText="Song Title" SortExpression="songTitle" />
				<asp:BoundField DataField="songAuthors" HeaderText="Authors" SortExpression="songAuthors" />
				<asp:BoundField DataField="songKey" HeaderText="Key" SortExpression="songKey" />
				<asp:BoundField DataField="songTempo" HeaderText="Tempo" SortExpression="songTempo" />
				<asp:BoundField DataField="songNotes" HeaderText="Notes" SortExpression="songNotes" />
				<asp:CommandField ShowInsertButton="True" />
			</Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
		</asp:DetailsView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_songDatabase %>" DeleteCommand="DELETE FROM [Table] WHERE [songID] = @songID" InsertCommand="INSERT INTO [Table] ([songTitle], [songAuthors], [songKey], [songTempo], [songNotes]) VALUES (@songTitle, @songAuthors, @songKey, @songTempo, @songNotes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [songTitle] = @songTitle, [songAuthors] = @songAuthors, [songKey] = @songKey, [songTempo] = @songTempo, [songNotes] = @songNotes WHERE [songID] = @songID">
			<DeleteParameters>
				<asp:Parameter Name="songID" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="songTitle" Type="String" />
				<asp:Parameter Name="songAuthors" Type="String" />
				<asp:Parameter Name="songKey" Type="String" />
				<asp:Parameter Name="songTempo" Type="Int32" />
				<asp:Parameter Name="songNotes" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="songTitle" Type="String" />
				<asp:Parameter Name="songAuthors" Type="String" />
				<asp:Parameter Name="songKey" Type="String" />
				<asp:Parameter Name="songTempo" Type="Int32" />
				<asp:Parameter Name="songNotes" Type="String" />
				<asp:Parameter Name="songID" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
	</div>
</asp:Content>


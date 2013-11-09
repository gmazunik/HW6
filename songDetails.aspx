<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="songDetails.aspx.vb" Inherits="songDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="centerWrapper">
		<asp:Label ID="lblDeletedSong" runat="server" Text=""></asp:Label>
		<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="songID" DataSourceID="SqlDataSource1">
			<Fields>
				<asp:BoundField DataField="songTitle" HeaderText="Song Title" SortExpression="songTitle" />
				<asp:BoundField DataField="songAuthors" HeaderText="Authors" SortExpression="songAuthors" />
				<asp:BoundField DataField="songKey" HeaderText="Key" SortExpression="songKey" />
				<asp:BoundField DataField="songTempo" HeaderText="Tempo" SortExpression="songTempo" />
				<asp:BoundField DataField="songNotes" HeaderText="Notes" SortExpression="songNotes" />
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
			</Fields>
		</asp:DetailsView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_songDatabase %>" DeleteCommand="DELETE FROM [Table] WHERE [songID] = @songID" InsertCommand="INSERT INTO [Table] ([songTitle], [songAuthors], [songKey], [songTempo], [songNotes]) VALUES (@songTitle, @songAuthors, @songKey, @songTempo, @songNotes)" SelectCommand="SELECT * FROM [Table] WHERE ([songID] = @songID)" UpdateCommand="UPDATE [Table] SET [songTitle] = @songTitle, [songAuthors] = @songAuthors, [songKey] = @songKey, [songTempo] = @songTempo, [songNotes] = @songNotes WHERE [songID] = @songID">
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
			<SelectParameters>
				<asp:QueryStringParameter Name="songID" QueryStringField="songID" Type="Int32" />
			</SelectParameters>
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


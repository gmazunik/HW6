
Partial Class songDetails
	Inherits System.Web.UI.Page

	Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
		' After item is deleted, give message
		Dim deletedSong As String = e.Values("songTitle").ToString()

		lblDeletedSong.Text = "The record <span class=deletedSongHighlight> " & deletedSong & "</span> has been deleted from the database."

		' Redirect back to grid view after 3 seconds
		Response.AddHeader("REFRESH", "3;URL=./songList.aspx")

	End Sub

	Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
		' After item is updated, redirect to grid view
		Response.Redirect("./songList.aspx")
	End Sub

End Class


Partial Class songDetails
	Inherits System.Web.UI.Page

	Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
		' After item is updated, redirect to grid view
		Response.Redirect("./songList.aspx")
	End Sub
End Class

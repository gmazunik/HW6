
Partial Class search
    Inherits System.Web.UI.Page

	Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
		' Declare variable
		Dim searchWord As String

		' Set the variable equal to the SQL statement to perform the search
		searchWord = "SELECT * FROM [Table] WHERE (songTitle LIKE '%" + tbSearch.Text.ToString() + "%')"

		' Apply the variable (SQL statement) to the data source
		SqlDataSource1.SelectCommand = searchWord

	End Sub

	Protected Sub tbSearch2_TextChanged(sender As Object, e As EventArgs) Handles tbSearch2.TextChanged
		' Declare variable
		Dim searchWord As String

		' Set the variable equal to the SQL statement to perform the search
		searchWord = "SELECT * FROM [Table] where (songTitle LIKE '%" + tbSearch2.Text.ToString() + "%')"

		' Apply the variable (SQL statement) to the data source
		SqlDataSource1.SelectCommand = searchWord
	End Sub

End Class

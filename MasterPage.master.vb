
Partial Class MasterPage
	Inherits System.Web.UI.MasterPage

	Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
		' Display today's date in header and current year in footer copyright upon page load
		lblDate.Text = DateTime.Now.ToLongDateString
		lblCopyright.Text = DateTime.Now.Year
	End Sub
End Class



Partial Class login_default
    Inherits System.Web.UI.Page

    'Cursor in username box on page load
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Login1.Focus()
    End Sub
End Class

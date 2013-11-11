Imports System.Net.Mail

Partial Class contact
    Inherits System.Web.UI.Page
	Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
		Dim feedBack As New MailMessage()
		feedBack.[To].Add("gmazunik@gmail.com")
		feedBack.From = New MailAddress("gmazunik@gmail.com")
		feedBack.Subject = txtSubject.Text

		feedBack.Body = (("Sender Name: " + txtName.Text & "<br><br>Sender Email: ") + txtMail.Text & "<br><br>") + txtMessage.Text
		feedBack.IsBodyHtml = True

		Dim smtp As New SmtpClient()
		smtp.Host = "smtp.gmail.com"
		' Post message after successful email send
		Label1.Text = "Thanks for contacting us"
	End Sub
End Class

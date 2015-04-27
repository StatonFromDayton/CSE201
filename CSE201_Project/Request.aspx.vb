
Partial Class Request
    Inherits System.Web.UI.Page

    Protected Sub Submit_Click(sender As Object, e As System.EventArgs) Handles Submit.Click
        Try
            AccessDataSource1.Insert()
            NameText.Text = ""
            DescriptionText.Text = ""
            DeveloperText.Text = ""
            ImageText.Text = ""

        Catch ex As Exception
            Throw ex
        End Try
    End Sub
End Class


Partial Class Landing
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Server.Transfer("Search.aspx?search=" & Me.TextBox1.Text)
    End Sub
End Class

Imports System.Data
'Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data.OleDb


Partial Class Search
    Inherits System.Web.UI.Page
    Private searchItem As String

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Request.QueryString("search") = "" Then

        Else
            searchItem = Request.QueryString("search")
            Dim conn As New OleDbConnection
            Dim connString As String

            connString = WebConfigurationManager.ConnectionStrings("AccessDatabase").ConnectionString

            conn.ConnectionString = connString

            Dim cmd As New OleDbCommand("SELECT * FROM Application WHERE AppName LIKE '%" & searchItem & "%'", conn)
            conn.Open()

            Dim da As New OleDbDataAdapter(cmd)
            Dim ds As New DataSet()
            da.Fill(ds)
            conn.Close()

            ListView1.DataSource = ds
            ListView1.DataBind()
        End If
    End Sub

    Protected Sub SearchButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SearchButton.Click
        searchItem = SearchTextBox.Text
        Dim conn As New OleDbConnection
        Dim connString As String

        connString = WebConfigurationManager.ConnectionStrings("AccessDatabase").ConnectionString

        conn.ConnectionString = connString

        Dim cmd As New OleDbCommand("SELECT * FROM Application WHERE AppName LIKE '%" & searchItem & "%'", conn)
        conn.Open()

        Dim da As New OleDbDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        conn.Close()

        ListView1.DataSource = ds
        ListView1.DataBind()

    End Sub
End Class




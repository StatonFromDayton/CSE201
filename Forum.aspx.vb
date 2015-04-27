Imports System.Data
'Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data.OleDb

Partial Class Forum
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim conn As New OleDbConnection
        Dim connString As String

        connString = WebConfigurationManager.ConnectionStrings("AccessDatabase").ConnectionString

        conn.ConnectionString = connString

        Dim cmd As New OleDbCommand("SELECT ForumName, ForumContent FROM Forum", conn)
        conn.Open()

        Dim da As New OleDbDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        conn.Close()

        ListView1.DataSource = ds
        ListView1.DataBind()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Author.Text <> "" Then
            Try
                Session("Content") = Content.InnerText
                AccessDataSource1.Insert()
                Content.InnerText = ""
                Author.Text = ""
                Dim conn As New OleDbConnection
                Dim connString As String

                connString = WebConfigurationManager.ConnectionStrings("AccessDatabase").ConnectionString

                conn.ConnectionString = connString

                Dim cmd As New OleDbCommand("SELECT ForumName, ForumContent FROM Forum", conn)
                conn.Open()

                Dim da As New OleDbDataAdapter(cmd)
                Dim ds As New DataSet()
                da.Fill(ds)
                conn.Close()

                ListView1.DataSource = ds
                ListView1.DataBind()
                Return

            Catch ex As Exception
                Throw ex
            End Try
        End If
    End Sub
End Class

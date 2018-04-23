Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports DevExpress.Data.Filtering
Imports DevExpress.Xpo
Imports DevExpress.Xpo.DB
Imports DevExpress.Web.ASPxMenu

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private session As New Session()

	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim datasource As XpoHierarchicalDataSource(Of MyObject) = New XpoHierarchicalDataSource(Of MyObject)() With {.Session = session, .ParentProperty = "Parent", .ChildrenProperty = "Children"}

		menu.DataSource = datasource
		menu.DataBind()
	End Sub
End Class

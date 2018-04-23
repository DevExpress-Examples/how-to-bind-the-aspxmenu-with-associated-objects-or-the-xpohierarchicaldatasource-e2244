<%@ Application Language="vb" %>

<script runat="server">

	Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
		' Code that runs on application startup
		Dim ds As New DevExpress.Xpo.DB.InMemoryDataStore()

		Dim dict As DevExpress.Xpo.Metadata.XPDictionary = New DevExpress.Xpo.Metadata.ReflectionDictionary()
		dict.GetDataStoreSchema(GetType(MyObject).Assembly)

		DevExpress.Xpo.XpoDefault.DataLayer = New DevExpress.Xpo.ThreadSafeDataLayer(dict, ds)
		DevExpress.Xpo.XpoDefault.Session = Nothing

		CreateObjects()
	End Sub

	Sub CreateObjects()
		Using uow As New DevExpress.Xpo.UnitOfWork()
			' test the order
			'CMSPage child21 = new CMSPage(uow);
			'child21.Title = "Child21";

			Dim root As New MyObject(uow)
			root.Title = "Root"

			Dim parent1 As New MyObject(uow)
			parent1.Title = "Parent11"
			parent1.Parent = root

			Dim parent2 As New MyObject(uow)
			parent2.Title = "Parent12"
			parent2.Parent = root

			Dim child11 As New MyObject(uow)
			child11.Title = "Child11"
			child11.Parent = parent1

			Dim child12 As New MyObject(uow)
			child12.Title = "Child12"
			child12.Parent = parent1

			Dim child21 As New MyObject(uow)
			child21.Title = "Child21"
			child21.Parent = parent2

			Dim child22 As New MyObject(uow)
			child22.Title = "Child22"
			child22.Parent = parent2

			root = New MyObject(uow)
			root.Title = "Root2"

			parent1 = New MyObject(uow)
			parent1.Title = "Parent21"
			parent1.Parent = root

			parent2 = New MyObject(uow)
			parent2.Title = "Parent22"
			parent2.Parent = root

			child11 = New MyObject(uow)
			child11.Title = "Child11"
			child11.Parent = parent1

			child12 = New MyObject(uow)
			child12.Title = "Child12"
			child12.Parent = parent1

			child21 = New MyObject(uow)
			child21.Title = "Child21"
			child21.Parent = parent2

			child22 = New MyObject(uow)
			child22.Title = "Child22"
			child22.Parent = parent2

			uow.CommitChanges()
		End Using
	End Sub

	Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
		'  Code that runs on application shutdown

	End Sub

	Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
		' Code that runs when an unhandled error occurs

	End Sub

	Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
		' Code that runs when a new session is started

	End Sub

	Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
		' Code that runs when a session ends. 
		' Note: The Session_End event is raised only when the sessionstate mode
		' is set to InProc in the Web.config file. If session mode is set to StateServer 
		' or SQLServer, the event is not raised.

	End Sub

</script>

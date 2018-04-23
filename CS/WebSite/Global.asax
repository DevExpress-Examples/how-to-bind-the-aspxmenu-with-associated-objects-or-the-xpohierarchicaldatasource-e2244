<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        DevExpress.Xpo.DB.InMemoryDataStore ds = new DevExpress.Xpo.DB.InMemoryDataStore();

        DevExpress.Xpo.Metadata.XPDictionary dict = new DevExpress.Xpo.Metadata.ReflectionDictionary();
        dict.GetDataStoreSchema(typeof(MyObject).Assembly);

        DevExpress.Xpo.XpoDefault.DataLayer = new DevExpress.Xpo.ThreadSafeDataLayer(dict, ds);
        DevExpress.Xpo.XpoDefault.Session = null;

        CreateObjects();
    }

    void CreateObjects()
    {
        using (DevExpress.Xpo.UnitOfWork uow = new DevExpress.Xpo.UnitOfWork())
        {
            // test the order
            //CMSPage child21 = new CMSPage(uow);
            //child21.Title = "Child21";
            
            MyObject root = new MyObject(uow);
            root.Title = "Root";
            
            MyObject parent1 = new MyObject(uow);
            parent1.Title = "Parent11";
            parent1.Parent = root;

            MyObject parent2 = new MyObject(uow);
            parent2.Title = "Parent12";
            parent2.Parent = root;

            MyObject child11 = new MyObject(uow);
            child11.Title = "Child11";
            child11.Parent = parent1;

            MyObject child12 = new MyObject(uow);
            child12.Title = "Child12";
            child12.Parent = parent1;

            MyObject child21 = new MyObject(uow);
            child21.Title = "Child21";
            child21.Parent = parent2;

            MyObject child22 = new MyObject(uow);
            child22.Title = "Child22";
            child22.Parent = parent2;

            root = new MyObject(uow);
            root.Title = "Root2";

            parent1 = new MyObject(uow);
            parent1.Title = "Parent21";
            parent1.Parent = root;

            parent2 = new MyObject(uow);
            parent2.Title = "Parent22";
            parent2.Parent = root;

            child11 = new MyObject(uow);
            child11.Title = "Child11";
            child11.Parent = parent1;

            child12 = new MyObject(uow);
            child12.Title = "Child12";
            child12.Parent = parent1;

            child21 = new MyObject(uow);
            child21.Title = "Child21";
            child21.Parent = parent2;

            child22 = new MyObject(uow);
            child22.Title = "Child22";
            child22.Parent = parent2;
            
            uow.CommitChanges();
        }
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>

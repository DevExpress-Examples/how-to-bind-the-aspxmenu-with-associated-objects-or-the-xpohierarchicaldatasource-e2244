using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using DevExpress.Data.Filtering;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using DevExpress.Web.ASPxMenu;

public partial class _Default : System.Web.UI.Page {
    Session session = new Session();

    protected void Page_Init(object sender, EventArgs e) {
        XpoHierarchicalDataSource<MyObject> datasource = new XpoHierarchicalDataSource<MyObject>() {
            Session = session,
            ParentProperty = "Parent",
            ChildrenProperty = "Children"
        };

        menu.DataSource = datasource;
        menu.DataBind();
    }
}

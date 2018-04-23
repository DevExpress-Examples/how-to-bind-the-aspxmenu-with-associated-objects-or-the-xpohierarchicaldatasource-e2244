# How to bind the ASPxMenu with associated objects or the XpoHierarchicalDataSource


<p>This example demonstrates how to implement the <a href="http://msdn.microsoft.com/library/system.web.ui.ihierarchicaldatasource.aspx"><u>IHierarchicalDataSource</u></a> interface to support XPO objects. The ASPxMenu,  and some standard navigation controls don't support the XpoDataSource control, because it doesn't implement the <a href="http://msdn.microsoft.com/library/system.web.ui.ihierarchicaldatasource.aspx"><u>IHierarchicalDataSource</u></a> interface.</p><p><strong>See Also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/S34887">S34887</a><br />
<a href="http://www.codeproject.com/KB/custom-controls/IHierarchySupport.aspx"><u>Implementing IHierarchy Support Into Your Custom Collections</u></a><br />
<a href="http://fredrik.nsquared2.com/ViewPost.aspx?PostID=238"><u>Create a Hierarchical Data Source for the TreeView and Menu control</u></a></p><p><strong>Examples:<br />
</strong><a href="https://www.devexpress.com/Support/Center/p/E2875">How to bind the ASPxTreeView with associated objects or the XpoHierarchicalDataSource </a></p>


<h3>Description</h3>

<p>The XpoHierarchicalDataSource object uses three properties: XPO Session, Parent and Children properties, and object type. The <strong>Parent </strong>property is the string name of the associated property that refers to the parent object. The <strong>Children</strong> property has a collection of children objects.</p>

<br/>



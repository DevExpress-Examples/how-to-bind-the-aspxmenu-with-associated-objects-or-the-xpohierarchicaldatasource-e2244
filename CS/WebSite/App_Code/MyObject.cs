using System;
using DevExpress.Xpo;



public class MyObject : XPObject
{
    public MyObject()
        : base()
    { }

    public MyObject(Session session)
        : base(session)
    { }

    public override void AfterConstruction()
    {
        base.AfterConstruction();
    }

    MyObject _Parent;
    [Association("Parent-Children")]
    public MyObject Parent
    {
        get { return _Parent; }
        set { SetPropertyValue("Parent", ref _Parent, value); }
    }

    protected String _Title;
    public String Title
    {
        get { return _Title; }
        set { SetPropertyValue<String>("Title", ref _Title, value); }
    }

    [Association("Parent-Children")]
    public XPCollection<MyObject> Children
    {
        get { return GetCollection<MyObject>("Children"); }
    }

    //public override string ToString() {
    //    return Title;
    //}
}


﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v10.1, Version=10.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to bind the ASPxMenu with associated objects or the XpoHierarchicalDataSource
        control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxMenu ID="menu" runat="server" TextField="Title" NavigateUrlField="Oid" NavigateUrlFormatString="Default.aspx?id={0}">
        </dx:ASPxMenu>
    </div>
    </form>
</body>
</html>
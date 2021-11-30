---
title: Uninstalling Aspose.Words for SharePoint manually
description: "This page describes how to manually uninstall the Aspose.Words for SharePoint."
type: docs
weight: 90
url: /sharepoint/uninstalling-aspose-words-for-sharepoint-manually/
---

You can use following steps to uninstall Aspose.Words for SharePoint manually for any reasons:

1. On the **Central Administration** Home page, click **System Settings** and then in the **Farm Management** section, click **Manage farm solutions**.
1. Select **aspose.words.sharepoint.20NN.wsp** solution, and click **Retract Solution**
1. Select to retract the solution **Now** (or decide when to retract) and then in the **Retract From** section, in the **Choose a Web application to retract this solution**, click either **All web applications** or select a specific Web application.
1. Click **OK**, and the solution will be retracted
1. Run **SharePoint Management Shell** (you must be a member of the Administrators group)
1. Execute following command
   1. **Remove-SPSolution Aspose.Words.SharePoint.20NN.wsp**
   1. where **20NN** is current SharePoint version (2007, 2010, 2013 or 2016).

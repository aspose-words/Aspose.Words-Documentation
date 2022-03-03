---
title: Installing Aspose.Words for SharePoint manually
second_title: Aspose.Words for SharePoint
articleTitle: Installing Aspose.Words for SharePoint manually
linktitle: Installing Aspose.Words for SharePoint manually
description: "How to install manually the Aspose.Words for SharePoint."
type: docs
weight: 60
url: /sharepoint/installing-aspose-words-for-sharepoint-manually/
---

You can use following steps to install Aspose.Words for SharePoint manually for any reasons:

1. Run **SharePoint Management Shell** (you must be a member of the Administrators group)
1. Execute following command
   1. Add-SPSolution -LiteralPath &lt;SolutionPath&gt;\Aspose.Words.SharePoint.20NN.wsp
   1. where &lt;SolutionPath&gt; is fully qualified path to solution file, and 20NN is current SharePoint version (2007, 2010, 2013 or 2016).
1. On the **Central Administration** Home page, click **System Settings** and then in the **Farm Management** section, click **Manage farm solutions**.
1. On the **Solution Management page**, click the solution that you want to deploy and then on the **Solution Properties** page, click **Deploy Solution**.
1. Select to deploy the solution **Now** (or decide when to deploy) and then in the **Deploy To** section, in the **A specific web application** list, click either All web applications or select a specific Web application.

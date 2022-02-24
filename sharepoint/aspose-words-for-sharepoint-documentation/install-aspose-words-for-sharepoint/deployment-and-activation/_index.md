---
title: Deployment and Activation - Aspose.Words for SharePoint
articleTitle: Deployment and Activation
linktitle: Deployment and Activation
description: "Deployment and activation processes details for the Aspose.Words for SharePoint."
type: docs
weight: 30
url: /sharepoint/deployment-and-activation/
---

## Deployment

Aspose.Words for SharePoint performs the following actions during deployment:

- Installs **Aspose.Words.SharePoint.dll** into the Global Assembly Cache and adds a SafeControl entry to the **web.config** file.
- Installs the feature manifest and other necessary files to the appropriate directories.
- Registers the feature in the SharePoint database and makes it available for activation at the feature scope.

## Activation

Aspose.Words for SharePoint is packaged as a web application level feature and can be activated and deactivated on the web application level. During activation, the feature makes some changes to the virtual directory of web application. It:

- Adds an authorized type entry for the workflow activities provided by Aspose.Words for SharePoint.
- Adds the conversion settings page to the sitemap file.
- Copies the necessary resource files to the App_GlobalResources folder in the virtual directory.

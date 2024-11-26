---
title: Installing the product License
second_title: Aspose.Words for SharePoint
articleTitle: Installing Aspose.Words for SharePoint License
linktitle: Installing Aspose.Words for SharePoint License
description: "How to install Aspose.Words for SharePoint license."
type: docs
weight: 10
url: /sharepoint/installing-aspose-words-for-sharepoint-license/
timestamp: 2024-01-30-16-22-34
---

Once you are happy with your evaluation, you can [purchase a license](https://purchase.aspose.com/pricing/words/family/). Before purchasing make sure you understand and agree to the license subscription terms. The license is emailed to you when the order has been paid. The license is a ZIP archive containing a regular SharePoint solution package. The archive contains:

- **Aspose.Words.SharePoint.License.wsp** – the SharePoint solution package file. The license is packaged as a SharePoint solution to make deployment and retraction across a server farm easy.
- **readme.txt** – license installation instructions.

## Installation

License installation is performed from the server console via **stsadm.exe**. The steps required to install the license are below. The paths are omitted for clarity. You may need to add the actual path to stsadm.exe and/or solution file when executing them.

1. Run stsadm to add the solution to the SharePoint solution store:<br>
{{< highlight csharp >}}
stsadm.exe -o addsolution -filename Aspose.Words.SharePoint.License.wsp 
{{< /highlight >}}

1. Deploy the solution to all servers in the farm:<br>
{{< highlight csharp >}}
stsadm.exe -o deploysolution -name Aspose.Words.SharePoint.License.wsp -immediate -force 
{{< /highlight >}}

1. Execute administrative timer jobs to complete the deployment immediately<br>
{{< highlight csharp >}}
stsadm.exe -o execadmsvcjobs   
{{< /highlight >}}

{{% alert color="primary" %}}

You get a warning when running the deployment step if Windows SharePoint Services Administration service is not running. **stsadm.exe** relies on this service and Windows SharePoint Timer Service to replicate solution data across the farm. If these services are not running on you server farm, you may need to deploy the license at each server.

{{% /alert %}}

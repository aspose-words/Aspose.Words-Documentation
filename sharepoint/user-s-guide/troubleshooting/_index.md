---
title: Troubleshooting
second_title: Aspose.Words for SharePoint
articleTitle: Troubleshooting
linktitle: Troubleshooting
description: "Possible way to find more details in case of issues which may occur while using Aspose.Words for SharePoint."
type: docs
weight: 40
url: /sharepoint/troubleshooting/
---

Aspose.Words for SharePoint uses SharePoint tracing logs to log information about unexpected errors. They may be useful when contacting support. The logs are in the LOGS folder of the SharePoint installation:

- **SharePoint 2007**: C:\Program Files\Common Files\Microsoft Shared\Web Server Extensions\12\LOGS\
- **SharePoint 2010**: C:\Program Files\Common Files\Microsoft Shared\Web Server Extensions\14\LOGS\
- **SharePoint 2013**: c:\Program Files\Common Files\Microsoft Shared\Web Server Extensions\15\LOGS\
- **SharePoint 2016**: c:\Program Files\Common Files\Microsoft Shared\Web Server Extensions\16\LOGS\

You can find messages related to Aspose.Words for SharePoint using the line “Aspose.Words for SharePoint” as a keyword. It serves as a diagnostics area under SharePoint 2010/2013/2016 or as a product name under SharePoint 2007. Here is an example of the logged messages.

{{< highlight csharp >}}
10/21/2010 10:29:48.42 	w3wp.exe (0x0A1C)
                       	0x0808	Aspose.Words for SharePoint   	Exception
                     	0000	Unexpected	Message: Report template is invalid. An error occured when loading report template. CallStack:    at
...  
{{< /highlight >}}

{{% alert color="primary" %}}

There is a known issue with trace logging under SharePoint 2010/2013/2016: after installation, the application pool account (the one used to run **w3wp.exe**) has insufficient permissions for logging trace messages. You can fix it by manually making the application pool account a member of the "Performance Log Users" group.

{{% /alert %}}

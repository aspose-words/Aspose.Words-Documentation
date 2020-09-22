---
title: Using Web Services
type: docs
weight: 130
url: /jasperreports/using-web-services/
---

{{% alert color="primary" %}} 

Aspose.Words for JasperReports (from v 2.0.0) can be used with JasperServer Web Services

{{% /alert %}} 

#### **Use Aspose exporters with the Web Services of Jasper Report Server**

Here is a description how to do this with JasperServer Web Services sample application (which is included in JasperServer distribution package):

1. Install Aspose.Words for JasperReports as described above in this document
1. Install jasperserver-ws-sample application from <Jasper Server>\samples\java-webapp-sample
1. Replace 2 files inside root folder of this app by those from demo\webservices folder in Aspose.Words for JasperReports distribution package. Note: new code fragments are included between lines containing Aspose.Words for JasperReports START and Aspose.Words for JasperReports END
1. Modify jasperserver/WEB-INF/applicationContext-web-services.xml as described [here](https://docs.aspose.com/words/jasperreports/installation/).
1. Stop/Start Jasper Server
1. Run <http://localhost:8080/jasperserver-ws-sample>
1. Browse to Reports, then Samples and then select some report, say "Employees"
1. In "Export format" drop-down box select "XXX via Aspose.Words", where XXX is desired output format
1. Press "Run the Report" button
1. Report download should start
   Certainly it is possible to use any other standard (or your own) client to produce reports from JasperServer Web Services.

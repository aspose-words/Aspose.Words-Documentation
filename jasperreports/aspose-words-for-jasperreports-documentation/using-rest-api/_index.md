---
title: Using REST API - Aspose.Words for JasperReports
articleTitle: Using REST API
linktitle: Using REST API
description: "Aspose.Words for JasperReports (from v2.6.0) can be used with JasperServer REST API (v2)."
type: docs
weight: 140
url: /jasperreports/using-rest-api/
---

{{% alert color="primary" %}} 

Aspose.Words for JasperReports (from v2.6.0) can be used with JasperServer REST API (v2).

{{% /alert %}} 

## Use Aspose exporters using REST API

Here is a description how to run report using REST API:

1. [Install Aspose.Words for JasperReports](/words/jasperreports/installation/).
1. Modify jasperserver/WEB-INF/applicationContext-remote-services.xml as described [here](/words/jasperreports/installation/). If it was not previously updated, then modify jasperserver/WEB-INF/applicationContext-web-services.xml as described above in this document
1. Stop/Start Jasper Server
1. Try to run localhost:8080/jasperserver/rest_v2/reports/reports/interactive/CustomersReport.aw_docx (or any other existing report)
1. Report download should start

Following extensions are available for REST API: 

aw_html, aw_doc, aw_docx, aw_odt, aw_rtf and aw_txt.

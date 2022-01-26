---
title: Using the Demos
description: "Aspose.Words for JasperReports includes a number of demo projects to help you get started exporting reports to Microsoft Word document formats from your application."
type: docs
weight: 100
url: /jasperreports/using-the-demos/
---

{{% alert color="primary" %}} 

Aspose.Words for JasperReports includes a number of demo projects to help you get started exporting reports to Microsoft Word document formats from your application. The demos provided with Aspose.Words for JasperReports are standard JasperReports demos modified to demonstrate the use of new exporters.

To run Aspose.Words for JasperReports demos: 

1. Download JasperReports from <https://sourceforge.net/projects/jasperreports/files/archive/jasperreports/>. Make sure to download the entire archived project with the source code and demos, not just a single JAR.
1. Unpack the archived project to some location on your hard disk, for example C:\.
1. Copy all demo folders from the \demo folder of **aspose.words.jasperreports.zip** to <InstallDir>\jasperreports\demo\samples, where <InstallDir> is the location you have unpacked JasperReports to. This step is required because demo build scripts rely on JasperReports' folder structure, otherwise you need to modify build scripts.
1. Copy **aspose.words.jasperreports.jar** from the \lib folder in **aspose.words.jasperreports.zip** to <InstallDir>\jasperreports\lib.
1. Download the ANT tool from <https://ant.apache.org/bindownload.cgi>.
1. Unpack the ANT tool and set up environment variables as described in the tool's manual.
1. Change the current directory to <InstallDir>\demo\hsqldb and run the following command line:
   ant runServer
1. Change the current directory to one of the Aspose.Words for JasperReports demos, for example **<InstallDir>\demo\samples\charts.aw** and run the following commands on the command line:
   ant javac – to compile the java source files of the test application.
   ant compile – to compile the XML report design and produce the **.jasper** file.
   ant fill – to fill the compiled report design with data and produce the **.jrprint** file.
1. Run one or more of the following commands in the command line: 
   1. ant doc – to produce a DOC file from the demo report.
   1. ant docx – to produce a DOCX file from the demo report.
   1. ant rtf – to produce an RTF file from the demo report.
   1. ant odt – to produce an ODT file from the demo report.
   1. ant html – to produce an HTML file from the demo report.
   1. ant txt – to produce a TXT file from the demo report.
1. Open one of the resulting documents to view, for example **<InstallDir>\demo\samples\charts.aw\AreaChartReport.doc** in Microsoft Word or another application.

{{% /alert %}}

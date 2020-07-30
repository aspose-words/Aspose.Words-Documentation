---
title: Aspose.Words for JasperReports 1.5.0 Release Notes
type: docs
weight: 20
url: /jasperreports/aspose-words-for-jasperreports-1-5-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for JasperReports 1.5.0](http://www.aspose.com/downloads/words/jasperreports/new-releases/aspose.words-for-jasperreports-1.5.0/)

{{% /alert %}} 

Please welcome a new release of Aspose.Words for JasperReports. In this release, you will find a number of new features as well as bug fixes. See product's documentation for details.

Starting from Aspose.Words for JasperReports 1.5.0 there are 2 versions of jar library (necessary for better support of older versions of JasperReports):

- for JasperReports 3.7.2 and higher (aspose.words.jasperreports.jar)
- for JasperReports 3.7.1 and lower (aspose.words.jasperreports-3.7.1.jar)

Please copy only jar library according to the version of installed JasperReports.

- Fix WORDSJSP-19 (FORUM: pagination screwed when footer present)
- Fix WORDSJSP-23 (Incorrect line direction when exporting to doc)
- Fix WORDSJSP-24 (Aspose.Words.JasperReports Doubts)
- Fix WORDSJSP-31 (NoSuchMethodError: net.sf.jasperreports.engine.JRPrintImage.getOnErrorTypeValue exception is throw when use AWJSP with JSP 3.7.0)
- Fix WORDSJSP-83 (Jasper Report to Doc/Docx issue)
- Fix WORDSJSP-84 (Paragraph settings issue with exported Docx file)
- Fix WORDSJSP-86 (Wrong page settings for exported document when AWExporterParameter.PAGE_BREAKS_NORMAL is used)
- Fix WORDSJSP-87 (Specify row height of a table in exported doc/docx; )
- Fix WORDSJSP-92 (Images are not displaying properly in output doc file)
- Fix WORDSJSP-93 (Text of Table's cell is not properly rendered in output Docx file)
- Fix WORDSJSP-94 (Exported Doc file has issue with table's cell on pressing enter)
- Some minor fixes
- Improve the code for better support of older versions of JasperReports

Two new options are implemented for better layout view. Now one can set following options:

- USE_EXACT_SPACINGS (default = false, in order not to touch logic for older reports). Use true for adding white spaces exactly how it is designed, without optimization.
- POSITIONED_STYLE (default = null). If not null then style with this particular name (from .jrxml) will be used for all empty cells in positioned tables

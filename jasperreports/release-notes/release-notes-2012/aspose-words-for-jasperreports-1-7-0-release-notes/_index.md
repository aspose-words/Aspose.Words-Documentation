---
title: Aspose.Words for JasperReports 1.7.0 Release Notes
second_title: Aspose.Words for JasperReports
articleTitle: Aspose.Words for JasperReports 1.7.0 Release Notes
linktitle: Aspose.Words for JasperReports 1.7.0 Release Notes
description: "Aspose.Words for JasperReports 1.7.0 Release Notes – the latest updates and fixes."
type: docs
weight: 10
url: /jasperreports/aspose-words-for-jasperreports-1-7-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [ Aspose.Words for JasperReports 1.7.0|https://downloads.aspose.com/words/jasperreports/new-releases/-aspose.words-for-jasperreports-1.7.0/]

{{% /alert %}}

Please welcome a new release of Aspose.Words for JasperReports. In this release, you will find a number of new features as well as bug fixes. See product's documentation for details.

Starting from Aspose.Words for JasperReports there are 2 versions of jar library (necessary for better support of older versions of JasperReports):

- for JasperReports 3.7.2 and higher (aspose.words.jasperreports.jar)
- for JasperReports 3.7.1 and lower (aspose.words.jasperreports-3.7.1.jar)

Please copy jar library according to the version of installed JasperReports.

- Fix WORDSJSP-13 (Line spacing is ignored)
- Fix WORDSJSP-28 (Errors with large scale reports)
- Fix WORDSJSP-26 (Extra pages at .doc format in Aspose.Words for JasperReports)
- Fix WORDSJSP-29 (Headings in DOCX)
- Fix WORDSJSP-70 (Export JasperReport as docx: java.lang.OutOfMemoryError: Java heap space)
- Fix WORDSJSP-71 (Wrong page numbers in exported DOCX document)
- Fix WORDSJSP-72 (Got error when trying to convert to RTF)
- Fix WORDSJSP-74 (why I get JRException)
- Fix WORDSJSP-76 (Wrong page settings for exported document)
- Fix WORDSJSP-77 (Wrong page breaking)
- Fix WORDSJSP-78 (Conversion from JRXML to DOC/DOCX, the hyperlink functionality is not working)
- Fix WORDSJSP-79 (Bullet list formatting issue (&lt;ul&gt;&lt;li&gt;test&lt;/li&gt;&lt;/ul&gt;))
- Fix WORDSJSP-91 (Footer appears twice in output docx)
- Fix WORDSJSP-96 (Wrong page settings for exported document when AWExporterParameter.PAGE_BREAKS_NORMAL is used)
- Fix WORDSJSP-97 (Docx margins wrong when using Margin value 72pt in jrxml)
- Some minor fixes
- Improve the code for better support of older versions of JasperReports

Two new options are implemented for better layout view. Now one can set following options:

- EXPORT_REPEATING_ELEMENTS (default = true, in order not to touch logic for older reports). Use 'false' when necessary.
- EXPORT_EMPTY_TEXTS (default = true, in order not to touch logic for older reports). Use 'false' when necessary.

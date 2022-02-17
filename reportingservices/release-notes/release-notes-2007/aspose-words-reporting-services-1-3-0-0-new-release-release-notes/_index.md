---
title: Aspose.Words Reporting Services 1.3.0.0 New Release Release Notes
articleTitle: Aspose.Words Reporting Services 1.3.0.0 New Release Release Notes
linktitle: Aspose.Words Reporting Services 1.3.0.0 New Release Release Notes
description: "Aspose.Words Reporting Services 1.3.0.0 New Release Release Notes – learn about the latest updates and fixes."
type: docs
weight: 160
url: /reportingservices/aspose-words-reporting-services-1-3-0-0-new-release-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words Reporting Services 1.3.0.0 New Release](https://downloads.aspose.com/words/reportingservices/new-releases/aspose.words-reporting-services-1.3.0.0-new-release/)

{{% /alert %}} 

This is a full-scale release that can be particularly useful for the people who needs exporting reports to the DOC, RTF or WordML formats on the 64-bit edition of Microsoft SQL Server Reporting Services. Also, we have added a separate assembly that supports Microsoft SQL Server 2008 code name Katmai.

- Added the support of Microsoft SQL Server 2008 "Katmai" Reporting Services. We have tested the product on the CTP 3.
- The MSI installer's behaviour was slightly changed. Now it installs the rendering extension to all detected instances of Microsoft SQL Server 2005 Reporting Services. Until now it only installed the product to the default instance that might confuse the users who had named instances and no default instance installed on their machine.
- Performance optimizations.
- Running the export in 64-bit environment occasionally caused issues such as the weird "Attempted to read or write protected memory" exception. Now the export works equally perfect on both x86 and x64 platforms.
- The MSI installer failed to detect Reporting Services instances on 64-bit operating systems.
- Some kind of matrices threw the "Index was out of range" exception.

---
title: Wie man Mail Merge PDF in Word konvertiert
second_title: Aspose.Words für Java
articleTitle: Wie man Mail Merge PDF in Word konvertiert
linktitle: Wie man Mail Merge PDF in Word konvertiert
type: docs
description: "Aspose.Words für Java bietet einige erweiterte Mail Merge -Funktionen, mit denen Sie die Konvertierung von PDF in Word zusammenführen können."
weight: 100
url: /de/java/how-to-mail-merge-pdf-to-word-conversion/
timestamp: 2024-01-27-14-07-04
---

Dieser Artikel zeigt ein einfaches Beispiel dafür, wie Mail Merge in einem Word-Dokument aus PDF konvertiert und dann PDF gespeichert wird. Bei Verwendung von Aspose.Words funktioniert das Ausführen eines einfachen Mail Merge -Prozesses für PDF in Wörter konvertierte Dateien in einigen Fällen nicht. Das Problem tritt auf, weil `Aspose.PDF` beim Konvertieren von PDF in DOCX (Word-Dokumente) kein tatsächliches MERGEFIELDs schreibt. Dies kann jedoch erreicht werden, indem diese statischen Texte in tatsächliche MERGEFIELDs konvertiert und dann die Operation Mail Merge ausgeführt werden. Bitte beachten Sie die folgende Problemumgehung.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}

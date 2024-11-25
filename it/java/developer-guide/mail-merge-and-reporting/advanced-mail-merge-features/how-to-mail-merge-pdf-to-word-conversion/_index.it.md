---
title: Come convertire Mail Merge PDF in Word
second_title: Aspose.Words per Java
articleTitle: Come convertire Mail Merge PDF in Word
linktitle: Come convertire Mail Merge PDF in Word
type: docs
description: "Aspose.Words per Java fornisce alcune funzionalità avanzate di Mail Merge che consentono di unire PDF alla conversione di Word."
weight: 100
url: /it/java/how-to-mail-merge-pdf-to-word-conversion/
timestamp: 2024-01-27-14-07-04
---

In questo articolo viene illustrato un semplice esempio di come mostrare Mail Merge su un documento di Word convertito da PDF e quindi salvare PDF. Usando Aspose.Words, l'esecuzione di un semplice processo Mail Merge su PDF in file convertito in parole non funziona in alcuni casi. Il problema si verifica perché `Aspose.PDF` non scrive MERGEFIELDs effettivo durante la conversione da PDF a DOCX (documenti Word). Ma può essere ottenuto convertendo quei testi statici in MERGEFIELDs effettivo e quindi eseguendo l'operazione Mail Merge. Si prega di consultare la seguente soluzione alternativa.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}

---
title: Cum se Mail Merge PDF la conversia cuvintelor
second_title: Aspose.Words pentru Java
articleTitle: Cum se Mail Merge PDF la conversia cuvintelor
linktitle: Cum se Mail Merge PDF la conversia cuvintelor
type: docs
description: "Aspose.Words pentru Java oferă câteva funcții avansate mail merge care vă permit să îmbinați PDF cu conversia Word."
weight: 100
url: /ro/java/how-to-mail-merge-pdf-to-word-conversion/
---

Acest articol demonstrează un exemplu simplu de a arăta cum să mail merge pe un document word convertit din PDF și apoi să salvați PDF. Folosind Aspose.Words, executarea unui proces simplu mail merge pe PDF la cuvinte fișier Convertit nu funcționează pentru unele cazuri. Problema apare deoarece `Aspose.PDF` nu scrie MERGEFIELDs real în timpul conversiei PDF în DOCX (documente Word). Dar poate fi realizat prin conversia acestor texte statice în MERGEFIELDs Real și apoi executarea operației mail merge. Vă rugăm să consultați următoarea soluție.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}

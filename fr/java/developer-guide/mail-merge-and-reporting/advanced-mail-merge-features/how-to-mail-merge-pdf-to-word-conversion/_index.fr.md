---
title: Comment convertir Mail Merge PDF en mots
second_title: Aspose.Words pour Java
articleTitle: Comment convertir Mail Merge PDF en mots
linktitle: Comment convertir Mail Merge PDF en mots
type: docs
description: "Aspose.Words pour Java fournit des fonctionnalités avancées Mail Merge qui vous permettent de fusionner PDF en conversion de mots."
weight: 100
url: /fr/java/how-to-mail-merge-pdf-to-word-conversion/
timestamp: 2024-01-27-14-07-04
---

Cet article montre un exemple simple montrant comment Mail Merge sur un document Word converti à partir de PDF, puis enregistrer PDF. En utilisant Aspose.Words, l'exécution d'un simple processus Mail Merge sur PDF vers un fichier converti en mots ne fonctionne pas dans certains cas. Le problème se produit car `Aspose.PDF` n'écrit pas MERGEFIELDs réel lors de la conversion de PDF en DOCX (documents Word). Mais cela peut être réalisé en convertissant ces textes statiques en MERGEFIELDs réel, puis en exécutant l'opération Mail Merge. Veuillez consulter la solution de contournement suivante.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}

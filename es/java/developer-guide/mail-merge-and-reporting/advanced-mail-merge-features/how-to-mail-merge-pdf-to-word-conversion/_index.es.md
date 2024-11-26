---
title: Cómo convertir Mail Merge PDF a Word
second_title: Aspose.Words por Java
articleTitle: Cómo convertir Mail Merge PDF a Word
linktitle: Cómo convertir Mail Merge PDF a Word
type: docs
description: "Aspose.Words para Java proporciona algunas funciones avanzadas de Mail Merge que le permiten combinar PDF con la conversión de Word."
weight: 100
url: /es/java/how-to-mail-merge-pdf-to-word-conversion/
timestamp: 2024-01-27-14-07-04
---

Este artículo demuestra un ejemplo simple de cómo Mail Merge en un documento de Word convertido de PDF y luego guardar PDF. Usando Aspose.Words, ejecutar un proceso simple de Mail Merge en un archivo convertido de PDF a Word no funciona en algunos casos. El problema se produce porque `Aspose.PDF` no escribe MERGEFIELDs real durante la conversión de PDF a DOCX (documentos de Word). Pero se puede lograr convirtiendo esos textos estáticos en MERGEFIELDs reales y luego ejecutando la operación Mail Merge. Consulte la siguiente solución alternativa.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}

---
title: Cum să găsiți proprietățile câmpului
second_title: Aspose.Words pentru Java
articleTitle: Găsiți Proprietățile Câmpului
linktitle: Găsiți Proprietățile Câmpului
description: "Cum să găsiți unele proprietăți de câmp, cum ar fi codul de câmp și rezultatul câmpului în Java"
type: docs
weight: 25
url: /ro/java/find-field-properties/
---

Un câmp care este inserat folosind [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) returnează un obiect [Field](https://reference.aspose.com/words/java/com.aspose.words/field/). Aceasta este o clasă de fațadă care oferă metode utile pentru a găsi rapid astfel de proprietăți ale unui câmp.

Următorul exemplu de cod arată cum să găsiți codul câmpului și rezultatul câmpului:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Notă Dacă căutați doar numele câmpurilor de îmbinare din document, puteți utiliza în schimb metoda încorporată [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames).

Următorul exemplu de cod arată cum să obțineți numele tuturor câmpurilor de îmbinare dintr-un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

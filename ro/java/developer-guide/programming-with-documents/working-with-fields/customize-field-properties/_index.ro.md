---
title: Personalizați Proprietățile Câmpului
second_title: Aspose.Words pentru Java
articleTitle: Personalizați Proprietățile Câmpului
linktitle: Personalizați Proprietățile Câmpului
description: "Aflați cum să personalizați proprietățile câmpului în Java. Redenumiți câmpurile de îmbinare sau obțineți rezultate pentru câmpurile fără nod separator în Java."
type: docs
weight: 27
url: /ro/java/customize-field-properties/
---

Aspose.Words oferă posibilitatea de a interacționa programatic cu diferite proprietăți de câmp. În acest articol, vom analiza câteva exemple, astfel încât să înțelegeți principiul de bază al lucrului cu proprietățile câmpului. Puteți vedea lista completă de proprietăți pentru fiecare tip de câmp din clasa corespunzătoare.

## Actualizare Proprietate Câmp

Uneori, utilizatorii trebuie să schimbe valoarea unei proprietăți de câmp. De exemplu, actualizați proprietatea [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) a câmpului `AUTHOR` sau modificați proprietatea [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) a câmpului `MERGEFIELD`.

Următorul exemplu de cod arată cum să redenumiți câmpurile de îmbinare într-un document Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Rezultatul Afișării Câmpului

Aspose.Words oferă o proprietate pentru a obține rezultatul câmpului pentru câmpurile care nu au un nod separator de câmp. Numim acest "rezultat fals" sau rezultatul afișării; MS Word îl afișează în document calculând valoarea câmpului din mers, dar nu există o astfel de valoare în modelul documentului.

Următorul exemplu de cod arată utilizarea proprietății [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}

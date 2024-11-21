---
title: Curățați un Document în Java
second_title: Aspose.Words pentru Java
articleTitle: Curățați un Document
linktitle: Curățați un Document
description: "Eliminați informațiile neutilizate sau duplicate pentru a reduce dimensiunea de ieșire și timpul de procesare. Eliminați stilurile neutilizate, stilurile încorporate neutilizate, stilurile duplicate sau listele neutilizate folosind Java."
type: docs
weight: 30
url: /ro/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Uneori poate fi necesar să eliminați informațiile neutilizate sau duplicate pentru a reduce dimensiunea documentului de ieșire și timpul de procesare.

Deși puteți găsi și elimina datele neutilizate, cum ar fi stilurile sau listele, sau puteți duplica manual informațiile, va fi mult mai convenabil să faceți acest lucru folosind caracteristicile și capacitățile furnizate de Aspose.Words.

Clasa [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) vă permite să specificați opțiuni pentru curățarea documentelor. Pentru a elimina stilurile duplicate sau doar stilurile sau listele neutilizate din document, puteți utiliza metoda [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup).

## Eliminarea informațiilor neutilizate dintr-un Document

Puteți utiliza proprietățile [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) și [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) pentru a detecta și elimina stilurile marcate ca "neutilizate".

Puteți utiliza proprietatea [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) pentru a detecta și elimina listele și definițiile listelor care sunt marcate ca"neutilizate".

Următorul exemplu de cod arată cum să eliminați numai stilurile neutilizate dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Eliminați informațiile Duplicate dintr - un Document

De asemenea, puteți utiliza proprietatea [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) pentru a înlocui toate stilurile duplicate cu cea originală și pentru a elimina duplicatele dintr-un document.

Următorul exemplu de cod arată cum să eliminați stilurile duplicate dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}

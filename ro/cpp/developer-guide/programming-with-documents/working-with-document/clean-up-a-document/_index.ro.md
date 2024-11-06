---
title: Curățați un Document în C++
second_title: Aspose.Words pentru C++
articleTitle: Curățați un Document
linktitle: Curățați un Document
description: "Eliminați informațiile neutilizate sau duplicate pentru a reduce dimensiunea de ieșire și timpul de procesare folosind C++. Eliminați stilurile neutilizate, stilurile încorporate neutilizate, stilurile duplicate sau listele neutilizate."
type: docs
weight: 30
url: /ro/cpp/clean-up-a-document/
---

Uneori poate fi necesar să eliminați informațiile neutilizate sau duplicate pentru a reduce dimensiunea documentului de ieșire și timpul de procesare.

Deși puteți găsi și elimina datele neutilizate, cum ar fi stilurile sau listele, sau puteți duplica manual informațiile, va fi mult mai convenabil să faceți acest lucru folosind caracteristicile și capacitățile furnizate de Aspose.Words.

Clasa [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) vă permite să specificați opțiuni pentru curățarea documentelor. Pentru a elimina stilurile duplicate sau doar stilurile sau listele neutilizate din document, puteți utiliza metoda [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Eliminarea informațiilor neutilizate dintr-un Document

Puteți utiliza proprietățile [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) și [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) pentru a detecta și elimina stilurile marcate ca "neutilizate".

Puteți utiliza proprietatea [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) pentru a detecta și elimina listele și definițiile listelor care sunt marcate ca"neutilizate".

Următorul exemplu de cod arată cum să eliminați numai stilurile neutilizate dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Eliminați informațiile Duplicate dintr - un Document

De asemenea, puteți utiliza proprietatea [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) pentru a înlocui toate stilurile duplicate cu cea originală și pentru a elimina duplicatele dintr-un document.

Următorul exemplu de cod arată cum să eliminați stilurile duplicate dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}

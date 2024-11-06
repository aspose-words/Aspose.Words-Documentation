---
title: Curățați un Document în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Curățați un Document
linktitle: Curățați un Document
description: "Eliminați informațiile neutilizate sau duplicate pentru a reduce dimensiunea de ieșire și timpul de procesare folosind Python. Eliminați stilurile neutilizate, stilurile încorporate neutilizate, stilurile duplicate sau listele neutilizate."
type: docs
weight: 30
url: /ro/python-net/clean-up-a-document/
---

Uneori poate fi necesar să eliminați informațiile neutilizate sau duplicate pentru a reduce dimensiunea documentului de ieșire și timpul de procesare.

Deși puteți găsi și elimina datele neutilizate, cum ar fi stilurile sau listele, sau puteți duplica manual informațiile, va fi mult mai convenabil să faceți acest lucru folosind caracteristicile și capacitățile furnizate de Aspose.Words.

Clasa [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) vă permite să specificați opțiuni pentru curățarea documentelor. Pentru a elimina stilurile duplicate sau doar stilurile sau listele neutilizate din document, puteți utiliza metoda [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Eliminarea informațiilor neutilizate dintr-un Document

Puteți utiliza proprietățile [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) și [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) pentru a detecta și elimina stilurile marcate ca "neutilizate".

Puteți utiliza proprietatea [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) pentru a detecta și elimina listele și definițiile listelor care sunt marcate ca"neutilizate".

Următorul exemplu de cod arată cum să eliminați numai stilurile neutilizate dintr-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Eliminați informațiile Duplicate dintr - un Document

De asemenea, puteți utiliza proprietatea [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) pentru a înlocui toate stilurile duplicate cu cea originală și pentru a elimina duplicatele dintr-un document.

Următorul exemplu de cod arată cum să eliminați stilurile duplicate dintr-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
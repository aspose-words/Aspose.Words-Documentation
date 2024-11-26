---
title: Curățați un document în C#
second_title: Aspose.Words pentru .NET
articleTitle: Curăţaţi un document
linktitle: Curăţaţi un document
description: "Elimină informațiile nefolosite sau duplicate pentru a reduce dimensiunea ieșirii și timpul de procesare folosind C#. Elimină stilurile neutilizate, stilurile încorporate neutilizate, stilurile duplicate sau listele neutilizate."
type: docs
weight: 30
url: /ro/net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Uneori s-ar putea să aveți nevoie de a elimina informații nefolosite sau duplicate pentru a reduce dimensiunea documentului rezultat și timpul de procesare.

În timp ce poți găsi și șterge date nefolosite, cum ar fi stilurile sau listele, sau informații duplicate manual, va fi mult mai convenabil să faci acest lucru folosind caracteristicile și capacitățile furnizate de Aspose.Words.

Clasa "The [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/)" îți permite să specifici opțiuni pentru curățarea documentelor. Pentru a elimina stiluri duplicate sau doar stiluri neutilizate sau liste din document, puteți folosi [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) metoda.

## Elimină informațiile neutilizate dintr-un document

"Puteți folosi proprietățile [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) și [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) pentru a detecta și șterge stilurile marcate ca "nedeschibrate"".

Poţi folosi proprietatea [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) pentru a detecta şi elimina listele şi definiţiile de liste care sunt marcate ca "nedeschimbate".

Exemplul de cod următor arată cum se elimină doar stilurile nefolosite dintr-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Elimină informațiile duplicate dintr-un document

Puteți folosi și proprietatea [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) pentru a înlocui toate stilurile duplicate cu stilul original și pentru a elimina duplicatele dintr-un document.

Exemplul următor de cod arată cum să eliminați stilurile duplicate dintr-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}

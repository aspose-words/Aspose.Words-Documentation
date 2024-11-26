---
title: Personalizați proprietățile câmpului în C#
second_title: Aspose.Words pentru .NET
articleTitle: Personalizează proprietățile câmpului
linktitle: Personalizează proprietățile câmpului
description: "Învață cum să personalizezi proprietățile câmpurilor în C#. Renumează câmpuri de fuziune sau obţine rezultate pentru câmpuri fără nod separator în .NET."
type: docs
weight: 27
url: /ro/net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words oferă capacitatea de a interacționa programatic cu diverse proprietăți ale câmpului. În acest articol vom privi un cuplu de exemple astfel încât să înțelegeți principiul de bază al lucrului cu proprietățile câmpului. Poți vedea lista completă de proprietăți pentru fiecare tip de câmp în clasa corespunzătoare din [Fields namespace](https://reference.aspose.com/words/net/aspose.words.fields/).

## Actualizare Proprietăți Câmp

Uneori utilizatorii au nevoie să schimbe valoarea unei proprietăți de câmp. De exemplu actualizați proprietatea [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) a câmpului `AUTHOR` sau modificați proprietatea [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) a câmpului `MERGEFIELD`.

Exemplul următor de cod arată cum să redenumiți câmpurile de fuziune într-un document Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Rezultat afișare câmp

Aspose.Words" oferă o proprietate pentru a obține rezultatul câmpului pentru câmpuri care nu au un nod separator de câmpuri. Noi numim asta "rezultat fals" sau rezultat de afișare"; MS Word îl afișează în document prin calcularea valorii câmpului pe loc, dar nu există o astfel de valoare în modelul documentului.

Exemplul următor de cod prezintă utilizare [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) proprietate:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}

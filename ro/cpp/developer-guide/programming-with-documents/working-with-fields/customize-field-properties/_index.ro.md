---
title: Personalizați proprietățile câmpului în C++
second_title: Aspose.Words pentru C++
articleTitle: Personalizați Proprietățile Câmpului
linktitle: Personalizați Proprietățile Câmpului
description: "Aflați cum să personalizați proprietățile câmpului în C++. Redenumiți câmpurile de îmbinare sau obțineți rezultate pentru câmpurile fără nod separator în C++."
type: docs
weight: 27
url: /ro/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words oferă posibilitatea de a interacționa programatic cu diferite proprietăți de câmp. În acest articol, vom analiza câteva exemple, astfel încât să înțelegeți principiul de bază al lucrului cu proprietățile câmpului. Puteți vedea lista completă de proprietăți pentru fiecare tip de câmp din clasa corespunzătoare în [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Actualizare Proprietate Câmp

Uneori, utilizatorii trebuie să schimbe valoarea unei proprietăți de câmp. De exemplu, actualizați proprietatea [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) a câmpului `AUTHOR` sau modificați proprietatea [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) a câmpului `MERGEFIELD`.

Următorul exemplu de cod arată cum să redenumiți câmpurile de îmbinare într-un document Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Rezultatul Afișării Câmpului

Aspose.Words oferă o proprietate pentru a obține rezultatul câmpului pentru câmpurile care nu au un nod separator de câmp. Numim acest "rezultat fals" sau rezultatul afișării; Microsoft Word îl afișează în document calculând valoarea câmpului din mers, dar nu există o astfel de valoare în modelul documentului.

Următorul exemplu de cod arată utilizarea proprietății [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}

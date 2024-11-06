---
title: Lucrul cu TextBoxes în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu TextBoxes
linktitle: Lucrul cu TextBoxes
description: "Lucrul cu textboxes într-un document folosind Python."
type: docs
weight: 250
url: /ro/python-net/working-with-textboxes/
---

În Aspose.Words, clasa [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) este utilizată pentru a specifica modul în care un text este afișat în interiorul unei forme. Acesta oferă o proprietate publică numită [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) pentru a obține forma părinte pentru caseta de text pentru a permite clientului să găsească linked [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) din linked [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/).

## Crearea unui Link

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) clasa oferă metoda [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) pentru a verifica dacă [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) poate fi legată de caseta de text țintă.

Următorul exemplu de cod arată cum să verificați dacă `TextBox` poate fi legat de caseta de text țintă:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Verificați Secvența TextBox

Există mai multe moduri de a afișa text într-o formă. [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) poate fi capul, mijlocul sau coada unei secvențe.

Următorul exemplu de cod arată cum să verificați dacă **TextBox** este un cap, o coadă sau un mijloc al secvenței:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Ruperea unei legături

Folosind metoda [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) puteți rupe legătura cu următorul **TextBox**.

Următorul exemplu de cod arată cum să rupi o legătură pentru un **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}

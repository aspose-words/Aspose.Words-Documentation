---
title: Lucrul Cu Caractere De Control
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul Cu Caractere De Control
linktitle: Lucrul Cu Caractere De Control
description: "Introducere în lucrul cu caractere de control în Aspose.Words pentru Python."
type: docs
weight: 400
url: /ro/python-net/working-with-control-characters/
---

Microsoft Word documentele pot conține diverse caractere care au o semnificație specială. În mod normal, acestea sunt utilizate în scopuri de formatare și nu sunt desenate în modul normal. Le puteți face vizibile dacă faceți clic pe butonul Afișare / Ascundere marcaje de formatare situat pe bara de instrumente Standard.

Uneori poate fi necesar să adăugați sau să eliminați caractere în / din text. De exemplu, atunci când obțineți text programatic din document, Aspose.Words păstrează majoritatea caracterelor de control, deci dacă trebuie să lucrați cu acest text, probabil că ar trebui să eliminați sau să înlocuiți caracterele.

Clasa [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) este un depozit pentru constantele care reprezintă caractere de control întâlnite adesea în documente. Acesta oferă atât versiuni char și șir de aceleași constante. De exemplu, șirul [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) și char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) are aceeași valoare.

Următorul exemplu de cod demonstrează modul de utilizare a caracterelor de control:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}

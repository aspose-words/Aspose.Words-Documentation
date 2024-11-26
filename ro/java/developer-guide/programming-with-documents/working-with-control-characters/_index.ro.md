---
title: Lucrul Cu Caractere De Control
second_title: Aspose.Words pentru Java
articleTitle: Lucrul Cu Caractere De Control
linktitle: Lucrul Cu Caractere De Control
description: "Introducere în lucrul cu caractere de control în Aspose.Words pentru Java."
type: docs
weight: 400
url: /ro/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word documentele pot conține diverse caractere care au o semnificație specială. În mod normal, acestea sunt utilizate în scopuri de formatare și nu sunt desenate în modul normal. Le puteți face vizibile dacă faceți clic pe butonul Afișare / Ascundere marcaje de formatare situat pe bara de instrumente Standard.

Uneori poate fi necesar să adăugați sau să eliminați caractere în / din text. De exemplu, atunci când obțineți text programatic din document, Aspose.Words păstrează majoritatea caracterelor de control, deci dacă trebuie să lucrați cu acest text, probabil că ar trebui să eliminați sau să înlocuiți caracterele.

Clasa [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) este un depozit pentru constantele care reprezintă caractere de control întâlnite adesea în documente. Acesta oferă atât versiuni char și șir de aceleași constante. De exemplu, șirul [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) și char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) are aceeași valoare.

{{% alert color="primary" %}}

Utilizați această clasă ori de câte ori doriți să vă ocupați de caractere de control.

{{% /alert %}}

Următorul exemplu de cod arată modul de utilizare a caracterelor de control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}

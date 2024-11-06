---
title: Cum se adaugă Group Shape într-un Document Word
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu Group Shapes în documente Word
linktitle: Lucrul cu Group Shapes în documente Word
description: "Gruparea și degruparea formelor folosind C++."
type: docs
weight: 290
url: /ro/cpp/how-to-add-group-shape-into-a-word-document/
---

Uneori trebuie să adăugați un group shape într-un document Word. Un astfel de group shape este format din mai multe forme.

În Microsoft Word, puteți adăuga rapid un group shape Folosind comanda/butonul de grup. O formă individuală dintr-un grup poate fi mutată separat.

În Aspose.Words este foarte ușor să adăugați un group shape folosind clasa [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). Forma este creată separat folosind clasa [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) și apoi adăugată la obiectul **GroupShape** folosind metoda [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

Următorul exemplu de cod arată cum să adăugați un group shape într-un document Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Mai jos sunt câteva dintre tipurile `Shape` acceptate în Aspose.Words. Pentru lista completă, vă rugăm să vizitați [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Dreptunghi
- RoundRectangle
- RoundRectangle
- Elipsă
- Diamant
- Triunghi
- RightTriangle
- Paralelogram
- Trapezoid
- Hexagon
- Octagon

{{% /alert %}}
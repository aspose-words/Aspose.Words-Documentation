---
title: Cum se adaugă Group Shape în fișierul Word
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu Group Shape în documente Word
linktitle: Lucrul cu Group Shape în documente Word
description: "Adăugați group shape într-un document folosind Python."
type: docs
weight: 290
url: /ro/python-net/how-to-add-group-shape-into-a-word-document/
---

Uneori trebuie să adăugați un group shape într-un document Word. Un astfel de group shape este format din mai multe forme.

În Microsoft Word, puteți adăuga rapid un group shape Folosind comanda/butonul de grup. O formă individuală dintr-un grup poate fi mutată separat.

În Aspose.Words este foarte ușor să adăugați un group shape folosind [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) clasă. Forma este creată separat folosind clasa [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) și apoi adăugată în obiectul [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) folosind metoda [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

Următorul exemplu de cod arată cum să adăugați un group shape într-un document Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Mai jos sunt câteva dintre tipurile `Shape` acceptate în Aspose.Words. Pentru lista completă, vă rugăm să consultați [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) enumerare

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}

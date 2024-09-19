---
title: Cum se adaugă Group formă în documentul Word
second_title: Aspose.Words pentru .NET
articleTitle: Cum să adăugați Group formă într-un document Word
linktitle: Lucrul cu Group Forme în documentele Word
description: "`Gruparea și desgruparea formele folosind C#.`"
type: docs
weight: 290
url: /ro/net/how-to-add-group-shape-into-a-word-document/
---

Uneori trebuie să adaugi un group shape într-un document Word. O asemenea group shape este formată din mai multe forme.

În Microsoft Word puteți adăuga rapid un group shape folosind comanda/butonul Group. Un model individual dintr-un grup poate fi mutat separat.

În Aspose.Words, este foarte ușor să adaugi o group shape folosind clasa [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). **Shape** este creată separat folosind clasa [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) și apoi adăugată la obiectul [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) folosind metoda [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/).

Exemplul de cod următor arată cum să adăugați un group shape într-un document Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Iată câteva dintre tipurile de `Shape` suportate în Aspose.Words":

- Retanglu
- RotundRectanglular
- RoundRectangle
- Ellipse
"- Diamant"
- Triunghi
- Dreptunghiul drept
- Paralelegramă
- Trapezoid
- Hexagon
- Octogon

Pentru lista completă, vă rugăm să verificați clasa [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype).

{{% /alert %}}
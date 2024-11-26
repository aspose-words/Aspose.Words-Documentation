---
title: So fügen Sie eine Group-Form in eine Word-Datei ein
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Group Shape in Word-Dokumenten
linktitle: Arbeiten mit Group Shape in Word-Dokumenten
description: "Fügen Sie group shape mithilfe von Python zu einem Dokument hinzu."
type: docs
weight: 290
url: /de/python-net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Sie ein group shape in ein Word-Dokument einfügen. Ein solches group shape besteht aus mehreren Formen.

In Microsoft Word können Sie mit dem Group-Befehl/der Group-Schaltfläche schnell einen group shape hinzufügen. Eine einzelne Form in einer Gruppe kann separat verschoben werden.

In Aspose.Words ist es sehr einfach, einen group shape mithilfe der [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)-Klasse hinzuzufügen. Die Form wird separat mithilfe der [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Klasse erstellt und dann mithilfe der [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/)-Methode zum [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)-Objekt hinzugefügt.

Das folgende Codebeispiel zeigt, wie man ein group shape in ein Word-Dokument einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Nachfolgend sind einige der in Aspose.Words unterstützten `Shape`-Typen aufgeführt. Eine vollständige Liste finden Sie unter [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)-Enumeration

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

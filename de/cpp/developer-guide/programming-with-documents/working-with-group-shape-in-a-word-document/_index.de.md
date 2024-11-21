---
title: So fügen Sie Group Shape in ein Word-Dokument ein
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Group Shapes in Word-Dokumenten
linktitle: Arbeiten mit Group Shapes in Word-Dokumenten
description: "Gruppieren und Aufheben der Gruppierung von Formen mit C++."
type: docs
weight: 290
url: /de/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Sie einem Word-Dokument eine group shape hinzufügen. Eine solche group shape besteht aus mehreren Formen.

In Microsoft Word können Sie mit dem Gruppenbefehl / der Schaltfläche schnell eine group shape hinzufügen. Eine einzelne Form in einer Gruppe kann separat verschoben werden.

In Aspose.Words ist es sehr einfach, eine group shape mit der [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) -Klasse hinzuzufügen. Die Form wird separat mit der Klasse [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) erstellt und dann mit der Methode [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) zum Objekt **GroupShape** hinzugefügt.

Das folgende Codebeispiel zeigt, wie Sie einem Word-Dokument eine group shape hinzufügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Nachfolgend sind einige der `Shape`-Typen aufgeführt, die in Aspose.Words unterstützt werden. Für eine vollständige Liste besuchen Sie bitte [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Rechteck
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamond
- Dreieck
- RightTriangle
- Parallelogramm
- Trapezförmig
- Sechseck
- Octagon

{{% /alert %}}

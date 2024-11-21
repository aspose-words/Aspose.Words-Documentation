---
title: So fügen Sie eine Group-Form in ein Word-Dokument ein
second_title: Aspose.Words für .NET
articleTitle: So fügen Sie eine Group-Form in ein Word-Dokument ein
linktitle: Arbeiten mit Group-Formen in Word-Dokumenten
description: "Formen mit C# Groupen und Gruppierung aufheben."
type: docs
weight: 290
url: /de/net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Sie ein group shape in ein Word-Dokument einfügen. Ein solches group shape besteht aus mehreren Formen.

In Microsoft Word können Sie mit dem Group-Befehl/der Group-Schaltfläche schnell einen group shape hinzufügen. Eine einzelne Form in einer Gruppe kann separat verschoben werden.

In Aspose.Words ist es sehr einfach, mithilfe der [GroupShape](https://reference.aspose.com/words/de/net/aspose.words.drawing/groupshape/)-Klasse einen group shape hinzuzufügen. **Shape** wird separat mit der [Shape](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/)-Klasse erstellt und dann mit der [AppendChild](https://reference.aspose.com/words/de/net/aspose.words/compositenode/appendchild/)-Methode zum [GroupShape](https://reference.aspose.com/words/de/net/aspose.words.drawing/groupshape/)-Objekt hinzugefügt.

Das folgende Codebeispiel zeigt, wie man ein group shape in ein Word-Dokument einfügt:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Nachfolgend sind einige der in Aspose.Words unterstützten `Shape`-Typen aufgeführt:

- Rechteck
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamant
- Dreieck
- Rechtwinkliges Dreieck
- Parallelogramm
- Trapez
- Sechseck
- Achteck

Eine vollständige Liste finden Sie in der [ShapeType](https://reference.aspose.com/words/de/net/aspose.words.drawing/shapetype)-Klasse.

{{% /alert %}}

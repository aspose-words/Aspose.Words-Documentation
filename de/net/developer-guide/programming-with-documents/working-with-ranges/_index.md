---
title: Arbeiten mit Bereichen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Bereichen
linktitle: Arbeiten mit Bereichen
description: "Einführung in die Range-Funktion in Aspose.Words für .NET."
type: docs
weight: 130
url: /de/net/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words ist ein Bereich ein "flaches Fenster" in ein ansonsten baumartiges Modell des Dokuments.

{{% /alert %}}

Wenn Sie mit Microsoft Word Automation gearbeitet haben, wissen Sie wahrscheinlich, dass eines der wichtigsten Tools zum Untersuchen und Ändern von Dokumentinhalten das **Range**-Objekt ist. **Range** ist wie ein "Fenster" zum Dokumentinhalt und zur Formatierung.

Aspose.Words verfügt auch über die [Range](https://reference.aspose.com/words/net/aspose.words/range/)-Klasse und ist so konzipiert, dass sie ähnlich aussieht und sich ähnlich verhält wie **Range** in Microsoft Word. Obwohl **Range** keinen beliebigen Teil eines Dokuments abdecken kann und kein **Start** und **End** hat, können Sie auf den Bereich zugreifen, der von jedem Dokumentknoten einschließlich der [Document](https://reference.aspose.com/words/net/aspose.words/document/) selbst abgedeckt wird. Mit anderen Worten: Jeder Knoten hat seinen eigenen Bereich. Mit dem **Range**-Objekt können Sie auf Text, Lesezeichen und Formularfelder innerhalb des Bereichs zugreifen und diese ändern.

## Nur-Text abrufen

Verwenden Sie die [Text](https://reference.aspose.com/words/net/aspose.words/range/text/)-Eigenschaft, um einfachen, unformatierten Text des Bereichs abzurufen.

Das folgende Codebeispiel zeigt, wie man einen einfachen, unformatierten Text eines Bereichs erhält:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}

## Text löschen

Range ermöglicht das Löschen aller Zeichen des Bereichs durch Aufruf von [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Das folgende Codebeispiel zeigt, wie alle Zeichen eines Bereichs gelöscht werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}
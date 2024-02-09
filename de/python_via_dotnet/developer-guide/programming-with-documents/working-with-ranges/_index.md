---
title: Arbeiten mit Bereichen in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Bereichen
linktitle: Arbeiten mit Bereichen
description: "Arbeiten Sie mit Bereichen in einem Dokument mithilfe von Python."
type: docs
weight: 130
url: /de/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words ist ein [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) ein "flaches Fenster" in ein ansonsten baumartiges Modell des Dokuments.

{{% /alert %}}

Wenn Sie mit Microsoft Word Automation gearbeitet haben, wissen Sie wahrscheinlich, dass eines der wichtigsten Tools zum Untersuchen und Ändern von Dokumentinhalten das [Range](https://reference.aspose.com/words/python-net/aspose.words/range/)-Objekt ist. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) ist wie ein "Fenster" zum Dokumentinhalt und zur Formatierung. Aspose.Words verfügt auch über die [Range](https://reference.aspose.com/words/python-net/aspose.words/range/)-Klasse und ist so konzipiert, dass sie ähnlich aussieht und sich ähnlich verhält wie **Range** in Microsoft Word. Obwohl **Range** keinen beliebigen Teil eines Dokuments abdecken kann und kein **Start** und **End** hat, können Sie auf den Bereich zugreifen, der von jedem Dokumentknoten einschließlich der [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) selbst abgedeckt wird. Mit anderen Worten: Jeder Knoten hat seinen eigenen Bereich. Mit dem [Range](https://reference.aspose.com/words/python-net/aspose.words/range/)-Objekt können Sie auf Text, Lesezeichen und Formularfelder innerhalb des Bereichs zugreifen und diese ändern.

## Nur-Text abrufen

Verwenden Sie die [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/)-Eigenschaft, um einfachen, unformatierten Text des Bereichs abzurufen.

Das folgende Codebeispiel zeigt, wie man einen einfachen, unformatierten Text eines Bereichs erhält:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}

## Text löschen

Range ermöglicht das Löschen aller Zeichen des Bereichs durch Aufruf von [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

Das folgende Codebeispiel zeigt, wie alle Zeichen eines Bereichs gelöscht werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}
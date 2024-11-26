---
title: Arbeiten mit Bereichen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Bereichen
linktitle: Arbeiten mit Bereichen
description: "Einführung in die Bereichsfunktion in Aspose.Words für C++."
type: docs
weight: 130
url: /de/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In Aspose.Words ist ein Bereich ein "flaches Fenster" in ein ansonsten baumartiges Modell des Dokuments.

{{% /alert %}}

Wenn Sie mit Microsoft Word -Automatisierung gearbeitet haben, wissen Sie wahrscheinlich, dass eines der wichtigsten Werkzeuge zum Untersuchen und Ändern von Dokumentinhalten das **Range** -Objekt ist. **Range** ist wie ein "Fenster" in den Dokumentinhalt und die Formatierung.

Aspose.Words hat auch die Klasse [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) und ist so konzipiert, dass es ähnlich aussieht und sich verhält wie **Range** in Microsoft Word. Obwohl **Range** keinen beliebigen Teil eines Dokuments abdecken kann und keine **Start** und **End** hat, können Sie auf den Bereich zugreifen, der von jedem Dokumentknoten einschließlich der [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) selbst abgedeckt wird. Mit anderen Worten, jeder Knoten hat seinen eigenen Bereich. Mit dem **Range**-Objekt können Sie auf Text, Lesezeichen und Formularfelder innerhalb des Bereichs zugreifen und diese ändern.

## Klartext abrufen

Verwenden Sie die Eigenschaft [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/), um einfachen, unformatierten Text des Bereichs abzurufen.

Das folgende Codebeispiel zeigt, wie Sie einen einfachen, unformatierten Text eines Bereichs erhalten:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Text löschen

Range erlaubt das Löschen aller Zeichen des Bereichs durch Aufruf von [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

Das folgende Codebeispiel zeigt, wie alle Zeichen eines Bereichs gelöscht werden:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

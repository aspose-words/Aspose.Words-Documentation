---
title: Arbeiten mit Listen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Listen
linktitle: Arbeiten mit Listen
description: "Einführung in die Nummerierungsformatierungsfunktion in Aspose.Words für .NET."
type: docs
weight: 200
url: /de/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Eine Liste in einem Microsoft Word-Dokument ist eine Reihe von Absatzformatierungseigenschaften. Listen können in Dokumenten verwendet werden, um Text zu strukturieren, anzuordnen und hervorzuheben. Listen sind eine großartige Möglichkeit, Daten in Dokumenten so zu organisieren, dass es den Lesern erleichtert, wichtige Punkte zu erfassen und zu verstehen.

Jede Liste kann bis zu 9 Ebenen haben und Formatierungseigenschaften wie Zahlenstil, Startwert, Einzug, Tabulatorposition und andere werden für jede Ebene separat definiert.

In Aspose.Words wird die Arbeit mit Listen durch den [Lists](https://reference.aspose.com/words/de/net/aspose.words.lists/)-Namespace repräsentiert. Das [List](https://reference.aspose.com/words/de/net/aspose.words.lists/list/)-Objekt gehört jedoch immer zum [ListCollection](https://reference.aspose.com/words/de/net/aspose.words.lists/listcollection/).

In diesem Artikel wird das programmgesteuerte Arbeiten mit Listen mithilfe von Aspose.Words beschrieben.

## Erstellen Sie Listen, indem Sie Listenformatierung anwenden

Aspose.Words ermöglicht die einfache Erstellung von Listen durch Anwenden der Listenformatierung. [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) stellt die [ListFormat](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/listformat/)-Eigenschaft bereit, die ein **ListFormat**-Objekt zurückgibt. Dieses Objekt verfügt über mehrere Methoden, um eine Liste zu beginnen und zu beenden und den Einzug zu vergrößern/verkleinern. Es gibt zwei allgemeine Arten von Listen in Microsoft Word: Listen mit Aufzählungszeichen und nummerierte Listen:

- Um eine Liste mit Aufzählungszeichen zu starten, rufen Sie [ApplyBulletDefault](https://reference.aspose.com/words/de/net/aspose.words.lists/listformat/applybulletdefault/) auf
- Um eine nummerierte Liste zu starten, rufen Sie [ApplyNumberDefault](https://reference.aspose.com/words/de/net/aspose.words.lists/listformat/applynumberdefault/) auf

Das Aufzählungszeichen bzw. die Nummer und die Formatierung werden dem aktuellen Absatz und allen weiteren mit **DocumentBuilder** erstellten Absätzen hinzugefügt, bis [RemoveNumbers](https://reference.aspose.com/words/de/net/aspose.words.lists/listformat/removenumbers/) aufgerufen wird, um die Formatierung von Aufzählungslisten zu stoppen.

In Word-Dokumenten können Listen aus bis zu neun Ebenen bestehen. Die Listenformatierung für jede Ebene gibt an, welches Aufzählungszeichen oder welche Zahl verwendet wird, den linken Einzug, den Abstand zwischen Aufzählungszeichen und Text usw. Die folgenden Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an:

- Um die Listenebene des aktuellen Absatzes um eine Ebene zu erhöhen, rufen Sie [ListIndent](https://reference.aspose.com/words/de/net/aspose.words.lists/listformat/listindent/) auf
- Um die Listenebene des aktuellen Absatzes um eine Ebene zu verringern, rufen Sie [ListOutdent](https://reference.aspose.com/words/de/net/aspose.words.lists/listformat/listoutdent/) auf

Sie können auch die [ListLevelNumber](https://reference.aspose.com/words/de/net/aspose.words.lists/listformat/listlevelnumber/)-Eigenschaft verwenden, um die Listenebene für den Absatz abzurufen oder festzulegen.

{{% alert color="primary" %}}

Die Listenebenen sind von 0 bis 8 nummeriert.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie eine mehrstufige Liste erstellt wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Geben Sie die Formatierung für eine Listenebene an

Objekte auf Listenebene werden automatisch erstellt, wenn eine Liste erstellt wird. Verwenden Sie die Eigenschaften und Methoden der [ListLevel](https://reference.aspose.com/words/de/net/aspose.words.lists/listlevel/)-Klasse, um die Formatierung einzelner Ebenen einer Liste zu steuern.

## Neustartliste für jeden Abschnitt

Mithilfe der [IsRestartAtEachSection](https://reference.aspose.com/words/de/net/aspose.words.lists/list/isrestartateachsection/)-Eigenschaft können Sie für jeden Abschnitt eine Liste neu starten. Beachten Sie, dass diese Option nur in den Dokumentformaten RTF, DOC und DOCX unterstützt wird. Diese Option wird nur dann in DOCX geschrieben, wenn OoxmlCompliance höher als Ecma376 ist.

Das folgende Codebeispiel zeigt, wie Sie eine Liste erstellen und für jeden Abschnitt neu starten:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}

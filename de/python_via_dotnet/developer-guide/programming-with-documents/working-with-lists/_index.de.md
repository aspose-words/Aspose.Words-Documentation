---
title: Arbeiten mit Listen in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Listen
linktitle: Arbeiten mit Listen
description: "Erstellen Sie mithilfe von Python Listen in einem Dokument, geben Sie Formatierungen an und starten Sie sie neu."
type: docs
weight: 200
url: /de/python-net/working-with-lists/
---

Eine Liste in einem Microsoft Word-Dokument ist eine Reihe von Listenformatierungseigenschaften. Listen können in Ihren Dokumenten verwendet werden, um Text zu formatieren, anzuordnen und hervorzuheben. Listen sind eine hervorragende Möglichkeit, Daten in Dokumenten zu organisieren und erleichtern es den Lesern, wichtige Punkte zu verstehen

Jede Liste kann bis zu 9 Ebenen haben und Formatierungseigenschaften wie Zahlenstil, Startwert, Einzug, Tabulatorposition usw. werden für jede Ebene separat definiert.

In Aspose.Words wird die Arbeit mit Listen durch das [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/)-Modul repräsentiert. Das [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/)-Objekt gehört jedoch immer zur [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/)-Sammlung.

In diesem Thema wird beschrieben, wie Sie mithilfe von Aspose.Words programmgesteuert mit Listen arbeiten

## Erstellen von Listen durch Anwenden von Listenformatierung

Aspose.Words ermöglicht die einfache Erstellung von Listen durch Anwenden der Listenformatierung. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) stellt die [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/)-Eigenschaft bereit, die ein [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/)-Objekt zurückgibt. Dieses Objekt verfügt über mehrere Methoden, um eine Liste zu beginnen und zu beenden und den Einzug zu vergrößern/verkleinern. Es gibt zwei allgemeine Arten von Listen in Microsoft Word: Listen mit Aufzählungszeichen und nummerierte Listen.

- Um eine Liste mit Aufzählungszeichen zu starten, rufen Sie [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/) auf.
- Um eine nummerierte Liste zu starten, rufen Sie [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/) auf.

Das Aufzählungszeichen bzw. die Nummer und die Formatierung werden dem aktuellen Absatz und allen weiteren mit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) erstellten Absätzen hinzugefügt, bis [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) aufgerufen wird, um die Formatierung von Aufzählungslisten zu stoppen.

In Word-Dokumenten können Listen aus bis zu neun Ebenen bestehen. Die Listenformatierung für jede Ebene gibt an, welches Aufzählungszeichen oder welche Zahl verwendet wird, welcher linke Einzug, wie viel Platz zwischen Aufzählungszeichen und Text usw. ist. Die folgenden Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an:

- Um die Listenebene des aktuellen Absatzes um eine Ebene zu erhöhen, rufen Sie [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/) auf
- Um die Listenebene des aktuellen Absatzes um eine Ebene zu verringern, rufen Sie [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/) auf

Die Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an.

{{% alert color="primary" %}}

Sie können auch die [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/)-Eigenschaft verwenden, um die Listenebene für den Absatz abzurufen oder festzulegen. Die Listenebenen sind von 0 bis 8 nummeriert.

{{% /alert %}}

Das folgende Beispiel zeigt, wie eine mehrstufige Liste erstellt wird.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Geben Sie die Formatierung für eine Listenebene an

Objekte auf Listenebene werden automatisch erstellt, wenn eine Liste erstellt wird. Verwenden Sie die Eigenschaften und Methoden der [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/)-Klasse, um die Formatierung einzelner Ebenen einer Liste zu steuern.

## Neustartliste für jeden Abschnitt

Mithilfe der [is_restart_at_each_section-Eigenschaft](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/)-Eigenschaft können Sie für jeden Abschnitt eine Liste neu starten. Beachten Sie, dass diese Option nur in den Dokumentformaten RTF, DOC und DOCX unterstützt wird. Diese Option wird nur dann in DOCX geschrieben, wenn OoxmlCompliance höher als Ecma376 ist.

Das folgende Codebeispiel zeigt, wie Sie eine Liste erstellen und für jeden Abschnitt neu starten:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}

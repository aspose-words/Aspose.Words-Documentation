---
title: Arbeiten mit Listen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Listen
linktitle: Arbeiten mit Listen
description: "Einführung in die Formatierung der Nummerierung Aspose.Words für Java."
type: docs
weight: 200
url: /de/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Eine Liste in einer Microsoft Word dokument ist eine Reihe von Liste-Formatierungseigenschaften. Listen können in Ihren Dokumenten verwendet werden, um Text zu formatieren, zu arrangieren und zu betonen. Listen sind eine gute Möglichkeit, Daten in Dokumenten zu organisieren, und sie erleichtern es den Lesern, Schlüsselpunkte zu verstehen.

Jede Liste kann bis zu 9 Ebenen und Formatierungseigenschaften haben, wie z.B. Nummernstil, Startwert, Indent, Tab Position, und andere werden für jede Ebene separat definiert.

Dieser Artikel beschreibt programmatisch mit Listen arbeiten mit Aspose.Words.

## Erstellen von Listen durch Anwenden von Listenformatierung

Aspose.Words ermöglicht die einfache Erstellung von Listen durch Anwendung von Listenformatierung. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) bietet [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) Eigentum, das eine **ListFormat** Objekt. Dieses Objekt hat mehrere Methoden, um eine Liste zu starten und zu beenden und den Gedankenstrich zu erhöhen/ zu verkleinern. Es gibt zwei allgemeine Arten von Listen in Microsoft Word: geschossen und nummeriert:

- Um eine Liste zu starten, rufen Sie an [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Um eine nummerierte Liste zu starten, rufen Sie an [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Die Kugel oder Nummer und Formatierung werden dem aktuellen Absatz und allen weiteren Absätzen hinzugefügt, die mit **DocumentBuilder** bis [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) wird aufgerufen, um die geschossene Listenformatierung zu stoppen.

In Word-Dokumenten können Listen aus bis zu neun Ebenen bestehen. Listenformatierung für jede Ebene gibt an, welche Kugel oder Nummer verwendet wird, linker Einschnitt, Raum zwischen der Kugel und Text usw. Die folgenden Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an:

- Ja. Um die Listenebene des aktuellen Absatzes um eine Ebene zu erhöhen, rufen Sie an [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Ja. Um die Listenebene des aktuellen Absatzes um eine Ebene zu verringern, rufen Sie an [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Die Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an.

{{% alert color="primary" %}}

Sie können auch die [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) Eigentum, um die Liste Ebene für den Absatz zu erhalten oder einzustellen. Die Listenwerte sind mit 0 bis 8 bezeichnet.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man eine Multilevel-Liste erstellt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Formatierung für eine Listenebene angeben

Listenebene Objekte werden automatisch erstellt, wenn eine Liste erstellt wird. Verwendung der Eigenschaften und Methoden der [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) Klasse, um die Formatierung der einzelnen Ebenen einer Liste zu steuern.

## Neustartliste für jeden Abschnitt

Sie können eine Liste für jeden Abschnitt neu starten [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) Eigentum. Beachten Sie, dass diese Option nur in RTF-, DOC- und DOCX-Dokumentformaten unterstützt wird. Diese Option wird nur auf DOCX geschrieben, wenn OoxmlCompliance höher ist, dann Ecma376.

Das folgende Codebeispiel zeigt, wie eine Liste erstellt und für jeden Abschnitt neu gestartet werden soll:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}


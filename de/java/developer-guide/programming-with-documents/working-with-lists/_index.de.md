---
title: Arbeiten mit Listen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Listen
linktitle: Arbeiten mit Listen
description: "Einführung in die Nummerierungsformatierungsfunktion in Aspose.Words für Java."
type: docs
weight: 200
url: /de/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Eine Liste in einem Microsoft Word-Dokument besteht aus einer Reihe von Listenformatierungseigenschaften. Listen können in Ihren Dokumenten verwendet werden, um Text zu formatieren, anzuordnen und hervorzuheben. Listen sind eine großartige Möglichkeit, Daten in Dokumenten zu organisieren, und sie erleichtern es den Lesern, wichtige Punkte zu verstehen.

Jede Liste kann bis zu 9 Ebenen haben und Formatierungseigenschaften wie Zahlenstil, Startwert, Einzug, Tabulatorposition und andere werden für jede Ebene separat definiert.

In diesem Artikel wird das programmgesteuerte Arbeiten mit Listen mit Aspose.Words beschrieben.

## Erstellen von Listen durch Anwenden von Listenformatierungen

Aspose.Words ermöglicht die einfache Erstellung von Listen durch Anwenden von Listenformatierungen. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) stellt die [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat)-Eigenschaft bereit, die ein **ListFormat**-Objekt zurückgibt. Dieses Objekt verfügt über mehrere Methoden, um eine Liste zu beginnen und zu beenden und den Einzug zu vergrößern / verkleinern. Es gibt zwei allgemeine Arten von Listen in Microsoft Word: Aufzählungszeichen und nummerierte Listen:

- Um eine Aufzählung zu beginnen, rufen Sie [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) auf
- Um eine nummerierte Liste zu starten, rufen Sie [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) auf

Nummer und Formatierung werden dem aktuellen Absatz und allen weiteren mit **DocumentBuilder** erstellten Absätzen hinzugefügt, bis [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) aufgerufen wird, um die Formatierung von Aufzählungslisten zu stoppen.

In Word-Dokumenten können Listen aus bis zu neun Ebenen bestehen. Listenformatierung für jede Ebene gibt an, welche Aufzählungszeichen oder Zahlen verwendet werden, linker Einzug, Abstand zwischen Aufzählungszeichen und Text usw. Die folgenden Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an:

- Um die Listenebene des aktuellen Absatzes um eine Ebene zu erhöhen, rufen Sie [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent) auf
- Um die Listenebene des aktuellen Absatzes um eine Ebene zu verringern, rufen Sie [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent) auf

Die Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an.

{{% alert color="primary" %}}

Sie können auch die Eigenschaft [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) verwenden, um die Listenebene für den Absatz abzurufen oder festzulegen. Die Listenebenen sind von 0 bis 8 nummeriert.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine Liste mit mehreren Ebenen erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Angeben der Formatierung für eine Listenebene

Objekte auf Listenebene werden automatisch erstellt, wenn eine Liste erstellt wird. Verwenden Sie die Eigenschaften und Methoden der Klasse [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/), um die Formatierung einzelner Ebenen einer Liste zu steuern.

## Neustartliste für jeden Abschnitt

Sie können eine Liste für jeden Abschnitt mit der Eigenschaft [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) neu starten. Beachten Sie, dass diese Option nur in den Dokumentformaten RTF, DOC und DOCX unterstützt wird. Diese Option wird nur dann in DOCX geschrieben, wenn OoxmlCompliance höher als Ecma376 ist.

Das folgende Codebeispiel zeigt, wie Sie eine Liste erstellen und für jeden Abschnitt neu starten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}


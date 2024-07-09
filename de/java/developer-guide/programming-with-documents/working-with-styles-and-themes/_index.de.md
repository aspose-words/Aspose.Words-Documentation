---
title: Arbeiten mit Stilen und Themen
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Stilen und Themen
linktitle: Arbeiten mit Stilen und Themen
description: "Verbessert Microsoft Word Formatierungs-Funktionen, mit Stilen und Themen mit Java."
type: docs
weight: 110
url: /de/java/working-with-styles-and-themes/
---

Die [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) class wird verwendet, um integrierte Einstellungen zu verwalten und benutzerdefinierte Einstellungen auf Stile anzuwenden.

## Wie Sie Inhalte basierend auf Stilen extrahieren

Auf einer einfachen Ebene kann das Abrufen des Inhalts basierend auf Stilen aus einem Word-Dokument nützlich sein, um Absätze und Textläufe zu identifizieren, aufzulisten und zu zählen, die mit einem bestimmten Stil formatiert sind. Beispielsweise müssen Sie bestimmte Arten von Inhalten im Dokument identifizieren, wie Beispiele, Titel, Referenzen, Keywords, Figurennamen und Fallstudien.

Um dies ein paar Schritte weiter zu unternehmen, kann dies auch dazu genutzt werden, die Struktur des Dokuments, definiert durch die verwendeten Stile, zu nutzen, um das Dokument für eine andere Ausgabe, wie HTML, neu zu verwenden. In der Tat, wie die Aspose-Dokumentation gebaut wird, Aspose.Words auf den Test. Ein Werkzeug mit Aspose.Words nimmt die Quelltextdokumente und teilt sie in Themen auf bestimmten Überschriften. Eine XML-Datei wird mit Aspose.Words die verwendet wird, um den Navigationsbaum zu bauen, den Sie auf der linken Seite sehen können. Und dann Aspose.Words wandelt jedes Thema in HTML um. Die Lösung zum Abrufen von Texten, die mit bestimmten Stilen in einem Word-Dokument formatiert sind, ist in der Regel wirtschaftlich und unkompliziert mit Aspose.Words.

Wie leicht zu illustrieren Aspose.Words griffe abrufen Inhalte basierend auf Stilen, lassen Sie uns ein Beispiel betrachten. In diesem Beispiel werden wir Text abrufen, der mit einem bestimmten Absatzstil und einem Charakterstil aus einem Muster Word-Dokument formatiert ist.

Auf hohem Niveau wird dies beinhalten:

ANHANG Öffnen eines Word-Dokuments mit [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse.
ANHANG Sammlungen aller Absätze und alle läuft im Dokument.
ANHANG Wählen Sie nur die erforderlichen Absätze und Auflagen.

Konkret werden wir Text abrufen, der mit dem Stil "Heading 1" Absatz und dem Charakterstil "Intense Emphasis" aus diesem Muster Word-Dokument formatiert ist

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

In diesem Musterdokument ist der Text, der mit dem Absatzstil "Heading 1" formatiert wird, "Insert Tab", "Quick Styles" und "Theme" und der Text, der mit dem Charakterstil "Intense Schwerpunkt" formatiert ist, die verschiedenen Fälle von blauem, italiziertem, kühnem Text wie "Gallerien" und "Überall Look".

Die Umsetzung einer stilbasierten Abfrage ist in der Aspose.Words Dokument Objektmodell, da es einfach Werkzeuge verwendet, die bereits vorhanden sind. Für diese Lösung werden zwei Klassenmethoden implementiert:

ANHANG **ParagraphsByStyleName** – Diese Methode ruft eine Reihe dieser Absätze in dem Dokument, die einen bestimmten Stil Namen haben.
ANHANG **RunsByStyleName** – Diese Methode ruft eine Reihe von diesen läuft in dem Dokument, die einen bestimmten Stil Namen haben.

Beide Verfahren sind sehr ähnlich, die einzigen Unterschiede sind die Knotentypen und die Darstellung der Stilinformationen innerhalb des Absatzes und laufende Knoten. Hier ist eine Implementierung von ParagraphsByStyleName in dem unten angegebenen Codebeispiel gezeigt, um alle Absätze zu finden, die mit dem angegebenen Stil formatiert sind.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Diese Umsetzung nutzt auch die [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) Verfahren der `Document` Klasse, die eine Sammlung aller unmittelbaren Kinderknoten zurückgibt.

Es lohnt sich auch darauf hinzuweisen, dass die Paragraphen-Sammlung keinen unmittelbaren Overhead schafft, weil Absätze nur dann in diese Sammlung geladen werden, wenn Sie auf die Elemente in ihnen zugreifen. Dann, alles, was Sie tun müssen, ist, durch die Sammlung zu gehen, mit dem Standard-Foreach-Operator und hinzufügen Absätze, die den angegebenen Stil zu den Absätzen haben MitStyle-Array. Die `Paragraph` Stilname kann in der [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) Eigentum der [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) Objekt.

Die Implementierung von RunsByStyleName ist fast gleich, obwohl wir offensichtlich verwenden `NodeType.Run` um Run-Knoten abzurufen. Die [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) Eigentum eines [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) Objekt wird verwendet, um Stilinformationen in der **Run** Knoten

Das folgende Codebeispiel findet alle mit dem angegebenen Stil formatierten Auflagen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Wenn beide Abfragen durchgeführt werden, müssen Sie nur ein Dokumentobjekt übergeben und die Stilnamen der Inhalte festlegen, die Sie abrufen möchten:

{{% /alert %}}

Das folgende Codebeispiel führt Abfragen aus und zeigt Ergebnisse an.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Wenn alles erledigt ist, wird die Ausführung der Probe die folgende Ausgabe anzeigen:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Wie Sie sehen können, ist dies ein sehr einfaches Beispiel, das die Anzahl und den Text der gesammelten Absätze zeigt und im Muster Word-Dokument läuft.

## Fügen Sie Stil Separator verschiedene Absatz-Stile zu setzen

Der Stiltrenner kann am Ende eines Absatzes mit dem Ctrl + Alt + Keyboard Shortcut in MS Word hinzugefügt werden. Diese Funktion ermöglicht zwei verschiedene Absatz-Stile in einem logischen gedruckten Absatz verwendet. Wenn Sie möchten, dass einige Texte von Anfang an einer bestimmten Rubrik in einer Tabelle der Inhalte erscheinen, aber nicht die gesamte Rubrik in der Tabelle der Inhalte wollen, können Sie diese Funktion verwenden

Das folgende Codebeispiel zeigt, wie man einen Style Separator einfügen kann, um verschiedene Paragraph-Stile zu setzen

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Kopieren Sie alle Stile von Template

Es gibt Fälle, in denen Sie alle Stile von einem Dokument in ein anderes kopieren möchten. Sie können die `Document.CopyStylesFromTemplate` Methode, um Stile von der angegebenen Vorlage zu einem Dokument zu kopieren. Wenn Stile von einer Vorlage zu einem Dokument kopiert werden, werden gleichnamige Stile im Dokument neu definiert, um die Stilbeschreibungen in der Vorlage anzupassen. Einzigartige Stile aus der Vorlage werden in das Dokument kopiert. Einzigartige Stile im Dokument bleiben intakt

Das folgende Codebeispiel zeigt, wie Stile aus einem Dokument in ein anderes kopiert werden können.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Wie manipuliert Themenschwerpunkte

Wir haben grundlegende hinzugefügt API in Aspose.Words Zugriff auf das Thema Eigenschaften. Für jetzt, dies API umfasst die folgenden öffentlichen Objekte:

- Ja. Thema
- Themenspiele
- ThemaFarben

Hier ist, wie Sie Themeneigenschaften erhalten können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Und hier ist, wie Sie Themeneigenschaften festlegen können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}

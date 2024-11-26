---
title: Arbeiten mit Stilen und Designs
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Stilen und Designs
linktitle: Arbeiten mit Stilen und Designs
description: "Erweiterte Microsoft Word Formatierungsfunktionen, Arbeiten mit Stilen und Designs mit Java."
type: docs
weight: 110
url: /de/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

Die Klasse [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) wird verwendet, um integrierte Einstellungen zu verwalten und benutzerdefinierte Einstellungen auf Stile anzuwenden.

## So extrahieren Sie Inhalte basierend auf Stilen

Auf einer einfachen Ebene kann das Abrufen des Inhalts basierend auf Stilen aus einem Word-Dokument nützlich sein, um Absätze und Textläufe zu identifizieren, aufzulisten und zu zählen, die mit einem bestimmten Stil formatiert sind. Beispielsweise müssen Sie möglicherweise bestimmte Arten von Inhalten im Dokument identifizieren, z. B. Beispiele, Titel, Referenzen, Schlüsselwörter, Abbildungsnamen und Fallstudien.

Um dies noch ein paar Schritte weiter zu gehen, kann dies auch verwendet werden, um die Struktur des Dokuments, die durch die verwendeten Stile definiert ist, zu nutzen, um das Dokument für eine andere Ausgabe, z. B. HTML, wiederzuverwenden. Auf diese Weise wird die Aspose-Dokumentation erstellt, wobei Aspose.Words auf die Probe gestellt wird. Ein mit Aspose.Words erstelltes Tool nimmt die Word-Quelldokumente und teilt sie auf bestimmten Überschriftenebenen in Themen auf. Mit Aspose.Words wird eine XML -Datei erstellt, die zum Erstellen des Navigationsbaums verwendet wird, den Sie links sehen. Und dann konvertiert Aspose.Words jedes Thema in HTML. Die Lösung zum Abrufen von Text, der mit bestimmten Stilen in einem Word-Dokument formatiert ist, ist in der Regel mit Aspose.Words wirtschaftlich und unkompliziert.

Um zu veranschaulichen, wie einfach Aspose.Words das Abrufen von Inhalten basierend auf Stilen handhabt, schauen wir uns ein Beispiel an. In diesem Beispiel werden wir Text abrufen, der mit einem bestimmten Absatzformat und einem Zeichenformat aus einem Word-Beispieldokument formatiert ist.

Auf hohem Niveau wird dies beinhalten:

1. Öffnen eines Word-Dokuments mit der Klasse [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Abrufen von Sammlungen aller Absätze und aller Läufe im Dokument.
1. Auswahl nur der erforderlichen Absätze und Läufe.

Insbesondere rufen wir Text ab, der mit dem Absatzstil 'Heading 1' und dem Zeichenstil 'Intensive Hervorhebung' formatiert ist, aus diesem Word-Beispieldokument.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

In diesem Beispieldokument ist der mit dem Absatzstil 'Heading 1' formatierte Text 'Tab einfügen', 'Schnellstile' und 'Design', und der mit dem Zeichenstil 'Intensive Hervorhebung' formatierte Text sind die verschiedenen Instanzen von blauem, kursivem, fettem Text wie 'Galerien' und 'Gesamtbild'.

Die Implementierung einer stilbasierten Abfrage ist im Aspose.Words -Dokumentobjektmodell recht einfach, da lediglich bereits vorhandene Tools verwendet werden. Für diese Lösung sind zwei Klassenmethoden implementiert:

1. **ParagraphsByStyleName** - Diese Methode ruft ein Array der Absätze im Dokument ab, die einen bestimmten Stilnamen haben.
1. **RunsByStyleName** - Diese Methode ruft ein Array der Ausführungen im Dokument ab, die einen bestimmten Stilnamen haben.

Beide Methoden sind sehr ähnlich, die einzigen Unterschiede bestehen in den Knotentypen und der Darstellung der Stilinformationen innerhalb der Absatz- und Laufknoten. Hier ist eine Implementierung von ParagraphsByStyleName, die im folgenden Codebeispiel gezeigt wird, um alle Absätze zu finden, die mit dem angegebenen Stil formatiert sind.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Diese Implementierung verwendet auch die [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) -Methode der `Document` -Klasse, die eine Auflistung aller unmittelbaren untergeordneten Knoten zurückgibt.

Es ist auch erwähnenswert, dass die Paragraphs-Auflistung keinen unmittelbaren Overhead verursacht, da Absätze nur dann in diese Auflistung geladen werden, wenn Sie auf Elemente in ihnen zugreifen.Dann müssen Sie nur noch die Auflistung mit dem Standardoperator foreach durchgehen und dem Array paragraphsWithStyle Absätze mit dem angegebenen Stil hinzufügen. Der `Paragraph` -Stilname befindet sich in der [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName)-Eigenschaft des [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat)-Objekts.

Die Implementierung von RunsByStyleName ist fast dieselbe, obwohl wir offensichtlich `NodeType.Run` verwenden, um Laufknoten abzurufen. Die [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle)-Eigenschaft eines [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) -Objekts wird verwendet, um auf Stilinformationen in den **Run** -Knoten zuzugreifen.

Im folgenden Codebeispiel werden alle Ausführungen gefunden, die mit dem angegebenen Stil formatiert sind.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Wenn beide Abfragen implementiert sind, müssen Sie lediglich ein Dokumentobjekt übergeben und die Stilnamen des Inhalts angeben, den Sie abrufen möchten:

{{% /alert %}}

Das folgende Codebeispiel führt Abfragen aus und zeigt Ergebnisse an.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Wenn alles erledigt ist, wird beim Ausführen des Beispiels die folgende Ausgabe angezeigt:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Wie Sie sehen, ist dies ein sehr einfaches Beispiel, das die Anzahl und den Text der gesammelten Absätze und Läufe im Word-Beispieldokument zeigt.

## Stiltrennzeichen einfügen, um verschiedene Absatzstile einzufügen

Das Stiltrennzeichen kann am Ende eines Absatzes mit der Tastenkombination Strg + Alt + Eingabetaste in das Wort MS eingefügt werden. Diese Funktion ermöglicht zwei verschiedene Absatzformate, die in einem logisch gedruckten Absatz verwendet werden. Wenn Sie möchten, dass Text vom Anfang einer bestimmten Überschrift in einem Inhaltsverzeichnis angezeigt wird, aber nicht die gesamte Überschrift im Inhaltsverzeichnis, können Sie diese Funktion verwenden.

Das folgende Codebeispiel zeigt, wie Sie ein Stiltrennzeichen einfügen, um verschiedene Absatzstile einzufügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Kopieren Sie alle Stile aus der Vorlage

Es gibt Fälle, in denen Sie alle Stile von einem Dokument in ein anderes kopieren möchten. Sie können die Methode `Document.CopyStylesFromTemplate` verwenden, um Stile aus der angegebenen Vorlage in ein Dokument zu kopieren. Wenn Stile aus einer Vorlage in ein Dokument kopiert werden, werden gleichnamige Stile im Dokument neu definiert, damit sie mit den Stilbeschreibungen in der Vorlage übereinstimmen. Eindeutige Stile aus der Vorlage werden in das Dokument kopiert. Eindeutige Stile im Dokument bleiben erhalten.

Das folgende Codebeispiel zeigt, wie Stile von einem Dokument in ein anderes kopiert werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Wie man Theme-Eigenschaften manipuliert

Wir haben basic API in Aspose.Words hinzugefügt, um auf die Eigenschaften des Dokumententhemas zuzugreifen. Im Moment enthält dieses API die folgenden öffentlichen Objekte:

- Thema
- ThemeFonts
- ThemeColors

Hier ist, wie Sie Theme-Eigenschaften erhalten können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Und so können Sie Designeigenschaften festlegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}

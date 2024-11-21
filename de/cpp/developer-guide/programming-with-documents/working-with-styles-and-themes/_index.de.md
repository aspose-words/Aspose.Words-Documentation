---
title: Arbeiten mit Stilen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Stilen
linktitle: Arbeiten mit Stilen
description: "Erweiterte Microsoft Word Formatierungsfunktionen, Arbeiten mit Stilen und Designs mit C++."
type: docs
weight: 110
url: /de/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

Die Klasse [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) wird verwendet, um integrierte Einstellungen zu verwalten und benutzerdefinierte Einstellungen auf Stile anzuwenden.

## So extrahieren Sie Inhalte basierend auf Stilen

Auf einer einfachen Ebene kann das Abrufen des Inhalts basierend auf Stilen aus einem Word-Dokument nützlich sein, um Absätze und Textläufe zu identifizieren, aufzulisten und zu zählen, die mit einem bestimmten Stil formatiert sind. Beispielsweise müssen Sie möglicherweise bestimmte Arten von Inhalten im Dokument identifizieren, z. B. Beispiele, Titel, Referenzen, Schlüsselwörter, Abbildungsnamen und Fallstudien.

Um dies noch ein paar Schritte weiter zu gehen, kann dies auch verwendet werden, um die Struktur des Dokuments, die durch die verwendeten Stile definiert ist, zu nutzen, um das Dokument für eine andere Ausgabe, z. B. HTML, wiederzuverwenden. Auf diese Weise wird die Aspose-Dokumentation erstellt, wobei Aspose.Words auf die Probe gestellt wird. Ein mit Aspose.Words erstelltes Tool nimmt die Word-Quelldokumente und teilt sie auf bestimmten Überschriftenebenen in Themen auf. Mit Aspose.Words wird eine XML -Datei erstellt, die zum Erstellen des Navigationsbaums verwendet wird, den Sie links sehen. Und dann konvertiert Aspose.Words jedes Thema in HTML.

Die Lösung zum Abrufen von Text, der mit bestimmten Stilen in einem Word-Dokument formatiert ist, ist in der Regel mit Aspose.Words wirtschaftlich und unkompliziert.

### Lösung

Um zu veranschaulichen, wie einfach Aspose.Words das Abrufen von Inhalten basierend auf Stilen handhabt, schauen wir uns ein Beispiel an. In diesem Beispiel werden wir Text abrufen, der mit einem bestimmten Absatzformat und einem Zeichenformat aus einem Word-Beispieldokument formatiert ist. Auf hohem Niveau wird dies beinhalten:
- Öffnen eines Word-Dokuments mit der Klasse `Document`.
- Abrufen von Sammlungen aller Absätze und aller Läufe im Dokument.
- Auswahl nur der erforderlichen Absätze und Läufe. Insbesondere rufen wir Text ab, der mit dem Absatzstil 'Überschrift 1' und dem Zeichenstil 'Intensive Betonung' formatiert ist, aus diesem Word-Beispieldokument.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


In diesem Beispieldokument ist der mit dem Absatzstil 'Überschrift 1' formatierte Text 'Tab einfügen', 'Schnellstile' und 'Thema', und der mit dem Zeichenstil 'Intensive Hervorhebung' formatierte Text sind die verschiedenen Instanzen von blauem, kursivem, fettem Text wie 'Galerien' und 'Gesamtbild'.

### Codes

Die Implementierung einer stilbasierten Abfrage ist im Aspose.Words -Dokumentobjektmodell recht einfach, da lediglich bereits vorhandene Tools verwendet werden. Für diese Lösung sind zwei Klassenmethoden implementiert: # **ParagraphsByStyleName** - Diese Methode ruft ein Array der Absätze im Dokument ab, die einen bestimmten Stilnamen haben.# **RunsByStyleName** - Diese Methode ruft ein Array der Ausführungen im Dokument ab, die einen bestimmten Stilnamen haben. Beide Methoden sind sehr ähnlich, die einzigen Unterschiede bestehen in den Knotentypen und der Darstellung der Stilinformationen innerhalb der Absatz- und Laufknoten. Hier ist eine Implementierung von ParagraphsByStyleName. Im folgenden Beispiel finden Sie alle Absätze, die mit dem angegebenen Stil formatiert sind.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Diese Implementierung verwendet auch die `Document.GetChildNodes` -Methode der `Document` -Klasse, die eine Sammlung aller Knoten mit dem angegebenen Typ zurückgibt, in diesem Fall in allen Absätzen.

Beachten Sie, dass der zweite Parameter der **Document.GetChildNodes**-Methode auf true gesetzt ist. Dies zwingt die **Document.GetChildNodes** -Methode, rekursiv aus allen untergeordneten Knoten auszuwählen, anstatt nur die unmittelbaren untergeordneten Knoten auszuwählen.

{{% /alert %}}

Es ist auch erwähnenswert, dass die Paragraphs-Auflistung keinen unmittelbaren Overhead verursacht, da Absätze nur dann in diese Auflistung geladen werden, wenn Sie auf Elemente in ihnen zugreifen. Dann müssen Sie nur noch die Auflistung mit dem Standard für jeden Operator durchgehen und dem Array paragraphsWithStyle Absätze mit dem angegebenen Stil hinzufügen. Der Name des `Paragraph`-Stils befindet sich im Stil. Name-Eigenschaft des `Paragraph.ParagraphFormat`-Objekts. Die Implementierung von RunsByStyleName ist fast dieselbe, obwohl wir offensichtlich `NodeType.Run` verwenden, um Laufknoten abzurufen. Die `Font.Style`-Eigenschaft eines `Run` -Objekts wird verwendet, um auf Stilinformationen in den **Run** -Knoten zuzugreifen. Das below code -Beispiel findet alle Läufe, die mit dem angegebenen Stil formatiert sind.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Wenn beide Abfragen implementiert sind, müssen Sie lediglich ein Dokumentobjekt übergeben und die Stilnamen des Inhalts angeben, den Sie abrufen möchten: Im Folgenden Beispiel werden Abfragen ausgeführt und Ergebnisse angezeigt. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Endergebnis

Wenn alles erledigt ist, wird beim Ausführen des Beispiels die folgende Ausgabe angezeigt:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Wie Sie sehen, ist dies ein sehr einfaches Beispiel, das die Anzahl und den Text der gesammelten Absätze und Läufe im Word-Beispieldokument zeigt.

## Einfügen und Arbeiten mit dem Inhaltsverzeichnisfeld

Häufig arbeiten Sie mit Dokumenten, die ein Inhaltsverzeichnis (TOC) enthalten. Mit Aspose.Words können Sie Ihr eigenes Inhaltsverzeichnis einfügen oder das vorhandene Inhaltsverzeichnis im Dokument mit nur wenigen Codezeilen vollständig neu erstellen. In diesem Artikel wird beschrieben, wie Sie mit dem Inhaltsverzeichnisfeld arbeiten und veranschaulichen:

- So fügen Sie eine brandneue `TOC` ein
- Aktualisieren Sie neue oder vorhandene TOCs im Dokument.
- Geben Sie Schalter an, um die Formatierung und die Gesamtstruktur von TOC zu steuern.
- So ändern Sie die Stile und das Erscheinungsbild des Inhaltsverzeichnisses.
- So entfernen Sie ein ganzes `TOC` -Feld zusammen mit allen Einträgen aus dem Dokument.

### TC Felder einfügen

Oft ist eine bestimmte Textzeile für die `TOC` vorgesehen und mit einem `TC` -Feld gekennzeichnet. Der einfache Weg, dies in MS Word zu tun, besteht darin, den Text zu markieren und *ALT+SHIFT+O* zu drücken. Dadurch wird automatisch ein `TC`-Feld mit dem ausgewählten Text erstellt. Die gleiche Technik kann durch Code erreicht werden. Der folgende Code findet Text, der der Eingabe entspricht, und fügt ein `TC` -Feld an derselben Position wie der Text ein. Der Code basiert auf der gleichen Technik, die im Artikel verwendet wird. Das folgende Beispiel zeigt, wie Sie ein `TC` -Feld am Text in einem Dokument finden und einfügen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Ändern eines Inhaltsverzeichnisses

#### Ändern der Formatierung von Stilen

Die Formatierung von Einträgen in `TOC` verwendet nicht die ursprünglichen Stile der markierten Einträge, stattdessen wird jede Ebene mit einem äquivalenten `TOC` -Stil formatiert. Beispielsweise ist die erste Ebene in `TOC` mit dem Stil **TOC1** formatiert, die zweite Ebene mit dem Stil **TOC2** usw. Dies bedeutet, dass diese Stile geändert werden müssen, um das Aussehen der `TOC` zu ändern. In Aspose.Words werden diese Stile durch die gebietsschemaunabhängigen `StyleIdentifier.TOC1` bis `StyleIdentifier.TOC9` dargestellt und können mit diesen Bezeichnern aus der `Document.Styles` -Sammlung abgerufen werden. Sobald der entsprechende Stil des Dokuments abgerufen wurde, kann die Formatierung für diesen Stil geändert werden. Alle Änderungen an diesen Stilen werden automatisch in der TOCs im Dokument angezeigt. Das Beispiel below code ändert eine Formatierungseigenschaft, die im Stil `TOC` der ersten Ebene verwendet wird.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Es ist auch nützlich zu beachten, dass jede direkte Formatierung eines Absatzes (definiert im Absatz selbst und nicht im Stil), der als `TOC` markiert ist, in den Eintrag in TOC kopiert wird. Beispiel: Wenn der Stil Überschrift 1 verwendet wird, um Inhalte für `TOC` zu markieren, und dieser Stil fett formatiert ist, während auf den Absatz auch direkt kursive Formatierungen angewendet werden. Der resultierende `TOC` -Eintrag wird nicht fett gedruckt, da dies Teil der Stilformatierung ist, jedoch kursiv, da dies direkt im Absatz formatiert ist. Sie können auch die Formatierung der Trennzeichen zwischen den einzelnen Einträgen und der Seitenzahl steuern. Standardmäßig ist dies eine gepunktete Linie, die mit einem Tabulatorzeichen und einem rechten Tabulator in der Nähe des rechten Randes über die Seitennummerierung verteilt wird.

Mithilfe der `Style`-Klasse, die für die bestimmte `TOC`-Ebene abgerufen wurde, die Sie ändern möchten, können Sie auch ändern, wie diese im Dokument angezeigt werden. Um die Darstellung zu ändern, muss zuerst `Style.ParagraphFormat` aufgerufen werden, um die Absatzformatierung für den Stil abzurufen. Daraus können die Tabstopps durch Aufruf von `ParagraphFormat.TabStops` abgerufen und der entsprechende Tabstopp geändert werden. Mit derselben Technik kann die Registerkarte selbst verschoben oder ganz entfernt werden. Das below code -Beispiel zeigt, wie Sie die Position des rechten Tabstopps in `TOC`-verwandten Absätzen ändern. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Entfernen eines Inhaltsverzeichnisses aus dem Dokument

Ein Inhaltsverzeichnis kann aus dem Dokument entfernt werden, indem alle Knoten entfernt werden, die zwischen dem Knoten `FieldStart` und FieldEnd des Felds `TOC` gefunden wurden. Der folgende Code zeigt dies. Das Entfernen des Felds `TOC` ist einfacher als ein normales Feld, da wir verschachtelte Felder nicht verfolgen. Stattdessen überprüfen wir, ob der `FieldEnd` -Knoten vom Typ `FieldType.FieldTOC` ist, was bedeutet, dass wir auf das Ende des aktuellen TOC gestoßen sind. Diese Technik kann in diesem Fall verwendet werden, ohne sich Gedanken über verschachtelte Felder machen zu müssen, da wir davon ausgehen können, dass jedes ordnungsgemäß formatierte Dokument kein vollständig verschachteltes `TOC` -Feld in einem anderen `TOC` -Feld enthält. Zuerst werden die `FieldStart` Knoten von jedem `TOC` gesammelt und gespeichert. Die angegebene `TOC` wird dann aufgezählt, sodass alle Knoten innerhalb des Felds besucht und gespeichert werden. Die Knoten werden dann aus dem Dokument entfernt. Das Beispiel below code zeigt, wie ein angegebenes `TOC` aus einem Dokument entfernt wird. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Stiltrennzeichen einfügen, um verschiedene Absatzstile einzufügen

Das Stiltrennzeichen kann am Ende eines Absatzes mit der Tastenkombination Strg + Alt + Eingabetaste in MS Word eingefügt werden. Diese Funktion ermöglicht zwei verschiedene Absatzformate, die in einem logisch gedruckten Absatz verwendet werden. Wenn Sie möchten, dass Text vom Anfang einer bestimmten Überschrift in einem Inhaltsverzeichnis angezeigt wird, aber nicht die gesamte Überschrift im Inhaltsverzeichnis, können Sie diese Funktion verwenden. Das Beispiel below code zeigt, wie Sie ein Stiltrennzeichen einfügen, um verschiedene Absatzstile einzufügen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Kopieren Sie alle Stile aus der Vorlage

Es gibt Fälle, in denen Sie alle Stile von einem Dokument in ein anderes kopieren möchten. Sie können die Methode `Document.CopyStylesFromTemplate` verwenden, um Stile aus der angegebenen Vorlage in ein Dokument zu kopieren. Wenn Stile aus einer Vorlage in ein Dokument kopiert werden, werden gleichnamige Stile im Dokument neu definiert, damit sie mit den Stilbeschreibungen in der Vorlage übereinstimmen. Eindeutige Stile aus der Vorlage werden in das Dokument kopiert. Eindeutige Stile im Dokument bleiben erhalten. Das Beispiel below code zeigt, wie Stile von einem Dokument in ein anderes kopiert werden.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}

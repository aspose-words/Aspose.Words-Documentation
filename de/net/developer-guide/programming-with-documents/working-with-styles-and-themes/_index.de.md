---
title: Arbeiten mit Stilen und Themen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Stilen und Themen
linktitle: Arbeiten mit Stilen und Themen
description: "Erweiterte Microsoft Word-Formatierungsfunktionen, Arbeiten mit Stilen und Themen mithilfe von C#."
type: docs
weight: 110
url: /de/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

Die [StyleCollection](https://reference.aspose.com/words/de/net/aspose.words/stylecollection/)-Klasse wird zum Verwalten integrierter Stile und zum Anwenden benutzerdefinierter Einstellungen auf Stile verwendet.

## Auf Stile zugreifen

Mithilfe der [Document.Styles](https://reference.aspose.com/words/de/net/aspose.words/documentbase/styles/)-Eigenschaft können Sie eine Sammlung von im Dokument definierten Stilen abrufen. Diese Sammlung enthält sowohl die integrierten als auch die benutzerdefinierten Stile in einem Dokument. Ein bestimmter Stil kann über seinen Namen/Alias, seine Stilkennung oder seinen Index ermittelt werden. Das folgende Codebeispiel zeigt, wie Sie auf die im Dokument definierte Sammlung von Stilen zugreifen können.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## So extrahieren Sie Inhalte basierend auf Stilen

Auf einer einfachen Ebene kann das Abrufen des Inhalts basierend auf Stilen aus einem Word-Dokument nützlich sein, um Absätze und Textabschnitte zu identifizieren, aufzulisten und zu zählen, die mit einem bestimmten Stil formatiert sind. Beispielsweise müssen Sie möglicherweise bestimmte Arten von Inhalten im Dokument identifizieren, z. B. Beispiele, Titel, Referenzen, Schlüsselwörter, Abbildungsnamen und Fallstudien.

Um noch einen Schritt weiter zu gehen, kann dies auch dazu verwendet werden, die Struktur des Dokuments, die durch die verwendeten Stile definiert wird, zu nutzen, um das Dokument für eine andere Ausgabe, z. B. HTML, umzufunktionieren. Auf diese Weise ist tatsächlich die Aspose-Dokumentation aufgebaut, die Aspose.Words auf die Probe stellt. Ein mit Aspose.Words erstelltes Tool nimmt die Word-Quelldokumente und unterteilt sie in Themen auf bestimmten Überschriftenebenen. Mithilfe von Aspose.Words wird eine XML-Datei erstellt, die zum Erstellen des Navigationsbaums verwendet wird, den Sie links sehen können. Und dann konvertiert Aspose.Words jedes Thema in HTML.

Die Lösung zum Abrufen von mit bestimmten Stilen formatiertem Text in einem Word-Dokument ist in der Regel kostengünstig und unkompliziert mit Aspose.Words.

### Die Lösung

Schauen wir uns ein Beispiel an, um zu veranschaulichen, wie einfach Aspose.Words das Abrufen von Inhalten basierend auf Stilen handhabt. In diesem Beispiel rufen wir Text ab, der mit einem bestimmten Absatzstil und einem Zeichenstil formatiert ist, aus einem Word-Beispieldokument. Auf hoher Ebene umfasst dies Folgendes: # Öffnen eines Word-Dokuments mit der [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Klasse. # Abrufen von Sammlungen von alle Absätze und alle Läufe im Dokument.# Auswahl nur der erforderlichen Absätze und Läufe. Konkret rufen wir aus diesem Beispiel-Word-Dokument Text ab, der mit dem Absatzstil "Überschrift 1" und dem Zeichenstil "Intense Emphasis" formatiert ist.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


In diesem Beispieldokument ist der mit dem Absatzstil "Überschrift 1" formatierte Text "Tabulator einfügen", "Schnellformate" und "Thema" und der mit dem Zeichenstil "Intensive Hervorhebung" formatierte Text besteht aus mehreren Instanzen von Blau, kursiver, fetter Text wie "Galerien" und "Gesamtbild".

### Der Code

Die Implementierung einer stilbasierten Abfrage ist im Aspose.Words-Dokumentobjektmodell recht einfach, da einfach bereits vorhandene Tools verwendet werden. Für diese Lösung werden zwei Klassenmethoden implementiert:# **ParagraphsByStyleName** – Diese Methode ruft ein Array dieser Absätze in ab das Dokument, das einen bestimmten Stilnamen hat.# **RunsByStyleName** – Diese Methode ruft ein Array der Läufe im Dokument ab, die einen bestimmten Stilnamen haben. Beide Methoden sind sehr ähnlich, die einzigen Unterschiede bestehen in den Knotentypen und der Darstellung des Stils Informationen innerhalb des Absatzes und der Ausführungsknoten. Hier ist eine Implementierung von ParagraphsByStyleName: Im folgenden Beispiel finden Sie alle Absätze, die mit dem angegebenen Stil formatiert sind.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Diese Implementierung verwendet auch die `Document.GetChildNodes`-Methode der `Document`-Klasse, die eine Sammlung aller Knoten mit dem angegebenen Typ zurückgibt, in diesem Fall in allen Absätzen.

Beachten Sie, dass der zweite Parameter der **Document.GetChildNodes**-Methode auf true gesetzt ist. Dies zwingt die **Document.GetChildNodes**-Methode dazu, rekursiv aus allen untergeordneten Knoten auszuwählen, anstatt nur die unmittelbar untergeordneten Knoten auszuwählen.

{{% /alert %}}

Es ist auch erwähnenswert, dass die Absätze-Sammlung keinen unmittelbaren Mehraufwand verursacht, da Absätze nur dann in diese Sammlung geladen werden, wenn Sie auf Elemente in ihnen zugreifen. Anschließend müssen Sie nur noch die Sammlung mit dem Standardoperator "foreach" durchgehen und Absätze mit dem angegebenen Stil zum Array "paragraphsWithStyle" hinzufügen. Der `Paragraph`-Stilname kann in der [Style.Name](https://reference.aspose.com/words/de/net/aspose.words/style/name/)-Eigenschaft des [Paragraph.ParagraphFormat](https://reference.aspose.com/words/de/net/aspose.words/paragraph/paragraphformat/)-Objekts gefunden werden. Die Implementierung von RunsByStyleName ist nahezu identisch, obwohl wir offensichtlich [NodeType.Run](https://reference.aspose.com/words/de/net/aspose.words/nodetype/) verwenden, um Laufknoten abzurufen. Die [Font.Style](https://reference.aspose.com/words/de/net/aspose.words/font/style/)-Eigenschaft eines [Run](https://reference.aspose.com/words/de/net/aspose.words/run/)-Objekts wird verwendet, um auf Stilinformationen in den **Run**-Knoten zuzugreifen. Im folgenden Beispiel finden Sie alle Läufe, die mit dem angegebenen Stil formatiert sind.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Wenn beide Abfragen implementiert sind, müssen Sie lediglich ein Dokumentobjekt übergeben und die Stilnamen des Inhalts angeben, den Sie abrufen möchten: Im folgenden Beispiel werden Abfragen ausgeführt und Ergebnisse angezeigt. Sie können die Vorlagendatei dieses Beispiels von [Hier](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx) herunterladen.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Endresultat

Wenn alles erledigt ist, wird beim Ausführen des Beispiels die folgende Ausgabe angezeigt:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Wie Sie sehen, ist dies ein sehr einfaches Beispiel, das die Anzahl und den Text der gesammelten Absätze zeigt und im Beispiel-Word-Dokument ausgeführt wird.

## Alle Stile aus der Vorlage kopieren

Es gibt Fälle, in denen Sie alle Stile von einem Dokument in ein anderes kopieren möchten. Mit der `Document.CopyStylesFromTemplate`-Methode können Sie Stile aus der angegebenen Vorlage in ein Dokument kopieren. Wenn Stile von einer Vorlage in ein Dokument kopiert werden, werden gleichnamige Stile im Dokument neu definiert, damit sie mit den Stilbeschreibungen in der Vorlage übereinstimmen. Einzigartige Stile aus der Vorlage werden in das Dokument kopiert. Einzigartige Stile im Dokument bleiben erhalten. Das Below code-Beispiel zeigt, wie Stile von einem Dokument in ein anderes kopiert werden.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## So manipulieren Sie Theme-Eigenschaften

Wir haben grundlegendes API in Aspose.Words hinzugefügt, um auf die Eigenschaften des Dokumentdesigns zuzugreifen. Derzeit enthält dieses API folgende öffentliche Objekte:

- Thema
- ThemeFonts
- Themenfarben

So erhalten Sie Theme-Eigenschaften:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

Und so können Sie Theme-Eigenschaften festlegen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}

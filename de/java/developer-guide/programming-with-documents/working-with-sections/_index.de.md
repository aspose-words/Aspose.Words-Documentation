---
title: Arbeiten mit Abschnitten in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Abschnitten
linktitle: Arbeiten mit Abschnitten
description: "Verständnis von Dokumentabschnittskonzepten und Manipulationspraktiken mit Java. Fügt einen Abschnitt in ein Dokument Java ein. Abschnitt Java entfernen. Kopieren Sie Abschnitte zwischen Dokumenten."
type: docs
weight: 120
url: /de/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Manchmal möchten Sie ein Dokument, das nicht auf allen Seiten die gleiche Formatierung aufweist. Beispielsweise müssen Sie möglicherweise Seitenzahlenformate ändern, eine andere Seitengröße und -ausrichtung haben oder die erste Dokumentseite als Deckblatt ohne Nummerierung verwenden. Das können Sie mit Abschnitten erreichen.

Abschnitte sind Ebenenknoten, die Kopf- und Fußzeilen, Ausrichtung, Spalten, Ränder, Formatierung von Seitenzahlen und andere steuern.

Mit Aspose.Words können Sie Abschnitte verwalten, ein Dokument in Abschnitte unterteilen und Formatierungsänderungen vornehmen, die nur für einen bestimmten Abschnitt gelten. Aspose.Words speichert Informationen zur Abschnittsformatierung wie Kopf- und Fußzeilen, Seiteneinrichtung und Spalteneinstellungen im Abschnittsumbruch.

In diesem Artikel wird erläutert, wie Sie mit Abschnitten und Abschnittsumbrüchen arbeiten.

## Was Abschnitt und Abschnittsumbruch ist

Dokumentabschnitte werden durch die Klassen [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) und [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) dargestellt. Abschnittsobjekte sind unmittelbare untergeordnete Elemente des Knotens [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) und können über die Eigenschaft [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) aufgerufen werden. Sie können diese Knoten mit einigen Methoden verwalten, z [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), und andere.

Abschnittsumbruch ist eine Option, die Dokumentseiten in Abschnitte mit anpassbaren Layouts unterteilt.

## Arten eines Abschnittsumbruchs

Aspose.Words ermöglicht es Ihnen, Dokumente mit verschiedenen Abschnittsumbrüchen der [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/)-Aufzählung zu teilen und zu formatieren:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Sie können auch die [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/)-Aufzählung verwenden, um einen Umbruchstyp auszuwählen, der nur für den ersten Abschnitt gilt, z. B.: NewColumn, NewPage, EvenPage, und OddPage.

## Verwalten eines Abschnitts

Da ein Abschnitt ein normaler zusammengesetzter Knoten ist, kann die gesamte Knotenmanipulation API zum Manipulieren von Abschnitten verwendet werden: zum Hinzufügen, Entfernen und anderen Operationen an Abschnitten. Sie können mehr über Knoten im Artikel lesen [Aspose.Words Dokumentenobjektmodell (DOM)](/words/java/aspose-words-document-object-model/).

Andererseits können Sie auch `DocumentBuilder` API verwenden, um mit Abschnitten zu arbeiten. In diesem Artikel werden wir uns auf diese spezielle Art der Arbeit mit Abschnitten konzentrieren.

## Einfügen oder Entfernen eines Abschnittsumbruchs

Mit Aspose.Words können Sie mit der [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int)-Methode einen Abschnittsumbruch in Text einfügen.

Das folgende Codebeispiel zeigt, wie Sie einen Abschnittsumbruch in ein Dokument einfügen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Verwenden Sie die Methode [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove), um einen Abschnittsumbruch zu löschen. Wenn Sie einen bestimmten Abschnittsumbruch nicht entfernen und stattdessen den Inhalt dieses Abschnitts löschen müssen, können Sie die Methode [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) verwenden.

Das folgende Codebeispiel zeigt, wie Abschnittsumbrüche entfernt werden:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Beachten Sie, dass ein Abschnittsumbruch Informationen über den Abschnitt enthält, der davor steht, nicht über den Abschnitt, der danach folgt. Wenn Sie also einen Abschnittsumbruch entfernen, erhält der Text vor dem entfernten Umbruch die Eigenschaften des darauf folgenden Abschnittsumbruchs. Dies kann dazu führen, dass das gesamte Dokument im Querformat angezeigt wird oder Kopf- und Fußzeilen sich ändern oder vollständig verschwinden.

{{% /alert %}}

## Einen Abschnitt verschieben

Wenn Sie einen Abschnitt in Ihrem Dokument von einer Position an eine andere verschieben möchten, müssen Sie den Index dieses Abschnitts abrufen. Aspose.Words ermöglicht es Ihnen, eine Schnittposition von a [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) zu erhalten. Sie können die Eigenschaft [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) verwenden, um alle Abschnitte in Ihrem Dokument abzurufen. Wenn Sie jedoch nur den ersten Abschnitt erhalten möchten, können Sie die Eigenschaft [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) verwenden.

Das folgende Codebeispiel zeigt, wie auf den ersten Abschnitt zugegriffen und die untergeordneten Elemente eines zusammengesetzten Knotens durchlaufen werden:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Angeben eines Abschnittslayouts

Manchmal möchten Sie, dass Ihr Dokument besser aussieht, indem Sie kreative Layouts für verschiedene Dokumentabschnitte erstellen. Wenn Sie den Typ des aktuellen Schnittrasters angeben möchten, können Sie einen Schnittlayoutmodus mit der [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/)-Aufzählung auswählen:

- Standard
- Grid
- LineGrid
- SnapToChars

Das folgende Codebeispiel zeigt, wie Sie die Anzahl der Zeilen begrenzen, die jede Seite haben darf:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Einen Abschnitt bearbeiten

Wenn Sie Ihrem Dokument einen neuen Abschnitt hinzufügen, gibt es keinen Text oder Absatz, den Sie bearbeiten können. Mit Aspose.Words können Sie mit der [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) –Methode sicherstellen, dass ein Abschnitt einen Text mit mindestens einem Absatz enthält - es wird automatisch ein Textknoten (oder HeaderFooter) zum Dokument hinzugefügt und dann ein Absatz hinzugefügt.

Das folgende Codebeispiel zeigt, wie Sie einen neuen Abschnittsknoten mit **EnsureMinimum** vorbereiten:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Inhalt anhängen oder voranstellen

Wenn Sie am Anfang / Ende eines Abschnitts eine Form zeichnen oder Text oder Bild hinzufügen möchten, können Sie die Methoden [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) und [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) der Klasse [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) verwenden.

Das folgende Codebeispiel zeigt, wie Sie den Inhalt eines vorhandenen Abschnitts anhängen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Einen Abschnitt klonen

Mit Aspose.Words können Sie einen Abschnitt duplizieren, indem Sie mit der Methode [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) eine vollständige Kopie davon erstellen.

Das folgende Codebeispiel zeigt, wie Sie den ersten Abschnitt in Ihrem Dokument klonen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Abschnitte zwischen Dokumenten kopieren

In einigen Fällen haben Sie möglicherweise große Dokumente mit vielen Abschnitten und möchten den Inhalt eines Abschnitts von einem Dokument in ein anderes kopieren.

Aspose.Words ermöglicht das Kopieren von Abschnitten zwischen Dokumenten mit der [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean)-Methode.

Das folgende Codebeispiel zeigt, wie Abschnitte zwischen Dokumenten kopiert werden:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Mit Kopf- und Fußzeile des Abschnitts arbeiten

Die Grundregeln für die Anzeige einer Kopf- oder Fußzeile für jeden Abschnitt sind recht einfach:

1. Wenn der Abschnitt keine eigenen Kopf- / Fußzeilen eines bestimmten Typs enthält, wird er aus dem vorherigen Abschnitt übernommen.
2. Die Art der Kopf– / Fußzeile, die auf der Seite angezeigt wird, wird durch die Abschnittseinstellungen "Andere erste Seite" und "Verschiedene ungerade und gerade Seiten" gesteuert - wenn sie deaktiviert sind, werden die eigenen Titel des Abschnitts ignoriert.

Das folgende Codebeispiel zeigt, wie Sie 2 Abschnitte mit unterschiedlichen Überschriften erstellen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Wenn Sie den Text von Kopf- und Fußzeilen entfernen möchten, ohne [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) -Objekte in Ihrem Dokument zu entfernen, können Sie die [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) -Methode verwenden. Darüber hinaus können Sie die [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) -Methode verwenden, um alle Formen aus Kopf- und Fußzeilen in Ihrem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie der Inhalt aller Kopf- und Fußzeilen in einem Abschnitt gelöscht wird:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Das folgende Codebeispiel zeigt, wie Sie alle Formen aus allen Kopfzeilen und Fußzeilen in einem Abschnitt entfernen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Seiteneigenschaften in einem Abschnitt anpassen

Bevor Sie eine Seite oder ein Dokument drucken, möchten Sie möglicherweise die Größe und das Layout einer einzelnen Seite oder des gesamten Dokuments anpassen und ändern. Mit der Seiteneinrichtung können Sie die Einstellungen von Dokumentseiten wie Ränder, Ausrichtung und Größe ändern, um verschiedene erste Seiten oder ungerade Seiten zu drucken.

Mit Aspose.Words können Sie Seiten- und Abschnittseigenschaften mithilfe der Klasse [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) anpassen.

Das folgende Codebeispiel zeigt, wie Eigenschaften wie Seitengröße und Ausrichtung für den aktuellen Abschnitt festgelegt werden:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Das folgende Codebeispiel zeigt, wie Sie die Seiteneigenschaften in allen Abschnitten ändern:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Siehe auch

- [Logische Ebenen von Knoten in einem Dokument](/words/java/logical-levels-of-nodes-in-a-document/)
- [Dokumente einfügen und anhängen](/words/java/insert-and-append-documents/)

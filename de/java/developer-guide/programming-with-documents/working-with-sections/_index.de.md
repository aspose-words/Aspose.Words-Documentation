---
title: Arbeiten mit Abschnitten in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Sektionen
linktitle: Arbeiten mit Sektionen
description: "Verständnis von Dokumentenabschnittskonzepten und Manipulationspraktiken mit Java. Abschnitt in ein Dokument einfügen Java. Entfernen Sie den Abschnitt Java. Kopieren Sie Abschnitte zwischen Dokumenten."
type: docs
weight: 120
url: /de/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Manchmal wollen Sie ein Dokument, das nicht die gleiche Formatierung auf allen Seiten hat. Zum Beispiel müssen Sie Seitennummernformate ändern, unterschiedliche Seitengröße und Orientierung haben oder die erste Dokumentseite als Titelseite ohne Nummerierung haben. Das können Sie mit Abschnitten erreichen.

Sektionen sind Level-Knoten, die Header und Footer steuern, Orientierung, Spalten, Margen, Seitennummernformatierung und andere.

Aspose.Words ermöglicht es Ihnen, Abschnitte zu verwalten, ein Dokument in Abschnitte zu teilen und Formatierungsänderungen vorzunehmen, die nur für einen bestimmten Abschnitt gelten. Aspose.Words speichert Informationen über Abschnittsformatierungen wie Kopfzeilen und Fußzeilen, Seitenaufstellung und Spalteneinstellungen im Abschnittsbruch.

Dieser Artikel erklärt, wie man mit Abschnitten und Abschnittsbrüchen arbeitet.

## Was Abschnitt und Abschnittsbruch ist

Die Dokumente werden von der [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) und [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) Klassen. Abschnittsobjekte sind unmittelbare Kinder der [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) und über den [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) Eigentum. Sie können diese Knoten verwalten, indem Sie einige Methoden wie [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), und andere.

Abschnittsbruch ist eine Option, die Dokumentseiten in Abschnitte mit anpassbaren Layouts teilt.

## Arten eines Abschnitts Bruch

Aspose.Words ermöglicht es Ihnen, Dokumente zu spalten und zu formatieren, indem verschiedene Abschnittsunterbrechungen der [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) Aufzählung:

- AbschnittBreakContinuous
- SektionBreakNewColumn
- SektionBreakNewPage
- AbschnittBreakEvenPage
- AbschnittBreakOddPage

Sie können auch die [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) Aufzählung, um einen Bruchtyp zu wählen, der nur für den ersten Abschnitt wie NewColumn, NewPage, EvenPage und OddPage gilt.

## Verwalten einer Sektion

Da ein Abschnitt ein normaler Kompositknoten ist, ist die gesamte Knotenmanipulation API kann verwendet werden, um Abschnitte zu manipulieren: zu ergänzen, zu entfernen und andere Operationen auf Abschnitten. Sie können mehr über Knoten im Artikel lesen [Aspose.Words Document Object Model (DOM)](/words/de/java/aspose-words-document-object-model/).

Auf der anderen Seite können Sie auch die `DocumentBuilder` API mit Abschnitten zu arbeiten. In diesem Artikel werden wir uns auf diese besondere Art der Arbeit mit Sektionen konzentrieren.

## Einfügen oder Entfernen eines Abschnitts

Aspose.Words ermöglicht es Ihnen, einen Schnitt in Text einzufügen [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) Methode.

Das folgende Codebeispiel zeigt, wie ein Schnittbruch in ein Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Verwenden Sie die [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) Verfahren zum Löschen eines Abschnittsbruchs. Wenn Sie keinen bestimmten Abschnittsbruch entfernen müssen und stattdessen den Inhalt dieses Abschnitts löschen müssen, können Sie den [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) Methode.

Das folgende Codebeispiel zeigt, wie Abschnitte bricht:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Beachten Sie, dass ein Abschnittsbruch Informationen über den Abschnitt hat, der vor ihm geht, nicht den Abschnitt, der danach geht. Wenn Sie also einen Abschnittsbruch entfernen, erhält der Text vor dem entfernten Bruch die Eigenschaften des Abschnittsbruchs darauf. Dies kann dazu führen, dass das gesamte Dokument Landschaft wird, oder Kopf- und Fußzeilen ändern oder vollständig verschwinden.

{{% /alert %}}

## Abschnitt verschieben

Wenn Sie einen Abschnitt von einer Position in eine andere in Ihrem Dokument verschieben möchten, müssen Sie den Index dieses Abschnitts erhalten. Aspose.Words ermöglicht es Ihnen, eine Sektionsposition von einer [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Sie können die [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) Eigentum, um alle Abschnitte in Ihrem Dokument zu erhalten. Aber wenn Sie nur den ersten Abschnitt erhalten möchten, können Sie die [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) Eigentum.

Das folgende Codebeispiel zeigt, wie man auf den ersten Abschnitt zugreift und durch die Kinder eines Verbundknotens iteriert:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Ein Abschnittslayout angeben

Manchmal möchten Sie, dass Ihr Dokument besser aussieht, indem Sie kreative Layouts für verschiedene Dokumentabschnitte erstellen. Wenn Sie den Typ des aktuellen Abschnittsrasters angeben möchten, können Sie einen Abschnittslayout-Modus mit dem [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) Aufzählung:

- Standard
- Grid
- LineGrid
- SnapToChars

Das folgende Codebeispiel zeigt, wie die Anzahl der Zeilen begrenzt werden kann, die jede Seite haben kann:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Abschnitt bearbeiten

Wenn Sie einen neuen Abschnitt zu Ihrem Dokument hinzufügen, gibt es keinen Körper oder Absatz, den Sie bearbeiten können. Aspose.Words Sie können sicherstellen, dass ein Abschnitt einen Körper mit mindestens einem Absatz mit der [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) Methode – es wird automatisch einen Body (oder HeaderFooter)-Knoten zum Dokument hinzufügen und dann einen Absatz dazu hinzufügen.

Das folgende Codebeispiel zeigt, wie man einen neuen Abschnittsknoten mit **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Inhalt anhängen oder ausgeben

Wenn Sie am Anfang/Ende eines Abschnitts eine Form zeichnen oder Text oder Bild hinzufügen möchten, können Sie die [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) und [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) Methoden der [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) Klasse.

Das folgende Codebeispiel zeigt, wie Inhalte eines vorhandenen Abschnitts angehängt werden können:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Ein Abschnitt einfügen

Aspose.Words ermöglicht es Ihnen, einen Abschnitt zu duplizieren, indem Sie eine vollständige Kopie davon mithilfe der [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) Methode.

Das folgende Codebeispiel zeigt, wie man den ersten Abschnitt in Ihrem Dokument klont:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Abschnitte zwischen Dokumenten kopieren

In einigen Fällen können Sie große Dokumente mit vielen Abschnitten haben und möchten den Inhalt eines Abschnitts von einem Dokument in ein anderes kopieren.

Aspose.Words ermöglicht es Ihnen, Abschnitte zwischen Dokumenten zu kopieren [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) Methode.

Das folgende Codebeispiel zeigt, wie Abschnitte zwischen Dokumenten kopiert werden können:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Arbeit mit Sektion Header und Footer

Die Grundregeln für die Darstellung eines Headers oder Footer für jeden Abschnitt sind ganz einfach:

ANHANG Hat der Abschnitt keine eigenen Kopf-/Fußgänger bestimmter Art, so wird er aus dem vorherigen Abschnitt entnommen.
2. Die Art des auf der Seite angezeigten Headers/Fußers wird durch die "Different First Page" und die "Different Odd & Even Seiten"-Sektionseinstellungen gesteuert – wenn sie deaktiviert sind, werden die eigenen Titel des Abschnitts ignoriert.

Das folgende Codebeispiel zeigt, wie man 2 Abschnitte mit verschiedenen Headern erstellt:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Wenn Sie den Text von Kopfzeilen und Fußzeilen entfernen möchten, ohne zu entfernen [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Objekte in Ihrem Dokument, können Sie die [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) Methode. Darüber hinaus können Sie die [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) Methode, um alle Formen von Kopf- und Fußzeilen in Ihrem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie der Inhalt aller Kopf- und Fußzeilen in einem Abschnitt geklärt werden kann:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Das folgende Codebeispiel, wie man alle Formen von allen Kopfschuhen in einem Abschnitt entfernt:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Seiteneigenschaften in einem Abschnitt anpassen

Vor dem Drucken einer Seite oder eines Dokuments können Sie die Größe und das Layout einer einzelnen Seite oder des gesamten Dokuments anpassen und ändern möchten. Mit dem Seitenaufbau können Sie die Einstellungen von Dokumentseiten wie Margen, Orientierung und Größe zum Drucken von verschiedenen ersten Seiten oder ungeraden Seiten ändern.

Aspose.Words ermöglicht die Anpassung von Seiten- und Schnitteigenschaften durch die [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Klasse.

Das folgende Codebeispiel zeigt, wie man solche Eigenschaften wie Seitengröße und Orientierung für den aktuellen Abschnitt einstellt:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Das folgende Codebeispiel zeigt, wie man die Seiteneigenschaften in allen Abschnitten verändert:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Siehe auch

- [Logische Ebenen von Nodes in einem Dokument](/words/de/java/logical-levels-of-nodes-in-a-document/)
- [Dokumente einfügen und anfügen](/words/de/java/insert-and-append-documents/)

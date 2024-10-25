---
title: Arbeiten mit Abschnitten in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Abschnitten
linktitle: Arbeiten mit Abschnitten
description: "Verständnis von Dokumentabschnittskonzepten und Manipulationspraktiken mit C++. Fügt einen Abschnitt in ein Dokument C++ ein. Abschnitt C++ entfernen. Kopieren Sie Abschnitte zwischen Dokumenten."
type: docs
weight: 120
url: /de/cpp/working-with-sections/
---

Manchmal möchten Sie ein Dokument, das nicht auf allen Seiten die gleiche Formatierung aufweist. Beispielsweise müssen Sie möglicherweise Seitenzahlenformate ändern, eine andere Seitengröße und -ausrichtung haben oder die erste Dokumentseite als Deckblatt ohne Nummerierung verwenden. Das können Sie mit Abschnitten erreichen.

Abschnitte sind Ebenenknoten, die Kopf- und Fußzeilen, Ausrichtung, Spalten, Ränder, Formatierung von Seitenzahlen und andere steuern.

Mit Aspose.Words können Sie Abschnitte verwalten, ein Dokument in Abschnitte unterteilen und Formatierungsänderungen vornehmen, die nur für einen bestimmten Abschnitt gelten. Aspose.Words speichert Informationen zur Abschnittsformatierung wie Kopf- und Fußzeilen, Seiteneinrichtung und Spalteneinstellungen im Abschnittsumbruch.

In diesem Artikel wird erläutert, wie Sie mit Abschnitten und Abschnittsumbrüchen arbeiten.

## Was Abschnitt und Abschnittsumbruch ist

Dokumentabschnitte werden durch die Klassen [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) und [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) dargestellt. Abschnittsobjekte sind unmittelbare untergeordnete Elemente des Knotens [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) und können über die Eigenschaft [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) aufgerufen werden. Sie können diese Knoten mit einigen Methoden verwalten, z [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), und andere.

Abschnittsumbruch ist eine Option, die Dokumentseiten in Abschnitte mit anpassbaren Layouts unterteilt.

## Arten eines Abschnittsumbruchs

Aspose.Words ermöglicht es Ihnen, Dokumente mit verschiedenen Abschnittsumbrüchen der [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/)-Aufzählung zu teilen und zu formatieren:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Sie können auch die [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/)-Aufzählung verwenden, um einen Umbruchstyp auszuwählen, der nur für den ersten Abschnitt gilt, z. B.: NewColumn, NewPage, EvenPage, und OddPage.

## Verwalten eines Abschnitts

Da ein Abschnitt ein normaler zusammengesetzter Knoten ist, kann die gesamte Knotenmanipulation API zum Manipulieren von Abschnitten verwendet werden: zum Hinzufügen, Entfernen und anderen Operationen an Abschnitten. Sie können mehr über Knoten im Artikel lesen [Aspose.Words Dokumentobjektmodell (DOM)](/words/cpp/aspose-words-document-object-model/).

Andererseits können Sie auch `DocumentBuilder` API verwenden, um mit Abschnitten zu arbeiten. In diesem Artikel werden wir uns auf diese spezielle Art der Arbeit mit Abschnitten konzentrieren.

## Einfügen oder Entfernen eines Abschnittsumbruchs

Mit Aspose.Words können Sie mit der [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/)-Methode einen Abschnittsumbruch in Text einfügen.

Das folgende Codebeispiel zeigt, wie Sie einen Abschnittsumbruch in ein Dokument einfügen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Verwenden Sie die Methode [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/), um einen Abschnittsumbruch zu löschen. Wenn Sie einen bestimmten Abschnittsumbruch nicht entfernen und stattdessen den Inhalt dieses Abschnitts löschen müssen, können Sie die Methode [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/) verwenden.

Das folgende Codebeispiel zeigt, wie Abschnittsumbrüche entfernt werden:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Beachten Sie, dass ein Abschnittsumbruch Informationen über den Abschnitt enthält, der davor steht, nicht über den Abschnitt, der danach folgt. Wenn Sie also einen Abschnittsumbruch entfernen, erhält der Text vor dem entfernten Umbruch die Eigenschaften des darauf folgenden Abschnittsumbruchs. Dies kann dazu führen, dass das gesamte Dokument im Querformat angezeigt wird oder Kopf- und Fußzeilen sich ändern oder vollständig verschwinden.

{{% /alert %}}

## Einen Abschnitt verschieben

Wenn Sie einen Abschnitt in Ihrem Dokument von einer Position an eine andere verschieben möchten, müssen Sie den Index dieses Abschnitts abrufen. Aspose.Words ermöglicht es Ihnen, eine Schnittposition von a [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) zu erhalten. Sie können die Eigenschaft [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) verwenden, um alle Abschnitte in Ihrem Dokument abzurufen. Wenn Sie jedoch nur den ersten Abschnitt erhalten möchten, können Sie die Eigenschaft [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) verwenden.

Das folgende Codebeispiel zeigt, wie auf den ersten Abschnitt zugegriffen und die untergeordneten Elemente eines zusammengesetzten Knotens durchlaufen werden:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Angeben eines Abschnittslayouts

Manchmal möchten Sie, dass Ihr Dokument besser aussieht, indem Sie kreative Layouts für verschiedene Dokumentabschnitte erstellen. Wenn Sie den Typ des aktuellen Schnittrasters angeben möchten, können Sie einen Schnittlayoutmodus mit der [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/)-Aufzählung auswählen:

- Standard
- Grid
- LineGrid
- SnapToChars

Das folgende Codebeispiel zeigt, wie Sie die Anzahl der Zeilen begrenzen, die jede Seite haben darf:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Einen Abschnitt bearbeiten

Wenn Sie Ihrem Dokument einen neuen Abschnitt hinzufügen, gibt es keinen Text oder Absatz, den Sie bearbeiten können. Mit Aspose.Words können Sie mit der [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) –Methode sicherstellen, dass ein Abschnitt einen Text mit mindestens einem Absatz enthält - es wird automatisch ein Textknoten (oder HeaderFooter) zum Dokument hinzugefügt und dann ein Absatz hinzugefügt.

Das folgende Codebeispiel zeigt, wie Sie einen neuen Abschnittsknoten mit **EnsureMinimum** vorbereiten:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Inhalt anhängen oder voranstellen

Wenn Sie am Anfang / Ende eines Abschnitts eine Form zeichnen oder Text oder Bild hinzufügen möchten, können Sie die Methoden [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) und [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) der Klasse [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) verwenden.

Das folgende Codebeispiel zeigt, wie Sie den Inhalt eines vorhandenen Abschnitts anhängen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Einen Abschnitt klonen

Mit Aspose.Words können Sie einen Abschnitt duplizieren, indem Sie mit der Methode [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/) eine vollständige Kopie davon erstellen.

Das folgende Codebeispiel zeigt, wie Sie den ersten Abschnitt in Ihrem Dokument klonen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Abschnitte zwischen Dokumenten kopieren

In einigen Fällen haben Sie möglicherweise große Dokumente mit vielen Abschnitten und möchten den Inhalt eines Abschnitts von einem Dokument in ein anderes kopieren.

Aspose.Words ermöglicht das Kopieren von Abschnitten zwischen Dokumenten mit der [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/)-Methode.

Das folgende Codebeispiel zeigt, wie Abschnitte zwischen Dokumenten kopiert werden:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Mit Kopf- und Fußzeile des Abschnitts arbeiten

Die Grundregeln für die Anzeige einer Kopf- oder Fußzeile für jeden Abschnitt sind recht einfach:

1. Wenn der Abschnitt keine eigenen Kopf- / Fußzeilen eines bestimmten Typs enthält, wird er aus dem vorherigen Abschnitt übernommen.
2. Die Art der Kopf– / Fußzeile, die auf der Seite angezeigt wird, wird durch die Abschnittseinstellungen "Andere erste Seite" und "Verschiedene ungerade und gerade Seiten" gesteuert - wenn sie deaktiviert sind, werden die eigenen Titel des Abschnitts ignoriert.

Das folgende Codebeispiel zeigt, wie 2 Abschnitte mit unterschiedlichen Überschriften erstellt werden:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Wenn Sie den Text von Kopf- und Fußzeilen entfernen möchten, ohne [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) -Objekte in Ihrem Dokument zu entfernen, können Sie die [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/) -Methode verwenden. Darüber hinaus können Sie die [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) -Methode verwenden, um alle Formen aus Kopf- und Fußzeilen in Ihrem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie der Inhalt aller Kopf- und Fußzeilen in einem Abschnitt gelöscht wird:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Das folgende Codebeispiel zeigt, wie Sie alle Formen aus allen Kopfzeilen und Fußzeilen in einem Abschnitt entfernen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Seiteneigenschaften in einem Abschnitt anpassen

Bevor Sie eine Seite oder ein Dokument drucken, möchten Sie möglicherweise die Größe und das Layout einer einzelnen Seite oder des gesamten Dokuments anpassen und ändern. Mit der Seiteneinrichtung können Sie die Einstellungen von Dokumentseiten wie Ränder, Ausrichtung und Größe ändern, um verschiedene erste Seiten oder ungerade Seiten zu drucken.

Mit Aspose.Words können Sie Seiten- und Abschnittseigenschaften mithilfe der Klasse [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) anpassen.

Das folgende Codebeispiel zeigt, wie Eigenschaften wie Seitengröße und Ausrichtung für den aktuellen Abschnitt festgelegt werden:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Das folgende Codebeispiel zeigt, wie Sie die Seiteneigenschaften in allen Abschnitten ändern:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Siehe auch

- [Logische Ebenen von Knoten in einem Dokument](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Dokumente einfügen und anhängen](/words/cpp/insert-and-append-documents/)
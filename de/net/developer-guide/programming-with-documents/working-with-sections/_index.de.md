---
title: Arbeiten mit Abschnitten in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Abschnitten
linktitle: Arbeiten mit Abschnitten
description: "Verständnis der Konzepte und Bearbeitungspraktiken von Dokumentabschnitten mit C#. Abschnitt in ein C#-Dokument einfügen. Abschnitt C# entfernen. Abschnitte zwischen Dokumenten kopieren."
type: docs
weight: 120
url: /de/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Manchmal möchten Sie ein Dokument, das nicht auf allen Seiten die gleiche Formatierung aufweist. Beispielsweise müssen Sie möglicherweise die Seitenzahlformate ändern, eine andere Seitengröße und -ausrichtung verwenden oder die erste Dokumentseite als Deckblatt ohne Nummerierung verwenden. Das können Sie mit Abschnitten erreichen.

Abschnitte sind Ebenenknoten, die Kopf- und Fußzeilen, Ausrichtung, Spalten, Ränder, Seitenzahlformatierung und andere steuern.

Mit Aspose.Words können Sie Abschnitte verwalten, ein Dokument in Abschnitte unterteilen und Formatierungsänderungen vornehmen, die nur für einen bestimmten Abschnitt gelten. Aspose.Words speichert Informationen zur Abschnittsformatierung wie Kopf- und Fußzeilen, Seiteneinrichtung und Spalteneinstellungen im Abschnittsumbruch.

In diesem Artikel wird erläutert, wie Sie mit Abschnitten und Abschnittsumbrüchen arbeiten.

## Was Abschnitt und Abschnittsumbruch ist

Dokumentabschnitte werden durch die Klassen [Section](https://reference.aspose.com/words/de/net/aspose.words/section/) und [SectionCollection](https://reference.aspose.com/words/de/net/aspose.words/section/collection) repräsentiert. Abschnittsobjekte sind unmittelbare untergeordnete Elemente des [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Knotens und können über die [Sections](https://reference.aspose.com/words/de/net/aspose.words/document//properties/sections)-Eigenschaft aufgerufen werden. Sie können diese Knoten mithilfe einiger Methoden wie [Remove](https://reference.aspose.com/words/de/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/de/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/de/net/aspose.words/nodecollection/indexof/) und anderen verwalten.

Abschnittsumbruch ist eine Option, die Dokumentseiten in Abschnitte mit anpassbaren Layouts unterteilt.

## Arten eines Abschnittsumbruchs

Mit Aspose.Words können Sie Dokumente mithilfe verschiedener Abschnittsumbrüche der [BreakType](https://reference.aspose.com/words/de/net/aspose.words/breaktype/)-Aufzählung aufteilen und formatieren:

* SectionBreakContinuous
* SectionBreakNewColumn
* AbschnittBreakNewPage
* AbschnittBreakEvenPage
* SectionBreakOddPage

Sie können die [SectionStart](https://reference.aspose.com/words/de/net/aspose.words/sectionstart/)-Enumeration auch verwenden, um einen Umbruchtyp auszuwählen, der nur für den ersten Abschnitt gilt, z. B. NewColumn, NewPage, EvenPage und OddPage.

## Verwalten Sie einen Abschnitt

Da es sich bei einem Abschnitt um einen normalen zusammengesetzten Knoten handelt, kann das gesamte Knotenmanipulations-API zum Bearbeiten von Abschnitten verwendet werden: zum Hinzufügen, Entfernen und für andere Vorgänge an Abschnitten. Weitere Informationen zu Knoten finden Sie im Artikel [Aspose.Words Document Object Model (DOM)](/words/de/net/aspose-words-document-object-model/).

Andererseits können Sie auch `DocumentBuilder` API verwenden, um mit Abschnitten zu arbeiten. In diesem Artikel konzentrieren wir uns auf diese besondere Art der Arbeit mit Abschnitten.

## Fügen Sie einen Abschnittsumbruch ein oder entfernen Sie ihn

Mit Aspose.Words können Sie mithilfe der [InsertBreak](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertbreak/)-Methode einen Abschnittsumbruch in Text einfügen.

Das folgende Codebeispiel zeigt, wie man einen Abschnittsumbruch in ein Dokument einfügt:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Verwenden Sie die [Remove](https://reference.aspose.com/words/de/net/aspose.words/node/remove/)-Methode, um einen Abschnittsumbruch zu löschen. Wenn Sie einen bestimmten Abschnittsumbruch nicht entfernen müssen und stattdessen den Inhalt dieses Abschnitts löschen müssen, können Sie die [ClearContent](https://reference.aspose.com/words/de/net/aspose.words/section/clearcontent/)-Methode verwenden.

Das folgende Codebeispiel zeigt, wie Abschnittsumbrüche entfernt werden:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Beachten Sie, dass ein Abschnittsumbruch Informationen über den Abschnitt davor enthält, nicht über den Abschnitt, der darauf folgt. Wenn Sie also einen Abschnittsumbruch entfernen, erhält der Text vor dem entfernten Umbruch die Eigenschaften des darauf folgenden Abschnittsumbruchs. Dies kann dazu führen, dass das gesamte Dokument im Querformat angezeigt wird oder dass sich Kopf- und Fußzeilen ändern oder ganz verschwinden.

{{% /alert %}}

## Verschieben Sie einen Abschnitt

Wenn Sie einen Abschnitt in Ihrem Dokument von einer Position an eine andere verschieben möchten, müssen Sie den Index dieses Abschnitts abrufen. Mit Aspose.Words können Sie mithilfe der [Item](https://reference.aspose.com/words/de/net/aspose.words/sectioncollection//properties/item)-Eigenschaft eine Abschnittsposition aus einem [SectionCollection](https://reference.aspose.com/words/de/net/aspose.words/sectioncollection/) abrufen. Sie können die [Sections](https://reference.aspose.com/words/de/net/aspose.words/document/sections/)-Eigenschaft verwenden, um alle Abschnitte in Ihrem Dokument abzurufen. Wenn Sie jedoch nur den ersten Abschnitt erhalten möchten, können Sie die [FirstSection](https://reference.aspose.com/words/de/net/aspose.words/document/firstsection/)-Eigenschaft verwenden.

Das folgende Codebeispiel zeigt, wie Sie auf den ersten Abschnitt zugreifen und die untergeordneten Elemente eines zusammengesetzten Knotens durchlaufen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Geben Sie ein Abschnittslayout an

Manchmal möchten Sie, dass Ihr Dokument besser aussieht, indem Sie kreative Layouts für verschiedene Dokumentabschnitte erstellen. Wenn Sie den Typ des aktuellen Abschnittsrasters angeben möchten, können Sie mithilfe der [SectionLayoutMode](https://reference.aspose.com/words/de/net/aspose.words/sectionlayoutmode/)-Enumeration einen Abschnittslayoutmodus auswählen:

* Standard
* Netz
* Liniengitter
* SnapToChars

Das folgende Codebeispiel zeigt, wie Sie die Anzahl der Zeilen begrenzen können, die jede Seite haben darf:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Bearbeiten Sie einen Abschnitt

Wenn Sie Ihrem Dokument einen neuen Abschnitt hinzufügen, gibt es keinen Textkörper oder Absatz, den Sie bearbeiten können. Mit Aspose.Words können Sie mit der [EnsureMinimum](https://reference.aspose.com/words/de/net/aspose.words/section/ensureminimum/)-Methode garantieren, dass ein Abschnitt einen Hauptteil mit mindestens einem Absatz enthält – es fügt dem Dokument automatisch einen Hauptteilknoten (oder HeaderFooter-Knoten) und anschließend einen Absatz hinzu.

Das folgende Codebeispiel zeigt, wie Sie mit **EnsureMinimum** einen neuen Abschnittsknoten vorbereiten:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Inhalte anhängen oder voranstellen

Wenn Sie am Anfang/Ende eines Abschnitts eine Form zeichnen oder Text oder Bild hinzufügen möchten, können Sie die Methoden [AppendContent](https://reference.aspose.com/words/de/net/aspose.words/section/appendcontent/) und [PrependContent](https://reference.aspose.com/words/de/net/aspose.words/section/prependcontent/) der [Section](https://reference.aspose.com/words/de/net/aspose.words/section/)-Klasse verwenden.

Das folgende Codebeispiel zeigt, wie der Inhalt eines vorhandenen Abschnitts angehängt wird:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Klonen Sie einen Abschnitt

Mit Aspose.Words können Sie einen Abschnitt duplizieren, indem Sie mit der [Clone](https://reference.aspose.com/words/de/net/aspose.words/section/clone/)-Methode eine vollständige Kopie davon erstellen.

Das folgende Codebeispiel zeigt, wie Sie den ersten Abschnitt in Ihrem Dokument klonen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Abschnitte zwischen Dokumenten kopieren

In einigen Fällen verfügen Sie möglicherweise über große Dokumente mit vielen Abschnitten und möchten den Inhalt eines Abschnitts von einem Dokument in ein anderes kopieren.

Mit Aspose.Words können Sie Abschnitte zwischen Dokumenten mithilfe der [ImportNode](https://reference.aspose.com/words/de/net/aspose.words/nodeimporter/importnode/)-Methode kopieren.

Das folgende Codebeispiel zeigt, wie Abschnitte zwischen Dokumenten kopiert werden:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Arbeiten Sie mit Abschnittskopf- und -fußzeilen

Die Grundregeln für die Anzeige einer Kopf- oder Fußzeile für jeden Abschnitt sind recht einfach:

1. Wenn der Abschnitt keine eigenen Kopf-/Fußzeilen eines bestimmten Typs hat, werden diese aus dem vorherigen Abschnitt übernommen.
2. Die Art der auf der Seite angezeigten Kopf-/Fußzeile wird durch die Abschnittseinstellungen "Unterschiedliche erste Seite" und "Unterschiedliche ungerade und gerade Seiten" gesteuert – wenn sie deaktiviert sind, werden die eigenen Titel des Abschnitts ignoriert.

Das folgende Codebeispiel zeigt, wie zwei Abschnitte mit unterschiedlichen Überschriften erstellt werden:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Wenn Sie den Text von Kopf- und Fußzeilen entfernen möchten, ohne [HeaderFooter](https://reference.aspose.com/words/de/net/aspose.words/headerfooter/)-Objekte in Ihrem Dokument zu entfernen, können Sie die [ClearHeadersFooters](https://reference.aspose.com/words/de/net/aspose.words/section/clearheadersfooters/)-Methode verwenden. Darüber hinaus können Sie mit der [DeleteHeaderFooterShapes](https://reference.aspose.com/words/de/net/aspose.words/section/deleteheaderfootershapes/)-Methode alle Formen aus Kopf- und Fußzeilen in Ihrem Dokument entfernen.

Das folgende Codebeispiel zeigt, wie der Inhalt aller Kopf- und Fußzeilen in einem Abschnitt gelöscht wird:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

Das folgende Codebeispiel zeigt, wie alle Formen aus allen Kopf- und Fußzeilen in einem Abschnitt entfernt werden:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Passen Sie die Seiteneigenschaften in einem Abschnitt an

Bevor Sie eine Seite oder ein Dokument drucken, möchten Sie möglicherweise die Größe und das Layout einer einzelnen Seite oder des gesamten Dokuments anpassen und ändern. Mit der Seiteneinrichtung können Sie die Einstellungen von Dokumentseiten wie Ränder, Ausrichtung und Größe ändern, um verschiedene erste Seiten oder ungerade Seiten zu drucken.

Mit Aspose.Words können Sie Seiten- und Abschnittseigenschaften mithilfe der [PageSetup](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/)-Klasse anpassen.

Das folgende Codebeispiel zeigt, wie Eigenschaften wie Seitengröße und Ausrichtung für den aktuellen Abschnitt festgelegt werden:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie die Seiteneigenschaften in allen Abschnitten ändern:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Siehe auch

* [Logische Ebenen von Knoten in einem Dokument](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Dokumente einfügen und anhängen](/words/de/net/insert-and-append-documents/)


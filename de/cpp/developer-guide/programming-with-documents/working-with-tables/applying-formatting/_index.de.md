---
title: Tabellenformatierung in C++
second_title: Aspose.Words für C++
articleTitle: Formatierung anwenden
linktitle: Formatierung anwenden
description: "Tabellenformatierung in Details mit C++. Verwenden Sie C++, um jeden Teil der Tabelle zu formatieren."
type: docs
weight: 70
url: /de/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Jedes Element einer Tabelle kann mit unterschiedlichen Formatierungen angewendet werden. Beispielsweise wird die Tabellenformatierung auf die gesamte Tabelle angewendet, die Zeilenformatierung nur auf bestimmte Zeilen und die Zellenformatierung nur auf bestimmte Zellen.

Aspose.Words bietet eine umfangreiche API-Funktion zum Abrufen und Anwenden von Formatierungen auf eine Tabelle. Sie können die Knoten [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) und [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) verwenden, um die Formatierung festzulegen.

In diesem Artikel werden wir darüber sprechen, wie Formatierungen auf verschiedene Tabellenknoten angewendet werden und welche Tabellenformatierungseinstellungen Aspose.Words unterstützt.

## Formatierung auf verschiedene Knoten anwenden

In diesem Abschnitt werden wir uns mit der Anwendung von Formatierungen auf verschiedene Tabellenknoten befassen.

### Formatierung auf Tabellenebene

Um Formatierungen auf eine Tabelle anzuwenden, können Sie die Eigenschaften verwenden, die auf dem entsprechenden **Table**-Knoten mit den Klassen [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) und [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/) verfügbar sind.

{{% alert color="primary" %}}

Beachten Sie, dass die Tabelle mindestens eine Zeile enthalten muss, bevor die Tabelleneigenschaften angewendet werden können. Dies bedeutet, dass beim Erstellen einer Tabelle mit [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) diese Formatierung nach dem ersten Aufruf von [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) oder nach dem Hinzufügen der ersten Zeile zur Tabelle oder beim direkten Einfügen von Knoten in DOM erfolgen muss.

{{% /alert %}}

Die folgenden Bilder zeigen eine Darstellung der **Table** Formatierungsmerkmale in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Das folgende Codebeispiel zeigt, wie Sie einen Gliederungsrahmen auf eine Tabelle anwenden:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Das folgende Codebeispiel zeigt, wie eine Tabelle mit aktivierten Rahmen (Raster) erstellt wird:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Formatierung auf Zeilenebene

**Zeilenebene**

{{% alert color="primary" %}}

Beachten Sie, dass a **Row** nur ein untergeordneter Knoten von a **Table** sein kann. Gleichzeitig muss mindestens eine **Cell** in der **Row** vorhanden sein, damit die Formatierung darauf angewendet werden kann.

{{% /alert %}}

Die folgenden Bilder zeigen eine Darstellung der **Row** Formatierungsmerkmale in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Das folgende Codebeispiel zeigt, wie Sie die Tabellenzeilenformatierung ändern:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Formatierung auf Zellebene

Die Formatierung auf Zellenebene wird von den Klassen [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) und [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/) gesteuert.

{{% alert color="primary" %}}

Beachten Sie, dass a **Cell** nur ein untergeordneter Knoten von a **Row** sein kann. Gleichzeitig muss in der **Cell** mindestens eine [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) enthalten sein, damit die Formatierung darauf angewendet werden kann.

Zusätzlich zu **Paragraph** können Sie auch eine **Table** in eine **Cell** einfügen.

{{% /alert %}}

Die folgenden Bilder zeigen eine Darstellung der **Cell** Formatierungsmerkmale in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Das folgende Codebeispiel zeigt, wie Sie die Formatierung einer Tabellenzelle ändern:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Das folgende Codebeispiel zeigt, wie Sie den Platz (in Punkten) festlegen, der links / oben / rechts / unten am Inhalt der Zelle hinzugefügt werden soll:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Zeilenhöhen angeben

Der einfachste Weg, die Zeilenhöhe festzulegen, ist die Verwendung von **DocumentBuilder**. Mit den entsprechenden **RowFormat**-Eigenschaften können Sie die Standardhöheneinstellung festlegen oder für jede Zeile in der Tabelle eine andere Höhe anwenden.

In Aspose.Words wird die Tabellenzeilenhöhe gesteuert durch:

- die Eigenschaft Zeilenhöhe - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- die Höhenregeleigenschaft für die angegebene Zeile - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Gleichzeitig kann für jede Zeile eine andere Höhe eingestellt werden – so können Sie die Tabelleneinstellungen weitgehend steuern.

{{% alert color="primary" %}}

Regeloptionen zur Angabe der Höhe eines Objekts können mit der [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/)-Aufzählung festgelegt werden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle erstellen, die eine einzelne Zelle enthält, und die Zeilenformatierung anwenden:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Tabellen- und Zellenbreiten angeben

Eine Tabelle in einem Microsoft Word-Dokument bietet verschiedene Möglichkeiten, die Größe der Tabelle und einzelner Zellen zu ändern. Diese Eigenschaften ermöglichen eine beträchtliche Kontrolle über das Erscheinungsbild und Verhalten der Tabelle, sodass Aspose.Words das Verhalten von Tabellen wie in Microsoft Word unterstützt.

Es ist wichtig zu wissen, dass Tabellenelemente verschiedene Eigenschaften aufweisen, die sich auf die Berechnung der Breite der Gesamttabelle sowie einzelner Zellen auswirken können:

- Bevorzugte Breite auf dem Tisch
- Bevorzugte Breite auf einzelnen Zellen
- Autofit auf dem Tisch zulassen

In diesem Artikel wird beschrieben, wie die verschiedenen Eigenschaften für die Tabellenbreitenberechnung funktionieren und wie Sie die vollständige Kontrolle über die Tabellenbreitenberechnung erhalten. Das ist
besonders nützlich in solchen Fällen, in denen das Tabellenlayout nicht wie erwartet angezeigt wird.

{{% alert color="primary" %}}

In den meisten Fällen wird die bevorzugte Zelle als die Tabellenbreite empfohlen. Die bevorzugte Zellenbreite entspricht eher der DOCX -Formatspezifikation sowie dem Aspose.Words -Modell.

Die Zellenbreite ist tatsächlich ein berechneter Wert für das Format DOCX. Die tatsächliche Zellenbreite kann von vielen Dingen abhängen. Beispielsweise kann das Ändern der Seitenränder oder der bevorzugten Tabellenbreite die tatsächliche Zellenbreite beeinflussen.

Die bevorzugte Zellenbreite ist eine Zelleneigenschaft, die im Dokument gespeichert ist. Es hängt von nichts ab und ändert sich nicht, wenn Sie die Tabelle oder andere Eigenschaften der Zelle ändern.

{{% /alert %}}

{{% alert color="primary" %}}

Alle in diesem Artikel beschriebenen Eigenschaften und Methoden beziehen sich auf die Funktionsweise von Tabellen in Microsoft Word. Wenn Sie Ihre Tabelle also in den meisten Fällen programmgesteuert erstellen, es Ihnen jedoch schwer fällt, die gewünschte Tabelle zu erstellen, können Sie stattdessen versuchen, sie zuerst visuell in Microsoft Word zu erstellen und dann einfach die Formatierungswerte in Ihre Anwendung zu kopieren.

{{% /alert %}}

### So verwenden Sie die bevorzugte Breite

Die gewünschte Breite einer Tabelle oder einzelner Zellen wird durch die Eigenschaft bevorzugte Breite definiert, bei der es sich um die Größe handelt, die ein Element anstrebt. Das heißt, die bevorzugte Breite kann für die gesamte Tabelle oder für einzelne Zellen angegeben werden. In einigen Situationen ist es möglicherweise nicht möglich, diese Breite genau anzupassen, aber die tatsächliche Breite wird in den meisten Fällen nahe an diesem Wert liegen.

Der entsprechende bevorzugte Breiten-Typ und -Wert werden mit den Methoden der [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/)-Klasse festgelegt:

- die [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) -Methode zum Angeben von auto oder "keine bevorzugte Breite"
- die [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) -Methode zum Angeben einer prozentualen Breite
- die [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) -Methode zum Angeben der Breite in Punkten

Die folgenden Bilder zeigen eine Darstellung der *preferred width setting features* in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Ein Beispiel dafür, wie diese Optionen auf eine reale Tabelle in einem Dokument angewendet werden, ist in der Abbildung unten zu sehen.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Bevor Sie die bevorzugte Breite in einer Tabelle verwenden können, müssen Sie sicherstellen, dass die Tabelle mindestens eine Zeile enthält. Dies liegt daran, dass eine solche Tabellenformatierung in einem Microsoft Word -Dokument oder in einem in Aspose.Words erstellten Dokument in den Zeilen der Tabelle gespeichert ist.

{{% /alert %}}

#### Geben Sie die bevorzugte Tabellen- oder Zellenbreite an

In Aspose.Words werden Tabellen- und Zellenbreiten mit der Eigenschaft [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) und der Eigenschaft [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) festgelegt, wobei Optionen in der Aufzählung [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) verfügbar sind:

- **Auto**, was keiner bevorzugten Breite entspricht
- **Percent** passt das Element relativ zum verfügbaren Platz in der Fenster- oder Containergröße an und berechnet den Wert neu, wenn sich die verfügbare Breite ändert
- **Points**, was einem Element der angegebenen Breite in Punkten entspricht

{{% alert color="primary" %}}

Standardmäßig kann eine Tabelle so beschrieben werden, dass sie zu 100% des verfügbaren Platzes auf der Seite passt. In diesem Fall bedeutet dies, dass die Tabelle versucht, den Abstand zwischen dem linken und rechten Seitenrand einzunehmen.

{{% /alert %}}

Wenn Sie die Eigenschaft [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) verwenden, wird die bevorzugte Breite relativ zu ihrem Container angepasst: Seite, Textspalte oder äußere Tabellenzelle, wenn es sich um eine verschachtelte Tabelle handelt.

Das folgende Codebeispiel zeigt, wie Sie die Tabelle so einstellen, dass sie automatisch an 50% der Seitenbreite angepasst wird:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Wenn Sie die Eigenschaft [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) für eine bestimmte Zelle verwenden, wird deren bevorzugte Breite angepasst.

Das folgende Codebeispiel zeigt, wie Sie die verschiedenen bevorzugten Breiteneinstellungen festlegen:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Finden Sie den bevorzugten Breiten-Typ und -Wert

Sie können die Eigenschaften [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) und [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) verwenden, um die bevorzugten Breitenangaben der gewünschten Tabelle oder Zelle zu finden.

Das folgende Codebeispiel zeigt, wie Sie den bevorzugten Breiten-Typ einer Tabellenzelle abrufen:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Wie man Autofit einstellt

Mit der Eigenschaft [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) können Zellen in einer Tabelle nach einem ausgewählten Kriterium vergrößert und verkleinert werden. Sie können beispielsweise die Option **AutoFit to Window** verwenden, um die Tabelle an die Breite der Seite anzupassen, und die Option **AutoFit to Content**, um zuzulassen, dass jede Zelle entsprechend ihrem Inhalt vergrößert oder verkleinert wird.

{{% alert color="primary" %}}

Darüber hinaus kann die Eigenschaft **AllowAutoFit** in Verbindung mit einer bevorzugten Zellenbreite verwendet werden, um eine Zelle so zu formatieren, dass sie automatisch an ihren Inhalt angepasst wird, aber auch eine Anfangsbreite aufweist. Bei Bedarf kann die Zellenbreite dann über diese Breite hinauswachsen.

{{% /alert %}}

Standardmäßig fügt Aspose.Words eine neue Tabelle mit **AutoFit to Window** ein. Die Tabelle wird entsprechend der verfügbaren Seitenbreite dimensioniert. Um die Größe einer Tabelle zu ändern, können Sie die Methode [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/) aufrufen. Diese Methode akzeptiert eine [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/)-Aufzählung, die angibt, welcher Typ von Autofit auf die Tabelle angewendet wird.

Es ist wichtig zu wissen, dass die Autofit-Methode tatsächlich eine Verknüpfung ist, die gleichzeitig verschiedene Eigenschaften auf die Tabelle anwendet. Dies sind Eigenschaften, die der Tabelle tatsächlich das beobachtete Verhalten verleihen. Wir werden diese Eigenschaften für jede Autofit-Option besprechen.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle so einstellen, dass jede Zelle entsprechend ihrem Inhalt verkleinert oder vergrößert wird:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit Tabelle zum Fenster

Wenn die automatische Anpassung an ein Fenster auf eine Tabelle angewendet wird, werden die folgenden Vorgänge tatsächlich hinter den Kulissen ausgeführt:

1. Die Eigenschaft **Table.AllowAutoFit** ist aktiviert, um die Spaltengröße automatisch an den verfügbaren Inhalt anzupassen, wobei ein **Table.PreferredWidth**-Wert von 100 verwendet wird%
2. **CellFormat.PreferredWidth** wird aus allen Tabellenzellen entfernt
   {{% alert color="primary" %}}
   Beachten Sie, dass sich dies geringfügig vom Verhalten Microsoft Word unterscheidet, bei dem die bevorzugte Breite jeder Zelle basierend auf ihrer aktuellen Größe und ihrem aktuellen Inhalt auf geeignete Werte festgelegt wird. Aspose.Words aktualisiert die bevorzugte Breite nicht, sodass sie stattdessen nur gelöscht werden.
   {{% /alert %}}
3. Spaltenbreiten werden für den aktuellen Tabelleninhalt neu berechnet – das Endergebnis ist eine Tabelle, die die gesamte verfügbare Breite einnimmt
4. Die Breite der Spalten in der Tabelle ändert sich automatisch, wenn der Benutzer den Text bearbeitet

Das folgende Codebeispiel zeigt, wie eine Tabelle automatisch an die Seitenbreite angepasst wird:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit Tabelle zum Inhalt

Wenn die Tabelle automatisch an den Inhalt angepasst wird, werden die folgenden Schritte tatsächlich hinter den Kulissen ausgeführt:

1. Die Eigenschaft **Table.AllowAutoFit** ist aktiviert, um die Größe jeder Zelle automatisch entsprechend ihrem Inhalt zu ändern

2. Die bevorzugte Tabellenbreite wird von **Table.PreferredWidth** entfernt, **CellFormat.PreferredWidth** wird für jede Tabellenzelle entfernt
   {{% alert color="primary" %}}

   Beachten Sie, dass diese Option zum automatischen Anpassen die bevorzugte Breite aus Zellen entfernt, genau wie in Microsoft Word. Wenn Sie die Spaltengrößen beibehalten und die Spalten entsprechend dem Inhalt vergrößern oder verkleinern möchten, sollten Sie die Eigenschaft **Table.AllowAutoFit** allein auf **True** setzen, anstatt die Verknüpfung zum automatischen Anpassen zu verwenden.{{% /alert %}}

3. Spaltenbreiten werden für den aktuellen Tabelleninhalt neu berechnet – das Endergebnis ist eine Tabelle, in der die Spaltenbreiten und die Breite der gesamten Tabelle automatisch an den Inhalt angepasst werden, wenn der Benutzer den Text bearbeitet

Das folgende Codebeispiel zeigt, wie eine Tabelle automatisch an ihren Inhalt angepasst wird:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Deaktivieren Sie AutoFit in der Tabelle und verwenden Sie feste Spaltenbreiten

Wenn für eine Tabelle die automatische Anpassung deaktiviert ist und stattdessen feste Spaltenbreiten verwendet werden, werden die folgenden Schritte ausgeführt:

1. Die Eigenschaft **Table.AllowAutoFit** ist deaktiviert, sodass Spalten nicht auf ihren Inhalt vergrößert oder verkleinert werden
2. Die bevorzugte Breite der gesamten Tabelle wird von **Table.PreferredWidth** entfernt, **CellFormat.PreferredWidth** wird von allen Tabellenzellen entfernt
3. Das Endergebnis ist eine Tabelle, deren Spaltenbreiten durch die Eigenschaft [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) bestimmt werden und deren Spaltengröße nicht automatisch geändert wird, wenn der Benutzer Text eingibt oder wenn die Seitengröße geändert wird

{{% alert color="primary" %}}

Beachten Sie, dass, wenn für **CellFormat.Width** keine Breite angegeben ist, der Standardwert von einem Zoll (72 Punkte) verwendet wird.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie die automatische Anpassung deaktivieren und die feste Breite für die angegebene Tabelle aktivieren:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Rangfolge bei der Berechnung der Zellenbreite

Mit Aspose.Words können Benutzer die Breite einer Tabelle oder Zelle durch mehrere Objekte definieren, einschließlich [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – die Eigenschaft [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) ist größtenteils von früheren Versionen übrig geblieben, sie ist jedoch weiterhin nützlich, um das Festlegen der Zellenbreite zu vereinfachen.

Es ist wichtig zu wissen, dass die Eigenschaft **CellFormat.Width** unterschiedlich funktioniert, je nachdem, welche der anderen Breiteneigenschaften bereits in der Tabelle vorhanden sind.

Aspose.Words verwendet die folgende Reihenfolge für die Berechnung der Zellenbreiten:

| Bestellen | Eigenschaft | Beschreibung |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) ist bestimmt | Wenn **AutoFit** aktiviert ist:<br />- der Tisch darf über die bevorzugte Breite hinaus wachsen, um den Inhalt aufzunehmen - er schrumpft normalerweise nicht unter die bevorzugte Breite<br />- jede Änderung des **CellFormat.Width** -Werts wird ignoriert und die Zelle wird stattdessen an ihren Inhalt angepasst |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) mit einem Wert von **Points** oder **Percent** | **CellFormat.Width** wird ignoriert |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) mit einem Wert von **Auto** | Der Wert von **CellFormat.Width** wird kopiert und wird zur bevorzugten Breite der Zelle (in Punkten) |

{{% alert color="primary" %}}

Änderungen an der Eigenschaft width werden nicht in der bevorzugten Breite aktualisiert und müssen stattdessen auf die bevorzugte Breite angewendet werden.

{{% /alert %}}

{{% alert color="primary" %}}

Geben Sie beim Erstellen eines festen Tabellenlayouts die Zellenbreite an. Eine Zelle ohne Breite kann nicht im Format DOC gespeichert werden. Andere Dokumentformate als DOC, wie z. B. DOCX, ermöglichen grundsätzlich das Speichern von Zellen ohne Breite in einem festen Tabellenlayout.

{{% /alert %}}

## Abstand zwischen Zellen zulassen

Sie können einen beliebigen zusätzlichen Abstand zwischen Tabellenzellen abrufen oder festlegen, ähnlich der Option "Zellenabstand" in Microsoft Word. Dies kann mit der Eigenschaft [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/) erfolgen.

Ein Beispiel dafür, wie diese Optionen auf eine reale Tabelle in einem Dokument angewendet werden, ist in der Abbildung unten zu sehen.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Das folgende Codebeispiel zeigt, wie Sie den Abstand zwischen Zellen festlegen:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Anwenden von Rändern und Schattierungen

Rahmen und Schattierungen können entweder mit [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) und [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/) auf die gesamte Tabelle oder mit [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) und [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/) nur auf bestimmte Zellen angewendet werden. Zusätzlich können Zeilenränder mit [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/) festgelegt werden, jedoch kann auf diese Weise keine Schattierung angewendet werden.

Die folgenden Bilder zeigen die Rand- und Schatteneinstellungen in Microsoft Word und die entsprechenden Eigenschaften in Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle und eine Zelle mit unterschiedlichen Rahmen und Schattierungen formatieren:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}

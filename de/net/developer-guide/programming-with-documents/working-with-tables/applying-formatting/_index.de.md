---
title: Tabellenformatierung in C#
second_title: Aspose.Words für .NET
articleTitle: Tabellenformatierung anwenden
linktitle: Tabellenformatierung anwenden
description: "Tabellenformatierung im Detail mit C#. Verwenden Sie C#, um jeden Teil der Tabelle zu formatieren."
type: docs
weight: 70
url: /de/net/applying-formatting/
---

Jedes Element einer Tabelle kann mit unterschiedlichen Formatierungen versehen werden. Beispielsweise wird die Tabellenformatierung auf die gesamte Tabelle angewendet, die Zeilenformatierung nur auf bestimmte Zeilen und die Zellenformatierung nur auf bestimmte Zellen.

Aspose.Words bietet eine umfangreiche API-Funktion zum Abrufen und Anwenden von Formatierungen auf eine Tabelle. Sie können die [Table](https://reference.aspose.com/words/de/net/aspose.words.tables/table/)-, [RowFormat](https://reference.aspose.com/words/de/net/aspose.words.tables/rowformat/)- und [CellFormat](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/)-Knoten verwenden, um die Formatierung festzulegen.

In diesem Artikel sprechen wir darüber, wie man Formatierungen auf verschiedene Tabellenknoten anwendet und welche Tabellenformatierungseinstellungen Aspose.Words unterstützt.

## Wenden Sie die Formatierung auf verschiedene Knoten an

In diesem Abschnitt betrachten wir die Anwendung der Formatierung auf verschiedene Tabellenknoten.

### Formatierung auf Tabellenebene

Um eine Formatierung auf eine Tabelle anzuwenden, können Sie die auf dem entsprechenden **Table**-Knoten verfügbaren Eigenschaften mithilfe der [Table](https://reference.aspose.com/words/de/net/aspose.words.tables/table/)-, [PreferredWidth](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidth/)- und [TableCollection](https://reference.aspose.com/words/de/net/aspose.words.tables/tablecollection/)-Klassen verwenden.

{{% alert color="primary" %}}

Beachten Sie, dass die Tabelle mindestens eine Zeile enthalten muss, bevor die Tabelleneigenschaften angewendet werden können. Dies bedeutet, dass beim Erstellen einer Tabelle mit [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) diese Formatierung nach dem ersten Aufruf von [InsertCell](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertcell/) oder nach dem Hinzufügen der ersten Zeile zur Tabelle oder beim direkten Einfügen von Knoten in das DOM erfolgen muss.

{{% /alert %}}

Die folgenden Bilder zeigen eine Darstellung der **Table**-Formatierungsfunktionen in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

Das folgende Codebeispiel zeigt, wie man einen Umrissrahmen auf eine Tabelle anwendet:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man eine Tabelle mit allen aktivierten Rändern (Raster) erstellt:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

### Formatierung auf Zeilenebene

Die **Zeilenebene**-Formatierung kann mithilfe der Klassen [Row](https://reference.aspose.com/words/de/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/de/net/aspose.words.tables/rowformat/) und [RowCollection](https://reference.aspose.com/words/de/net/aspose.words.tables/rowcollection/) gesteuert werden.

{{% alert color="primary" %}}

Beachten Sie, dass ein **Row** nur ein untergeordneter Knoten eines **Table** sein kann. Gleichzeitig muss im **Row** mindestens ein **Cell** vorhanden sein, damit Formatierungen darauf angewendet werden können.

{{% /alert %}}

Die folgenden Bilder zeigen eine Darstellung der **Row**-Formatierungsfunktionen in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

Das folgende Codebeispiel zeigt, wie Sie die Tabellenzeilenformatierung ändern:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

### Formatierung auf Zellenebene

Die Formatierung auf Zellenebene wird durch die Klassen [Cell](https://reference.aspose.com/words/de/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/) und [CellCollection](https://reference.aspose.com/words/de/net/aspose.words.tables/cellcollection/) gesteuert.

{{% alert color="primary" %}}

Beachten Sie, dass ein **Cell** nur ein untergeordneter Knoten eines **Row** sein kann. Gleichzeitig muss im **Cell** mindestens ein [Paragraph](https://reference.aspose.com/words/de/net/aspose.words/paragraph/) vorhanden sein, damit Formatierungen darauf angewendet werden können.

Zusätzlich zum **Paragraph** können Sie auch ein **Table** in ein **Cell** einfügen.

{{% /alert %}}

Die folgenden Bilder zeigen eine Darstellung der **Cell**-Formatierungsfunktionen in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

Das folgende Codebeispiel zeigt, wie Sie die Formatierung einer Tabellenzelle ändern:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie den Abstand (in Punkt) festlegen, der links/oben/rechts/unten zum Inhalt der Zelle hinzugefügt werden soll:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## Geben Sie Zeilenhöhen an

Der einfachste Weg, die Zeilenhöhe festzulegen, ist die Verwendung von **DocumentBuilder**. Mithilfe der entsprechenden **RowFormat**-Eigenschaften können Sie die Standardhöheneinstellung festlegen oder für jede Zeile in der Tabelle eine andere Höhe anwenden.

In Aspose.Words wird die Tabellenzeilenhöhe gesteuert durch:

- die Eigenschaft Zeilenhöhe – [Height](https://reference.aspose.com/words/de/net/aspose.words.tables/rowformat/height/)
- die Eigenschaft der Höhenregel für die angegebene Zeile – [HeightRule](https://reference.aspose.com/words/de/net/aspose.words.tables/rowformat/heightrule/)

Gleichzeitig kann für jede Reihe eine andere Höhe eingestellt werden – so können Sie die Tischeinstellungen weitestgehend steuern.

{{% alert color="primary" %}}

Regeloptionen zur Angabe der Höhe eines Objekts können mithilfe der [HeightRule](https://reference.aspose.com/words/de/net/aspose.words/heightrule/)-Enumeration festgelegt werden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle erstellen, die eine einzelne Zelle enthält, und Zeilenformatierung anwenden:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## Geben Sie Tabellen- und Zellenbreiten an

Eine Tabelle in einem Microsoft Word-Dokument bietet verschiedene Möglichkeiten, die Größe der Tabelle und einzelner Zellen zu ändern. Diese Eigenschaften ermöglichen eine erhebliche Kontrolle über das Erscheinungsbild und das Verhalten der Tabelle, sodass Aspose.Words das Verhalten von Tabellen wie in Microsoft Word unterstützt.

Es ist wichtig zu wissen, dass Tabellenelemente verschiedene Eigenschaften aufweisen, die sich darauf auswirken können, wie die Breite der gesamten Tabelle sowie einzelner Zellen berechnet wird:

- Bevorzugte Breite auf dem Tisch
- Bevorzugte Breite für einzelne Zellen
- Autofit auf dem Tisch zulassen

In diesem Artikel wird detailliert beschrieben, wie die verschiedenen Eigenschaften zur Tabellenbreitenberechnung funktionieren und wie Sie die vollständige Kontrolle über die Tabellenbreitenberechnung erhalten. Das ist
Besonders nützlich ist dies in solchen Fällen, in denen das Tabellenlayout nicht wie erwartet aussieht.

{{% alert color="primary" %}}

In den meisten Fällen wird die bevorzugte Zelle anstelle der Tabellenbreite empfohlen. Die bevorzugte Zellenbreite entspricht eher der DOCX-Formatspezifikation sowie dem Aspose.Words-Modell.

Die Zellenbreite ist eigentlich ein berechneter Wert für das DOCX-Format. Die tatsächliche Zellenbreite kann von vielen Dingen abhängen. Beispielsweise kann sich eine Änderung der Seitenränder oder der bevorzugten Tabellenbreite auf die tatsächliche Zellenbreite auswirken.

Die bevorzugte Zellenbreite ist eine Zelleneigenschaft, die im Dokument gespeichert ist. Es hängt von nichts ab und ändert sich nicht, wenn Sie die Tabelle oder andere Eigenschaften der Zelle ändern.

{{% /alert %}}

{{% alert color="primary" %}}

Alle in diesem Artikel beschriebenen Eigenschaften und Methoden beziehen sich auf die Funktionsweise von Tabellen in Microsoft Word. Wenn Sie Ihre Tabelle also programmgesteuert erstellen, es Ihnen aber schwerfällt, die gewünschte Tabelle zu erstellen, können Sie stattdessen in den meisten Fällen versuchen, sie zunächst visuell in Microsoft Word zu erstellen und dann einfach die Formatierungswerte in Ihre Anwendung zu kopieren.

{{% /alert %}}

### So verwenden Sie die bevorzugte Breite

Die gewünschte Breite einer Tabelle oder einzelner Zellen wird durch die Eigenschaft "Preferred width" definiert, die die Größe angibt, die ein Element annehmen soll. Das heißt, die bevorzugte Breite kann für die gesamte Tabelle oder für einzelne Zellen angegeben werden. In manchen Situationen ist es möglicherweise nicht möglich, diese Breite genau anzupassen, in den meisten Fällen liegt die tatsächliche Breite jedoch nahe an diesem Wert.

Der geeignete bevorzugte Breitentyp und -wert wird mithilfe der Methoden der [PreferredWidth](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidth/)-Klasse festgelegt:

* die [Auto](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidth/auto/)-Methode zur Angabe von "Auto" oder "Keine bevorzugte Breite"
* die [FromPercent](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidth/frompercent/)-Methode zur Angabe einer prozentualen Breite
* die [FromPoints](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidth/frompoints/)-Methode zur Angabe der Breite in Punkten

Die folgenden Bilder zeigen eine Darstellung der *bevorzugten Breiteneinstellungsfunktionen* in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

Ein Beispiel dafür, wie diese Optionen auf eine echte Tabelle in einem Dokument angewendet werden, ist im Bild unten zu sehen.

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Bevor Sie die bevorzugte Breite in einer Tabelle verwenden können, müssen Sie sicherstellen, dass die Tabelle mindestens eine Zeile enthält. Dies liegt daran, dass solche Tabellenformatierungen in einem Microsoft Word-Dokument oder in einem in Aspose.Words erstellten Dokument in den Zeilen der Tabelle gespeichert werden.

{{% /alert %}}

#### Geben Sie die bevorzugte Tabellen- oder Zellenbreite an

In Aspose.Words werden Tabellen- und Zellenbreiten mithilfe der [Table.PreferredWidth](https://reference.aspose.com/words/de/net/aspose.words.tables/table/preferredwidth/)-Eigenschaft und der [CellFormat.PreferredWidth](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/preferredwidth/)-Eigenschaft festgelegt. Die Optionen sind in der [PreferredWidthType](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidthtype/)-Enumeration verfügbar:

- **Auto**, was bedeutet, dass keine bevorzugte Breite festgelegt ist
- **Percent**, das das Element relativ zum verfügbaren Platz im Fenster oder der Containergröße anpasst und den Wert neu berechnet, wenn sich die verfügbare Breite ändert
- **Points**, was einem Element der angegebenen Breite in Punkten entspricht

{{% alert color="primary" %}}

Standardmäßig kann eine Tabelle so beschrieben werden, dass sie 100 % des verfügbaren Platzes auf der Seite ausfüllt. In diesem Fall bedeutet dies, dass die Tabelle versucht, den Platz zwischen dem linken und rechten Seitenrand einzunehmen.

{{% /alert %}}

Durch die Verwendung der [Table.PreferredWidth](https://reference.aspose.com/words/de/net/aspose.words.tables/table/preferredwidth/)-Eigenschaft wird die bevorzugte Breite relativ zum Container angepasst: Seite, Textspalte oder äußere Tabellenzelle, wenn es sich um eine verschachtelte Tabelle handelt.

Das folgende Codebeispiel zeigt, wie Sie die Tabelle so einstellen, dass sie automatisch an 50 % der Seitenbreite angepasst wird:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

Wenn Sie die [CellFormat.PreferredWidth](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/preferredwidth/)-Eigenschaft für eine bestimmte Zelle verwenden, wird deren bevorzugte Breite angepasst.

Das folgende Codebeispiel zeigt, wie Sie die verschiedenen bevorzugten Breiteneinstellungen festlegen:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### Finden Sie den bevorzugten Breitentyp und -wert

Sie können die [Type](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidth/type/)- und [Value](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidth/value/)-Eigenschaften verwenden, um die bevorzugten Breitendetails der gewünschten Tabelle oder Zelle zu ermitteln.

Das folgende Codebeispiel zeigt, wie der bevorzugte Breitentyp einer Tabellenzelle abgerufen wird:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

### So stellen Sie Autofit ein

Die [AllowAutoFit](https://reference.aspose.com/words/de/net/aspose.words.tables/table/allowautofit/)-Eigenschaft ermöglicht das Vergrößern und Verkleinern von Zellen in einer Tabelle gemäß einem ausgewählten Kriterium. Sie können beispielsweise die **Automatisch an Fenster anpassen**-Option verwenden, um die Tabelle an die Breite der Seite anzupassen, und die **Automatisch an den Inhalt anpassen**-Option, um zuzulassen, dass jede Zelle entsprechend ihrem Inhalt vergrößert oder verkleinert wird.

{{% alert color="primary" %}}

Darüber hinaus kann die **AllowAutoFit**-Eigenschaft in Verbindung mit einer bevorzugten Zellenbreite verwendet werden, um eine Zelle so zu formatieren, dass sie automatisch an ihren Inhalt angepasst wird, aber auch eine anfängliche Breite aufweist. Bei Bedarf kann die Zellenbreite dann über diese Breite hinaus wachsen.

{{% /alert %}}

Standardmäßig fügt Aspose.Words mithilfe von **Automatisch an Fenster anpassen** eine neue Tabelle ein. Die Größe der Tabelle wird entsprechend der verfügbaren Seitenbreite angepasst. Um die Größe einer Tabelle zu ändern, können Sie die [AutoFit](https://reference.aspose.com/words/de/net/aspose.words.tables/table/autofit/)-Methode aufrufen. Diese Methode akzeptiert eine [AutoFitBehavior](https://reference.aspose.com/words/de/net/aspose.words.tables/autofitbehavior/)-Enumeration, die angibt, welcher Typ der automatischen Anpassung auf die Tabelle angewendet wird.

Es ist wichtig zu wissen, dass es sich bei der Autofit-Methode tatsächlich um eine Verknüpfung handelt, die gleichzeitig verschiedene Eigenschaften auf die Tabelle anwendet. Dies sind Eigenschaften, die der Tabelle tatsächlich das beobachtete Verhalten verleihen. Wir werden diese Eigenschaften für jede Autofit-Option besprechen.

Das folgende Codebeispiel zeigt, wie Sie eine Tabelle so einrichten, dass jede Zelle entsprechend ihrem Inhalt verkleinert oder vergrößert wird:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### Tabelle automatisch an Fenster anpassen

Wenn die automatische Anpassung an ein Fenster auf eine Tabelle angewendet wird, werden die folgenden Vorgänge tatsächlich im Hintergrund ausgeführt:

1. Die **Table.AllowAutoFit**-Eigenschaft ist aktiviert, um die Spaltengröße automatisch an den verfügbaren Inhalt anzupassen, wobei ein **Table.PreferredWidth**-Wert von 100 % verwendet wird
2. **CellFormat.PreferredWidth** wird aus allen Tabellenzellen entfernt
      {{% alert color="primary" %}}
   Beachten Sie, dass sich dies geringfügig vom Microsoft Word-Verhalten unterscheidet, bei dem die bevorzugte Breite jeder Zelle auf geeignete Werte basierend auf ihrer aktuellen Größe und ihrem aktuellen Inhalt festgelegt wird. Aspose.Words aktualisiert die bevorzugte Breite nicht, daher werden sie stattdessen einfach gelöscht.
      {{% /alert %}}
3. Die Spaltenbreiten werden für den aktuellen Tabelleninhalt neu berechnet – das Endergebnis ist eine Tabelle, die die gesamte verfügbare Breite einnimmt
4. Die Breite der Spalten in der Tabelle ändert sich automatisch, wenn der Benutzer den Text bearbeitet

Das folgende Codebeispiel zeigt, wie eine Tabelle automatisch an die Seitenbreite angepasst wird:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

#### Tabelle automatisch an Inhalt anpassen

Wenn der Inhalt der Tabelle automatisch angepasst wird, werden im Hintergrund tatsächlich die folgenden Schritte ausgeführt:

1. Die **Table.AllowAutoFit**-Eigenschaft ist aktiviert, um die Größe jeder Zelle entsprechend ihrem Inhalt automatisch anzupassen

2. Die bevorzugte Tabellenbreite wird aus **Table.PreferredWidth** entfernt, **CellFormat.PreferredWidth** wird für jede Tabellenzelle entfernt
      {{% alert color="primary" %}}

   Beachten Sie, dass diese Option zur automatischen Anpassung die bevorzugte Breite aus den Zellen entfernt, genau wie in Microsoft Word. Wenn Sie die Spaltengrößen beibehalten und die Spalten vergrößern oder verkleinern möchten, um sie an den Inhalt anzupassen, sollten Sie die **Table.AllowAutoFit**-Eigenschaft allein auf **True** setzen, anstatt die Autofit-Verknüpfung.{{% /alert %}} zu verwenden

3. Die Spaltenbreiten werden für den aktuellen Tabelleninhalt neu berechnet – das Endergebnis ist eine Tabelle, in der die Spaltenbreiten und die Breite der gesamten Tabelle automatisch angepasst werden, um am besten zum Inhalt zu passen, während der Benutzer den Text bearbeitet

Das folgende Codebeispiel zeigt, wie eine Tabelle automatisch an ihren Inhalt angepasst wird:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

#### Deaktivieren Sie die automatische Anpassung in der Tabelle und verwenden Sie feste Spaltenbreiten

Wenn für eine Tabelle die automatische Anpassung deaktiviert ist und stattdessen feste Spaltenbreiten verwendet werden, werden die folgenden Schritte ausgeführt:

1. Die **Table.AllowAutoFit**-Eigenschaft ist deaktiviert, sodass Spalten nicht entsprechend ihrem Inhalt vergrößert oder verkleinert werden

2. Die bevorzugte Breite der gesamten Tabelle wird aus **Table.PreferredWidth** entfernt, **CellFormat.PreferredWidth** wird aus allen Tabellenzellen entfernt
3. Das Endergebnis ist eine Tabelle, deren Spaltenbreiten durch die [CellFormat.Width](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/width/)-Eigenschaft bestimmt werden und deren Spaltengröße nicht automatisch geändert wird, wenn der Benutzer Text eingibt oder wenn die Seitengröße geändert wird

{{% alert color="primary" %}}

Beachten Sie, dass, wenn für **CellFormat.Width** keine Breite angegeben ist, der Standardwert von einem Zoll (72 Punkt) verwendet wird.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie die automatische Anpassung deaktivieren und die feste Breite für die angegebene Tabelle aktivieren:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

### Rangfolge bei der Berechnung der Zellenbreite

Aspose.Words ermöglicht es Benutzern, die Breite einer Tabelle oder Zelle über mehrere Objekte, einschließlich [CellFormat](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/), zu definieren – seine [Width](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/width/)-Eigenschaft ist größtenteils aus früheren Versionen übrig geblieben, sie ist jedoch immer noch nützlich, um das Festlegen der Zellenbreite zu vereinfachen.

Es ist wichtig zu wissen, dass die **CellFormat.Width**-Eigenschaft unterschiedlich funktioniert, je nachdem, welche der anderen Breiteneigenschaften bereits in der Tabelle vorhanden sind.

Aspose.Words verwendet die folgende Reihenfolge zur Berechnung der Zellenbreiten:

|  Befehl |  Eigentum |  Beschreibung |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/de/net/aspose.words.tables/table/allowautofit/) wird ermittelt |  Wenn **AutoFit** aktiviert ist:<br>- Die Tabelle kann über die bevorzugte Breite hinaus wachsen, um den Inhalt aufzunehmen – normalerweise schrumpft sie nicht unter die bevorzugte Breite<br>– Jede Änderung am **CellFormat.Width**-Wert wird ignoriert und die Zelle passt stattdessen an ihren Inhalt |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidthtype/) mit dem Wert **Points** oder **Percent** |  **CellFormat.Width** wird ignoriert |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/de/net/aspose.words.tables/preferredwidthtype/) mit dem Wert **Auto** |  Der Wert aus **CellFormat.Width** wird kopiert und wird zur bevorzugten Breite der Zelle (in Punkt) |

{{% alert color="primary" %}}

Alle Änderungen an der Breiteneigenschaft werden nicht in der bevorzugten Breite aktualisiert und müssen stattdessen auf die bevorzugte Breite angewendet werden.

{{% /alert %}}

{{% alert color="primary" %}}

Geben Sie beim Erstellen eines festen Tabellenlayouts die Zellenbreite an. Eine Zelle ohne Breite kann nicht im DOC-Format gespeichert werden. Andere Dokumentformate als DOC, wie beispielsweise DOCX, ermöglichen grundsätzlich das Speichern von Zellen ohne Breite in einem festen Tabellenlayout.

{{% /alert %}}

## Abstand zwischen Zellen zulassen

Sie können jeden zusätzlichen Abstand zwischen Tabellenzellen erhalten oder festlegen, ähnlich der Option "Zellenabstand" in Microsoft Word. Dies kann über die [AllowCellSpacing](https://reference.aspose.com/words/de/net/aspose.words.tables/table/allowcellspacing/)-Eigenschaft erfolgen.

Ein Beispiel dafür, wie diese Optionen auf eine echte Tabelle in einem Dokument angewendet werden, ist im Bild unten zu sehen.

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="Formatierung-Abstand-zwischen-Zellen-aspose-words-net" style="width:500px"/>

Das folgende Codebeispiel zeigt, wie der Abstand zwischen Zellen festgelegt wird:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## Wenden Sie Ränder und Schattierungen an

Rahmen und Schattierungen können mit [Table.SetBorder](https://reference.aspose.com/words/de/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/de/net/aspose.words.tables/table/setborders/) und [Table.SetShading](https://reference.aspose.com/words/de/net/aspose.words.tables/table/setshading/) entweder auf die gesamte Tabelle oder mit [CellFormat.Borders](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/borders/) und [CellFormat.Shading](https://reference.aspose.com/words/de/net/aspose.words.tables/cellformat/shading/) nur auf bestimmte Zellen angewendet werden. Darüber hinaus können Zeilenränder mit [RowFormat.Borders](https://reference.aspose.com/words/de/net/aspose.words.tables/rowformat/borders/) festgelegt werden, Schattierungen können auf diese Weise jedoch nicht angewendet werden.

Die Bilder unten zeigen die Rahmen- und Schatteneinstellungen in Microsoft Word und ihre entsprechenden Eigenschaften in Aspose.Words.

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

Das folgende Codebeispiel zeigt, wie eine Tabelle und eine Zelle mit unterschiedlichen Rändern und Schattierungen formatiert werden:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}
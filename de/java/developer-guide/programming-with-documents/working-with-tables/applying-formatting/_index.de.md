---
title: Tabelle Formatierung in Java
second_title: Aspose.Words für Java
articleTitle: Anwenden Tabelle Formatierung
linktitle: Anwenden Tabelle Formatierung
description: "Tabellenformatierung in Details. Verwendung Java um jeden Teil der Tabelle zu formatieren."
type: docs
weight: 70
url: /de/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Jedes Element einer Tabelle kann mit unterschiedlicher Formatierung aufgebracht werden. Beispielsweise wird die Tabellenformatierung auf die gesamte Tabelle, Zeilenformatierung auf nur bestimmte Zeilen, Zellformatierung auf nur bestimmte Zellen angewendet.

Aspose.Words bietet reich API die Formatierung auf eine Tabelle abrufen und anwenden. Sie können die [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), und [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) Knoten, um die Formatierung einzustellen.

In diesem Artikel werden wir darüber sprechen, wie Sie Formatierungen auf verschiedene Tabellenknoten anwenden können und welche Tabellenformatierungseinstellungen Aspose.Words unterstützt.

## Anwenden der Formatierung auf verschiedene Nodes

In diesem Abschnitt werden wir uns die Formatierung auf verschiedene Tabellenknoten ansehen.

### Tabelle Ebene Formatierung

Um die Formatierung auf eine Tabelle anzuwenden, können Sie die verfügbaren Eigenschaften auf der entsprechenden **Table** Knoten mit [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), und [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) Klassen.

{{% alert color="primary" %}}

Beachten Sie, dass die Tabelle mindestens eine Zeile aufweisen muss, bevor die Tabelleneigenschaften angewendet werden können. Das heißt, wenn man einen Tisch mit der [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), Diese Formatierung muss nach dem ersten Aufruf erfolgen, [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), oder nach der ersten Zeile der Tabelle hinzugefügt wird, oder wenn Knoten direkt in die Tabelle eingefügt werden DOM.

{{% /alert %}}

Die nachfolgenden Bilder zeigen eine Darstellung der **Table** Formatierungsfunktionen in Microsoft Word und ihre entsprechenden Eigenschaften in Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

Das folgende Codebeispiel zeigt, wie man eine Umrissgrenze auf eine Tabelle anwenden kann:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Das folgende Codebeispiel zeigt, wie eine Tabelle mit allen aktivierten Grenzen erstellt werden kann (grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Row Level Formatierung

Row-Level** Formatierung kann über die [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), und [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) Klassen.

{{% alert color="primary" %}}

Anmerkung: **Row** nur ein Kinderknoten eines **Table**. Gleichzeitig muss mindestens eine **Cell** in der **Row** so dass die Formatierung auf sie angewendet werden kann.

{{% /alert %}}

Die nachfolgenden Bilder zeigen eine Darstellung der **Row** Formatierungsfunktionen in Microsoft Word und ihre entsprechenden Eigenschaften in Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

Das folgende Codebeispiel zeigt, wie man die Tabellenzeilenformatierung ändert:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Zellebene Formatierung

Die Zell-Level-Formatierung wird von der [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), und [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) Klassen.

{{% alert color="primary" %}}

Anmerkung: **Cell** nur ein Kinderknoten eines **Row**. Gleichzeitig muss mindestens eine [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) in der **Cell** so dass die Formatierung auf sie angewendet werden kann.

Zusätzlich zu den **Paragraph**, Sie können auch einfügen **Table** in einem **Cell**.

{{% /alert %}}

Die nachfolgenden Bilder zeigen eine Darstellung der **Cell** Formatierungsfunktionen in Microsoft Word und ihre entsprechenden Eigenschaften in Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

Das folgende Codebeispiel zeigt, wie die Formatierung einer Tabellenzelle verändert werden kann:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Das folgende Codebeispiel zeigt, wie man die Menge des Raumes (in Punkten) einstellen kann, um links/oben/rechts/unten des Inhalts der Zelle hinzuzufügen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Angeben von Row Heights

Der einfachste Weg, die Zeilenhöhe einzustellen ist die Verwendung der **DocumentBuilder**. Verwendung der entsprechenden **RowFormat** Eigenschaften, Sie können die Standardhöheneinstellung festlegen oder eine andere Höhe für jede Zeile in der Tabelle anwenden.

In Aspose.Words, Tischzeilenhöhe wird gesteuert durch:

- die Höhenlage der Reihe – [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- die Höhenregeleigenschaft für die angegebene Zeile – [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Gleichzeitig kann für jede Zeile eine andere Höhe eingestellt werden – so können Sie die Tabelleneinstellungen weitgehend kontrollieren.

{{% alert color="primary" %}}

Regeloptionen zur Angabe der Höhe eines Objekts können mit der [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) Felder.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie eine Tabelle erstellt werden kann, die eine einzelne Zelle enthält und Zeilenformatierung anwendet:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Tabelle und Zellbreiten angeben

Eine Tabelle in einer Microsoft Word Das Dokument bietet verschiedene Möglichkeiten, die Tabelle und einzelne Zellen neu zu gestalten. Diese Eigenschaften ermöglichen eine erhebliche Kontrolle über das Aussehen und Verhalten der Tabelle, so dass Aspose.Words unterstützt das Verhalten von Tabellen, wie in Microsoft Word.

Es ist wichtig zu wissen, dass Tabellenelemente mehrere unterschiedliche Eigenschaften aufweisen, die beeinflussen können, wie die Breiten der Gesamttabelle sowie einzelne Zellen berechnet werden:

- Bevorzugte Breite auf dem Tisch
- Bevorzugte Breite auf einzelnen Zellen
- Autofit auf dem Tisch zulassen

Dieser Artikel beschreibt, wie die verschiedenen Tabellenbreitenberechnungseigenschaften funktionieren und wie man die volle Kontrolle über die Tabellenbreitenberechnung erhält. Das ist
besonders nützlich in solchen Fällen, in denen das Tabellenlayout nicht wie erwartet erscheint.

{{% alert color="primary" %}}

In den meisten Fällen wird die bevorzugte Zelle empfohlen als die Tischbreite. Die bevorzugte Zellbreite ist im Einklang mit der DOCX-Formatspezifikation sowie der Aspose.Words Modell.

Die Zellbreite ist eigentlich ein berechneter Wert für das DOCX-Format. Die tatsächliche Zellbreite kann von vielen Dingen abhängen. Beispielsweise kann eine Änderung der Seitenränder oder der bevorzugten Tischbreite die tatsächliche Zellbreite beeinflussen.

Die bevorzugte Zellbreite ist eine Zelleigenschaft, die im Dokument gespeichert ist. Es hängt nicht von irgendetwas ab und ändert sich nicht, wenn Sie die Tabelle oder andere Eigenschaften der Zelle ändern.

{{% /alert %}}

{{% alert color="primary" %}}

Alle in diesem Artikel beschriebenen Eigenschaften und Methoden beziehen sich auf die Funktionsweise der Tabellen Microsoft Word. Also in den meisten Fällen, wenn Sie Ihren Tisch programmmatisch bauen, aber es schwer finden, die gewünschte Tabelle zu erstellen, können Sie stattdessen versuchen, visuell zu erstellen, in Microsoft Word zuerst und dann einfach die Formatierungswerte in Ihre Anwendung kopieren.

{{% /alert %}}

### Wie bevorzugte Breite zu verwenden

Die gewünschte Breite eines Tisches oder einzelner Zellen wird durch die bevorzugte Breiteneigenschaft definiert, die die Größe ist, die ein Element zu passen versucht. Das heißt, die bevorzugte Breite kann für die gesamte Tabelle oder für einzelne Zellen vorgegeben werden. In einigen Situationen kann es nicht möglich sein, diese Breite genau zu passen, aber die tatsächliche Breite wird in den meisten Fällen nahe an diesem Wert sein.

Der geeignete bevorzugte Breitentyp und -wert wird mit den Methoden der [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) Klasse:

- die [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) Feld, um Auto oder "keine bevorzugte Breite" anzugeben
- die [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) Verfahren zur Angabe einer prozentualen Breite
- die [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) Methode zur Angabe der Breite in Punkten

Die nachfolgenden Bilder zeigen eine Darstellung der *bevorzugten Breiteneinstellungsmerkmale* in Microsoft Word und ihre entsprechenden Eigenschaften in Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Ein Beispiel dafür, wie diese Optionen auf eine reale Tabelle in einem Dokument angewendet werden, ist im folgenden Bild zu sehen.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Bevor Sie die bevorzugte Breite in einer Tabelle verwenden können, müssen Sie sicherstellen, dass die Tabelle mindestens eine Zeile enthält. Dies liegt daran, dass diese Tabellenformatierung in Microsoft Word Dokument oder in einem Dokument erstellt Aspose.Words wird in den Zeilen der Tabelle gespeichert.

{{% /alert %}}

#### Geben Sie die bevorzugte Tabelle oder Zellbreite an

In Aspose.Words, Tabelle und Zellbreiten werden mit der [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) und die [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) mit Optionen in der [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) Aufzählung:

- Ja. **Auto**, die keiner bevorzugten Breite entspricht
- Ja. **Percent**, die das Element in Bezug auf den zur Verfügung stehenden Raum in der Fenster- oder Behältergröße passt und den Wert neu berechnet, wenn sich die verfügbare Breite ändert
- Ja. **Points**, das einem Element der vorgegebenen Breite in Punkten entspricht

{{% alert color="primary" %}}

Standardmäßig kann eine Tabelle als 100 % des verfügbaren Platzes auf der Seite beschrieben werden. In diesem Fall bedeutet dies, dass die Tabelle versucht, den Raum zwischen der linken und der rechten Seitenränder aufzunehmen.

{{% /alert %}}

Verwendung von [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) die Eigenschaft wird ihre bevorzugte Breite relativ zu ihrem Behälter einstellen: Seite, Textspalte oder äußere Tischzelle, wenn es sich um eine geschachtelte Tabelle handelt.

Das folgende Codebeispiel zeigt, wie man die Tabelle auf 50 % der Seitenbreite automatisch einstellt:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Verwendung von [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) eine Eigenschaft auf einer bestimmten Zelle wird ihre bevorzugte Breite einstellen.

Das folgende Codebeispiel zeigt, wie die verschiedenen bevorzugten Breiteneinstellungen eingestellt werden können:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Finden Sie bevorzugte Breitentyp und Wert

Sie können die [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) und [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) Eigenschaften, um die bevorzugten Breitenangaben der gewünschten Tabelle oder Zelle zu finden.

Das folgende Codebeispiel zeigt, wie man den bevorzugten Breitentyp einer Tabellenzelle abruft:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Wie man Autofit einstellt

Die [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) Eigenschaft erlaubt Zellen in einer Tabelle zu wachsen und nach einem ausgewählten Kriterium zu schrumpfen. Zum Beispiel können Sie die **AutoFit zum Fenster** Möglichkeit, die Tabelle an die Breite der Seite anzupassen, und **AutoFit zum Inhalt** Möglichkeit, jede Zelle nach ihrem Inhalt wachsen oder schrumpfen zu lassen.

{{% alert color="primary" %}}

Zusätzlich, die **AllowAutoFit** Eine Eigenschaft kann in Verbindung mit einer bevorzugten Zellbreite verwendet werden, um eine Zelle zu formatieren, die automatisch auf ihren Inhalt passt, aber auch eine Anfangsbreite aufweist. Bei Bedarf kann die Zellbreite dann über diese Breite wachsen.

{{% /alert %}}

Standardmäßig, Aspose.Words setzt eine neue Tabelle mit **AutoFit zum Fenster**. Die Tabelle wird entsprechend der verfügbaren Seitenbreite bemessen. Um einen Tisch zu vergrößern, können Sie die [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) Methode. Diese Methode akzeptiert [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) Aufzählung, die angibt, welche Art von Autofit auf der Tabelle angewendet wird.

Es ist wichtig zu wissen, dass die Autofit-Methode tatsächlich eine Verknüpfung ist, die verschiedene Eigenschaften auf die Tabelle gleichzeitig anwendet. Dies sind Eigenschaften, die der Tabelle tatsächlich das beobachtete Verhalten geben. Wir werden diese Eigenschaften für jede Autofit-Option diskutieren.

Das folgende Codebeispiel zeigt, wie eine Tabelle eingestellt wird, um jede Zelle entsprechend ihrem Inhalt zu schrumpfen oder zu wachsen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Wir verwenden die folgende Tabelle, um die verschiedenen Autopasseinstellungen als Demonstration anzuwenden.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit Tisch zum Fenster

Wenn das Autofitting an einem Fenster auf eine Tabelle angewendet wird, werden die folgenden Operationen tatsächlich hinter den Kulissen durchgeführt:

ANHANG Die **Table.AllowAutoFit** Eigenschaft wird aktiviert, um die Spalten automatisch zu ändern, um den verfügbaren Inhalt anzupassen, indem eine **Table.PreferredWidth** Wert von 100%
2. **CellFormat.PreferredWidth** aus allen Tabellenzellen entfernt
      {{% alert color="primary" %}}
   Beachten Sie, dass dies etwas von der Microsoft Word Verhalten, wobei die bevorzugte Breite jeder Zelle auf entsprechende Werte basierend auf ihrer aktuellen Größe und ihrem Inhalt eingestellt wird. Aspose.Words die bevorzugte Breite nicht aktualisieren, so dass sie einfach gelöscht werden.
      {{% /alert %}}
3. Säulenbreiten werden für den aktuellen Tabelleninhalt neu berechnet – das Endergebnis ist eine Tabelle, die die gesamte verfügbare Breite einnimmt
4. Die Breite der Spalten in der Tabelle ändert sich automatisch, wenn der Benutzer den Text bearbeitet

Das folgende Codebeispiel zeigt, wie man eine Tabelle auf die Seitenbreite autofitt:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Ein Beispiel dafür, wie diese Optionen auf die obige Tabelle angewendet werden, ist im folgenden Bild zu sehen.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit-Tabelle zum Inhalt

Wenn die Tabelle den Inhalt automatisch ergänzt, werden die folgenden Schritte tatsächlich hinter den Kulissen durchgeführt:

ANHANG Die **Table.AllowAutoFit** Eigenschaft wird aktiviert, um jede Zelle automatisch nach ihrem Inhalt zu ändern

2. Die bevorzugte Tischbreite wird von **Table.PreferredWidth**, **CellFormat.PreferredWidth** für jede Tischzelle entfernt
      {{% alert color="primary" %}}

   Beachten Sie, dass diese Autofit-Option die bevorzugte Breite von Zellen entfernt, wie in Microsoft Word. Wenn Sie die Spaltengrößen beibehalten und die Spalten erhöhen oder verringern möchten, um den Inhalt anzupassen, sollten Sie die **Table.AllowAutoFit** Eigentum an **True** auf eigene Faust anstatt mit der Autofit Shortcut.{{% /alert %}}

3. Die Spaltenbreiten werden für den aktuellen Tabelleninhalt neu berechnet – das Endergebnis ist eine Tabelle, in der die Spaltenbreiten und die Breite der gesamten Tabelle automatisch so hoch wie der Benutzer den Text bearbeitet

Das folgende Codebeispiel zeigt, wie man eine Tabelle zu seinem Inhalt autofit:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Ein Beispiel dafür, wie diese Optionen auf die obige Tabelle angewendet werden, ist im folgenden Bild zu sehen.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### AutoFit in Tabelle deaktivieren und Fixed Column Widths verwenden

Wenn eine Tabelle autofit deaktiviert und feste Spaltenbreiten verwendet wird, werden die folgenden Schritte durchgeführt:

ANHANG **Table.AllowAutoFit** Eigenschaft ist deaktiviert, so dass Spalten nicht wachsen oder schrumpfen auf ihren Inhalt
2. Die bevorzugte Breite des gesamten Tisches wird entfernt **Table.PreferredWidth**, **CellFormat.PreferredWidth** aus allen Tabellenzellen entfernt
3. Das Endergebnis ist eine Tabelle, deren Spaltenbreiten durch die [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) Eigenschaft, deren Spalten beim Eingeben von Text oder beim erneuten Formatieren der Seite nicht automatisch neu formatiert werden

{{% alert color="primary" %}}

Beachten Sie, wenn keine Breite angegeben ist für **CellFormat.Width**, wird der Standardwert eines Zolls (72 Punkte) verwendet.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man Autofit deaktivieren und feste Breite für die angegebene Tabelle aktivieren kann:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Ein Beispiel dafür, wie diese Optionen auf die obige Tabelle angewendet werden, ist im folgenden Bild zu sehen.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Reihenfolge der Vorgänge bei der Berechnung der Zellbreite

Aspose.Words ermöglicht Benutzern, die Breite einer Tabelle oder Zelle durch mehrere Objekte zu definieren, einschließlich [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – seine [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) Eigenschaft wird meist von früheren Versionen überlassen, aber es ist immer noch nützlich, um die Einstellung der Zellbreite zu vereinfachen.

Es ist wichtig zu wissen, daß **CellFormat.Width** Eine Eigenschaft funktioniert anders, je nachdem, welche der anderen Breiteneigenschaften bereits in der Tabelle vorhanden sind.

Aspose.Words verwendet die folgende Reihenfolge zur Berechnung von Zellbreiten:

|  Ordnung |  Eigentum |  Warenbezeichnung |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) wird bestimmt |  wenn **AutoFit** ist aktiviert:<br/>- die Tabelle kann über die bevorzugte Breite wachsen, um den Inhalt aufzunehmen – sie schrumpft in der Regel nicht unter der bevorzugten Breite<br/>- jede Änderung der **CellFormat.Width** Wert wird ignoriert und die Zelle wird auf ihren Inhalt passen statt |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) mit einem Wert von **Points** oder **Percent** |  **CellFormat.Width** wird ignoriert |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) mit einem Wert von **Auto** |  Der Wert von **CellFormat.Width** wird kopiert und wird die bevorzugte Breite der Zelle (in Punkten) |

{{% alert color="primary" %}}

Änderungen der Breiteneigenschaft werden in der bevorzugten Breite nicht aktualisiert und müssen stattdessen auf die bevorzugte Breite aufgebracht werden.

{{% /alert %}}

{{% alert color="primary" %}}

Beim Erstellen eines festen Tabellenlayouts geben Sie die Zellenbreite an. Eine Zelle ohne Breite kann nicht im DOC-Format gespeichert werden. Andere Dokumentformate als DOC, wie DOCX, erlauben es im Prinzip, Zellen ohne Breite in einem festen Tabellenlayout zu speichern.

{{% /alert %}}

## Getrennt zwischen Zellen zulassen

Sie können einen zusätzlichen Raum zwischen Tabellenzellen ähnlich der Option "Сell Distance" in Microsoft Word. Dies kann mit der [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) Eigentum.

Ein Beispiel dafür, wie diese Optionen auf eine reale Tabelle in einem Dokument angewendet werden, ist im folgenden Bild zu sehen.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Das folgende Codebeispiel zeigt, wie der Abstand zwischen Zellen eingestellt werden kann:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Anwenden von Grenzen und Schattierung

Grenzen und Schattierungen können entweder auf die gesamte Tabelle mit [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) und [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), oder nur bestimmte Zellen verwenden [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) und [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Zusätzlich können Zeilengrenzen mit [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), Auf diese Weise kann jedoch eine Schattierung nicht angewendet werden.

Die Bilder unten zeigen die Grenz- und Schatteneinstellungen in Microsoft Word und ihre entsprechenden Eigenschaften in Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


Das folgende Codebeispiel zeigt, wie man eine Tabelle und Zelle mit unterschiedlichen Grenzen und Schattierungen formatiert:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}

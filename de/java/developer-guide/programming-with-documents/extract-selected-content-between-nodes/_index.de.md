---
title: Ausgewählte Inhalte zwischen Nodes in Java
second_title: Aspose.Words für Java
articleTitle: Inhalt zwischen Knoten in einem Dokument extrahieren
linktitle: Inhalt zwischen Nodes extrahieren
type: docs
description: "Extraktion von Dokumenteninhalten in unterschiedlicher Verwendung Java."
weight: 140
url: /de/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

Bei der Arbeit mit Dokumenten ist es wichtig, Inhalte aus einem bestimmten Bereich innerhalb eines Dokuments leicht extrahieren zu können. Der Inhalt kann jedoch aus komplexen Elementen wie Absätzen, Tabellen, Bildern usw. bestehen.

Unabhängig davon, welche Inhalte extrahiert werden müssen, wird die Methode, diesen Inhalt zu extrahieren, immer bestimmt, durch welche Knoten ausgewählt werden, um Inhalte zu extrahieren. Diese können ganze Textkörper oder einfache Textläufe sein.

Es gibt viele mögliche Situationen und damit viele verschiedene Knotentypen, die beim Extrahieren von Inhalten zu berücksichtigen sind. Zum Beispiel möchten Sie Inhalte zwischen:

- Zwei spezifische Absätze
- Spezifische Textabläufe
- Felder verschiedener Arten, wie z.B. Zusammenschlussfelder
- Start- und Endbereiche eines Lesezeichens oder Kommentars
- Verschiedene Textkörper in separaten Abschnitten

In einigen Situationen müssen Sie sogar verschiedene Knotentypen kombinieren, wie z.B. den Inhalt zwischen einem Absatz und einem Feld oder zwischen einem Lauf und einem Lesezeichen.

Dieser Artikel bietet die Code-Implementierung zum Extrahieren von Texten zwischen verschiedenen Knoten sowie Beispiele für gemeinsame Szenarien.

{{% alert color="primary" %}}

Diese Beispiele sind nur einige Demonstrationen der vielen Möglichkeiten. Wir planen, dass die Textextraktionsfunktionalität Teil der Öffentlichkeit ist API in der Zukunft, und es wird kein zusätzlicher Code benötigt. In der Zwischenzeit fühlen Sie sich frei, Ihre Anfragen zu dieser Funktionalität auf dem [Aspose.Words Forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Warum Inhalte extrahieren

Oft besteht das Ziel, den Inhalt zu extrahieren, darin, ihn in einem neuen Dokument separat zu duplizieren oder zu speichern. Zum Beispiel können Sie Inhalte extrahieren und:

- Kopieren Sie es in ein separates Dokument
- Konvertieren Sie einen bestimmten Teil eines Dokuments in PDF oder Bild
- Vervielfältigen Sie den Inhalt im Dokument oft
- Arbeiten Sie mit extrahierten Inhalten getrennt vom Rest des Dokuments

Dies lässt sich mit Hilfe von Aspose.Words und die Code-Implementierung unten.

## Auszüge von Inhalt Algorithm

Der Code in diesem Abschnitt adressiert alle oben beschriebenen möglichen Situationen mit einem generalisierten und wiederverwendbaren Verfahren. Der allgemeine Umriss dieser Technik beinhaltet:

ANHANG Sammeln der Knoten, die den Bereich des Inhalts diktieren, der aus Ihrem Dokument extrahiert wird. Das Abrufen dieser Knoten wird vom Benutzer in seinem Code behandelt, basierend auf dem, was sie extrahiert werden wollen.
ANHANG Diese Knoten an die **ExtractContent** Verfahren nach unten. Sie müssen auch einen booleschen Parameter übergeben, der angibt, ob diese Knoten als Marker in die Extraktion einbezogen werden sollen oder nicht.
ANHANG Abrufen einer Liste von klonierten Inhalten (Copied-Knoten), die extrahiert werden sollen. Sie können diese Liste von Knoten in beliebiger Weise verwenden, z.B. ein neues Dokument mit nur dem ausgewählten Inhalt erstellen.

## Wie den Inhalt zu extrahieren

Wir arbeiten mit dem Dokument unten in diesem Artikel. Wie Sie sehen können, enthält es eine Vielzahl von Inhalten. Das Dokument enthält auch einen zweiten Abschnitt, der in der Mitte der ersten Seite beginnt. Ein Lesezeichen und Kommentar sind auch im Dokument vorhanden, sind aber im folgenden Screenshot nicht sichtbar.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Um die Inhalte aus Ihrem Dokument zu extrahieren, müssen Sie die `ExtractContent` die entsprechenden Parameter weitergeben.

Die Basis dieser Methode besteht darin, Block-Level-Knoten (Parader und Tabellen) zu finden und sie zu klonen, um identische Kopien zu erstellen. Wenn die übergebenen Markerknoten Block-Level sind, dann ist das Verfahren in der Lage, den Inhalt auf dieser Ebene einfach zu kopieren und zu dem Array hinzuzufügen.

Wenn die Markerknoten jedoch inline sind (ein Kind eines Absatzes), dann wird die Situation komplexer, da es notwendig ist, den Absatz am Inline-Knoten zu teilen, sei es ein Lauf, Lesefelder etc. Inhalt in den nicht zwischen den Markern vorhandenen klonierten Elternknoten wird entfernt. Dieser Prozess wird verwendet, um sicherzustellen, dass die Inline-Knoten die Formatierung des Elternteils weiterhin beibehalten.

Das Verfahren führt auch Kontrollen an den als Parameter übergebenen Knoten durch und wirft eine Ausnahme, wenn entweder Knoten ungültig ist. Die an dieses Verfahren zu übergebenden Parameter sind:

ANHANG **StartNode** und **EndNode**. Die ersten beiden Parameter sind die Knoten, die definieren, wo die Extraktion des Inhalts beginnen bzw. enden soll. Diese Knoten können sowohl Blockebene ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) oder Inline-Ebene (z. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) usw.):
   1. Um ein Feld zu passieren, sollten Sie das entsprechende **FieldStart** Objekt.
   1. Um Bookmarks, die **BookmarkStart** und [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) Knoten sollten weitergegeben werden.
   1. Um Kommentare, die [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) und [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Knoten sollten verwendet werden.
ANHANG **IsInclusive**. Definiert, wenn die Marker in der Extraktion enthalten sind oder nicht. Wenn diese Option eingestellt wird false und der gleiche Knoten oder aufeinanderfolgende Knoten übergeben werden, dann wird eine leere Liste zurückgegeben:

      1. Wenn **FieldStart** Diese Option definiert dann, ob das gesamte Feld enthalten oder ausgeschlossen werden soll.
      1. Wenn **BookmarkStart** oder **BookmarkEnd** Diese Option definiert, ob das Lesezeichen enthalten ist oder nur der Inhalt zwischen dem Lesezeichenbereich.
      1. Wenn **CommentRangeStart** oder **CommentRangeEnd** Diese Option definiert, ob der Kommentar selbst enthalten sein soll oder nur der Inhalt im Kommentarbereich.

Die Umsetzung der **ExtractContent** Methode finden Sie [Hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Diese Methode wird in den Szenarien in diesem Artikel angesprochen.

Wir definieren auch eine benutzerdefinierte Methode, um einfach ein Dokument aus extrahierten Knoten zu generieren. Diese Methode wird in vielen der untenstehenden Szenarien verwendet und erstellt einfach ein neues Dokument und importiert den extrahierten Inhalt.

Das folgende Codebeispiel zeigt, wie man eine Liste von Knoten nimmt und in ein neues Dokument einfügt:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Inhalt zwischen Absätzen extrahieren

Dies zeigt, wie man die oben genannte Methode verwendet, um Inhalte zwischen bestimmten Absätzen zu extrahieren. In diesem Fall möchten wir den Körper des Briefes, der in der ersten Hälfte des Dokuments gefunden wurde, extrahieren. Wir können sagen, dass dies zwischen dem 7. und 11. Absatz liegt.

Der folgende Code erfüllt diese Aufgabe. Die entsprechenden Absätze werden unter Verwendung der [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) Verfahren auf dem Dokument und Weitergabe der angegebenen Indizes. Wir geben diese Knoten dann an die **ExtractContent** Verfahren und Zustand, dass diese in die Extraktion einbezogen werden sollen. Diese Methode wird den kopierten Inhalt zwischen diesen Knoten zurückgeben, die dann in ein neues Dokument eingefügt werden.

Das folgende Codebeispiel zeigt, wie man den Inhalt zwischen bestimmten Absätzen unter Verwendung der `ExtractContent` Verfahren oben:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Das Ausgabedokument enthält die beiden Absätze, die extrahiert wurden.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Extrahieren Inhalt zwischen verschiedenen Arten von Nodes

Wir können Inhalte zwischen beliebigen Kombinationen von Block- oder Inline-Knoten extrahieren. In diesem Szenario unten werden wir den Inhalt zwischen dem ersten Absatz und der Tabelle im zweiten Abschnitt inklusive extrahieren. Wir erhalten die Marker-Knoten durch Anruf [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) und [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) Verfahren auf dem zweiten Abschnitt des Dokuments zum Abrufen des entsprechenden **Paragraph** und **Table** Knoten. Für eine leichte Variation lassen Sie stattdessen den Inhalt duplizieren und unter das Original einfügen.

Das folgende Codebeispiel zeigt, wie der Inhalt zwischen einem Absatz und einer Tabelle unter Verwendung der **ExtractContent** Methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Der Inhalt zwischen dem Absatz und der Tabelle wurde unten verdoppelt.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Inhalt zwischen Absätzen extrahieren Basierend auf Stil

Sie können den Inhalt zwischen den Absätzen des gleichen oder unterschiedlichen Stils, wie zwischen den Absätzen mit Überschriftsstilen, extrahieren müssen.

Der folgende Code zeigt, wie man dies erreicht. Es ist ein einfaches Beispiel, das den Inhalt zwischen der ersten Instanz der "Heading 1" und "Header 3"-Stile extrahiert, ohne die Überschriften zu extrahieren. Dazu setzen wir den letzten Parameter an false, die angibt, dass die Markerknoten nicht enthalten sein sollten.

In einer ordnungsgemäßen Umsetzung sollte dies in einer Schleife ausgeführt werden, um Inhalte zwischen allen Absätzen dieser Stile aus dem Dokument zu extrahieren. Der extrahierte Inhalt wird in ein neues Dokument kopiert.

Das folgende Codebeispiel zeigt, wie man Inhalte zwischen Absätzen mit bestimmten Stilen unter Verwendung der **ExtractContent** Methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Unten ist das Ergebnis der vorherigen Operation.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Extrahieren Sie Inhalt zwischen bestimmten Runs

Sie können Inhalte zwischen Inline-Knoten wie **Run** auch. **Runs** aus verschiedenen Absätzen können als Marker weitergegeben werden. Der folgende Code zeigt, wie spezifischer Text zwischen dem gleichen **Paragraph** Knoten.

Das folgende Codebeispiel zeigt, wie der Inhalt zwischen bestimmten Abläufen desselben Absatzes unter Verwendung der **ExtractContent** Methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Der extrahierte Text wird auf der Konsole angezeigt

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Extrahieren Sie Inhalte mit einem Feld

Um ein Feld als Marker zu verwenden, die `FieldStart` Knoten sollte übergeben werden. Der letzte Parameter zum `ExtractContent` Die Methode wird definieren, ob das gesamte Feld enthalten sein soll oder nicht. Lassen Sie uns den Inhalt zwischen dem Zusammenschlussfeld "FullName" und einem Absatz im Dokument extrahieren. Wir benutzen die [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) Methode der [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasse. Dies wird die **FieldStart** Knoten aus dem Namen des ihm übergebenen Zusammenführungsfelds.

In unserem Fall setzen wir den letzten Parameter an die **ExtractContent** Verfahren zu false das Feld von der Extraktion auszuschließen. Wir stellen die extrahierten Inhalte auf PDF.

Das folgende Codebeispiel zeigt, wie Inhalte zwischen einem bestimmten Feld und Absatz im Dokument unter Verwendung des **ExtractContent** Methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Der extrahierte Inhalt zwischen Feld und Absatz, ohne die Feld- und Absatzmarkerknoten auf PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Inhalt eines Lesezeichens extrahieren

In einem Dokument wird der Inhalt, der innerhalb eines Lesezeichens definiert ist, von der `BookmarkStart` und BookmarkEnd Knoten. Die zwischen diesen beiden Knoten gefundenen Inhalte bilden das Lesezeichen. Sie können entweder von diesen Knoten als beliebigen Marker passieren, auch von verschiedenen Lesezeichen, solange der Startmarker vor dem endenden Marker im Dokument erscheint.

In unserem Musterdokument haben wir ein Lesezeichen namens "Bookmark1". Der Inhalt dieses Lesezeichens wird in unserem Dokument hervorgehoben:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Wir werden diesen Inhalt mit dem untenstehenden Code in ein neues Dokument extrahieren. Die **IsInclusive** Parameteroption zeigt, wie das Lesezeichen gespeichert oder verworfen werden kann.

Das folgende Codebeispiel zeigt, wie der Inhalt, der auf ein Lesezeichen verweist, mit dem **ExtractContent** Methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Der extrahierte Ausgang mit dem `IsInclusive` Parameter eingestellt true. Die Kopie behält auch das Lesezeichen.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

Der extrahierte Ausgang mit dem **IsInclusive** Parameter eingestellt false. Die Kopie enthält den Inhalt, aber ohne das Lesezeichen.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Inhalt eines Kommentars extrahieren

Ein Kommentar besteht aus den Knoten CommentRangeStart, CommentRangeEnd und Kommentar. Alle diese Knoten sind inline. Die ersten beiden Knoten kapseln den Inhalt in dem Dokument, der durch den Kommentar referiert wird, wie in der Abbildung unten zu sehen.

Die **Comment** Knoten selbst ist ein [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) die Absätze und Auflagen enthalten kann. Es stellt die Nachricht des Kommentars dar, wie als Kommentarblase im Überprüfungsbereich gesehen. Da dieser Knoten inline und ein Nachkomme eines Körpers ist, können Sie auch den Inhalt von innen dieser Nachricht extrahieren.

In unserem Dokument haben wir einen Kommentar. Zeigen wir es, indem wir markup in der Registerkarte Review anzeigen:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Der Kommentar verkapselt die Position, den ersten Absatz und die Tabelle im zweiten Abschnitt. Lassen Sie uns diesen Kommentar in ein neues Dokument extrahieren. Die **IsInclusive** Option diktiert, wenn der Kommentar selbst gehalten oder verworfen wird.

Das folgende Codebeispiel zeigt, wie dies zu tun ist unten:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Erstens: `IsInclusive` Parameter eingestellt true. Die Kopie enthält auch den Kommentar.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Zweitens die extrahierte Ausgabe mit **istInklusive** eingestellt false. Die Kopie enthält den Inhalt, aber ohne den Kommentar.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Extrahieren Sie Inhalte mit DocumentVisitor

Aspose.Words kann nicht nur zum Erstellen verwendet werden Microsoft Word Dokumente, die sie dynamisch aufbauen oder Vorlagen mit Daten verschmelzen, aber auch zum Parsing von Dokumenten, um separate Dokumentelemente wie Kopfzeilen, Fußzeilen, Absätze, Tabellen, Bilder und andere zu extrahieren. Eine weitere mögliche Aufgabe ist es, alle Texte der spezifischen Formatierung oder Stil zu finden.

Verwenden Sie die [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) Klasse, um dieses Nutzungszenario zu implementieren. Diese Klasse entspricht dem bekannten Visitor Design-Muster. mit [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), Sie können benutzerdefinierte Operationen definieren und ausführen, die Aufzählung über den Dokumentenbaum erfordern.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) eine Reihe von **VisitXXX** Verfahren, die bei einem bestimmten Dokumentelement (Node) aufgerufen werden. Zum Beispiel [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) wird aufgerufen, wenn der Anfang eines Textabsatzes gefunden wird und [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) wird aufgerufen, wenn das Ende eines Textabsatzes gefunden wird. Jedes **DocumentVisitor.VisitXXX** eine Methode akzeptiert das entsprechende Objekt, das es trifft, so dass Sie es nach Bedarf verwenden können (Abrufen der Formatierung), z.B. beides [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) und [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) akzeptieren [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Objekt.

Jedes **DocumentVisitor.VisitXXX** Verfahren gibt eine **VisitorAction** Wert, der die Aufzählung von Knoten steuert. Sie können entweder die Aufzählung fortsetzen, den aktuellen Knoten überspringen (aber die Aufzählung fortsetzen), oder die Aufzählung von Knoten stoppen.

Dies sind die Schritte, die Sie folgen sollten, um verschiedene Teile eines Dokuments programmatisch zu bestimmen und zu extrahieren:

- Erstellen Sie eine Klasse, die von [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Überschreiben und Umsetzungen für einige oder alle **DocumentVisitor.VisitXXX** Methoden, um einige benutzerdefinierte Operationen durchzuführen.
- Ruf an. [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) auf dem Knoten, von wo aus Sie die Aufzählung starten möchten. Zum Beispiel, wenn Sie das gesamte Dokument auszählen möchten, verwenden [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) stellt standardmäßige Implementierungen für alle **DocumentVisitor.VisitXXX** Methoden. Damit ist es einfacher, neue Dokumentbesucher zu erstellen, da nur die für den jeweiligen Besucher erforderlichen Methoden überschrieben werden müssen. Es ist nicht notwendig, alle Besuchermethoden zu überschreiben.

Das folgende Beispiel zeigt, wie man das Visitor-Muster verwendet, um neue Operationen in die Aspose.Words Objektmodell. In diesem Fall erstellen wir einen einfachen Dokumentenkonverter in ein Textformat:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Text extrahieren Nur

Die Möglichkeiten, Text aus dem Dokument abzurufen sind:

- Verwendung [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) mit [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) als Klartext in eine Datei speichern oder streamen
- Verwendung [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) und die `SaveFormat.Text` Parameter. intern ruft dies als Text in einen Speicherstrom ein und gibt den resultierenden String zurück
- Verwendung [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) Text mit allen abrufen Microsoft Word Kontrollzeichen einschließlich Feldcodes
- Implementieren Sie einen Brauch [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) kundenspezifische Extraktion durchführen

### Verwendung `Node.GetText` und `Node.ToString`

A Word-Dokument kann Steuerzeichen enthalten, die spezielle Elemente wie Feld, Ende der Zelle, Ende des Abschnitts usw. bezeichnen. Die vollständige Liste der möglichen Word-Steuerzeichen ist in der **ControlChar** Klasse. Die [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) Ein Verfahren gibt Text mit allen im Knoten vorhandenen Steuerzeichen zurück.

Calling ToString gibt die Klartextdarstellung des Dokuments nur ohne Kontrollzeichen zurück. Weitere Informationen zur Ausfuhr als Klartext siehe **Using SaveFormat.Text**.

Das folgende Codebeispiel zeigt den Unterschied zwischen dem Aufruf der **GetText** und [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) Methoden an einem Knoten:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Verwendung `SaveFormat.Text`

Dieses Beispiel speichert das Dokument wie folgt:

- Filtert Feldzeichen und Feldcodes, Form, Fußnote, Endnote und Kommentare Referenzen
- Ersetzt Ende des Absatzes [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) Zeichen mit [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) Kombinationen
- Verwendet UTF8 Kodierung

Das folgende Codebeispiel zeigt, wie man ein Dokument im TXT-Format speichert:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Bilder aus Formen extrahieren

Sie müssen möglicherweise Dokumentbilder extrahieren, um einige Aufgaben auszuführen. Aspose.Words Sie können dies auch tun.

Das folgende Codebeispiel zeigt, wie man Bilder aus einem Dokument extrahiert:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}

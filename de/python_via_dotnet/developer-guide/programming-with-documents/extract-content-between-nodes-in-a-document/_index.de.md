---
title: Inhalte zwischen Dokumentknoten extrahieren
second_title: Aspose.Words für Python
articleTitle: Extrahieren Sie Inhalte zwischen Knoten in einem Dokument
linktitle: Inhalte zwischen Knoten extrahieren
description: "So extrahieren Sie mit Python ganz einfach bestimmte Inhalte aus einem Bereich innerhalb des Dokuments."
type: docs
weight: 140
url: /de/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Bei der Arbeit mit Dokumenten ist es wichtig, Inhalte aus einem bestimmten Bereich innerhalb eines Dokuments einfach extrahieren zu können. Der Inhalt kann jedoch aus komplexen Elementen wie Absätzen, Tabellen, Bildern usw. bestehen.

Unabhängig davon, welche Inhalte extrahiert werden müssen, wird die Methode zum Extrahieren dieser Inhalte immer davon bestimmt, welche Knoten zum Extrahieren von Inhalten ausgewählt werden. Dabei kann es sich um ganze Textkörper oder einfache Textläufe handeln.

Es gibt viele mögliche Situationen und daher viele verschiedene Knotentypen, die beim Extrahieren von Inhalten berücksichtigt werden müssen. Beispielsweise möchten Sie möglicherweise Inhalte zwischen Folgendem extrahieren:

- Zwei spezifische Absätze
- Spezifische Textabschnitte
- Felder verschiedener Art, z. B. Zusammenführungsfelder
- Start- und Endbereiche eines Lesezeichens oder Kommentars
- Verschiedene Textteile in separaten Abschnitten

In einigen Situationen müssen Sie möglicherweise sogar verschiedene Knotentypen kombinieren, z. B. beim Extrahieren von Inhalten zwischen einem Absatz und einem Feld oder zwischen einem Lauf und einem Lesezeichen.

Dieser Artikel stellt die Code-Implementierung zum Extrahieren von Text zwischen verschiedenen Knoten sowie Beispiele für gängige Szenarios bereit.

{{% alert color="primary" %}}

Diese Beispiele sind nur einige Beispiele der vielen Möglichkeiten. Wir planen, dass die Textextraktionsfunktion in Zukunft Teil des öffentlichen API sein wird und kein zusätzlicher Code erforderlich sein wird. In der Zwischenzeit können Sie Ihre Anfragen zu dieser Funktionalität gerne im [Aspose.Words-Forum](https://forum.aspose.com/c/words/8) posten.

{{% /alert %}}

## Warum Inhalte extrahieren?

Das Ziel beim Extrahieren des Inhalts besteht häufig darin, ihn zu duplizieren oder separat in einem neuen Dokument zu speichern. Sie können beispielsweise Inhalte extrahieren und:

- Kopieren Sie es in ein separates Dokument
- Konvertieren Sie einen bestimmten Teil eines Dokuments in PDF oder Bild
- Den Inhalt des Dokuments mehrmals duplizieren
- Arbeiten Sie mit extrahierten Inhalten getrennt vom Rest des Dokuments

Dies kann leicht mit Aspose.Words und der folgenden Code-Implementierung erreicht werden.

## Algorithmus zum Extrahieren von Inhalten

Der Code in diesem Abschnitt behandelt alle oben beschriebenen möglichen Situationen mit einer verallgemeinerten und wiederverwendbaren Methode. Der allgemeine Überblick über diese Technik umfasst:

1. Sammeln Sie die Knoten, die den Inhaltsbereich bestimmen, der aus Ihrem Dokument extrahiert wird. Das Abrufen dieser Knoten erfolgt durch den Benutzer in seinem Code, basierend auf dem, was er extrahieren möchte.
1. Übergabe dieser Knoten an die unten bereitgestellte **ExtractContent**-Methode. Sie müssen außerdem einen booleschen Parameter übergeben, der angibt, ob diese Knoten, die als Marker fungieren, in die Extraktion einbezogen werden sollen oder nicht.
1. Abrufen einer Liste geklonter Inhalte (kopierte Knoten), die extrahiert werden sollen. Sie können diese Knotenliste auf beliebige Weise verwenden, beispielsweise zum Erstellen eines neuen Dokuments, das nur den ausgewählten Inhalt enthält.

## So extrahieren Sie Inhalte

Um den Inhalt aus Ihrem Dokument zu extrahieren, müssen Sie die unten stehende **extract_content**-Methode aufrufen und die entsprechenden Parameter übergeben. Die zugrunde liegende Grundlage dieser Methode besteht darin, Knoten auf Blockebene (Absätze und Tabellen) zu finden und sie zu klonen, um identische Kopien zu erstellen. Wenn die übergebenen Markierungsknoten auf Blockebene liegen, kann die Methode den Inhalt auf dieser Ebene einfach kopieren und dem Array hinzufügen.

Wenn die Markierungsknoten jedoch inline sind (ein untergeordnetes Element eines Absatzes), wird die Situation komplexer, da der Absatz am Inline-Knoten geteilt werden muss, sei es ein Lauf, Lesezeichenfelder usw. Inhalte in den geklonten übergeordneten Knoten sind nicht vorhanden Der zwischen den Markierungen vorhandene Wert wird entfernt. Dieser Prozess wird verwendet, um sicherzustellen, dass die Inline-Knoten weiterhin die Formatierung des übergeordneten Absatzes beibehalten. Die Methode führt außerdem Prüfungen für die als Parameter übergebenen Knoten durch und löst eine Ausnahme aus, wenn einer der Knoten ungültig ist. Die an diese Methode zu übergebenden Parameter sind:

1. **startNode** und **endNode**. Die ersten beiden Parameter sind die Knoten, die definieren, wo die Extraktion des Inhalts beginnen bzw. enden soll. Diese Knoten können sowohl auf Blockebene ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)) als auch auf Inline-Ebene (z. B. [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) usw.) sein:
   1. Um ein Feld zu übergeben, müssen Sie das entsprechende [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)-Objekt übergeben.
   1. Um Lesezeichen zu übergeben, sollten die [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/)- und [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/)-Knoten übergeben werden.
   1. Zur Übergabe von Kommentaren sollten die Knoten [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) und [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) verwendet werden.
1. **istInklusive**. Legt fest, ob die Marker in die Extraktion einbezogen werden oder nicht. Wenn diese Option auf false gesetzt ist und derselbe Knoten oder aufeinanderfolgende Knoten übergeben werden, wird eine leere Liste zurückgegeben:
   1. Wenn ein [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)-Knoten übergeben wird, definiert diese Option, ob das gesamte Feld eingeschlossen oder ausgeschlossen werden soll.
   1. Wenn ein [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/)- oder [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/)-Knoten übergeben wird, definiert diese Option, ob das Lesezeichen enthalten ist oder nur der Inhalt zwischen dem Lesezeichenbereich.
   1. Wenn ein [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/)- oder [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)-Knoten übergeben wird, definiert diese Option, ob der Kommentar selbst oder nur der Inhalt im Kommentarbereich enthalten sein soll.

Die Implementierung der **extract_content**-Methode finden Sie in [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Auf diese Methode wird in den Szenarien in diesem Artikel Bezug genommen.

Wir werden außerdem eine benutzerdefinierte Methode definieren, um auf einfache Weise ein Dokument aus extrahierten Knoten zu generieren. Diese Methode wird in vielen der unten aufgeführten Szenarien verwendet und erstellt einfach ein neues Dokument und importiert den extrahierten Inhalt darin.

Das folgende Codebeispiel zeigt, wie eine Liste von Knoten in ein neues Dokument eingefügt wird:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Extrahieren Sie Inhalte zwischen Absätzen

Dies zeigt, wie Sie mit der oben beschriebenen Methode Inhalte zwischen bestimmten Absätzen extrahieren. In diesem Fall möchten wir den Textkörper des Briefes extrahieren, der sich in der ersten Hälfte des Dokuments befindet. Wir können erkennen, dass dies zwischen dem 7. und 11. Absatz liegt.

Der folgende Code führt diese Aufgabe aus. Die entsprechenden Absätze werden mithilfe der [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/)-Methode aus dem Dokument extrahiert und die angegebenen Indizes übergeben. Anschließend übergeben wir diese Knoten an die **extract_content**-Methode und geben an, dass diese in die Extraktion einbezogen werden sollen. Diese Methode gibt den kopierten Inhalt zwischen diesen Knoten zurück, der dann in ein neues Dokument eingefügt wird.

Das folgende Codebeispiel zeigt, wie Sie den Inhalt zwischen bestimmten Absätzen mithilfe der oben genannten **extract_content**-Methode extrahieren:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) herunterladen.

{{% /alert %}}

## Extrahieren Sie Inhalte zwischen verschiedenen Knotentypen

Wir können Inhalte zwischen beliebigen Kombinationen von Blockebenen- oder Inline-Knoten extrahieren. In diesem Szenario unten extrahieren wir den Inhalt zwischen dem ersten Absatz und der Tabelle im zweiten Abschnitt einschließlich. Wir erhalten die Markierungsknoten, indem wir die [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/)- und [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/)-Methode im zweiten Abschnitt des Dokuments aufrufen, um die entsprechenden [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)- und [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Knoten abzurufen. Als kleine Abwechslung duplizieren wir stattdessen den Inhalt und fügen ihn unter dem Original ein.

Das folgende Codebeispiel zeigt, wie der Inhalt zwischen einem Absatz und einer Tabelle mithilfe der **extract_content**-Methode extrahiert wird:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) herunterladen.

{{% /alert %}}

## Extrahieren Sie Inhalte zwischen Absätzen basierend auf dem Stil

Möglicherweise müssen Sie den Inhalt zwischen Absätzen desselben oder eines anderen Stils extrahieren, beispielsweise zwischen Absätzen, die mit Überschriftenstilen markiert sind.

Der folgende Code zeigt, wie dies erreicht wird. Es handelt sich um ein einfaches Beispiel, das den Inhalt zwischen der ersten Instanz der Stile "Überschrift 1" und "Überschrift 3" extrahiert, ohne auch die Überschriften zu extrahieren. Dazu setzen wir den letzten Parameter auf false, der angibt, dass die Markierungsknoten nicht einbezogen werden sollen.

Bei einer ordnungsgemäßen Implementierung sollte dies in einer Schleife ausgeführt werden, um den Inhalt zwischen allen Absätzen dieser Stile aus dem Dokument zu extrahieren. Der extrahierte Inhalt wird in ein neues Dokument kopiert.

Das folgende Codebeispiel zeigt, wie Sie mithilfe der **extract_content**-Methode Inhalte zwischen Absätzen mit bestimmten Stilen extrahieren:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) herunterladen.

{{% /alert %}}

## Extrahieren Sie Inhalte zwischen bestimmten Läufen

Sie können Inhalte auch zwischen Inline-Knoten wie einem [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) extrahieren. Als Markierungen können Absätze aus verschiedenen Absätzen übergeben werden. Der folgende Code zeigt, wie man bestimmten Text zwischen demselben [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)-Knoten extrahiert.

Das folgende Codebeispiel zeigt, wie Sie mithilfe der **extract_content**-Methode Inhalte zwischen bestimmten Durchläufen desselben Absatzes extrahieren:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) herunterladen.

{{% /alert %}}

## Extrahieren Sie Inhalte mithilfe eines Felds

Um ein Feld als Marker zu verwenden, muss der [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)-Knoten übergeben werden. Der letzte Parameter der **extract_content**-Methode definiert, ob das gesamte Feld eingeschlossen werden soll oder nicht. Extrahieren wir den Inhalt zwischen dem Briefvorlagenfeld "FullName" und einem Absatz im Dokument. Wir verwenden die [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/)-Methode der [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Klasse. Dadurch wird der [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)-Knoten mit dem Namen des an ihn übergebenen Zusammenführungsfelds zurückgegeben.

In unserem Fall setzen wir den letzten an die **extract_content**-Methode übergebenen Parameter auf `False`, um das Feld von der Extraktion auszuschließen. Wir rendern den extrahierten Inhalt als PDF.

Das folgende Codebeispiel zeigt, wie Sie mithilfe der **extract_content**-Methode Inhalte zwischen einem bestimmten Feld und Absatz im Dokument extrahieren:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) herunterladen.

{{% /alert %}}

## Extrahieren Sie Inhalte aus einem Lesezeichen

In einem Dokument wird der in einem Lesezeichen definierte Inhalt durch die [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/)- und [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/)-Knoten gekapselt. Inhalte, die zwischen diesen beiden Knoten gefunden werden, bilden das Lesezeichen. Sie können jeden dieser Knoten als beliebige Markierung übergeben, auch als solche aus verschiedenen Lesezeichen, solange die Startmarkierung vor der Endmarkierung im Dokument erscheint. Wir werden diesen Inhalt mithilfe des folgenden Codes in ein neues Dokument extrahieren. Die **istInklusive**-Parameteroption zeigt, wie das Lesezeichen beibehalten oder verworfen wird.

Das folgende Codebeispiel zeigt, wie der Inhalt, auf den ein Lesezeichen verwiesen wird, mithilfe der **extract_content**-Methode extrahiert wird:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) herunterladen.

{{% /alert %}}

## Extrahieren Sie Inhalte aus einem Kommentar

Ein Kommentar besteht aus den Knoten [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) und [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Alle diese Knoten sind inline. Die ersten beiden Knoten kapseln den Inhalt des Dokuments, auf das der Kommentar verweist, wie im Screenshot unten zu sehen ist. Der [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)-Knoten selbst ist ein [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/), das Absätze und Läufe enthalten kann. Es stellt die Botschaft des Kommentars dar, die als Kommentarblase im Überprüfungsbereich angezeigt wird. Da dieser Knoten inline ist und von einem Text abstammt, können Sie den Inhalt auch aus dieser Nachricht extrahieren.

Der Kommentar fasst die Überschrift, den ersten Absatz und die Tabelle im zweiten Abschnitt zusammen. Extrahieren wir diesen Kommentar in ein neues Dokument. Die **istInklusive**-Option bestimmt, ob der Kommentar selbst beibehalten oder verworfen wird.

Das folgende Codebeispiel zeigt, wie das geht:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) herunterladen.

{{% /alert %}}

## So extrahieren Sie nur Text

Es gibt folgende Möglichkeiten, Text aus dem Dokument abzurufen:

- Verwenden Sie [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/), um als Nur-Text in einer Datei oder einem Stream zu speichern
- Verwenden Sie [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) und übergeben Sie den [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)-Parameter. Intern ruft dies das Speichern als Text in einem Speicherstrom auf und gibt die resultierende Zeichenfolge zurück
- Verwenden Sie [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/), um Text mit allen Microsoft Word-Steuerzeichen einschließlich Feldcodes abzurufen

### Verwendung von Node.get_text und Node.to_string

Ein Word-Dokument kann Steuerzeichen enthalten, die spezielle Elemente wie Feld, Zellenende, Abschnittsende usw. kennzeichnen. Die vollständige Liste möglicher Word-Steuerzeichen ist in der [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/)-Klasse definiert. Die [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/)-Methode gibt Text mit allen im Knoten vorhandenen Steuerzeichen zurück.

Der Aufruf von [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) gibt nur die Klartextdarstellung des Dokuments ohne Steuerzeichen zurück. Weitere Informationen zum Exportieren als Nur-Text finden Sie unter "Verwenden von [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)"

Das folgende Codebeispiel zeigt den Unterschied zwischen dem Aufruf der [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/)- und [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/)-Methoden auf einem Knoten:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Verwenden von `SaveFormat.Text`

In diesem Beispiel wird das Dokument wie folgt gespeichert:

- Filtert Feldzeichen und Feldcodes, Form-, Fußnoten-, Endnoten- und Kommentarverweise heraus
- Ersetzt **ControlChar.Cr**-Zeichen am Absatzende durch **ControlChar.CrLf**-Kombinationen
- Verwendet UTF8-Kodierung

Das folgende Codebeispiel zeigt, wie ein Dokument im TXT-Format gespeichert wird:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Extrahieren Sie Bilder aus Formen

Möglicherweise müssen Sie Dokumentbilder extrahieren, um einige Aufgaben auszuführen. Aspose.Words ermöglicht Ihnen dies ebenfalls.

Das folgende Codebeispiel zeigt, wie Bilder aus einem Dokument extrahiert werden:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}

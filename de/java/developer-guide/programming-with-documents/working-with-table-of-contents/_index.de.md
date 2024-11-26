---
title: Arbeiten mit Inhaltsverzeichnis in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Inhaltsverzeichnissen
linktitle: Arbeiten mit Inhaltsverzeichnissen
description: "Inhaltsverzeichnisfeld im Detail. So erstellen und ändern Sie `TOC` -Felder mit Java."
type: docs
weight: 170
url: /de/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Häufig arbeiten Sie mit Dokumenten, die ein Inhaltsverzeichnis (TOC) enthalten. Mit Aspose.Words können Sie Ihr eigenes Inhaltsverzeichnis einfügen oder das vorhandene Inhaltsverzeichnis im Dokument mit nur wenigen Codezeilen vollständig neu erstellen.

In diesem Artikel wird beschrieben, wie Sie mit dem Inhaltsverzeichnisfeld arbeiten und veranschaulichen:

- So fügen Sie eine brandneue TOC ein.
- Aktualisieren Sie neue oder vorhandene TOCs im Dokument.
- Geben Sie Schalter an, um die Formatierung und die Gesamtstruktur von TOC zu steuern.
- So ändern Sie die Stile und das Erscheinungsbild des Inhaltsverzeichnisses.
- So entfernen Sie ein ganzes `TOC` -Feld zusammen mit allen Einträgen aus dem Dokument.

## Inhaltsverzeichnis programmgesteuert einfügen

Sie können ein `TOC`-Feld (Inhaltsverzeichnis) an der aktuellen Position in das Dokument einfügen, indem Sie die [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) -Methode aufrufen.

Ein Inhaltsverzeichnis in einem Word-Dokument kann auf verschiedene Arten erstellt und mit einer Vielzahl von Optionen formatiert werden. Die Feldschalter, die Sie an die Methode übergeben, steuern die Art und Weise, wie die Tabelle in Ihrem Dokument erstellt und angezeigt wird.

Die Standardschalter, die in einer in Microsoft Word eingefügten `TOC` verwendet werden, sind **"\o "1-3 \h \z \u"**. Beschreibungen dieser Schalter sowie eine Liste der unterstützten Schalter finden Sie später im Artikel. Sie können entweder diese Anleitung verwenden, um die richtigen Schalter zu erhalten, oder wenn Sie bereits ein Dokument haben, das die gewünschten ähnlichen `TOC` enthält, können Sie Feldcodes (*ALT+F9*) anzeigen und die Schalter direkt aus dem Feld kopieren.

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltsverzeichnisfeld in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltsverzeichnis (TOC) mit Überschriftenstilen als Einträge in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Der Code zeigt, dass das neue Inhaltsverzeichnis in ein leeres Dokument eingefügt wird. Die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) -Klasse wird dann verwendet, um einige Beispielinhaltsformatierungen mit den entsprechenden Überschriftenstilen einzufügen, die verwendet werden, um den Inhalt zu markieren, der in TOC aufgenommen werden soll. Die nächsten Zeilen füllen dann die `TOC` aus, indem Sie die Felder und das Seitenlayout des Dokuments aktualisieren.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Ohne die im Beispiel verwendeten Methoden würden Sie beim Öffnen des Ausgabedokuments das Feld `TOC` finden, jedoch ohne sichtbaren Inhalt. Dies liegt daran, dass das Feld `TOC` eingefügt wurde, aber noch nicht ausgefüllt ist, bis es im Dokument aktualisiert wurde. Weitere Informationen dazu finden Sie im nächsten Abschnitt.

{{% /alert %}}

## Inhaltsverzeichnis aktualisieren

Mit Aspose.Words können Sie eine `TOC` mit nur wenigen Codezeilen vollständig aktualisieren. Dies kann getan werden, um eine neu eingefügte `TOC` zu füllen oder eine vorhandene `TOC` zu aktualisieren, nachdem Änderungen am Dokument vorgenommen wurden.

Die folgenden zwei Methoden müssen verwendet werden, um die `TOC`-Felder im Dokument zu aktualisieren:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Bitte beachten Sie, dass diese beiden Aktualisierungsmethoden in dieser Reihenfolge aufgerufen werden müssen. Wenn umgekehrt, wird das Inhaltsverzeichnis ausgefüllt, aber es werden keine Seitenzahlen angezeigt. Es können beliebig viele verschiedene TOCs aktualisiert werden. Diese Methoden aktualisieren automatisch alle im Dokument gefundenen TOCs.

Das folgende Codebeispiel zeigt, wie `TOC`-Felder im Dokument durch Aufrufen von Feldaktualisierungen vollständig neu erstellt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

Der erste Aufruf von [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) erstellt die `TOC`, alle Texteinträge werden ausgefüllt und die `TOC` erscheint fast vollständig. Es fehlen nur noch die Seitenzahlen, die vorerst mit "?" angezeigt werden.

Der zweite Aufruf von [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) erstellt das Layout des Dokuments im Speicher. Dies muss getan werden, um die Seitenzahlen der Einträge zu erfassen. Die aus diesem Aufruf berechneten korrekten Seitenzahlen werden dann in die TOC eingefügt.

## Verwenden Sie Schalter, um das Verhalten des Inhaltsverzeichnisses zu steuern

Wie bei jedem anderen Feld kann das Feld `TOC` Schalter akzeptieren, die im Feldcode definiert sind, der steuert, wie das Inhaltsverzeichnis erstellt wird. Bestimmte Schalter werden verwendet, um zu steuern, welche Einträge enthalten sind und auf welcher Ebene, während andere verwendet werden, um das Erscheinungsbild von TOC zu steuern. Schalter können miteinander kombiniert werden, um ein komplexes Inhaltsverzeichnis zu erstellen.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Standardmäßig sind diese obigen Schalter enthalten, wenn eine Standard `TOC` in das Dokument eingefügt wird. Eine `TOC` ohne Schalter enthält Inhalte aus den integrierten Überschriftenstilen (als ob der Schalter \O gesetzt wäre).

Die verfügbaren `TOC`-Switches, die von Aspose.Words unterstützt werden, sind unten aufgeführt und ihre Verwendung wird detailliert beschrieben. Sie können je nach Typ in separate Abschnitte unterteilt werden. Die Schalter im ersten Abschnitt definieren, welcher Inhalt in `TOC` aufgenommen werden soll, und die Schalter im zweiten Abschnitt steuern das Erscheinungsbild von TOC.

Wenn ein Switch hier nicht aufgeführt ist, wird er derzeit nicht unterstützt. Alle Switches werden in zukünftigen Versionen unterstützt. Wir fügen jedem Release weitere Unterstützung hinzu.

### Eingangsmarkierungsschalter

| Schalter | Beschreibung |
| :- | :- |
| **Heading Styles** <br>*(\O Schalter)* <br> | <p>Dieser Schalter definiert, dass die `TOC` aus den integrierten Überschriftenstilen aufgebaut werden soll. In Microsoft Word sind diese durch Heading 1 – Heading 9 definiert. In Aspose.Words werden diese Stile durch die entsprechende StyleIdentifier -Aufzählung dargestellt. Diese Aufzählung stellt eine gebietsschemaunabhängige Kennung eines Stils dar, z. B. `StyleIdentifier.Heading1` repräsentiert den Heading 1-Stil. Damit können die Formatierung und die Eigenschaften des Stils aus der Stilsammlung des Dokuments abgerufen werden. Die entsprechende Stilklasse kann aus der `Document.Styles` -Auflistung abgerufen werden, indem die indizierte Eigenschaft vom Typ StyleIdentifier verwendet wird.</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>Alle Inhalte, die mit diesen Stilen formatiert sind, sind im Inhaltsverzeichnis enthalten. Die Ebene der Überschrift definiert die entsprechende Hierarchieebene des Eintrags in TOC. Zum Beispiel wird ein Absatz mit dem Stil Heading 1 als erste Ebene in `TOC` behandelt, während ein Absatz mit Heading 2 als nächste Ebene in der Hierarchie behandelt wird und so weiter.</p> |
| **Outline Levels** <br>*(\U Schalter)* <br> | <p>Jeder Absatz kann unter Absatzoptionen eine Gliederungsebene definieren.</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>Diese Einstellung bestimmt, auf welcher Ebene dieser Absatz in der Dokumenthierarchie behandelt werden soll. Dies ist eine häufig verwendete Vorgehensweise, um das Layout eines Dokuments einfach zu strukturieren. Diese Hierarchie kann angezeigt werden, indem Sie in Microsoft Word zur Gliederungsansicht wechseln. Ähnlich wie bei Überschriftenstilen kann es zusätzlich zur Ebene "Fließtext" 1 – 9 Gliederungsebenen geben. Gliederungsebenen 1 – 9 werden in `TOC` in der entsprechenden Hierarchieebene angezeigt <br>Jeder Inhalt mit einer Gliederungsebene, die entweder im Absatzstil oder direkt im Absatz selbst festgelegt ist, ist in TOC enthalten. In Aspose.Words wird die Gliederungsebene durch die Eigenschaft `ParagraphFormat.OutlineLevel` des Absatzknotens dargestellt. Die Gliederungsebene eines Absatzformats wird auf die gleiche Weise durch die Eigenschaft `Style.ParagraphFormat` dargestellt.</p><p>{{% alert color="primary" %}}</p><p>Beachten Sie, dass integrierte Überschriftenstile wie Heading 1 eine Gliederungsebene haben, die in den Stileinstellungen obligatorisch festgelegt werden muss.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>*(\T Schalter)* <br> | <p>Mit diesem Schalter können benutzerdefinierte Stile verwendet werden, wenn Einträge gesammelt werden, die in TOC verwendet werden sollen. Dies wird häufig in Verbindung mit dem Schalter \O verwendet, um benutzerdefinierte Stile zusammen mit integrierten Überschriftenstilen in TOC einzuschließen. <br>Die Parameter des Schalters sollten in Sprachmarken eingeschlossen sein. Viele benutzerdefinierte Stile können enthalten sein.Für jeden Stil sollte der Name gefolgt von einem Komma gefolgt von der Ebene angegeben werden, auf der der Stil in `TOC` als angezeigt werden soll. Weitere Stile werden ebenfalls durch ein Komma getrennt. <br>Beispielsweise</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>verwendet Inhalte, die mit CustomHeading1 als Inhalt der Ebene 1 in `TOC` und CustomHeading2 als Ebene 2 formatiert sind.</p> |
| TC-Felder verwenden <br>*(\F und \L Schalter)* <br> | <p>In älteren Versionen von Microsoft Word war die einzige Möglichkeit, eine `TOC` zu erstellen, die Verwendung von TC -Feldern. Diese Felder werden ausgeblendet in das Dokument eingefügt, auch wenn Feldcodes angezeigt werden. Sie enthalten den Text, der im Eintrag angezeigt werden soll, und die `TOC` wird daraus erstellt. Diese Funktionalität wird jetzt nicht sehr oft verwendet, kann aber in einigen Fällen immer noch nützlich sein, um Einträge in `TOC` aufzunehmen, die nicht eingerückt sind, um im Dokument sichtbar zu sein. <br>Beim Einfügen erscheinen diese Felder ausgeblendet, auch wenn Feldcodes angezeigt werden. Sie können nicht gesehen werden, ohne versteckte Inhalte anzuzeigen. Um zu sehen, dass diese Felder Absatzformatierungen anzeigen, muss ausgewählt sein.</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>Diese Felder können wie jedes andere Feld an beliebiger Stelle in ein Dokument eingefügt werden und werden durch die `FieldType.FieldTOCEntry`-Aufzählung dargestellt.<br>Der Schalter \F in a `TOC` wird verwendet, um anzugeben, dass TC-Felder als Einträge verwendet werden sollen. Der Schalter allein ohne zusätzliche Kennung bedeutet, dass jedes TC -Feld im Dokument enthalten ist. Jeder zusätzliche Parameter, oft ein einzelner Buchstabe, gibt an, dass nur TC -Felder mit einem übereinstimmenden \f-Schalter in TOC enthalten sind. Beispielsweise *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>enthält nur TC Felder wie</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>Das Feld `TOC` hat auch einen zugehörigen Schalter, der Schalter "\ L" gibt an, dass nur das Feld TC mit Ebenen innerhalb des angegebenen Bereichs enthalten ist.</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>In den `TC` -Feldern selbst können auch `{several, multiple, a few, many, numerous}` -Schalter gesetzt sein. Diese sind:</p><p>– \F - Oben erklärt.*</p><p>– \L - Definiert, auf welcher Ebene in `TOC` dieses Feld TC angezeigt wird. Eine `TOC`, die denselben Schalter verwendet, enthält dieses TC -Feld nur, wenn es innerhalb des angegebenen Bereichs liegt.</p><p>- `_\N` - Die Seitennummerierung für diesen `TOC`-Eintrag wird nicht angezeigt.Beispielcode zum Einfügen von TC -Feldern finden Sie im nächsten Abschnitt.</p> |

### Aussehen Bezogene Schalter

| Schalter | Beschreibung |
| :- | :- |
| **Omit Page Numbers** <br>*(\N Schalter)* | <p>Dieser Schalter wird verwendet, um Seitenzahlen für bestimmte Ebenen von TOC auszublenden. Sie können beispielsweise definieren</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>und die Seitenzahlen auf den Einträgen der Ebenen 3 und vier werden zusammen mit den Führungspunkten (falls vorhanden) ausgeblendet. Um nur eine Ebene anzugeben, sollte weiterhin ein Bereich verwendet werden, z. B. schließt "1-1" Seitenzahlen nur für die erste Ebene aus. <br>Wenn Sie keinen Ebenenbereich angeben, werden Seitenzahlen für alle Ebenen in TOC weggelassen. Dies ist nützlich, wenn Sie ein Dokument in HTML oder ein ähnliches Format exportieren. Dies liegt daran, dass HTML -basierte Formate kein Seitenkonzept haben und daher keine Seitennummerierung benötigen.</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| Als Hyperlinks einfügen <br>*(\H Schalter)* | <p>Dieser Schalter gibt an, dass `TOC`-Einträge als Hyperlinks eingefügt werden. Wenn Sie ein Dokument in Microsoft Word anzeigen, werden diese Einträge weiterhin als normaler Text innerhalb von `TOC` angezeigt, sind jedoch mit einem Hyperlink versehen und können daher verwendet werden, um mit *Ctrl + Left Click* in Microsoft Word zur Position des ursprünglichen Eintrags im Dokument zu navigieren. Wenn dieser Schalter enthalten ist, werden diese Links auch in anderen Formaten beibehalten. Beispielsweise werden diese in HTML-basierten Formaten, einschließlich EPUB und gerenderten Formaten wie PDF und XPS, als Arbeitslinks exportiert. <br>Ohne diesen Schalter werden die `TOC` in all diesen Ausgaben als Klartext exportiert und zeigen dieses Verhalten nicht. Wenn ein Dokument in MS Word geöffnet wird, kann der Text der Einträge auch auf diese Weise nicht angeklickt werden, aber die Seitenzahlen können weiterhin verwendet werden, um zum ursprünglichen Eintrag zu navigieren.</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>*(\P Schalter)* <br> | <p>Mit diesem Schalter kann der Inhalt, der den Titel des Eintrags und die Seitennummerierung trennt, einfach in TOC geändert werden. Das zu verwendende Trennzeichen sollte nach diesem Schalter angegeben und in Sprachmarken eingeschlossen werden. <br>Im Gegensatz zu dem, was in der Office-Dokumentation dokumentiert ist, kann nur ein Zeichen anstelle von bis zu fünf Zeichen verwendet werden. Dies gilt sowohl für MS Word als auch für Aspose.Words. <br>Die Verwendung dieses Schalters wird nicht empfohlen, da er nicht viel Kontrolle darüber zulässt, was er zum Trennen von Einträgen und Seitenzahlen in TOC verwendet hat. Stattdessen wird empfohlen, den entsprechenden `TOC` -Stil wie `StyleIdentifier.TOC1` zu bearbeiten und von dort aus den Führungsstil mit Zugriff auf bestimmte Schriftelemente usw. zu bearbeiten. Weitere Einzelheiten dazu finden Sie später im Artikel.</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>*(\W Schalter)* | <p>Mit diesem Schalter wird festgelegt, dass alle Einträge mit einem Tabulatorzeichen, z. B. eine Überschrift mit einem Tabulator am Zeilenende, beim Auffüllen von TOC als richtiges Tabulatorzeichen beibehalten werden. Dies bedeutet, dass die Funktion des Tabulatorzeichens in `TOC` vorhanden ist und zum Formatieren des Eintrags verwendet werden kann. Beispielsweise können bestimmte Einträge Tabulatoren und Tabulatorzeichen verwenden, um den Text gleichmäßig zu verteilen. Solange die entsprechende `TOC` -Ebene die entsprechenden Tabulatoren definiert, werden die generierten `TOC` -Einträge mit ähnlichem Abstand angezeigt. <br><br>In der gleichen Situation, wenn dieser Schalter nicht definiert wäre, würden die Tabulatorzeichen in Leerzeichen umgewandelt, die als nicht funktionierende Tabulatoren äquivalent sind. Die Ausgabe würde dann nicht wie erwartet erscheinen.</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>*(\X Schalter)* <br> | <p>Ähnlich wie bei der obigen Option gibt diese Option an, dass Überschriften, die sich über mehrere Zeilen erstrecken (mit Zeilenumbrüchen, nicht mit separaten Absätzen), so beibehalten werden, wie sie im generierten TOC enthalten sind. Beispielsweise kann eine Überschrift, die über mehrere Zeilen verteilt werden soll, das Zeilenumbruchzeichen (Strg + Eingabetaste oder `ControlChar.LineBreak`) verwenden, um Inhalte über verschiedene Zeilen hinweg zu trennen. Wenn dieser Schalter angegeben ist, behält der Eintrag in `TOC` diese neuen Zeilenzeichen bei, wie unten gezeigt. <br><br>Wenn in diesem Fall der Schalter nicht definiert ist, werden die neuen Zeilenzeichen in ein einzelnes Leerzeichen konvertiert.</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## TC Felder einfügen

Sie können ein neues TC -Feld an der aktuellen Position von `DocumentBuilder` einfügen, indem Sie die `DocumentBuilder.InsertField` -Methode aufrufen und den Feldnamen zusammen mit den erforderlichen Schaltern als "TC" angeben.

Das folgende Codebeispiel zeigt, wie Sie ein `TC` -Feld mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) in das Dokument einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Oft ist eine bestimmte Textzeile für die `TOC` vorgesehen und mit einem `TC` -Feld gekennzeichnet. Der einfache Weg, dies in MS Word zu tun, besteht darin, den Text zu markieren und *ALT+SHIFT+O* zu drücken. Dadurch wird automatisch ein `TC`-Feld mit dem ausgewählten Text erstellt. Die gleiche Technik kann durch Code erreicht werden. Der folgende Code findet Text, der der Eingabe entspricht, und fügt ein `TC` -Feld an derselben Position wie der Text ein. Der Code basiert auf der gleichen Technik, die im Artikel verwendet wird. Das folgende Codebeispiel zeigt, wie Sie ein `TC` -Feld am Text in einem Dokument suchen und einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Ändern eines Inhaltsverzeichnisses

### Ändern der Formatierung von Stilen

Die Formatierung von Einträgen in `TOC` verwendet nicht die ursprünglichen Stile der markierten Einträge, stattdessen wird jede Ebene mit einem äquivalenten `TOC` -Stil formatiert. Beispielsweise ist die erste Ebene in `TOC` mit dem Stil **TOC1** formatiert, die zweite Ebene mit dem Stil **TOC2** usw. Dies bedeutet, dass diese Stile geändert werden müssen, um das Aussehen von `TOC` zu ändern. In Aspose.Words werden diese Stile durch die gebietsschemaunabhängigen `StyleIdentifier.TOC1` bis `StyleIdentifier.TOC9` dargestellt und können mit diesen Bezeichnern aus der `Document.Styles` -Sammlung abgerufen werden.

Sobald der entsprechende Stil des Dokuments abgerufen wurde, kann die Formatierung für diesen Stil geändert werden. Alle Änderungen an diesen Stilen werden automatisch in der TOCs im Dokument angezeigt.

Im folgenden Codebeispiel wird eine Formatierungseigenschaft geändert, die im Stil `TOC` der ersten Ebene verwendet wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Es ist auch nützlich zu beachten, dass jede direkte Formatierung eines Absatzes (definiert im Absatz selbst und nicht im Stil), die in `TOC` aufgenommen werden soll, in den Eintrag in TOC kopiert wird. Beispiel: Wenn der Stil Heading 1 verwendet wird, um Inhalte für `TOC` zu markieren, und dieser Stil fett formatiert ist, während auf den Absatz auch direkt kursive Formatierungen angewendet werden. Der resultierende `TOC` -Eintrag wird nicht fett gedruckt, da dies Teil der Stilformatierung ist, jedoch kursiv, da dies direkt im Absatz formatiert ist.

Sie können auch die Formatierung der Trennzeichen zwischen den einzelnen Einträgen und der Seitenzahl steuern. Standardmäßig ist dies eine gepunktete Linie, die mit einem Tabulatorzeichen und einem rechten Tabulator in der Nähe des rechten Randes über die Seitennummerierung verteilt wird.

Mithilfe der `Style`-Klasse, die für die bestimmte `TOC`-Ebene abgerufen wurde, die Sie ändern möchten, können Sie auch ändern, wie diese im Dokument angezeigt werden.

Um die Darstellung zu ändern, muss zuerst `Style.ParagraphFormat` aufgerufen werden, um die Absatzformatierung für den Stil abzurufen. Daraus können die Tabstopps durch Aufruf von `ParagraphFormat.TabStops` abgerufen und der entsprechende Tabstopp geändert werden. Mit derselben Technik kann die Registerkarte selbst verschoben oder ganz entfernt werden.

Das folgende Codebeispiel zeigt, wie Sie die Position des rechten Tabstopps in `TOC`-bezogenen Absätzen ändern.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Entfernen eines Inhaltsverzeichnisses aus dem Dokument

Ein Inhaltsverzeichnis kann aus dem Dokument entfernt werden, indem alle Knoten entfernt werden, die zwischen dem Knoten `FieldStart` und FieldEnd des Felds `TOC` gefunden wurden.

Der folgende Code zeigt dies. Das Entfernen des Felds `TOC` ist einfacher als ein normales Feld, da wir verschachtelte Felder nicht verfolgen. Stattdessen überprüfen wir, ob der `FieldEnd` -Knoten vom Typ `FieldType.FieldTOC` ist, was bedeutet, dass wir auf das Ende des aktuellen TOC gestoßen sind. Diese Technik kann in diesem Fall verwendet werden, ohne sich um verschachtelte Felder kümmern zu müssen, da wir davon ausgehen können, dass jedes ordnungsgemäß formatierte Dokument kein vollständig verschachteltes `TOC` -Feld in einem anderen `TOC` -Feld enthält.

Zuerst werden die `FieldStart` Knoten von jedem `TOC` gesammelt und gespeichert. Die angegebene `TOC` wird dann aufgezählt, sodass alle Knoten innerhalb des Felds besucht und gespeichert werden. Die Knoten werden dann aus dem Dokument entfernt. Das folgende Codebeispiel zeigt, wie eine angegebene `TOC` aus einem Dokument entfernt wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Inhaltsverzeichnis extrahieren

Wenn Sie ein Inhaltsverzeichnis aus einem beliebigen Word-Dokument extrahieren möchten, kann das folgende Codebeispiel verwendet werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}

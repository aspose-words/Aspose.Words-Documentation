---
title: Arbeiten mit Inhaltsverzeichnis in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Inhaltsverzeichnis
linktitle: Arbeiten mit Inhaltsverzeichnis
description: "Inhaltsverzeichnis in Details. Wie zu erstellen und zu ändern `TOC` Feld mit Java."
type: docs
weight: 170
url: /de/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Oft arbeiten Sie mit Dokumenten, die eine Inhaltstabelle enthalten (TOC). Verwendung Aspose.Words Sie können Ihre eigene Inhaltstabelle einfügen oder die vorhandene Inhaltstabelle in das Dokument mit nur wenigen Codezeilen komplett neu erstellen.

Dieser Artikel beschreibt, wie man mit der Inhaltstabelle arbeitet und zeigt:

- Wie man eine brandneue TOC einfügt.
- Aktualisieren Sie neue oder bestehende TOCs im Dokument.
- Geben Sie Schalter an, um die Formatierung und die Gesamtstruktur des TOC zu steuern.
- Wie man die Stile und das Aussehen der Inhaltstabelle ändert.
- Wie man eine ganze `TOC` mit allen Einträgen aus dem Dokument.

## Fügen Sie Inhaltsverzeichnis programmatisch ein

Sie können einfügen `TOC` (Inhaltetabelle) Feld in das Dokument an der aktuellen Position durch Aufruf der [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) Methode.

Eine Inhaltstabelle in einem Word-Dokument kann auf verschiedene Weise erstellt und mit einer Vielzahl von Optionen formatiert werden. Das Feld schaltet, dass Sie die Methode ansteuern, wie die Tabelle gebaut und in Ihrem Dokument angezeigt wird.

Die Standardschalter, die in einem `TOC` eingefügt Microsoft Word werden **"‚\o ‚1-3 \h \z \u‘**. Beschreibungen dieser Schalter sowie eine Liste der unterstützten Schalter finden Sie später im Artikel. Sie können entweder diese Anleitung verwenden, um die richtigen Schalter zu erhalten oder wenn Sie bereits ein Dokument mit der ähnlichen `TOC` dass Sie Feldcodes anzeigen können (*ALT+F9*) und die Schalter direkt aus dem Feld kopieren möchten.

Das folgende Codebeispiel zeigt, wie ein Inhaltsverzeichnisfeld in ein Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Das folgende Codebeispiel zeigt, wie man eine Inhaltstabelle (TOC) in ein Dokument einfügen kann, das Überschriften als Einträge verwendet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Der Code zeigt, dass die neue Inhaltstabelle in ein leeres Dokument eingefügt wird. Die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Die Klasse wird dann verwendet, um einige Musterinhaltsformatierungen mit den entsprechenden Überschriftsstilen einzufügen, die verwendet werden, um den in der TOC enthaltenen Inhalt zu markieren. Die nächsten Linien bevölkern dann die `TOC` durch Aktualisierung der Felder und des Seitenlayouts des Dokuments.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Ohne die im Beispiel verwendeten Methoden, wenn Sie das Ausgabedokument öffnen, würden Sie das `TOC` Feld, aber ohne sichtbaren Inhalt. Das ist, weil `TOC` Feld wurde eingefügt, aber noch nicht bevölkert, bis es im Dokument aktualisiert wird. Weitere Informationen hierzu finden Sie im nächsten Abschnitt.

{{% /alert %}}

## Inhaltsverzeichnis aktualisieren

Aspose.Words ermöglicht die vollständige Aktualisierung eines `TOC` mit nur wenigen Zeilen Code. Dies kann getan werden, um eine neu eingefügt `TOC` oder eine bestehende Aktualisierung `TOC` nach Änderungen des Dokuments.

Die folgenden beiden Methoden müssen verwendet werden, um die `TOC` Felder im Dokument:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Bitte beachten Sie, dass diese beiden Updatemethoden in dieser Reihenfolge aufgerufen werden müssen. Wenn Sie die Inhaltstabelle umkehren, werden jedoch keine Seitennummern angezeigt. Jede Anzahl verschiedener TOCs kann aktualisiert werden. Diese Methoden werden automatisch alle im Dokument gefundenen TOCs aktualisieren.

Das folgende Codebeispiel zeigt, wie man komplett neu baut `TOC` Felder im Dokument durch Aufruf von Feldaktualisierungen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

Der erste Aufruf [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) wird bauen `TOC` alle Texteinträge werden bevölkert und `TOC` erscheint fast vollständig. Das einzige, was fehlt, sind die Seitennummern, die jetzt mit "?" angezeigt werden.

Der zweite Aufruf [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) wird das Layout des Dokuments im Speicher erstellen. Dies muss getan werden, um die Seitennummern der Einträge zu sammeln. Die aus diesem Aufruf berechneten richtigen Seitenzahlen werden dann in den TOC eingefügt.

## Verwenden Sie Schalter zur Steuerungstabelle von Inhalten Verhalten

Wie bei jedem anderen Feld, `TOC` Feld kann innerhalb des Feldcodes definierte Schalter akzeptieren, die die Erstellung der Inhaltstabelle steuern. Bestimmte Schalter werden verwendet, um zu steuern, welche Einträge enthalten sind und auf welcher Ebene während andere verwendet werden, um das Aussehen des TOC zu steuern. Schalter können miteinander kombiniert werden, um eine komplexe Inhaltstabelle herzustellen.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Standardmäßig sind diese Schalter oben bei der Eingabe eines Standards enthalten `TOC` im Dokument. A `TOC` ohne Schalter werden Inhalte aus den eingebauten Überschriftsstilen (wie der \O-Schalter eingestellt) enthalten.

Die verfügbare `TOC` Schalter, die von Aspose.Words werden im Folgenden aufgeführt und deren Verwendungen im Detail beschrieben. Sie können auf Basis ihrer Art in separate Abschnitte unterteilt werden. Die Schalter im ersten Abschnitt definieren, welche Inhalte in den `TOC` und die Schalter im zweiten Abschnitt steuern das Aussehen des TOC.

Ist hier ein Schalter nicht aufgeführt, dann ist er aktuell nicht unterstützt. Alle Schalter werden in zukünftigen Versionen unterstützt. Wir unterstützen jede Veröffentlichung weiter.

### Entry Marking Switches

|  Schalter | Warenbezeichnung |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O Schalter)* <br/> | <p>Dieser Schalter definiert, daß `TOC` sollte aus den eingebauten Überschriftsstilen gebaut werden. In Microsoft Word, Diese werden durch Rubrik 1 definiert – Rubrik 9. In Aspose.Words Diese Stile werden durch die entsprechende StyleIdentifier-Enumeration dargestellt. Diese Aufzählung stellt beispielsweise eine lokalunabhängige Kennung eines Stils dar. `StyleIdentifier.Heading1` steht für den Heading 1 Stil. Dabei können die Formatierung und Eigenschaften des Stils aus der Stilsammlung des Dokuments abgerufen werden. Die entsprechende Style-Klasse kann von der `Document.Styles` Erfassung durch Verwendung der indexierten Eigenschaft des Typs StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Alle mit diesen Stilen formatierten Inhalte sind in der Inhaltstabelle enthalten. Die Höhe der Position wird die entsprechende hierarchische Ebene des Eintrags in der TOC definieren. So wird beispielsweise ein Absatz mit Heading 1 Stil als erste Ebene in der `TOC` in der Erwägung, dass ein Absatz mit der Rubrik 2 als nächste Stufe in der Hierarchie und so weiter behandelt wird.</p>
 |
| **Outline Levels** <br/> *(\U Schalter)* <br/> | <p>Jeder Absatz kann eine Umrissebene unter Absatzoptionen definieren.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Diese Einstellung diktiert, welche Ebene dieser Absatz in der Dokumentenhierarchie behandelt werden sollte. Dies ist eine häufig verwendete Praxis, die verwendet wird, um das Layout eines Dokuments leicht zu strukturieren. Diese Hierarchie kann durch Änderung der Outline Ansicht in Microsoft Word. Ähnlich wie bei den Überschriftsstilen kann es zusätzlich zur Ebene "Body Text" 1 – 9 Umrissebenen geben. Die Outline Levels 1 – 9 erscheinen im `TOC` in der entsprechenden Ebene der Hierarchie <br/>Alle Inhalte mit einer Umrissebene, die entweder im Absatzstil oder direkt auf dem Absatz selbst festgelegt sind, sind im TOC enthalten. In Aspose.Words die Umrissebene durch die `ParagraphFormat.OutlineLevel` Eigenschaft des Absatzknotens. Die Umrissebene eines Absatzstils wird in gleicher Weise durch die `Style.ParagraphFormat` Eigentum.</p>

<p>{{% alert color="primary" %}}</p>

<p>Beachten Sie, dass eingebaute Überschriftsarten wie Heading 1 eine Umrissebene obligatorisch in Stileinstellungen eingestellt haben.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\T Schalter)* <br/> | <p>Mit diesem Schalter können benutzerdefinierte Styles verwendet werden, wenn Einträge im TOC erfasst werden. Dies wird oft in Verbindung mit dem \O-Schalter verwendet, um benutzerdefinierte Stile zusammen mit eingebauten Überschrift Stile in der TOC enthalten. <br/>Die Parameter des Schalters sollten innerhalb von Sprachmarken eingeschlossen sein. Viele benutzerdefinierte Stile können enthalten sein, für jeden Stil, der Name sollte angegeben werden, gefolgt von einem Komma gefolgt von der Ebene, dass der Stil in der `TOC` wie. Weitere Stile werden auch durch eine Komma getrennt. <br/>Zum Beispiel</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>wird Inhalt mit CustomHeading1 als Level 1 Inhalt in der `TOC` und CustomHeading2 als Level 2.</p>
 |
| Verwenden Sie TC-Felder <br/> *(\F und \L Schalter)* <br/> | <p>In älteren Versionen von Microsoft Word, die einzige Möglichkeit, eine `TOC` war die Verwendung von TC-Feldern. Diese Felder werden auch bei angezeigten Feldcodes in das Dokument versteckt eingefügt. Sie enthalten den Text, der im Eintrag angezeigt werden soll und `TOC` wird von ihnen gebaut. Diese Funktionalität wird jetzt nicht sehr oft verwendet, kann aber in einigen Fällen noch nützlich sein, um Einträge in die `TOC` die im Dokument nicht eingezeichnet sind. <br/>Beim Einfügen erscheinen diese Felder versteckt, auch wenn Feldcodes angezeigt werden. Sie können nicht gesehen werden, ohne versteckte Inhalte zu zeigen. Um diese Felder anzeigen Absatzformatierung muss ausgewählt werden.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Diese Felder können an jeder beliebigen Stelle wie jedes andere Feld in ein Dokument eingefügt werden und werden durch die `FieldType.FieldTOCEntry` Aufzählung.<br/>Der \F-Schalter in einem `TOC` wird verwendet, um anzugeben, dass TC-Felder als Einträge verwendet werden sollten. Der eigene Schalter ohne zusätzliche Kennung bedeutet, dass ein TC-Feld im Dokument enthalten ist. Jeder zusätzliche Parameter, oft ein einziger Buchstabe, wird bezeichnen, dass nur TC-Felder, die einen passenden \f-Schalter haben, in der TOC enthalten sind. Zum Beispiel *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>nur TC-Felder wie</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>Die `TOC` Feld hat auch einen zugehörigen Schalter, der "\L"-Schalter gibt an, dass nur TC-Feld mit Ebenen innerhalb des angegebenen Bereichs enthalten sind.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>Die `TC` Felder selbst können auch `{several, multiple, a few, many, numerous}` Schalter eingestellt. Das sind:</p>

<p>- \F – Erklärt oben. *</p>

<p>- \L – Definiert die Ebene `TOC` dieses TC-Feld erscheint. A `TOC` die diesen gleichen Schalter verwendet, wird nur dieses TC-Feld, wenn es innerhalb des angegebenen Bereichs.</p>

<p>- Ja. Die Seitennummerierung dafür `TOC` Der Eintrag wird nicht angezeigt. Beispielcode des Einfügens von TC-Feldern finden Sie im nächsten Abschnitt.</p>
 |

### Appearance Verwandte Schalter

|  Schalter | Warenbezeichnung |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N Schalter)* | <p>Dieser Schalter wird verwendet, um Seitennummern für bestimmte Ebenen des TOC zu verstecken. Zum Beispiel können Sie definieren</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>und die Seitennummern auf den Einträgen der Level 3 und vier werden zusammen mit den führenden Punkten (wenn es irgendwelche). Um nur eine Ebene zu definieren, sollte noch ein Bereich verwendet werden, z.B. "1-1" schließt Seitennummern nur für die erste Ebene aus. <br/>Die Bereitstellung von kein Level-Bereich wird die Seitennummern für alle Ebenen in der TOC ausgeben. Dies ist nützlich, wenn Sie ein Dokument in HTML oder ein ähnliches Format exportieren. Dies liegt daran, dass HTML-basierte Formate kein Seitenkonzept haben und somit keine Seitennummerierung benötigen.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Als Hyperlinks einsetzen <br/> *(\H Schalter)* | <p>Dieser Schalter gibt an, dass `TOC` Einträge werden als Hyperlinks eingefügt. Beim Anzeigen eines Dokuments Microsoft Word Diese Einträge erscheinen immer noch als normaler Text innerhalb der `TOC` aber werden verlinkt und können so verwendet werden, um die Position des ursprünglichen Eintrags im Dokument zu navigieren, indem Sie *Ctrl + Left Click* in Microsoft Word. Wenn dieser Schalter enthalten ist, werden diese Links auch in anderen Formaten erhalten. Zum Beispiel in HTML-basierten Formaten einschließlich EPUB und Rendered-Formate wie PDF und XPS, Diese werden als Arbeitsverbindungen exportiert. <br/>Ohne diesen Schalter, die `TOC` in all diesen Ausgängen wird als Klartext exportiert und wird dieses Verhalten nicht demonstrieren. Wenn ein Dokument in MS Word geöffnet wird, wird der Text der Einträge auch nicht so anklickbar, sondern die Seitennummern können noch verwendet werden, um zum ursprünglichen Eintrag zu gelangen.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P Switch)* <br/> | <p>Mit diesem Schalter kann der Inhalt, der den Titel der Ein- und Seitennummerierung trennt, im TOC leicht geändert werden. Der zu verwendende Separator ist nach diesem Schalter anzugeben und in Sprachmarken eingeschlossen. <br/>Im Gegensatz zu dem, was in Office-Dokumentation dokumentiert wird, kann anstelle von bis zu fünf nur ein Zeichen verwendet werden. Dies gilt sowohl für MS Word als auch für Aspose.Words. <br/>Die Verwendung dieses Schalters wird nicht empfohlen, da es nicht erlaubt, viel Kontrolle über das, was es verwendet, um Einträge und Seitennummern im TOC zu trennen. Stattdessen wird empfohlen, das entsprechende zu bearbeiten `TOC` Stil wie: `StyleIdentifier.TOC1` und von dort bearbeiten Sie den Leader-Stil mit Zugriff auf bestimmte Font-Mitglieder etc. Weitere Einzelheiten dazu finden Sie später im Artikel.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W Schalter)* | <p>Mit diesem Schalter wird angegeben, dass alle Einträge, die ein Tab-Zeichen haben, z.B. eine Überschrift, die am Ende der Zeile eine Registerkarte hat, als ein richtiges Tab-Zeichen beim Auffüllen des TOC erhalten bleiben. Dies bedeutet, dass die Funktion des Tab-Zeichens in der `TOC` und kann verwendet werden, um den Eintrag zu formatieren. Beispielsweise können bestimmte Einträge Tab-Stopps und Tab-Zeichen verwenden, um den Text gleichmäßig auszublenden. Solange die entsprechenden `TOC` Ebene definiert die äquivalenten Tab stops dann die erzeugt `TOC` Einträge werden mit ähnlichem Abstand angezeigt. <br/><br/>In der gleichen Situation, wenn dieser Schalter nicht definiert wurde, würden die Tab-Zeichen in Weißraum umgewandelt werden, der als nicht funktionierende Tabs entspricht. Die Ausgabe erscheint dann nicht wie erwartet.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\X Schalter)* <br/> | <p>Ähnlich wie beim Schalter oben, dieser Schalter gibt an, dass Überschriften über mehrere Leitungen (mit neuen Linienzeichen, nicht separate Absätze) erhalten bleiben, wie sie in der generierten TOC sind. Zum Beispiel kann eine Überschrift, die über mehrere Zeilen verteilt wird, das neue Zeilenzeichen (Ctrl + Enter oder `ControlChar.LineBreak`) den Inhalt über verschiedene Linien zu trennen. Mit diesem Schalter wird der Eingang in die `TOC` wird diese neuen Linienzeichen erhalten, wie unten gezeigt. <br/><br/>Wird in dieser Situation der Schalter nicht definiert, so werden die neuen Zeilenzeichen in einen einzigen weißen Raum umgewandelt.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## TC Felder einfügen

Sie können ein neues TC-Feld an der aktuellen Position der `DocumentBuilder` indem sie `DocumentBuilder.InsertField` Verfahren und Angabe des Feldnamens als "TC" zusammen mit allen benötigten Schaltern.

Das folgende Codebeispiel zeigt, wie ein `TC` Feld in das Dokument mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Oft wird für die `TOC` und mit einem `TC` Feld. Der einfache Weg, dies in MS Word zu tun, ist, den Text hervorzuheben und *ALT+SHIFT+O* zu drücken. Dies erzeugt automatisch eine `TC` Feld mit dem ausgewählten Text. Die gleiche Technik kann durch Code erreicht werden. Der folgende Code findet den Text, der der Eingabe entspricht und einen `TC` Feld in der gleichen Position wie der Text. Der Code basiert auf der gleichen Technik, die im Artikel verwendet wird. Das folgende Codebeispiel zeigt, wie man ein `TC` Feld im Text in einem Dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Ändern einer Inhaltstabelle

### Ändern Sie die Formatierung von Stilen

Die Formatierung von Einträgen in der `TOC` verwendet nicht die ursprünglichen Stile der markierten Einträge, sondern jede Ebene wird mit einem Äquivalent formatiert `TOC` Stil. Die erste Ebene in der `TOC` wird mit dem **TOZ1** Stil, die zweite Ebene mit der **ANSCHRIFTEN** Stil und so weiter. Dies bedeutet, das Aussehen der `TOC` Diese Stile müssen geändert werden. In Aspose.Words diese Stile werden durch die locale-unabhängig repräsentiert `StyleIdentifier.TOC1` bis zu `StyleIdentifier.TOC9` und kann von der `Document.Styles` Erfassung mit diesen Kennungen.

Sobald der entsprechende Stil des Dokuments abgerufen wurde, kann die Formatierung für diesen Stil geändert werden. Änderungen dieser Stile werden in den TOCs im Dokument automatisch reflektiert.

Das folgende Codebeispiel ändert eine in der ersten Ebene verwendete Formatierungseigenschaft `TOC` Stil.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Es ist auch nützlich, zu beachten, dass jede direkte Formatierung eines Absatzes (definiert auf dem Absatz selbst und nicht im Stil) markiert, um in die `TOC` wird im Eintrag im TOC kopiert werden. Zum Beispiel, wenn der Heading 1-Stil verwendet wird, um Inhalte für die `TOC` und dieser Stil hat Bold Formatierung, während der Absatz hat auch italic Formatierung direkt auf sie angewendet. Das Ergebnis `TOC` Der Eintrag wird nicht kühn sein, da dies Teil der Stilformatierung ist, aber es wird italic sein, da dies direkt auf dem Absatz formatiert wird.

Sie können auch die Formatierung der zwischen jedem Eintrag und der Seitennummer verwendeten Separatoren steuern. Standardmäßig ist dies eine gepunktete Zeile, die über die Seitennummerierung mit einem Tab-Zeichen und einem rechten Tab-Stop in der Nähe des rechten Randes gesäumt wird.

Verwendung von `Style` für die jeweilige `TOC` Sie können auch ändern, wie diese im Dokument erscheinen.

Um zu ändern, wie dies zuerst erscheint `Style.ParagraphFormat` muss aufgerufen werden, die Absatzformatierung für den Stil abzurufen. Aus diesem können die Tab-Anschläge durch Aufruf abgerufen werden `ParagraphFormat.TabStops` und die entsprechende Registerkarte geändert. Mit dieser gleichen Technik kann die Registerkarte selbst insgesamt bewegt oder entfernt werden.

Das folgende Codebeispiel zeigt, wie die Position des rechten Tabs in geändert werden kann `TOC` die entsprechenden Absätze.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Eine Tabelle der Inhalte aus dem Dokument entfernen

Eine Inhaltstabelle kann aus dem Dokument entfernt werden, indem alle zwischen den `FieldStart` und FeldEndknoten des `TOC` Feld.

Der folgende Code zeigt dies. Die Entfernung der `TOC` Feld ist einfacher als ein normales Feld, da wir keine Spur von geschachtelten Feldern halten. Stattdessen überprüfen wir die `FieldEnd` Knoten ist vom Typ `FieldType.FieldTOC` was bedeutet, dass wir das Ende der aktuellen TOC begegnet sind. Diese Technik kann in diesem Fall verwendet werden, ohne sich um irgendwelche geschachtelten Felder zu kümmern, da wir davon ausgehen können, dass jedes ordnungsgemäß gebildete Dokument nicht vollständig geschachtelt haben `TOC` Feld in einem anderen `TOC` Feld.

Erstens: `FieldStart` Knoten jeder `TOC` werden gesammelt und gespeichert. Die angegebenen `TOC` wird dann aufgezählt, so dass alle Knoten innerhalb des Feldes besucht und gespeichert werden. Die Knoten werden dann aus dem Dokument entfernt. Das folgende Codebeispiel zeigt, wie man eine bestimmte `TOC` aus einem Dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Auszug Tabelle der Inhalte

Wenn Sie eine Inhaltstabelle aus einem Word-Dokument extrahieren möchten, kann die folgende Codeprobe verwendet werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}

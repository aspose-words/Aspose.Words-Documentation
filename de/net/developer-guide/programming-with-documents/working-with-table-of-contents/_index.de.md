---
title: Arbeiten mit dem Inhaltsverzeichnis in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit dem Inhaltsverzeichnis
linktitle: Arbeiten mit dem Inhaltsverzeichnis
description: "Einzelheiten zum Feld `Inhaltsverzeichnis`. So erstellen und ändern Sie ein `TOC`-Feld mit C#. Fügen Sie `TOC` C# ein."
type: docs
weight: 170
url: /de/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Häufig werden Sie mit Dokumenten arbeiten, die ein Inhaltsverzeichnis (TOC) enthalten. Mit Aspose.Words können Sie mit nur wenigen Codezeilen Ihr eigenes Inhaltsverzeichnis einfügen oder ein vorhandenes Inhaltsverzeichnis im Dokument komplett neu erstellen. In diesem Artikel wird die Arbeit mit dem Inhaltsverzeichnisfeld beschrieben und Folgendes demonstriert:

- So fügen Sie ein brandneues `TOC` ein
- Aktualisieren Sie neue oder vorhandene Inhaltsverzeichnisse im Dokument.
- Geben Sie Schalter an, um die Formatierung und Gesamtstruktur des Inhaltsverzeichnisses zu steuern.
- So ändern Sie den Stil und das Erscheinungsbild des Inhaltsverzeichnisses.
- So entfernen Sie ein gesamtes `TOC`-Feld zusammen mit allen Einträgen aus dem Dokument.

## Inhaltsverzeichnis programmgesteuert einfügen

Sie können ein `TOC`-Feld (Inhaltsverzeichnis) an der aktuellen Position in das Dokument einfügen, indem Sie die [InsertTableOfContents](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/inserttableofcontents/)-Methode aufrufen.

Ein Inhaltsverzeichnis in einem Word-Dokument kann auf verschiedene Arten erstellt und mit verschiedenen Optionen formatiert werden. Die Feldschalter, die Sie an die Methode übergeben, steuern die Art und Weise, wie die Tabelle erstellt und in Ihrem Dokument angezeigt wird.

Die Standardschalter, die in einem in Microsoft Word eingefügten `TOC` verwendet werden, sind **"\o "1-3 \h \z \u"**. Beschreibungen dieser Schalter sowie eine Liste der unterstützten Schalter finden Sie weiter unten im Artikel. Sie können entweder diese Anleitung verwenden, um die richtigen Schalter zu erhalten, oder wenn Sie bereits über ein Dokument verfügen, das das gewünschte ähnliche `TOC` enthält, können Sie Feldcodes (*ALT+F9*) anzeigen und die Schalter direkt aus dem Feld kopieren.

Das folgende Codebeispiel zeigt, wie ein Inhaltsverzeichnisfeld in ein Dokument eingefügt wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltsverzeichnis (TOC) in ein Dokument einfügen und dabei Überschriftenstile als Einträge verwenden.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Ohne die im Beispiel verwendeten Methoden würden Sie beim Öffnen des Ausgabedokuments das `TOC`-Feld vorfinden, jedoch ohne sichtbaren Inhalt. Dies liegt daran, dass das `TOC`-Feld eingefügt wurde, aber noch nicht ausgefüllt wird, bis es im Dokument aktualisiert wird. Weitere Informationen hierzu werden im nächsten Abschnitt besprochen.

{{% /alert %}}

## Inhaltsverzeichnis aktualisieren

Mit Aspose.Words können Sie einen `TOC` mit nur wenigen Codezeilen vollständig aktualisieren. Dies kann zum Auffüllen eines neu eingefügten `TOC` oder zum Aktualisieren eines vorhandenen `TOC` erfolgen, nachdem Änderungen am Dokument vorgenommen wurden. Um die `TOC`-Felder im Dokument zu aktualisieren, müssen die folgenden zwei Methoden verwendet werden:

1. [UpdateFields](https://reference.aspose.com/words/de/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/de/net/aspose.words/document/updatepagelayout/)

Bitte beachten Sie, dass diese beiden Aktualisierungsmethoden in dieser Reihenfolge aufgerufen werden müssen. Im umgekehrten Fall wird das Inhaltsverzeichnis ausgefüllt, es werden jedoch keine Seitenzahlen angezeigt. Es können beliebig viele unterschiedliche Inhaltsverzeichnisse aktualisiert werden. Diese Methoden aktualisieren automatisch alle im Dokument gefundenen Inhaltsverzeichnisse.

Das folgende Codebeispiel zeigt, wie `TOC`-Felder im Dokument durch Aufrufen der Feldaktualisierung vollständig neu erstellt werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

Beim ersten Aufruf von **UpdateFields** wird der `TOC` erstellt, alle Texteinträge werden ausgefüllt und der `TOC` erscheint fast vollständig. Es fehlen nur noch die Seitenzahlen, die vorerst mit "?" angezeigt werden. Der zweite Aufruf von **UpdatePageLayout** erstellt das Layout des Dokuments im Speicher. Dies ist erforderlich, um die Seitenzahlen der Einträge zu erfassen. Die aus diesem Aufruf berechneten korrekten Seitenzahlen werden dann in das Inhaltsverzeichnis eingefügt.

## Verwenden Sie Schalter, um das Verhalten des Inhaltsverzeichnisses zu steuern

Wie jedes andere Feld kann das `TOC`-Feld im Feldcode definierte Schalter akzeptieren, die steuern, wie das Inhaltsverzeichnis erstellt wird. Bestimmte Schalter werden verwendet, um zu steuern, welche Einträge auf welcher Ebene enthalten sind, während andere dazu verwendet werden, das Erscheinungsbild des Inhaltsverzeichnisses zu steuern. Schalter können miteinander kombiniert werden, um die Erstellung komplexer Inhaltsverzeichnisse zu ermöglichen.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Standardmäßig sind diese oben genannten Schalter enthalten, wenn ein Standard-`TOC` in das Dokument eingefügt wird. Ein `TOC` ohne Schalter enthält Inhalte aus den integrierten Überschriftenstilen (als ob der Schalter \O gesetzt wäre). Die verfügbaren `TOC`-Switches, die von Aspose.Words unterstützt werden, sind unten aufgeführt und ihre Verwendung wird im Detail beschrieben. Sie können je nach Typ in separate Abschnitte unterteilt werden. Die Schalter im ersten Abschnitt definieren, welche Inhalte in das `TOC` aufgenommen werden sollen, und die Schalter im zweiten Abschnitt steuern das Erscheinungsbild des Inhaltsverzeichnisses. Wenn ein Schalter hier nicht aufgeführt ist, wird er derzeit nicht unterstützt. Alle Switches werden in zukünftigen Versionen unterstützt. Wir fügen mit jeder Veröffentlichung weitere Unterstützung hinzu.

### Eingangsmarkierungsschalter

|  Schalten | Beschreibung |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O Schalter)* | <p>Dieser Schalter definiert, dass das `TOC` auf der Grundlage der integrierten Überschriftenstile erstellt werden soll. In Microsoft Word werden diese durch Überschrift 1 – Überschrift 9 definiert. In Aspose.Words werden diese Stile durch die entsprechende StyleIdentifier-Enumeration dargestellt. Diese Aufzählung stellt eine vom Gebietsschema unabhängige Kennung eines Stils dar. `StyleIdentifier.Heading1` stellt beispielsweise den Stil "Überschrift 1" dar. Damit können die Formatierung und Eigenschaften des Stils aus der Style-Sammlung des Dokuments abgerufen werden. Die entsprechende Style-Klasse kann mithilfe der indizierten Eigenschaft vom Typ StyleIdentifier aus der `Document.Styles`-Sammlung abgerufen werden.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Alle mit diesen Stilen formatierten Inhalte werden in das Inhaltsverzeichnis aufgenommen. Die Ebene der Überschrift definiert die entsprechende hierarchische Ebene des Eintrags im Inhaltsverzeichnis. Beispielsweise wird ein Absatz mit dem Stil "Überschrift 1" als erste Ebene im `TOC` behandelt, während ein Absatz mit der Überschrift 2 als nächste Ebene in der Hierarchie usw. behandelt wird.</p> |
| **Outline Levels**<br>*(\U Schalter)* | <p>Für jeden Absatz kann unter Absatzoptionen eine Gliederungsebene definiert werden.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Diese Einstellung bestimmt, auf welcher Ebene dieser Absatz in der Dokumenthierarchie behandelt werden soll. Dies ist eine häufig verwendete Vorgehensweise, um das Layout eines Dokuments einfach zu strukturieren. Diese Hierarchie kann angezeigt werden, indem Sie in Microsoft Word zur Gliederungsansicht wechseln. Ähnlich wie bei Überschriftenstilen kann es zusätzlich zur Ebene "Body Text" noch 1 bis 9 Gliederungsebenen geben. Die Gliederungsebenen 1 – 9 werden im `TOC` auf der entsprechenden Ebene der Hierarchie angezeigt<br>Alle Inhalte mit einer Gliederungsebene, die entweder im Absatzstil oder direkt im Absatz selbst festgelegt ist, werden in das Inhaltsverzeichnis aufgenommen. In Aspose.Words wird die Gliederungsebene durch die `ParagraphFormat.OutlineLevel`-Eigenschaft des Absatzknotens dargestellt. Die Gliederungsebene eines Absatzstils wird auf die gleiche Weise durch die `Style.ParagraphFormat`-Eigenschaft dargestellt.</p>

<p>{{% alert color="primary" %}}</p>

<p>Beachten Sie, dass für integrierte Überschriftenstile wie "Überschrift 1" in den Stileinstellungen zwingend eine Gliederungsebene festgelegt ist.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T-Schalter)* | <p>Dieser Schalter ermöglicht die Verwendung benutzerdefinierter Stile beim Sammeln von Einträgen, die im Inhaltsverzeichnis verwendet werden sollen. Dies wird häufig in Verbindung mit dem Schalter \O verwendet, um benutzerdefinierte Stile zusammen mit integrierten Überschriftenstilen in das Inhaltsverzeichnis einzubinden.<br>Die Parameter des Schalters sollten in Sprachzeichen eingeschlossen sein. Es können viele benutzerdefinierte Stile eingebunden werden. Für jeden Stil sollte der Name gefolgt von einem Komma und der Ebene angegeben werden, auf der der Stil im `TOC` erscheinen soll. Weitere Stile werden ebenfalls durch ein Komma getrennt.<br>Zum Beispiel</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>verwendet mit "CustomHeading1" gestaltete Inhalte als Level-1-Inhalt im `TOC` und "CustomHeading2" als Level-2-Inhalt.</p> |
| **Use TC Fields**<br>*(\F- und \L-Schalter)* | <p>In älteren Microsoft Word-Versionen bestand die einzige Möglichkeit zum Erstellen eines `TOC` in der Verwendung von TC-Feldern. Diese Felder werden verborgen in das Dokument eingefügt, auch wenn Feldcodes angezeigt werden. Sie enthalten den Text, der im Eintrag angezeigt werden soll und der `TOC` wird daraus erstellt. Diese Funktion wird derzeit nicht mehr sehr oft verwendet, kann jedoch in manchen Fällen dennoch nützlich sein, um Einträge in die `TOC`-Datei aufzunehmen, die nicht eingerückt sind, damit sie im Dokument sichtbar sind.<br>Beim Einfügen erscheinen diese Felder ausgeblendet, selbst wenn Feldcodes angezeigt werden. Sie können nicht gesehen werden, ohne versteckte Inhalte anzuzeigen. Um diese Felder anzuzeigen, muss "Absatzformatierung anzeigen" ausgewählt sein.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Diese Felder können wie jedes andere Feld an jeder beliebigen Stelle in ein Dokument eingefügt werden und werden durch die `FieldType.FieldTOCEntry`-Enumeration dargestellt.<br>Der \F-Schalter in einem `TOC` wird verwendet, um anzugeben, dass TC-Felder als Einträge verwendet werden sollen. Der Schalter allein ohne zusätzliche Kennung bedeutet, dass jedes TC-Feld im Dokument einbezogen wird. Jeder zusätzliche Parameter, oft ein einzelner Buchstabe, gibt an, dass nur TC-Felder, die über einen passenden \f-Schalter verfügen, in das Inhaltsverzeichnis aufgenommen werden. Zum Beispiel *</p>

<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>enthält nur TC-Felder wie z</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>Das `TOC`-Feld verfügt auch über einen entsprechenden Schalter. Der Schalter "\L" gibt an, dass nur TC-Felder mit Ebenen innerhalb des angegebenen Bereichs einbezogen werden.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Für die `TC`-Felder selbst können auch {several, `multiple`, a few, `many`, numerous}-Schalter festgelegt werden. Diese sind:</p>

<p>- *\F – oben erklärt.*</p>

<p>- *\L – Definiert, auf welcher Ebene im `TOC` dieses TC-Feld angezeigt wird. Ein `TOC`, der denselben Schalter verwendet, schließt dieses TC-Feld nur ein, wenn es innerhalb des angegebenen Bereichs liegt.*</p>

<p>- _\N – Die Seitennummerierung für diesen `TOC`-Eintrag wird nicht angezeigt. Beispielcode zum Einfügen von TC-Feldern finden Sie im nächsten Abschnitt.</p> |

### Aussehenbezogene Schalter

|  Schalten | Beschreibung |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N Schalter)* | <p>Dieser Schalter wird verwendet, um Seitenzahlen für bestimmte Ebenen des Inhaltsverzeichnisses auszublenden. Sie können zum Beispiel definieren</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>und die Seitenzahlen der Einträge der Ebenen 3 und 4 werden zusammen mit den Führungspunkten (falls vorhanden) ausgeblendet. Um nur eine Ebene anzugeben, sollte weiterhin ein Bereich verwendet werden. Beispielsweise schließt "1-1" Seitenzahlen nur für die erste Ebene aus.<br>Wenn Sie keinen Ebenenbereich angeben, werden die Seitenzahlen für alle Ebenen im Inhaltsverzeichnis weggelassen. Dies ist nützlich, wenn Sie ein Dokument in HTML oder ein ähnliches Format exportieren. Dies liegt daran, dass HTML-basierte Formate kein Seitenkonzept haben und daher keine Seitennummerierung benötigen.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H Schalter)* | <p>Dieser Schalter legt fest, dass `TOC`-Einträge als Hyperlinks eingefügt werden. Wenn Sie ein Dokument in Microsoft Word anzeigen, werden diese Einträge weiterhin als normaler Text im `TOC` angezeigt, sind jedoch mit einem Hyperlink versehen und können daher verwendet werden, um mit *Strg + Linksklick* in Microsoft Word zur Position des ursprünglichen Eintrags im Dokument zu navigieren. Wenn dieser Schalter enthalten ist, bleiben diese Links auch in anderen Formaten erhalten. Beispielsweise werden diese in HTML-basierten Formaten, einschließlich EPUB, und gerenderten Formaten wie PDF und XPS als Arbeitslinks exportiert.<br>Wenn dieser Schalter nicht gesetzt ist, wird das `TOC` in allen diesen Ausgaben als einfacher Text exportiert und zeigt dieses Verhalten nicht. Wenn ein Dokument in MS Word geöffnet wird, ist der Text der Einträge auf diese Weise ebenfalls nicht anklickbar, die Seitenzahlen können jedoch weiterhin zum Navigieren zum Originaleintrag verwendet werden.</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P Schalter)* | <p>Dieser Schalter ermöglicht eine einfache Änderung des Inhalts, der den Titel des Eintrags und die Seitennummerierung trennt, im Inhaltsverzeichnis. Das zu verwendende Trennzeichen sollte nach diesem Schalter angegeben und in Sprachzeichen eingeschlossen werden.<br>Im Gegensatz zu den Angaben in der Office-Dokumentation kann statt bis zu fünf nur ein Zeichen verwendet werden. Dies gilt sowohl für MS Word als auch für Aspose.Words.<br>Die Verwendung dieses Schalters wird nicht empfohlen, da er keine große Kontrolle darüber ermöglicht, wie Einträge und Seitenzahlen im Inhaltsverzeichnis getrennt werden. Stattdessen wird empfohlen, den entsprechenden `TOC`-Stil wie `StyleIdentifier.TOC1` zu bearbeiten und von dort aus den Führungslinienstil mit Zugriff auf bestimmte Schriftartmitglieder usw. zu bearbeiten. Weitere Einzelheiten dazu finden Sie später in diesem Artikel.</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W Schalter)* | <p>Durch die Verwendung dieses Schalters wird festgelegt, dass alle Einträge, die ein Tabulatorzeichen haben, beispielsweise eine Überschrift mit einem Tabulatorzeichen am Ende der Zeile, beim Ausfüllen des Inhaltsverzeichnisses als richtiges Tabulatorzeichen beibehalten werden. Dies bedeutet, dass die Funktion des Tabulatorzeichens im `TOC` vorhanden ist und zur Formatierung des Eintrags verwendet werden kann. Beispielsweise können bestimmte Einträge Tabstopps und Tabulatorzeichen verwenden, um den Text gleichmäßiger zu verteilen. Solange die entsprechende `TOC`-Ebene die entsprechenden Tabstopps definiert, werden die generierten `TOC`-Einträge mit ähnlichen Abständen angezeigt.<br><br>Wenn dieser Schalter in der gleichen Situation nicht definiert wäre, würden die Tabulatorzeichen in Leerzeichen umgewandelt, die nicht funktionierenden Tabulatoren entsprechen. Die Ausgabe würde dann nicht wie erwartet aussehen.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X Schalter)* | <p>Ähnlich wie der Schalter oben gibt dieser Schalter an, dass Überschriften, die sich über mehrere Zeilen erstrecken (mit neuen Zeilenzeichen und nicht mit separaten Absätzen), so beibehalten werden, wie sie im generierten Inhaltsverzeichnis sind. Beispielsweise können Sie bei einer Überschrift, die sich über mehrere Zeilen erstrecken soll, das neue Zeilenzeichen (Strg + Eingabetaste oder `ControlChar.LineBreak`) verwenden, um den Inhalt über mehrere Zeilen hinweg zu trennen. Wenn dieser Schalter angegeben ist, behält der Eintrag im `TOC` diese neuen Zeilenzeichen bei, wie unten gezeigt.<br><br>Wenn in dieser Situation der Schalter nicht definiert ist, werden die neuen Zeilenzeichen in ein einzelnes Leerzeichen umgewandelt.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## TC-Felder einfügen

Sie können ein neues TC-Feld an der aktuellen Position des [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) einfügen, indem Sie die [InsertField](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertfield/)-Methode aufrufen und den Feldnamen "TC" zusammen mit allen erforderlichen Schaltern angeben.

Das folgende Codebeispiel zeigt, wie man mithilfe von **DocumentBuilder** ein `TC`-Feld in das Dokument einfügt:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

Oft ist eine bestimmte Textzeile für das `TOC` vorgesehen und mit einem `TC`-Feld gekennzeichnet. Der einfachste Weg, dies in Microsoft Word zu tun, besteht darin, den Text zu markieren und *ALT+UMSCHALT+O* zu drücken. Dadurch wird automatisch ein `TC`-Feld mit dem ausgewählten Text erstellt. Die gleiche Technik kann durch Code erreicht werden. Der folgende Code findet den zur Eingabe passenden Text und fügt ein `TC`-Feld an derselben Position wie der Text ein. Der Code basiert auf der gleichen Technik, die im Artikel verwendet wird.

Das folgende Codebeispiel zeigt, wie man ein `TC`-Feld im Text eines Dokuments findet und einfügt:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Inhaltsverzeichnis ändern

Bei der Formatierung der Einträge im `TOC` werden nicht die ursprünglichen Stile der markierten Einträge verwendet, sondern jede Ebene wird mit einem entsprechenden `TOC`-Stil formatiert. Beispielsweise ist die erste Ebene im `TOC` mit dem **TOC1**-Stil formatiert, die zweite Ebene mit dem **TOC2**-Stil und so weiter. Das bedeutet, dass diese Stile geändert werden müssen, um das Aussehen des `TOC` zu ändern. In Aspose.Words werden diese Stile durch das vom Gebietsschema unabhängige `StyleIdentifier.TOC1` bis hin zu `StyleIdentifier.TOC9` dargestellt und können mithilfe dieser Bezeichner aus der [Styles](https://reference.aspose.com/words/de/net/aspose.words/documentbase/styles/)-Sammlung abgerufen werden.

Sobald der entsprechende Stil des Dokuments abgerufen wurde, kann die Formatierung für diesen Stil geändert werden. Alle Änderungen an diesen Stilen werden automatisch in den Inhaltsverzeichnissen des Dokuments widergespiegelt.

Das folgende Codebeispiel ändert eine Formatierungseigenschaft, die im `TOC`-Stil der ersten Ebene verwendet wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Es ist auch nützlich zu beachten, dass jede direkte Formatierung eines Absatzes (definiert im Absatz selbst und nicht im Stil), der für die Einbindung in das `TOC` markiert ist, in den Eintrag im Inhaltsverzeichnis kopiert wird. Wenn beispielsweise der Stil "Überschrift 1" zum Markieren von Inhalten für das `TOC` verwendet wird und dieser Stil über die Formatierung "Fett" verfügt, während auf den Absatz auch direkt eine Kursivformatierung angewendet wird. Der resultierende `TOC`-Eintrag wird nicht fett gedruckt, da dies Teil der Stilformatierung ist, er wird jedoch kursiv angezeigt, da er direkt im Absatz formatiert wird.

Sie können auch die Formatierung der Trennzeichen zwischen den einzelnen Einträgen und der Seitenzahl steuern. Standardmäßig handelt es sich hierbei um eine gepunktete Linie, die mithilfe eines Tabulatorzeichens und eines rechten Tabstopps, der dicht am rechten Rand angeordnet ist, auf die Seitennummerierung übertragen wird.

Mithilfe der [Style](https://reference.aspose.com/words/de/net/aspose.words/style/)-Klasse, die für die jeweilige `TOC`-Ebene abgerufen wurde, die Sie ändern möchten, können Sie auch ändern, wie diese im Dokument angezeigt werden. Um die Darstellung zu ändern, muss zunächst [ParagraphFormat](https://reference.aspose.com/words/de/net/aspose.words/style/paragraphformat/) aufgerufen werden, um die Absatzformatierung für den Stil abzurufen. Daraus können die Tabstopps durch Aufruf von [TabStops](https://reference.aspose.com/words/de/net/aspose.words/paragraphformat/tabstops/) abgerufen und der entsprechende Tabstopp geändert werden. Mit derselben Technik kann die Lasche selbst verschoben oder ganz entfernt werden.

Das folgende Codebeispiel zeigt, wie Sie die Position des rechten Tabstopps in `TOC`-bezogenen Absätzen ändern:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Entfernen Sie das Inhaltsverzeichnis aus dem Dokument

Ein Inhaltsverzeichnis kann aus dem Dokument entfernt werden, indem alle Knoten entfernt werden, die zwischen dem `FieldStart`- und dem FieldEnd-Knoten des `TOC`-Felds gefunden werden. Der folgende Code demonstriert dies. Das Entfernen des `TOC`-Felds ist einfacher als bei einem normalen Feld, da wir verschachtelte Felder nicht verfolgen. Stattdessen überprüfen wir, ob der [FieldEnd](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldend/)-Knoten vom Typ [FieldType.FieldTOC](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldtype/) ist, was bedeutet, dass wir das Ende des aktuellen Inhaltsverzeichnisses erreicht haben. Diese Technik kann in diesem Fall verwendet werden, ohne sich Gedanken über verschachtelte Felder machen zu müssen, da wir davon ausgehen können, dass jedes ordnungsgemäß geformte Dokument kein vollständig verschachteltes `TOC`-Feld in einem anderen `TOC`-Feld enthält.

Zunächst werden die [FieldStart](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldstart/)-Knoten jedes `TOC` gesammelt und gespeichert. Der angegebene `TOC` wird dann aufgezählt, sodass alle Knoten innerhalb des Felds besucht und gespeichert werden. Anschließend werden die Knoten aus dem Dokument entfernt.

Das folgende Codebeispiel zeigt, wie ein angegebenes `TOC` aus einem Dokument entfernt wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Inhaltsverzeichnis extrahieren

Wenn Sie ein Inhaltsverzeichnis aus einem beliebigen Word-Dokument extrahieren möchten, können Sie das folgende Codebeispiel verwenden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}

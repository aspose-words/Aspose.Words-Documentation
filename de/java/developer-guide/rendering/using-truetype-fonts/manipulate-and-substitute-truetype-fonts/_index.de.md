---
title: Manipulate und Substitute TrueType Fonts
second_title: Aspose.Words für Java
articleTitle: Manipulate und Substitute TrueType Fonts
linktitle: Manipulate und Substitute TrueType Fonts
description: "Aspose.Words für Java kann die richtigen TrueType-Schriften in das resultierende Dokument einbetten, um sicherzustellen, dass es genau angezeigt wird, oder nach einem geeigneten Schriftwechsel sucht oder den Font-Rückfallmechanismus verwendet."
type: docs
weight: 10
url: /de/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words erfordert Wahr Geben Sie Schriftarten für eine Vielzahl von Aufgaben ein, einschließlich der Vorlage von Dokumenten auf Festseitenformate, beispielsweise PDF oder XPS. Wann Aspose.Words stellt ein Dokument dar, es muss die Einbettung und Subseteinbettung von TrueType-Schriften in das resultierende Dokument ausführen, das eine normale Praxis während einer Dokumentengeneration ist, einschließlich beliebtem PDF oder XPS Formate. Dadurch wird sichergestellt, dass das Dokument jedem Betrachter gleich erscheint. Darüber hinaus die XPS Spezifikation erfordert, dass Schriftarten immer in das Dokument eingebettet werden.

Gewährleistung Aspose.Words die Zeichen genau misst und relevante Schriften erfolgreich einbettet, müssen folgende Bedingungen erfüllt werden:

ANHANG Aspose.Words sollte in der Lage sein, TrueType Schriftdateien auf dem System zu finden und zuzugreifen.
ANHANG Es muss genügend TrueType Schriftarten zur Verfügung stehen Aspose.Words, vorzugsweise mit den gleichen Schriftfamiliennamen wie die im Dokument verwendeten.

Beachten Sie, dass die Schrift im Dokument eine Einheit darstellt, wie Familienname, Stil, Größe, Farbe, die von der `TrueType` Schriftart (physikalische Schriftart) Einheit. Aspose.Words löst die Schriftart im Dokument auf eine physische Schrift auf irgendeiner Stufe der Verarbeitung. Dies ermöglicht bestimmte Aufgaben, am häufigsten die Aufgabe, Textgröße während der Layout-Konstruktion und Einbettung/Eingabe auf Festseitenformate zu berechnen. Eine Reihe anderer weniger populärer Aufgaben, wie z.B. Schriftenauflösung und Substitution beim Laden von HTML oder Einbetten/Einfügen von einigen Flow-Formaten, werden ebenfalls aktiviert.

## Schrift Manipulation und Performance

Alle verfügbaren Font-Manipulationsmechanismen sind in der [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) Klasse. Diese Klasse ist verantwortlich für das Abholen von Schriftarten innerhalb definierter Schriftquellen sowie für den Font Substitutionsprozess, wie unten beschrieben.

Schriftarten werden in mehreren Schritten unterteilt:

ANHANG Erhalten Sie Informationen für Schriftart, auflösen von allen verfügbaren Schriftarten.
ANHANG Parsing der aufgelösten Schriftarten, um verfügbar zu werden glyphs und Metriken (horizontal und vertikal).
ANHANG Parsing der aufgelösten Schriftarten zum Einbetten und Untersetzen.

Wann Aspose.Words begegnet einer Schriftart im Dokument zum ersten Mal, es versucht, grundlegende Schriftinformationen zu erhalten, wie der Schrift-Vollname, Familienname, Version, Stil, aus den Schriftdateien in jeder Schriftquelle. Nachdem alle Schriftarten abgerufen werden, Aspose.Words Mit diesen Details finden Sie die erforderlichen Schriftdaten oder einen geeigneten Ersatz für die angeforderte Schriftart.

Da das oben beschriebene Verfahren zeitaufwendig ist, kann es die Applikationsleistung beim ersten Start negativ beeinflussen. Jede Instanz von **FontSettings** hat einen eigenen Cache, der die Bearbeitungszeit der nachfolgenden Dokumente reduzieren könnte. Zum Beispiel können Sie eine Instanz der **FontSettings** Klassen zwischen verschiedenen Dokumenten, die es Ihnen ermöglicht, die Beladung der Dokumente zu beschleunigen. Das folgende Beispiel zeigt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Im Fall, wenn **FontSettings** nicht explizit definiert ist, Aspose.Words verwendet den Standard **FontSettings** Ein Beispiel. Diese Instanz wird auch automatisch unter den Dokumenten geteilt und kann wie folgt extrahiert werden:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Wenn Sie sicher sind, dass alle Verarbeitungsdokumente die gleichen Schrifteinstellungen benötigen, dann wird empfohlen, den Standard einzurichten und zu verwenden. **FontSettings** Ein Beispiel. Nehmen Sie an, dass Sie die gleichen Schriftquellen für alle Ihre Dokumente verwenden müssen. In diesem Fall können Sie die Standardinstanz nur wie folgt ändern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Der Brauch **FontSettings** höhere Priorität als die Standard-Instanz haben.

{{% /alert %}}

## Font Verfügbarkeit und Substitution

Ein Text in einem Dokument kann mit verschiedenen Schriftarten wie Arial, Times New Roman, Verdana und anderen formatiert werden. Wann Aspose.Words stellt ein Dokument dar, es versucht, die im Dokument angegebenen Schriftarten auszuwählen.

Es gibt jedoch Situationen, in denen die genaue Schrift nicht gefunden werden kann und Aspose.Words muss es stattdessen für eine ähnliche Schrift ersetzen. Aspose.Words wählt die Schrift nach folgendem Prozess aus:

ANHANG Aspose.Words versucht, eine Schriftart unter den verfügbaren Schriftquellen mit einem genauen Schriftnamen zu finden.
ANHANG Aspose.Words versucht, die gewünschte Schriftart unter den in das Originaldokument eingebetteten Schriftarten zu finden. Einige Dokumentformate wie DOCX können eingebettete Schriftarten enthalten.
ANHANG wenn Aspose.Words ist nicht in der Lage, die gewünschte Schrift mit dem genauen Namensvergleich zu finden, und [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) Eigenschaft definiert für diese Schrift, dann Aspose.Words finden Sie die mit **AltName** von [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) Klasse, die die Schriftinformationen angibt.
ANHANG wenn Aspose.Words die definierte Schrift nicht lokalisieren kann und **AltName** wird nicht auch definiert, dann werden die Schriftsubstitutionsregeln ein-für-ein angewendet, wie unten beschrieben (wenn der entsprechende Austausch gefunden wird, stoppt der Schriftsubstitutionsprozess und der nächste Schritt wird nicht ausgeführt):
   ANHANG Aspose.Words wird versuchen, OS-Schrifteinstellungen anzuwenden, wenn sie verfügbar sind, indem `FontConfig` Dienstprogramm. Diese Nicht-Windows Feature muss mit einem FontConfig-kompatiblen Betriebssystem verwendet werden. Fast jedes Unix-basierte Betriebssystem hat bereits eine `FontConfig` Bibliothek, die für die systemweite Schriftkonfiguration, Anpassung und Zugriff auf Anwendungen konzipiert ist. Andernfalls kann diese Bibliothek einfach vom Benutzer installiert werden.<br/>
      Aspose.Words weiß, wie Sie die Ergebnisse von FontConfig für eigene Zwecke abfragen und interpretieren. Standardmäßig, die `FontConfig` Dienstprogramm ist deaktiviert. Sie können es wie folgt aktivieren:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Der nächste Schritt ist ein einfacher, aber unglaublich mächtiger Mechanismus genannt [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Standardmäßig ist diese Funktion aktiv und für jedes Betriebssystem verfügbar. Aspose.Words verwendet XML-Tabellen, die grundlegende Substitutionsregeln für verschiedene Betriebssysteme definieren. Gemäß der Tabellensubstitutionsregel wird die Liste der Ersatz-Schriftnamen verwendet.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - eine Schrift zu ersetzen, SubstituteFonts - Liste der Substitutionsvarianten, getrennt durch eine Komma. Die erste verfügbare Schriftart wird zum Ersatz verwendet.<br/>
      Das Hauptmerkmal dieser Regel ist die Fähigkeit, Ihre eigenen Substitutionstabellen zu laden, wie es im folgenden Beispiel gezeigt wird:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Sie können als Grundlage die bestehende Tabelle aus dem Glas nehmen oder sie programmatisch auf folgende Weise speichern:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Trotz der Flexibilität dieses Mechanismus gibt es einige Fälle, wenn es besser ist, ihn zu deaktivieren, wie unten gezeigt:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Die **FontInfo** Substitutionsregel wird angewendet, wenn die Tabellensubstitutionsregel die Schrift nicht finden kann. Dieser Mechanismus ist standardmäßig aktiviert. Aspose.Words findet die am besten geeignete Schrift nach den in einem bestimmten Dokument enthaltenen Schriftinformationen. Diese Informationen können aus der **FontInfo** Klasse wie unten gezeigt:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Benutzer können den Workflow dieser Funktion nicht stören, es sei denn, sie entscheiden, sie bei unbefriedigenden Ergebnissen zu deaktivieren:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      wenn **FontInfo** ist nicht für die fehlende Schrift verfügbar, dann hört der Prozess auf.
   ANHANG **DefaultFont** Die Substitutionsregel wird dann angewendet, wenn die `FontInfo` Auch die Substitution ist gescheitert. Diese Regel ist auch standardmäßig aktiviert. Nach dieser Regel, Aspose.Words wird versuchen, die in der [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) Eigentum. Wenn der Benutzer seine eigene Standardschrift nicht gewählt hat, wird "Times New Roman" als Standardschrift verwendet. Diese Regel kann wie unten gezeigt deaktiviert werden:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Um die aktuelle Standardschrift zu überprüfen, verwenden Sie:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Um Ihre eigene Ersatzoption einzurichten, wenden Sie sich an:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
ANHANG wenn Aspose.Words ist nicht in der Lage, die Schriftsubstitution durchzuführen, es versucht, die erste verfügbare Schrift aus verfügbaren Schriftquellen zu erhalten.
ANHANG Schließlich, wenn Aspose.Words kann keine Schriftarten unter den verfügbaren Schriftquellen finden, es macht das Dokument mit der freien Fanwood Schriftart, die in die Aspose.Words Montage.

{{% alert color="primary" %}}

Wenn **FontInfo** ist verfügbar, die *FontInfo Substitutionsregel* wird die Schrift immer lösen und die Standard-Schriftregel überschreiben. Wenn Sie die Standard-Schriftregel verwenden möchten, sollten Sie die *FontInfo Substitutionsregel* deaktivieren. Beachten Sie, dass die *FontConfig Substitutionsregel* die Schrift in den meisten Fällen löst und damit alle anderen Regeln überwiegt.

{{% /alert %}}

## Wie zu erkennen Dass die Schrift ersetzt wurde

Manchmal kann es unklar sein, warum sich das Dokumentenlayout geändert hat, oder warum einige Schriftarten nicht wie erwartet aussehen. In solchen Fällen warnen Schriftsubstitutionsmeldungen, die von der [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) Schnittstelle kommen, um zu retten. Sie haben [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) Warntyp und das Standard-Beschreibungstextformat "Font "<originalfont>' wurde nicht gefunden. Verwendung '<substitutionfont>' Schriften statt. Begründung <reason>", mit folgenden Gründen:</reason></substitutionfont></originalfont>

- "alternativer Name aus dem Dokument" – Substitution durch [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "Fontconfig Substitution" - für Substitution durch Schrift config-Regel
- "Table Substitution" – für Substitution nach Tabellenregel
- "Font Info Substitution" – für Substitution durch Schrift-Info-Regel
- "Standard Font Substitution" - für Substitution durch Standard-Schriftregel
- "erste verfügbare Schriftart" – für Substitution mit erster verfügbarer Schrift

## Font FallBack Einstellungen aus XML

Es gibt zwei verschiedene Mechanismen, die in Aspose.Words - Schriftsubstitution und Font Fallback. Eine Schriftsubstitution wird verwendet, wenn die im Dokument angegebene Schrift nicht unter den Schriftquellen gefunden werden konnte, wie sie in den obigen Abschnitten beschrieben wurde. Der Font Fallback-Mechanismus wird verwendet, wenn die Schrift aufgelöst wird, aber es enthält keinen bestimmten Charakter. In diesem Fall Aspose.Words versucht, eine der Fallback-Fonts für das Zeichen zu verwenden.

Es gibt eine [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) Methode, die die Fallback-Einstellungen automatisch durch Scannen verfügbarer Schriftarten erstellt. Da diese Methode eine nicht-optimale Fallback-Einstellung erzeugen kann, können Sie das Fontfallback-Verhalten unter Verwendung der Eigenschaften des [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) Klasse. Diese Klasse gibt die Einstellungen des Fontfallback-Mechanismus an. Sie können eine Instanz der **FontFallbackSettings** Klasse wie folgt:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Ähnlich wie bei *Table Substitutionsregel* verwendet dieser Mechanismus XML-Tabellen für die Konfiguration. Diese XML-Tabellen können mit folgenden Methoden geladen und gespeichert werden:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Die Aspose.Words Release umfasst zwei Tabellen: *MsOfficeFallbackSetting.xml* und *NotoFallbackSetting.xml*.

Die *MsOfficeFallbackSetting* Tabelle definiert eine Ersatzstrategie für eine Reihe von Zeichen, die der von Microsoft Word. Die Strategie erfordert also die Installation von Microsoft Office Schriftarten. *MsOfficeFallbackSetting* kann mit der folgenden Methode aktiviert werden:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Die *NotoFallbackSetting* Tisch wird speziell für den Einsatz mit Google Noto Schriftarten (siehe mehr über Google Noto Schrifteinstellungen im nächsten Abschnitt) und können wie folgt aktiviert werden:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie man Fontfallback-Einstellungen aus einer XML-Datei lädt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

Im obigen Codebeispiel wird die folgende XML-Datei verwendet:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Vordefinierte Font FallBack Einstellungen für Google Noto Schriften

Aspose.Words gibt vordefinierte Fontfallback-Einstellungen an Google Noto schriftarten. Dies sind kostenlose Schriftarten, die unter SIL Open Font License lizenziert sind, die von Google Noto Fonts. Die **FontFallbackSettings** Klasse bietet [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) Methode. Es lädt vordefinierte Fallback-Einstellungen, die Google Noto Schriftarten wie im Codebeispiel unten gezeigt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Nur Sans-Stil Noto Schriften mit regelmäßigem Gewicht werden in vordefinierten Einstellungen verwendet.

{{% /alert %}}

## Ort Aspose.Words Sucht nach Fonts

Aspose.Words versucht TrueType Schriftarten auf dem Dateisystem automatisch zu finden. In der Regel können Sie sich auf das Standardverhalten von Aspose.Words um die `TrueType` Schriftarten, aber manchmal müssen Sie Ihre eigenen Ordner mit TrueType Schriftarten angeben. Die [Wahre Angabe Typ Fonts Standort](/words/de/java/specify-truetype-fonts-location/) Thema beschreibt wie und wo Aspose.Words sucht nach Schriftarten und wie Sie Ihre eigenen Schriftstellen festlegen können.

## Unterschiede bei der Verarbeitung von Schriftformaten in Aspose.Words und Microsoft Word

Es gibt einige Unterschiede in der Verarbeitung von Schriftformaten in Aspose.Words und Microsoft Word wie in der nachstehenden Tabelle dargestellt:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType Schriftarten und OpenType Schriftarten mit TrueType Umrisse | Unterstützt. | Unterstützt. |
| OpenType Schriftarten mit PostScript Umrisse | Unterstützt für die meisten Szenarien. Einbettung auf Festseitenformate wie PDF und XPS werden nicht unterstützt. Der Text wird durch Bitmap-Bilder ersetzt. | Unterstützt für die meisten Szenarien, einschließlich Einbettung auf Festseitenformate. |
| OpenType Schriftvariationen | Nur benannte Instanzen werden unterstützt. Kontinuierliche Variationen werden nicht unterstützt. | Unterstützt für die einzige Standard-Instanz. Benannte Instanzen und kontinuierliche Variationen werden nicht unterstützt. |
| Type1 Schriftarten | Unterstützt auf Windows Versionen vor 2013 und auf MacOS-Versionen. Unterstützung wird aufgegeben Windows Versionen ab 2013. | Nicht unterstützt. |

## Siehe auch

- Ja. [Google Noto Schriften](https://fonts.google.com/noto) Kostenlose Fonts herunterladen



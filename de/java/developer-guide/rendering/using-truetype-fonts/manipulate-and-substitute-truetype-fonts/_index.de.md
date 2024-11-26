---
title: TrueType-Schriftarten bearbeiten und ersetzen
second_title: Aspose.Words für Java
articleTitle: TrueType-Schriftarten bearbeiten und ersetzen
linktitle: TrueType-Schriftarten bearbeiten und ersetzen
description: "Aspose.Words für Java kann die korrekten TrueType Schriftarten in das resultierende Dokument einbetten, um sicherzustellen, dass es korrekt angezeigt wird, oder nach einem geeigneten Schriftartenersatz suchen oder den Schriftarten-Fallback-Mechanismus verwenden."
type: docs
weight: 10
url: /de/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words benötigt TrueType-Schriftarten für eine Vielzahl von Aufgaben, einschließlich der Darstellung von Dokumenten in Festseitenformaten, z. B. PDF oder XPS. Wenn Aspose.Words ein Dokument rendert, muss es das Einbetten und Einbetten von Teilmengen von TrueType -Schriftarten in das resultierende Dokument durchführen, was bei der Dokumenterstellung üblich ist, einschließlich gängiger PDF - oder XPS-Formate. Dadurch wird sichergestellt, dass das Dokument für jeden Betrachter gleich aussieht. Darüber hinaus erfordert die XPS -Spezifikation, dass Schriftarten immer in das Dokument eingebettet sind.

Um sicherzustellen, dass Aspose.Words die Zeichen genau misst und relevante Schriftarten erfolgreich einbettet, müssen die folgenden Bedingungen erfüllt sein:

1. Aspose.Words sollte in der Lage sein, TrueType Schriftdateien auf dem System zu finden und darauf zuzugreifen.
1. Es müssen genügend TrueType Schriftarten für Aspose.Words verfügbar sein, vorzugsweise mit denselben Schriftfamiliennamen wie die im Dokument verwendeten.

Beachten Sie, dass die Schriftart im Dokument eine Entität darstellt, z. B. Familienname, Stil, Größe, Farbe, die sich von der Entität `TrueType` Schriftart (physische Schriftart) unterscheidet. Aspose.Words löst die Schriftart im Dokument zu einem bestimmten Zeitpunkt der Verarbeitung in eine physische Schriftart auf. Dies ermöglicht bestimmte Aufgaben, am häufigsten die Berechnung der Textgröße während der Layoutkonstruktion und das Einbetten / Unterteilen in feste Seitenformate. Eine Reihe anderer weniger beliebter Aufgaben, wie z. B. Schriftauflösung und -ersetzung beim Laden von HTML oder Einbetten / Unterteilen in einige Flow-Formate, sind ebenfalls aktiviert.

## Schriftmanipulation und Leistungsprobleme

Alle verfügbaren Mechanismen zur Schriftmanipulation sind in der Klasse [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) enthalten. Diese Klasse ist für das Abrufen von Schriftarten innerhalb definierter Schriftquellen sowie für den Schriftartenersetzungsprozess verantwortlich, wie unten beschrieben.

Schriftarten werden in mehreren Schritten analysiert:

1. Abrufen von Informationen für die Schriftart, Auflösen aus allen verfügbaren Schriftarten.
1. Analysieren der aufgelösten Schriftarten, um verfügbare Glyphen und Metriken (horizontal und vertikal) zu erhalten.
1. Analysieren der aufgelösten Schriftarten zum Einbetten und Unterteilen.

Wenn Aspose.Words zum ersten Mal auf eine Schriftart im Dokument stößt, versucht es, grundlegende Schriftarteninformationen wie den vollständigen Namen der Schriftart, den Familiennamen, die Version und den Stil aus den Schriftartendateien in jeder Schriftartquelle abzurufen. Nachdem alle Schriftarten abgerufen wurden, verwendet Aspose.Words diese Details, um die erforderlichen Schriftdaten oder einen geeigneten Ersatz für die angeforderte Schriftart zu finden.

Da das oben beschriebene Verfahren zeitaufwändig ist, kann es sich beim ersten Start negativ auf die Anwendungsleistung auswirken. Jede Instanz von **FontSettings** hat jedoch einen eigenen Cache, was die Verarbeitungszeit nachfolgender Dokumente verkürzen könnte. Sie können beispielsweise eine Instanz der Klasse **FontSettings** für verschiedene Dokumente freigeben, wodurch Sie das Laden der Dokumente beschleunigen können. Das folgende Beispiel zeigt dies:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Wenn **FontSettings** nicht explizit definiert ist, verwendet Aspose.Words die Standardinstanz **FontSettings**. Diese Instanz wird auch automatisch von Dokumenten gemeinsam genutzt und kann wie folgt extrahiert werden:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Wenn Sie sicher sind, dass für alle verarbeitenden Dokumente dieselben Schriftarteinstellungen erforderlich sind, wird empfohlen, die Standardinstanz **FontSettings** einzurichten und zu verwenden. Angenommen, Sie müssen für alle Ihre Dokumente dieselben Schriftquellen verwenden. In diesem Fall können Sie die Standardinstanz einfach wie folgt ändern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Die benutzerdefinierten **FontSettings** haben eine höhere Priorität als die Standardinstanz.

{{% /alert %}}

## Verfügbarkeit und Ersetzung von Schriftarten

Ein Text in einem Dokument kann mit verschiedenen Schriftarten formatiert werden, z. B. Arial, Times New Roman, Verdana und anderen. Wenn Aspose.Words ein Dokument rendert, versucht es, die im Dokument angegebenen Schriftarten auszuwählen.

Es gibt jedoch Situationen, in denen die genaue Schriftart nicht gefunden werden kann und Aspose.Words sie stattdessen durch eine ähnliche Schriftart ersetzen muss. Aspose.Words wählt die Schriftart gemäß dem folgenden Prozess aus:

1. Aspose.Words versucht, eine Schriftart unter den verfügbaren Schriftquellen mit einem genauen Schriftnamen zu finden.
1. Aspose.Words versucht, die erforderliche Schriftart unter den im Originaldokument eingebetteten Schriftarten zu finden. Einige Dokumentformate wie DOCX können eingebettete Schriftarten enthalten.
1. Wenn Aspose.Words die erforderliche Schriftart mit der genauen Namensübereinstimmung und der für diese Schriftart definierten Eigenschaft [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) nicht finden kann, findet Aspose.Words die mit **AltName** definierte Schriftart aus der Klasse [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), die die Schriftarteninformationen angibt.
1. Wenn Aspose.Words die definierte Schriftart nicht finden kann und **AltName** nicht ebenfalls definiert ist, werden die Regeln für die Schriftartenersetzung nacheinander angewendet, wie unten beschrieben (wenn die entsprechende Ersetzung gefunden wurde, stoppt der Schriftartenersetzungsprozess und der nächste Schritt wird nicht ausgeführt.):
   1. Aspose.Words versucht, OS Schriftarteinstellungen, sofern verfügbar, mithilfe des Dienstprogramms `FontConfig` anzuwenden. Diese Nicht-Windows-Funktion muss mit einem FontConfig-kompatiblen OS verwendet werden. Fast jedes Unix-basierte OS verfügt bereits über eine `FontConfig` -Bibliothek, die eine systemweite Schriftkonfiguration, Anpassung und Zugriff auf Anwendungen ermöglicht. Ansonsten kann diese Bibliothek einfach vom Benutzer installiert werden.<br>
      Aspose.Words weiß, wie man Daten abfragt und FontConfig Ergebnisse für seine eigenen Zwecke interpretiert. Standardmäßig ist das Dienstprogramm `FontConfig` deaktiviert. Sie können es wie folgt aktivieren:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Der nächste Schritt ist ein einfacher, aber unglaublich mächtiger Mechanismus namens [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Standardmäßig ist diese Funktion aktiv und für alle OS verfügbar. Aspose.Words verwendet XML -Tabellen, die grundlegende Substitutionsregeln für verschiedene OS definieren. Gemäß der Tabellenersetzungsregel wird die Liste der Ersatzschriftnamen verwendet.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - eine zu ersetzende Schriftart, SubstituteFonts - Liste der Ersetzungsvarianten, getrennt durch ein Komma. Die erste verfügbare Schriftart wird zum Ersetzen verwendet.<br>
      Das Hauptmerkmal dieser Regel ist die Möglichkeit, eigene Ersetzungstabellen zu laden, wie im folgenden Beispiel gezeigt:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Sie können die vorhandene Tabelle aus dem Glas als Grundlage nehmen oder sie programmgesteuert auf folgende Weise speichern:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Trotz der Flexibilität dieses Mechanismus gibt es einige Fälle, in denen es besser ist, ihn zu deaktivieren, wie unten gezeigt:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Die Ersetzungsregel **FontInfo** wird angewendet, wenn die Tabellenersetzungsregel die Schriftart nicht finden kann. Dieser Mechanismus ist standardmäßig aktiviert. Aspose.Words findet die am besten geeignete Schriftart gemäß den in einem bestimmten Dokument enthaltenen Schriftarteninformationen. Diese Informationen können wie unten gezeigt von der Klasse **FontInfo** abgerufen werden:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Benutzer können nicht in den Workflow dieser Funktion eingreifen, es sei denn, sie entscheiden sich, sie bei unbefriedigenden Ergebnissen zu deaktivieren:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Wenn **FontInfo** für die fehlende Schriftart nicht verfügbar ist, stoppt der Prozess.
   1. **DefaultFont** Ersetzungsregel wird angewendet, wenn die `FontInfo` Ersetzung ebenfalls fehlgeschlagen ist. Diese Regel ist auch standardmäßig aktiviert. Gemäß dieser Regel versucht Aspose.Words, die in der Eigenschaft [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) angegebene Standardschriftart zu verwenden. Wenn der Benutzer keine eigene Standardschriftart ausgewählt hat, wird "Times New Roman" als Standardschriftart verwendet. Diese Regel kann wie unten gezeigt deaktiviert werden:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Um die aktuelle Standardschriftart zu überprüfen, verwenden Sie:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Um Ihre eigene Ersatzoption einzurichten, bewerben Sie sich:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Wenn Aspose.Words die Schriftartenersetzung nicht durchführen kann, versucht es, die erste verfügbare Schriftart aus verfügbaren Schriftartquellen abzurufen.
1. Wenn Aspose.Words schließlich keine Schriftarten unter den verfügbaren Schriftquellen finden kann, wird das Dokument mit der kostenlosen Fanwood-Schriftart gerendert, die in die Aspose.Words -Assembly eingebettet ist.

{{% alert color="primary" %}}

Wenn **FontInfo** verfügbar ist, löst *FontInfo substitution rule* die Schriftart immer auf und überschreibt die Standardschriftartregel. Wenn Sie die Standardschriftartregel verwenden möchten, sollten Sie die *FontInfo substitution rule* deaktivieren. Beachten Sie, dass die *FontConfig substitution rule* in den meisten Fällen die Schriftart auflöst und somit alle anderen Regeln außer Kraft setzt.

{{% /alert %}}

## So erkennen Sie, dass die Schriftart ersetzt wurde

Manchmal ist es möglicherweise unklar, warum sich das Dokumentlayout geändert hat oder warum eine Schriftart nicht wie erwartet aussieht. In solchen Fällen helfen Warnmeldungen zum Ersetzen von Schriftarten, die von der [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) -Schnittstelle implementiert werden. Sie haben den Warnungstyp [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) und das Standardbeschreibungstextformat "Schriftart '<OriginalFont>' wurde nicht gefunden. Verwenden Sie stattdessen die Schriftart '<SubstitutionFont>'. Grund: <Reason>", mit den folgenden Gründen:

- "alternativer Name aus dem Dokument" - zur Ersetzung durch [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig-Ersetzung" - zur Ersetzung durch Font-Konfigurationsregel
- "Tabellenersetzung" - für die Ersetzung durch Tabellenregel
- "font-Info-Ersetzung" - zur Ersetzung durch Font-Info-Regel
- "Standardschriftartenersetzung" - für die Ersetzung durch Standardschriftartregel
- "erste verfügbare Schriftart" - zum Ersetzen durch die erste verfügbare Schriftart

## Schrift FallBack Einstellungen von XML

In Aspose.Words werden zwei verschiedene Mechanismen verwendet - Schriftartenersetzung und Schriftartenfallback. Die Schriftartenersetzung wird verwendet, wenn die im Dokument angegebene Schriftart nicht unter den Schriftquellen gefunden werden konnte, wie es in den obigen Abschnitten beschrieben wurde. Der Schriftarten-Fallback-Mechanismus wird verwendet, wenn die Schriftart aufgelöst ist, aber kein bestimmtes Zeichen enthält. In diesem Fall versucht Aspose.Words, eine der Fallback-Schriftarten für das Zeichen zu verwenden.

Es gibt eine [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) -Methode, die die Fallback-Einstellungen automatisch erstellt, indem verfügbare Schriftarten gescannt werden. Da diese Methode möglicherweise eine nicht optimale Fallback-Einstellung erzeugt, können Sie das Fallback-Verhalten für Schriftarten mithilfe der Eigenschaften der Klasse [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) steuern. Diese Klasse gibt Einstellungen für den Schriftarten-Fallback-Mechanismus an. Sie können eine Instanz der Klasse **FontFallbackSettings** wie folgt abrufen:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Ähnlich wie *Table substitution rule* verwendet dieser Mechanismus XML -Tabellen für die Konfiguration. Diese XML-Tabellen können mit den folgenden Methoden geladen und gespeichert werden:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Die Aspose.Words-Version enthält zwei Tabellen: *MsOfficeFallbackSetting.xml* und *NotoFallbackSetting.xml*.

Die Tabelle *MsOfficeFallbackSetting* definiert eine Ersetzungsstrategie für einen Zeichenbereich, die der von Microsoft Word verwendeten Strategie ähnelt. Daher erfordert die Strategie die Installation von Microsoft Office-Schriftarten. *MsOfficeFallbackSetting* kann mit der folgenden Methode aktiviert werden:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Die *NotoFallbackSetting*-Tabelle wurde speziell für die Verwendung mit Google Noto-Schriftarten erstellt (siehe mehr zu den Google Noto-Schriftarteinstellungen im nächsten Abschnitt) und kann wie folgt aktiviert werden:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Schriftarten-Fallback-Einstellungen aus einer XML-Datei geladen werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

Im obigen Codebeispiel wird die folgende XML -Datei verwendet:

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

## Vordefinierte Schrift FallBack-Einstellungen für Google Noto-Schriftarten

Aspose.Words bietet vordefinierte Schriftarten-Fallback-Einstellungen für Google Noto-Schriftarten. Dies sind kostenlose Schriftarten, die unter SIL Open Font License lizenziert sind und von Google Noto Fonts heruntergeladen werden können. Die **FontFallbackSettings** -Klasse stellt eine [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) -Methode bereit. Es werden vordefinierte Fallback-Einstellungen geladen, die Google Noto -Schriftarten verwenden, wie im folgenden Codebeispiel gezeigt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

In vordefinierten Einstellungen werden nur Noto-Schriftarten im Sans-Stil mit normaler Gewichtung verwendet.

{{% /alert %}}

## Wobei Aspose.Words nach Schriftarten sucht

Aspose.Words versucht automatisch, TrueType Schriftarten im Dateisystem zu finden. Normalerweise können Sie sich auf das Standardverhalten von Aspose.Words verlassen, um die `TrueType` -Schriftarten zu finden, aber manchmal müssen Sie Ihre eigenen Ordner angeben, die TrueType -Schriftarten enthalten. Der [Geben Sie den Speicherort für TrueType Schriften an](/words/java/specify-truetype-fonts-location/) in diesem Thema wird beschrieben, wie und wo Aspose.Words nach Schriftarten sucht und wie Sie Ihre eigenen Schriftpositionen angeben.

## Unterschiede in der Verarbeitung von Schriftformaten in Aspose.Words und Microsoft Word

Es gibt einige Unterschiede bei der Verarbeitung von Schriftformaten in Aspose.Words und Microsoft Word, wie in der folgenden Tabelle gezeigt:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType Schriftarten und OpenType Schriftarten mit TrueType Konturen | Unterstützte. | Unterstützte. |
| OpenType Schriftarten mit PostScript Konturen | Wird für die meisten Szenarien unterstützt. Das Einbetten in feste Seitenformate wie PDF und XPS wird nicht unterstützt. Der Text wird durch Bitmap-Bilder ersetzt. | Wird für die meisten Szenarien unterstützt, einschließlich der Einbettung in Formate mit fester Seite. |
| OpenType Schriftvarianten | Nur benannte Instanzen werden unterstützt. Kontinuierliche Variationen werden nicht unterstützt. | Wird für die einzige Standardinstanz unterstützt. Benannte Instanzen und kontinuierliche Variationen werden nicht unterstützt. |
| Type1 Schriftarten | Wird von Windows -Versionen vor 2013 und von MacOS -Versionen unterstützt. Die Unterstützung für Windows -Versionen ab 2013 wird eingestellt. | Nicht unterstützt. |

## Siehe auch

- [Google Noto Schriftarten](https://fonts.google.com/noto) zum Herunterladen kostenloser Schriftarten



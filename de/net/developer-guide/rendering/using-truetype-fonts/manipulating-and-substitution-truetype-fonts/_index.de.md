---
title: Bearbeiten und ersetzen Sie TrueType-Schriftarten in C#
second_title: Aspose.Words für .NET
articleTitle: Bearbeiten und ersetzen Sie TrueType-Schriftarten
linktitle: Bearbeiten und ersetzen Sie TrueType-Schriftarten
description: "Aspose.Words für .NET kann die richtigen TrueType-Schriftarten in das resultierende Dokument einbetten, um sicherzustellen, dass es mithilfe von C# korrekt angezeigt wird. Wenn eine Schriftart oder ein bestimmtes Zeichen nicht verfügbar ist, sucht Aspose.Words nach einem geeigneten Schriftartersatz oder nutzt den Font-Fallback-Mechanismus."
type: docs
weight: 10
url: /de/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words erfordert TrueType-Schriftarten für eine Vielzahl von Aufgaben, einschließlich der Darstellung von Dokumenten in feste Seitenformate, beispielsweise PDF oder XPS. Wenn Aspose.Words ein Dokument rendert, muss es die Einbettung und Teileinbettung von TrueType-Schriftarten in das resultierende Dokument durchführen, was bei der Dokumentgenerierung üblich ist, einschließlich gängiger PDF- oder XPS-Formate. Dadurch wird sichergestellt, dass das Dokument für jeden Betrachter gleich aussieht. Darüber hinaus verlangt die XPS-Spezifikation, dass Schriftarten immer in das Dokument eingebettet sind.

Um sicherzustellen, dass Aspose.Words die Zeichen genau misst und relevante Schriftarten erfolgreich einbettet, müssen die folgenden Bedingungen erfüllt sein:

1. Aspose.Words sollte in der Lage sein, TrueType-Schriftartendateien auf dem System zu finden und darauf zuzugreifen.
1. Für Aspose.Words müssen ausreichend TrueType-Schriftarten verfügbar sein, vorzugsweise mit den gleichen Schriftfamiliennamen wie die im Dokument verwendeten.

Beachten Sie, dass die Schriftart im Dokument eine Entität darstellt, z. B. Familienname, Stil, Größe, Farbe, die sich von der Entität der `TrueType`-Schriftart (physische Schriftart) unterscheidet. Aspose.Words löst die Schriftart im Dokument zu einem bestimmten Zeitpunkt der Verarbeitung in eine physische Schriftart auf. Dies ermöglicht bestimmte Aufgaben, am häufigsten die Berechnung der Textgröße während der Layouterstellung und die Einbettung/Unterteilung in feste Seitenformate. Eine Reihe anderer, weniger beliebter Aufgaben, wie z. B. das Auflösen und Ersetzen von Schriftarten beim Laden von HTML oder das Einbetten/Unterteilen in einige Flussformate, sind ebenfalls aktiviert.

## Probleme mit der Manipulation von Schriftarten und der Leistung

Alle verfügbaren Schriftartenmanipulationsmechanismen sind in der [FontSettings](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/)-Klasse enthalten. Diese Klasse ist für das Abrufen von Schriftarten innerhalb definierter Schriftartquellen sowie für den Schriftartersetzungsprozess verantwortlich, wie unten beschrieben.

Schriftarten werden in mehreren Schritten analysiert:

1. Informationen zur Schriftart abrufen, aus allen verfügbaren Schriftarten auflösen.
1. Parsen der aufgelösten Schriftarten, um verfügbare glyphs und Metriken (horizontal und vertikal) zu erhalten.
1. Analysieren der aufgelösten Schriftarten zum Einbetten und Unterteilen.

Wenn Aspose.Words im Dokument zum ersten Mal auf eine Schriftart stößt, versucht es, grundlegende Informationen zur Schriftart, z. B. den vollständigen Namen der Schriftart, den Familiennamen, die Version und den Stil, aus den Schriftartdateien in den einzelnen Schriftartquellen abzurufen. Nachdem alle Schriftarten abgerufen wurden, verwendet Aspose.Words diese Details, um die erforderlichen Schriftartdaten oder einen geeigneten Ersatz für die angeforderte Schriftart zu finden.

Da der oben beschriebene Vorgang zeitaufwändig ist, kann er sich beim ersten Start negativ auf die Leistung der Anwendung auswirken. Allerdings verfügt jede Instanz von **FontSettings** über einen eigenen Cache, was die Verarbeitungszeit nachfolgender Dokumente verkürzen könnte. Beispielsweise können Sie eine Instanz der **FontSettings**-Klasse zwischen verschiedenen Dokumenten teilen, wodurch Sie das Laden der Dokumente beschleunigen können. Das folgende Beispiel zeigt dies:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

Wenn **FontSettings** nicht explizit definiert ist, verwendet Aspose.Words die Standard-**FontSettings**-Instanz. Diese Instanz wird auch automatisch von Dokumenten gemeinsam genutzt und kann wie folgt extrahiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Wenn Sie sicher sind, dass alle verarbeiteten Dokumente dieselben Schriftarteinstellungen erfordern, empfiehlt es sich, die Standard-**FontSettings**-Instanz einzurichten und zu verwenden. Angenommen, Sie müssen für alle Ihre Dokumente dieselben Schriftartquellen verwenden. In diesem Fall können Sie die Standardinstanz einfach wie folgt ändern:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

Die benutzerdefinierten **FontSettings** haben eine höhere Priorität als die Standardinstanz.

{{% /alert %}}

## Verfügbarkeit und Ersetzung von Schriftarten

Ein Text in einem Dokument kann mit verschiedenen Schriftarten formatiert werden, beispielsweise Arial, Times New Roman, Verdana und anderen. Wenn Aspose.Words ein Dokument rendert, versucht es, die im Dokument angegebenen Schriftarten auszuwählen.

Es gibt jedoch Situationen, in denen die genaue Schriftart nicht gefunden werden kann und Aspose.Words sie stattdessen durch eine ähnliche Schriftart ersetzen muss. Aspose.Words wählt die Schriftart nach folgendem Verfahren aus:
1. Aspose.Words versucht unter den verfügbaren Schriftartquellen eine Schriftart mit einem genauen Schriftartnamen zu finden.
1. Aspose.Words versucht, die benötigte Schriftart unter den im Originaldokument eingebetteten Schriftarten zu finden. Einige Dokumentformate wie DOCX können eingebettete Schriftarten enthalten.
1. Wenn Aspose.Words die erforderliche Schriftart mit der genauen Namensübereinstimmung und der für diese Schriftart definierten [AltName](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontinfo/altname/)-Eigenschaft nicht finden kann, findet Aspose.Words die mit **AltName** definierte Schriftart aus der [FontInfo](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontinfo/)-Klasse, die die Schriftartinformationen angibt.
1. Wenn Aspose.Words die definierte Schriftart nicht finden kann und **AltName** nicht ebenfalls definiert ist, werden die Schriftartenersetzungsregeln nacheinander wie unten beschrieben angewendet (wenn die entsprechende Ersetzung gefunden wird, stoppt der Schriftartenersetzungsprozess und die nächster Schritt wird nicht ausgeführt):
   1. Zunächst versucht Aspose.Words, den Schriftartnamen zu verarbeiten, um die Ersetzung zu erhalten, insbesondere versucht es, Suffixe mit den Trennzeichen "-" und "" zu entfernen.<br>
      Wenn diese Ersetzungsregel eintritt, wird die Schriftart "&lt;OriginalFont&gt;" nicht gefunden. Stattdessen wird die Schriftart "&lt;SubstitutionFont&gt;" verwendet. Grund: Ersetzung des Schriftartnamens." Warnung erscheint.<br>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. Anschließend versucht Aspose.Words, mithilfe des **FontConfig**-Dienstprogramms die Schriftarteinstellungen des Betriebssystems anzuwenden, sofern diese verfügbar sind. Diese Nicht-Windows-Funktion muss mit einem FontConfig-kompatiblen Betriebssystem verwendet werden. Fast jedes Unix-basierte Betriebssystem verfügt bereits über eine `FontConfig`-Bibliothek, die eine systemweite Schriftartenkonfiguration, Anpassung und Zugriff auf Anwendungen ermöglicht. Ansonsten kann diese Bibliothek einfach vom Benutzer installiert werden.
      Aspose.Words weiß, wie man Daten abfragt und FontConfig-Ergebnisse für seine eigenen Zwecke interpretiert. Standardmäßig ist das `FontConfig`-Dienstprogramm deaktiviert. Sie können es wie folgt aktivieren:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. Der nächste Schritt verwendet einen einfachen, aber leistungsstarken Mechanismus namens **Table**-Ersetzungsregel. Standardmäßig ist diese Funktion für das jeweilige Betriebssystem aktiv und verfügbar. Aspose.Words ersetzt die Schriftart durch diese Regel, wenn sie nicht durch die `FontConfig`-Ersetzungsregel ersetzt wird.<br>
      Aspose.Words verwendet XML-Tabellen, die die grundlegenden Ersetzungsregeln für verschiedene Betriebssysteme definieren. Gemäß der Tabellenersetzungsregel wird die Liste der Ersatzschriftnamen verwendet.<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Das Hauptmerkmal dieser Regel ist die Möglichkeit, eigene Substitutionstabellen zu laden, wie im folgenden Beispiel gezeigt:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      Trotz der Flexibilität dieses Mechanismus gibt es einige Fälle, in denen es besser ist, ihn zu deaktivieren, wie unten gezeigt:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. Die **FontInfo**-Ersetzungsregel wird angewendet, wenn die Tabellenersetzungsregel die Schriftart nicht finden kann. Dieser Mechanismus ist standardmäßig aktiviert. Aspose.Words findet anhand der in einem bestimmten Dokument enthaltenen Schriftartinformationen die am besten geeignete Schriftart. Diese Informationen können wie folgt aus der **FontInfo**-Klasse abgerufen werden:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Benutzer können nicht in den Arbeitsablauf dieser Funktion eingreifen, es sei denn, sie entscheiden sich, sie im Falle unbefriedigender Ergebnisse zu deaktivieren:<br>
      **.NET**<br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Wenn **FontInfo** für die fehlende Schriftart nicht verfügbar ist, wird der Vorgang abgebrochen.<br>
   1. Die **DefaultFont**-Ersetzungsregel wird angewendet, wenn auch die `FontInfo`-Ersetzung fehlgeschlagen ist. Auch diese Regel ist standardmäßig aktiviert. Gemäß dieser Regel versucht Aspose.Words, die in der [DefaultFontName](https://reference.aspose.com/words/de/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/)-Eigenschaft angegebene Standardschriftart zu verwenden. Wenn der Benutzer keine eigene Standardschriftart ausgewählt hat, wird "Times New Roman" als Standardschriftart verwendet. Diese Regel kann wie unten gezeigt deaktiviert werden:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      Um die aktuelle Standardschriftart zu überprüfen, verwenden Sie:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      Um Ihre eigene Ersatzoption einzurichten, wenden Sie Folgendes an:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Wenn Aspose.Words die Schriftartenersetzung nicht durchführen kann, versucht es, die erste verfügbare Schriftart aus verfügbaren Schriftartenquellen abzurufen.
1. Wenn Aspose.Words schließlich keine Schriftarten unter den verfügbaren Schriftartquellen finden kann, rendert es das Dokument mit der kostenlosen Fanwood-Schriftart, die in die Aspose.Words-Assembly eingebettet ist.<br>

Wenn **FontInfo** verfügbar ist, löst die *FontInfo-Ersetzungsregel* immer die Schriftart auf und überschreibt die Standardschriftartregel. Wenn Sie die Standardschriftartregel verwenden möchten, sollten Sie die *FontInfo-Ersetzungsregel* deaktivieren. Beachten Sie, dass die *FontConfig-Ersetzungsregel* in den meisten Fällen die Schriftart auflöst und somit alle anderen Regeln außer Kraft setzt.

## So erkennen Sie, dass die Schriftart ersetzt wurde

Manchmal ist unklar, warum sich das Dokumentlayout geändert hat oder warum eine Schriftart nicht wie erwartet aussieht. In solchen Fällen helfen die von der [IWarningCallback](https://reference.aspose.com/words/de/net/aspose.words/iwarningcallback/)-Schnittstelle implementierten Warnmeldungen zur Schriftartersetzung. Sie haben den [FontSubstitution](https://reference.aspose.com/words/de/net/aspose.words/warningtype/)-Warnungstyp und das Standardbeschreibungstextformat "Schriftart".<OriginalFont> ' wurde nicht gefunden. Mit '<SubstitutionFont> '-Schriftart stattdessen. Grund:<Reason> ", mit folgenden Gründen:

- "Alternativer Name aus Dokument" – zur Ersetzung durch [AltName](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontinfo/properties/altname)
- "fontconfig substitution" – für die Ersetzung durch die Schriftkonfigurationsregel
- "Tabellensubstitution" – für die Substitution nach Tabellenregel
- "Schriftart-Info-Ersetzung" – für die Ersetzung durch die Schrift-Info-Regel
- "Standardschriftartenersetzung" – für die Ersetzung durch die Standardschriftartenregel
- "erste verfügbare Schriftart" – zum Ersetzen durch die erste verfügbare Schriftart

## Schriftart-FallBack-Einstellungen aus XML

In Aspose.Words werden zwei verschiedene Mechanismen verwendet: Schriftartersetzung und Schriftarten-Fallback. Die Schriftartersetzung wird verwendet, wenn die im Dokument angegebene Schriftart nicht unter den Schriftartquellen gefunden werden konnte, wie in den obigen Abschnitten beschrieben. Der Font-Fallback-Mechanismus wird verwendet, wenn die Schriftart aufgelöst wird, aber kein bestimmtes Zeichen enthält. In diesem Fall versucht Aspose.Words, eine der Fallback-Schriftarten für das Zeichen zu verwenden.

Es gibt eine [BuildAutomatic](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/)-Methode, die automatisch die Fallback-Einstellungen erstellt, indem sie verfügbare Schriftarten scannt. Da diese Methode möglicherweise zu einer nicht optimalen Fallback-Einstellung führt, können Sie das Schriftart-Fallback-Verhalten mithilfe der Eigenschaften der [FontFallbackSettings](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontfallbacksettings/)-Klasse steuern. Diese Klasse gibt Einstellungen des Font-Fallback-Mechanismus an. Sie können eine Instanz der **FontFallbackSettings**-Klasse wie folgt erhalten:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Ähnlich wie bei der *Tabellenersetzungsregel* verwendet dieser Mechanismus XML-Tabellen für die Konfiguration. Diese XML-Tabellen können mit den folgenden Methoden geladen und gespeichert werden:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

Die Aspose.Words-Version enthält zwei Tabellen: *MsOfficeFallbackSetting.xml* und *NotoFallbackSetting.xml*.

Die *MsOfficeFallbackSetting*-Tabelle definiert eine Ersetzungsstrategie für einen Zeichenbereich, die der von Microsoft Word verwendeten Strategie ähnelt. Daher erfordert die Strategie die Installation von Microsoft-Office-Schriftarten. *MsOfficeFallbackSetting* kann mit der folgenden Methode aktiviert werden:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Die *NotoFallbackSetting*-Tabelle wurde speziell für die Verwendung mit Google Noto-Schriftarten erstellt (mehr zu den Google Noto-Schriftarteneinstellungen finden Sie im nächsten Abschnitt) und kann wie folgt aktiviert werden:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Schriftart-Fallback-Einstellungen aus einer XML-Datei geladen werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

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

## Vordefinierte Schriftart-FallBack-Einstellungen für Google Noto-Schriftarten

Aspose.Words bietet vordefinierte Schriftart-Fallback-Einstellungen für Google Noto-Schriftarten. Hierbei handelt es sich um kostenlose Schriftarten, die unter der SIL Open Font License lizenziert sind und von Google Noto Fonts heruntergeladen werden können. Die **FontFallbackSettings**-Klasse stellt eine [LoadNotoFallbackSettings](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/)-Methode bereit. Es lädt vordefinierte Fallback-Einstellungen, die Google Noto-Schriftarten verwenden, wie im folgenden Codebeispiel gezeigt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

In den vordefinierten Einstellungen werden nur Noto-Schriftarten im Sans-Stil mit normaler Schriftstärke verwendet.

{{% /alert %}}

## Wo Aspose.Words nach Schriftarten sucht

Aspose.Words versucht, TrueType-Schriftarten automatisch im Dateisystem zu finden. Normalerweise können Sie sich auf das Standardverhalten von Aspose.Words verlassen, um die `TrueType`-Schriftarten zu finden, aber manchmal müssen Sie Ihre eigenen Ordner mit TrueType-Schriftarten angeben. Das [Geben Sie den Speicherort der TrueType-Schriftarten an](/words/de/net/specifying-truetype-fonts-location/)-Thema beschreibt, wie und wo Aspose.Words nach Schriftarten sucht und wie Sie Ihre eigenen Schriftartenspeicherorte angeben.

## Unterschiede in der Verarbeitung von Schriftformaten in Aspose.Words und Microsoft Word

Es gibt einige Unterschiede bei der Verarbeitung von Schriftartformaten in Aspose.Words und Microsoft Word, wie in der folgenden Tabelle dargestellt:

|| Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType-Schriftarten und OpenType-Schriftarten mit TrueType-Konturen | Unterstützt. | Unterstützt. |
| OpenType-Schriftarten mit PostScript-Konturen | Wird für die meisten Szenarien unterstützt. Das Einbetten in feste Seitenformate wie PDF und XPS wird nicht unterstützt. Text wird durch Bitmap-Bilder ersetzt. | Wird für die meisten Szenarios unterstützt, einschließlich der Einbettung in feste Seitenformate. |
| Variationen von OpenType-Schriftarten | Es werden nur benannte Instanzen unterstützt. Kontinuierliche Variationen werden nicht unterstützt. | Wird nur für die Standardinstanz unterstützt. Benannte Instanzen und kontinuierliche Variationen werden nicht unterstützt. |
| Type1-Schriftarten | Unterstützt auf Windows-Versionen vor 2013 und auf MacOS-Versionen. Die Unterstützung für Windows-Versionen ab 2013 wird eingestellt. | Nicht unterstützt. |

## Siehe auch

- [Google Noto-Schriftarten](https://fonts.google.com/noto) zum Herunterladen kostenloser Schriftarten

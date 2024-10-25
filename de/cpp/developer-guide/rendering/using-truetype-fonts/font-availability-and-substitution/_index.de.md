---
title: MFont Verfügbarkeit und Ersetzung in C++
second_title: Aspose.Words für C++
articleTitle: Verfügbarkeit und Ersetzung von Schriftarten
linktitle: Verfügbarkeit und Ersetzung von Schriftarten
description: "Wenn die genaue Ersetzungsschriftart nicht gefunden werden kann, muss Aspose.Words sie stattdessen durch eine ähnliche Schriftart ersetzen. Dieser Artikel beschreibt den Prozess zum Finden der am besten geeigneten Schriftart."
type: docs
weight: 12
url: /de/cpp/font-availability-and-substitution/
---

Ein Text in einem Dokument kann mit verschiedenen Schriftarten formatiert werden, z. B. Arial, Times New Roman, Verdana und anderen. Wenn Aspose.Words ein Dokument rendert, versucht es, die im Dokument angegebenen Schriftarten auszuwählen.

Es gibt jedoch Situationen, in denen die genaue Schriftart nicht gefunden werden kann und Aspose.Words sie stattdessen durch eine ähnliche Schriftart ersetzen muss. Aspose.Words wählt die Schriftart gemäß dem folgenden Prozess aus:

1. Aspose.Words versucht, eine Schriftart unter den verfügbaren Schriftquellen mit einem genauen Schriftnamen zu finden.
1. Aspose.Words versucht, die erforderliche Schriftart unter den im Originaldokument eingebetteten Schriftarten zu finden. Einige Dokumentformate wie DOCX können eingebettete Schriftarten enthalten.
1. Wenn Aspose.Words die erforderliche Schriftart mit der genauen Namensübereinstimmung und der für diese Schriftart definierten Eigenschaft [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) nicht finden kann, findet Aspose.Words die mit **AltName** definierte Schriftart aus der Klasse [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), die die Schriftarteninformationen angibt.
1. Wenn Aspose.Words die definierte Schriftart nicht finden kann und **AltName** nicht ebenfalls definiert ist, werden die Regeln für die Schriftartenersetzung nacheinander angewendet, wie unten beschrieben (wenn die entsprechende Ersetzung gefunden wurde, stoppt der Schriftartenersetzungsprozess und der nächste Schritt wird nicht ausgeführt.):
   1. Aspose.Words versucht, OS Schriftarteinstellungen, sofern verfügbar, mithilfe des Dienstprogramms `FontConfig` anzuwenden. Diese Nicht-Windows-Funktion muss mit einem FontConfig-kompatiblen OS verwendet werden. Fast jedes Unix-basierte OS verfügt bereits über eine `FontConfig` -Bibliothek, die eine systemweite Schriftkonfiguration, Anpassung und Zugriff auf Anwendungen ermöglicht. Ansonsten kann diese Bibliothek einfach vom Benutzer installiert werden.<br>
      Aspose.Words weiß, wie man Daten abfragt und FontConfig Ergebnisse für seine eigenen Zwecke interpretiert. Standardmäßig ist das Dienstprogramm `FontConfig` deaktiviert. Sie können es wie folgt aktivieren:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Der nächste Schritt ist ein einfacher, aber unglaublich mächtiger Mechanismus namens [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Standardmäßig ist diese Funktion aktiv und für alle OS verfügbar. Aspose.Words verwendet XML -Tabellen, die grundlegende Substitutionsregeln für verschiedene OS definieren. Gemäß der Tabellenersetzungsregel wird die Liste der Ersatzschriftnamen verwendet.<br>
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
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Sie können die vorhandene Tabelle aus dem Glas als Grundlage nehmen oder sie programmgesteuert auf folgende Weise speichern:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Trotz der Flexibilität dieses Mechanismus gibt es einige Fälle, in denen es besser ist, ihn zu deaktivieren, wie unten gezeigt:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Die Ersetzungsregel **FontInfo** wird angewendet, wenn die Tabellenersetzungsregel die Schriftart nicht finden kann. Dieser Mechanismus ist standardmäßig aktiviert. Aspose.Words findet die am besten geeignete Schriftart gemäß den in einem bestimmten Dokument enthaltenen Schriftarteninformationen. Diese Informationen können wie unten gezeigt von der Klasse **FontInfo** abgerufen werden:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Benutzer können nicht in den Workflow dieser Funktion eingreifen, es sei denn, sie entscheiden sich, sie bei unbefriedigenden Ergebnissen zu deaktivieren:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Wenn **FontInfo** für die fehlende Schriftart nicht verfügbar ist, stoppt der Prozess.
   1. **DefaultFont** Ersetzungsregel wird angewendet, wenn die `FontInfo` Ersetzung ebenfalls fehlgeschlagen ist. Diese Regel ist auch standardmäßig aktiviert. Gemäß dieser Regel versucht Aspose.Words, die in der Eigenschaft [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/) angegebene Standardschriftart zu verwenden. Wenn der Benutzer keine eigene Standardschriftart ausgewählt hat, wird "Times New Roman" als Standardschriftart verwendet. Diese Regel kann wie unten gezeigt deaktiviert werden:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Um die aktuelle Standardschriftart zu überprüfen, verwenden Sie:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Um Ihre eigene Ersatzoption einzurichten, bewerben Sie sich:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Wenn Aspose.Words die Schriftartenersetzung nicht durchführen kann, versucht es, die erste verfügbare Schriftart aus verfügbaren Schriftartquellen abzurufen.
1. Wenn Aspose.Words schließlich keine Schriftarten unter den verfügbaren Schriftquellen finden kann, wird das Dokument mit der kostenlosen Fanwood-Schriftart gerendert, die in die Aspose.Words -Assembly eingebettet ist.

{{% alert color="primary" %}}

Wenn **FontInfo** verfügbar ist, löst *FontInfo substitution rule* die Schriftart immer auf und überschreibt die Standardschriftartregel. Wenn Sie die Standardschriftartregel verwenden möchten, sollten Sie die *FontInfo substitution rule* deaktivieren. Beachten Sie, dass die *FontConfig substitution rule* in den meisten Fällen die Schriftart auflöst und somit alle anderen Regeln außer Kraft setzt.

{{% /alert %}}



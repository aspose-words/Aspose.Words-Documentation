---
title: Schriftmanipulation und Leistungsprobleme in C++
second_title: Aspose.Words für C++
articleTitle: Schriftmanipulation und Leistungsprobleme
linktitle: Schriftmanipulation und Leistungsprobleme
description: "Aspose.Words für C++ verwendet den vollständigen Namen der Schriftart, den Familiennamen, die Version und den Stil, um die erforderlichen Schriftdaten oder einen geeigneten Ersatz für die angeforderte Schriftart zu finden. FontSettings ermöglicht es Ihnen, das Laden der Dokumente zu beschleunigen."
type: docs
weight: 11
url: /de/cpp/font-manipulation-and-performance-issues/
---

Alle verfügbaren Mechanismen zur Schriftmanipulation sind in der Klasse [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) enthalten. Diese Klasse ist für das Abrufen von Schriftarten innerhalb definierter Schriftquellen sowie für den Schriftartenersetzungsprozess verantwortlich, wie unten beschrieben.

## Analysieren der aufgelösten Schriftarten

Schriftarten werden in mehreren Schritten analysiert:

1. Abrufen von Informationen für die Schriftart, Auflösen aus allen verfügbaren Schriftarten.
1. Analysieren der aufgelösten Schriftarten, um verfügbare Glyphen und Metriken (horizontal und vertikal) zu erhalten.
1. Analysieren der aufgelösten Schriftarten zum Einbetten und Unterteilen.

Wenn Aspose.Words zum ersten Mal auf eine Schriftart im Dokument stößt, versucht es, grundlegende Schriftarteninformationen wie den vollständigen Namen der Schriftart, den Familiennamen, die Version und den Stil aus den Schriftartendateien in jeder Schriftartquelle abzurufen. Nachdem alle Schriftarten abgerufen wurden, verwendet Aspose.Words diese Details, um die erforderlichen Schriftdaten oder einen geeigneten Ersatz für die angeforderte Schriftart zu finden.

## Leistungsproblem beim Ersetzen von Schriftarten

Da das oben beschriebene Verfahren zeitaufwändig ist, kann es sich beim ersten Start negativ auf die Anwendungsleistung auswirken. Jede Instanz von **FontSettings** hat jedoch einen eigenen Cache, was die Verarbeitungszeit nachfolgender Dokumente verkürzen könnte. Sie können beispielsweise eine Instanz der Klasse **FontSettings** für verschiedene Dokumente freigeben, wodurch Sie das Laden der Dokumente beschleunigen können. Das folgende Beispiel zeigt dies:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

Wenn **FontSettings** nicht explizit definiert ist, verwendet Aspose.Words die Standardinstanz **FontSettings**. Diese Instanz wird auch automatisch von Dokumenten gemeinsam genutzt und kann wie folgt extrahiert werden:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Verwenden der Standardinstanz FontSettings

Wenn Sie sicher sind, dass für alle verarbeitenden Dokumente dieselben Schriftarteinstellungen erforderlich sind, wird empfohlen, die Standardinstanz **FontSettings** einzurichten und zu verwenden. Angenommen, Sie müssen für alle Ihre Dokumente dieselben Schriftquellen verwenden. In diesem Fall können Sie die Standardinstanz einfach wie folgt ändern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Die benutzerdefinierten **FontSettings** haben eine höhere Priorität als die Standardinstanz.

{{% /alert %}}
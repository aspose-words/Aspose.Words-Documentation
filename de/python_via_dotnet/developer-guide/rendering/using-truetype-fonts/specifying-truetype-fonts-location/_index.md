---
title: Geben Sie den Speicherort der TrueType-Schriftarten an
second_title: Aspose.Words für Python via .NET
articleTitle: Geben Sie den Speicherort der TrueType-Schriftarten an
linktitle: Geben Sie den Speicherort der TrueType-Schriftarten an
description: "Geben Sie verschiedene TrueType-Schriftartenquellen an: Systemordner, Benutzerquellen, Laden von Schriftarten aus einem Stream, einem Dateisystem oder Speicher mithilfe von Python."
type: docs
weight: 30
url: /de/python-net/specifying-truetype-fonts-location/
---

Dieses Thema beschreibt das Standardverhalten von Aspose.Words bei der Suche nach TrueType-Schriftarten, einschließlich betriebssystemspezifischer Unterschiede, und zeigt, wie Benutzerschriftartenquellen angegeben werden.

Die [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/)-Klasse wird verwendet, um verschiedene Schriftartquellen anzugeben. Es gibt mehrere Implementierungen der [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/)-Klasse:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Nachfolgend werden Implementierungsdetails für einige Klassen erläutert.

## Laden von Schriftarten aus dem System

Es gibt eine spezielle [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)-Klasse, die standardmäßig immer verwendet wird. Es stellt alle auf dem System installierten TrueType-Schriftarten dar. Daher ist es möglich, eine Quellenliste mit [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) und allen anderen erforderlichen Quellen zu erstellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

In [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ist standardmäßig eine einzelne Instanz der [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)-Klasse definiert. Auf verschiedenen Betriebssystemen können sich Schriftarten an unterschiedlichen Orten befinden. Allerdings ist die Verwendung einer [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)-Instanz für jedes Dokument keine optimale Lösung. In den meisten Fällen sollte die Verwendung von [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) ausreichen.

Instanzen pro Dokument werden nur dann benötigt, wenn unterschiedliche Schriftartquellen für unterschiedliche Dokumente verwendet werden müssen, was ein seltener Fall ist. Die Verwendung mehrerer [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)-Instanzen verringert die Leistung, da sie keinen gemeinsamen Cache haben.

### Wo Aspose.Words in Windows nach TrueType-Schriftarten sucht

In den meisten Fällen haben Windows-Benutzer keine nennenswerten Probleme mit fehlenden Schriftarten oder falschen Layouts. Normalerweise durchsucht Aspose.Words ein Dokument und ruft die Schriftartdaten erfolgreich aus dem Systemordner ab, wenn es auf den Link einer Schriftart stößt.

Unter Windows übernimmt Aspose.Words zunächst alle verfügbaren Schriftarten aus dem Ordner _%windir%\Fonts. Diese Einstellung wird in den meisten Fällen für Sie funktionieren. Sie geben nur dann Ihre eigenen Schriftartenordner an, wenn dies erforderlich ist. Aspose.Words für .NET sucht außerdem nach zusätzlichen Schriftarten, die im Registrierungsschlüssel *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* registriert sind. Darüber hinaus ermöglicht Windows 10 die Installation von Schriftarten für den aktuellen Benutzer. Schriftarten werden im Ordner *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* abgelegt und auch in der Registrierung *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* angegeben, wo Aspose.Words nach diesen Schriftarten sucht.

Wenn ein Dokument eingebettete Schriftarten enthält, kann Aspose.Words relevante Schriftartdaten aus dem Dokument lesen und diese zum Erstellen des Dokumentlayouts verwenden. Dokumente können auch Links zu Schriftarten enthalten, die sich nicht in den Systemordnern befinden. In diesem Fall treten die folgenden Szenarien auf:

– Benutzer können neue Schriftartquellen über die [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)-Klasse einrichten
- Aspose.Words kann versuchen, die fehlende Schriftart durch eine ähnliche zu ersetzen


### Schriftarten auf Nicht-Windows-Systemen

Aspose.Words sucht in den Systemschriftartenordnern nach den Schriftarten. Eine Liste dieser Ordner kann mit der [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/)-Methode angezeigt werden. Wenn keine unterstützten Schriftarten gefunden werden, verwendet Aspose.Words die integrierte Standardschriftart Fanwood.ttf.

Da die Schriftartmetriken von Windows- und Nicht-Windows-Betriebssystemen unterschiedlich sind, unternimmt Aspose.Words alles, um eine ähnliche Schriftart zu finden und ein dem Original ähnliches Layout zu erstellen. Dies ist jedoch nicht immer möglich. In diesen Fällen sollte die [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)-Klasse verwendet werden, um benutzerdefinierte Schriftarten oder Ersetzungsregeln hinzuzufügen.

#### Wo Aspose.Words in Linux nach TrueType-Schriftarten sucht

Verschiedene Linux-Distributionen können Schriftarten in unterschiedlichen Ordnern speichern. Aspose.Words sucht an mehreren Stellen nach Schriftarten. Standardmäßig sucht Aspose.Words an allen folgenden Speicherorten nach Schriftarten: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Dieses Standardverhalten funktioniert für die meisten Linux-Distributionen, es kann jedoch nicht garantiert werden, dass es immer funktioniert. In diesem Fall müssen Sie möglicherweise den Speicherort von true-Schriftarten explizit angeben. Dazu müssen Sie wissen, wo TrueType-Schriftarten in Ihrer Linux-Distribution installiert sind.

#### Wo Aspose.Words unter Mac OS X nach TrueType-Schriftarten sucht

Aspose.Words sucht nach Schriftarten im Ordner */Library/Fonts*, dem Standardspeicherort für TrueType-Schriftarten unter Mac OS Fall, wenn Sie es brauchen.

## Schriftarten aus Ordner laden

Wenn das verarbeitete Dokument Links zu Schriftarten enthält, die nicht im System vorhanden sind, Sie diese nicht zum Systemordner hinzufügen möchten oder keine Berechtigungen haben, ist es die beste Lösung, einen Ordner mit Ihren eigenen Schriftarten hinzuzufügen die [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/)-Methode. Dadurch kann die Systemquelle durch eine Benutzerquelle ersetzt werden. Aspose.Words sucht nicht mehr nach Schriftarten in der Registrierung oder im Windows\Font-Ordner, sondern sucht stattdessen nur noch nach Schriftarten in den angegebenen Ordnern. Die [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/)-Methode gibt die entsprechenden Werte zurück.

### Angeben eines oder mehrerer Schriftartenordner

Die Methoden [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) und [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) sind Abkürzungen zur [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/)-Methode mit einer oder mehreren [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)-Instanzen. Diese Methoden werden verwendet, um anzugeben, wo Aspose.Words nach Schriftarten suchen soll. Wenn ein Ordner nicht existiert oder nicht zugänglich ist, ignoriert Aspose.Words diesen Ordner einfach. Wenn alle Ordner, einschließlich Quellen für die Schriftartersetzung, ignoriert wurden, verwendet Aspose.Words standardmäßig die Schriftart Fanwood.

Das folgende Beispiel zeigt, wie Sie den Ordner oder die Quelle festlegen, die Aspose.Words anschließend verwendet, um beim Rendern oder Einbetten von Schriftarten nach TrueType-Schriftarten zu suchen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

Ein zusätzlicher boolescher Parameter steuert, ob Schriftarten rekursiv in allen Ordnern gescannt werden und somit alle untergeordneten Ordner eines bestimmten Ordners gescannt werden. Das folgende Beispiel zeigt, wie Sie Aspose.Words so einstellen, dass beim Rendern oder Einbetten von Schriftarten in mehreren Ordnern nach TrueType-Schriftarten gesucht wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

Beachten Sie die Prioritäten. Wenn es Schriftarten mit demselben Familiennamen und Stil in verschiedenen Schriftartquellen gibt, wählt Aspose.Words die Schriftart aus der Quelle mit einer höheren Priorität aus. Siehe die Beschreibung des Feldes "Priorität" unten.

Wenn Sie überhaupt keine Systemschriftarten verwenden möchten, können Sie diese mit Aspose.Words ignorieren und nur Ihre eigenen Schriftarten verwenden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Vorrangiges Eigentum

Die **Priorität**-Eigenschaft wird verwendet, wenn Schriftarten mit demselben Familiennamen und Stil in verschiedenen Schriftartquellen vorhanden sind. In diesem Fall wählt Aspose.Words die Schriftart aus der Quelle mit dem höheren Prioritätswert aus. Beispielsweise gibt es eine alte Version der Schriftart im Systemordner und der Kunde hat eine neue Version derselben Schriftart in einem benutzerdefinierten Ordner hinzugefügt.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Abrufen einer Liste der verfügbaren Schriftarten

Wenn Sie die Liste der verfügbaren Schriftarten erhalten möchten, die beispielsweise zum Rendern eines PDF-Dokuments verwendet werden können, können Sie die [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/)-Methode verwenden, wie im folgenden Codebeispiel gezeigt. Die [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/)-Klasse gibt Informationen über die physische Schriftart an, die der Aspose.Words-Schriftart-Engine zur Verfügung steht:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}

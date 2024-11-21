---
title: Geben Sie die Position der TrueType-Schriftarten in C++ an
second_title: Aspose.Words für C++
articleTitle: Geben Sie den Speicherort für TrueType-Schriftarten an
linktitle: Geben Sie den Speicherort für TrueType-Schriftarten an
description: "Geben Sie verschiedene TrueType-Schriftquellen an: Systemordner, Benutzerquellen, Laden von Schriftarten aus einem Stream, einem Dateisystem oder Speicher."
type: docs
weight: 30
url: /de/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

In diesem Thema wird das Standardverhalten von Aspose.Words beschrieben, wenn nach TrueType-Schriftarten gesucht wird, einschließlich betriebssystemspezifischer Unterschiede, und veranschaulicht, wie Benutzerschriftquellen angegeben werden.

Die Klasse [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) wird verwendet, um verschiedene Schriftquellen anzugeben. Es gibt verschiedene Implementierungen der Klasse **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Implementierungsdetails für einige Klassen werden unten erläutert.

## Schriftarten aus System {#loading-fonts-from-system} laden

Es gibt eine spezielle [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) -Klasse, die standardmäßig immer verwendet wird. Es repräsentiert alle TrueType Schriftarten, die auf dem System installiert sind. Daher ist es möglich, eine Quellenliste mit **SystemFontSource** und anderen erforderlichen Quellen zu erstellen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Eine einzelne Instanz der Klasse **SystemFontSource** ist standardmäßig in [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) definiert. Auf verschiedenen Betriebssystemen können sich Schriftarten an verschiedenen Orten befinden. Die Verwendung einer **FontSettings** -Instanz für jedes Dokument ist jedoch keine optimale Lösung. In den meisten Fällen sollte die Verwendung von [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) ausreichen.

Instanzen pro Dokument werden nur benötigt, wenn für verschiedene Dokumente unterschiedliche Schriftquellen verwendet werden müssen, was ein seltener Fall ist. Die Verwendung mehrerer **FontSettings**-Instanzen verringert die Leistung, da sie den Cache nicht gemeinsam nutzen.

### Wobei Aspose.Words auf Windows nach TrueType Schriftarten sucht

In den meisten Fällen haben Windows Benutzer keine nennenswerten Probleme mit fehlenden Schriftarten oder falschen Layouts. Normalerweise durchläuft Aspose.Words ein Dokument, und wenn es auf den Link einer Schriftart stößt, werden die Schriftartdaten erfolgreich aus dem Systemordner abgerufen.

Bei Windows entnimmt Aspose.Words zuerst alle verfügbaren Schriftarten aus dem Ordner _%windir%\Fonts. Diese Einstellung wird für Sie die meiste Zeit funktionieren. Sie geben nur bei Bedarf Ihre eigenen Schriftartenordner an. Aspose.Words sucht auch nach zusätzlichen Schriftarten, die im Registrierungsschlüssel HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts registriert sind. Außerdem ermöglicht Windows 10 die Installation von Schriftarten für den aktuellen Benutzer. Schriftarten werden im Ordner %userprofile%\AppData\Local\Microsoft\Windows\Fonts abgelegt und auch in der Registrierung HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts angegeben, wo Aspose.Words nach diesen Schriftarten sucht.

Wenn ein Dokument eingebettete Schriftarten enthält, kann Aspose.Words relevante Schriftdaten aus dem Dokument lesen und zum Erstellen des Layouts des Dokuments verwenden. Dokumente können auch Links zu Schriftarten enthalten, die sich nicht in den Systemordnern befinden. In diesem Fall kommen die folgenden Szenarien zum Tragen:

- Benutzer können neue Schriftquellen über die Klasse **FontSettings** einrichten
- Aspose.Words kann versuchen, die fehlende Schriftart durch eine ähnliche zu ersetzen

{{% alert color="primary" %}}

Aspose.Words-Rendering auf einem Server funktioniert normalerweise nicht mit einer ASP.NET-Anwendung, die für die Ausführung unter der mittleren Vertrauensstufe konfiguriert ist, da sie den Zugriff auf die Registrierung verbietet und den Zugriff auf das Dateisystem einschränkt.

{{% /alert %}}

### Schriftarten auf Nicht-Windows-Systemen

Aspose.Words sucht nach den Schriftarten in den Systemschriftartenordnern. Eine Liste dieser Ordner kann mit der Methode [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/) angezeigt werden. Wenn keine unterstützten Schriftarten gefunden werden, verwendet Aspose.Words die integrierte Standardschrift Fanwood.ttf.

Da die Schriftmetriken von Windows und Nicht- Windows OS unterschiedlich sind, unternimmt Aspose.Words alles, um eine ähnliche Schriftart zu finden und ein Layout zu erstellen, das dem Original ähnelt. Dies ist jedoch nicht immer möglich. In diesen Fällen sollte die Klasse **FontSettings** verwendet werden, um benutzerdefinierte Schriftarten oder Ersetzungsregeln hinzuzufügen.

#### Wobei Aspose.Words auf Linux nach TrueType Schriftarten sucht

Verschiedene Linux-Distributionen können Schriftarten in verschiedenen Ordnern speichern. Aspose.Words sucht an mehreren Stellen nach Schriftarten. Standardmäßig sucht Aspose.Words an allen folgenden Speicherorten nach den Schriftarten: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Dieses Standardverhalten funktioniert für die meisten Linux-Distributionen, es ist jedoch nicht garantiert, dass es immer funktioniert. In diesem Fall müssen Sie möglicherweise den Speicherort von True Type-Schriftarten explizit angeben. Dazu müssen Sie wissen, wo TrueType -Schriftarten auf Ihrer Linux -Distribution installiert sind.

#### Wobei Aspose.Words auf Mac OS X nach TrueType Schriftarten sucht

Aspose.Words sucht nach Schriftarten im Ordner `/Library/Fonts`, dem Standardspeicherort für TrueType-Schriftarten auf Mac OS X. Während diese Einstellung für Sie meistens funktioniert, müssen Sie möglicherweise bei Bedarf Ihre eigenen Schriftartenordner angeben.

#### TrueType Schriftarten auf Android

Bei Android ist der Schriftarten-Workflow in der Schriftklasse gekapselt.
Es gibt fünf Arten von Schriften, jede Schrift repräsentiert eine Gruppe ähnlicher Schriftfamilien:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Zum Beispiel nach Android's [Schriftart.XML](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) konfigurationsdatei, "times" gehört zur "Serif" -Familie, also NotoSerif -Regulär.ttf wird verwendet, wenn "Zeiten" angefordert werden:

**Schriftart.XML**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Um nach ähnlichen Schriftarten zu suchen, werden die zuvor beschriebenen Strategien verwendet.

Zusätzlich zu ihnen hat Aspose.Words eine eigene Liste von Ersetzungen für die Android -Plattform.

Angenommen, das Dokument enthält die Schriftart PMingLi U-ExTB. Zunächst sucht Aspose.Words nach der erforderlichen Schriftart in den Systemquellen.

Die Standardliste der Ordner für Android-Schriftarten lautet:

- /Systemschriften
- / system / schriftart
- / daten / Schriftarten

Die Aspose.Words durchsucht benutzerdefinierte Quellen, die mit der Methode festgelegt wurden:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

Falls eine explizite Ersetzung angegeben wurde, ersetzt Aspose.Words die fehlende Schriftart durch den Vorschlag des Benutzers:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Wenn keine der Regeln funktioniert hat, Aspose.Words überprüfen Sie die interne Ersetzungstabelle. Wenn die Tabelle Informationen über eine gute Passform enthält, wird die Schriftart ersetzt. In unserem Fall wählt Aspose.Words `Typeface.SERIF`. Wenn die Tabelle jedoch nichts über die angeforderte Schriftart weiß, nimmt Aspose.Words eine Schriftart auf, die auf speziellen MS -Wortregeln oder der nächstgelegenen Entfernung im Bereich basiert.

#### TrueType Schriftarten auf .NET Core und Xamarin

Für .NET Core und Xamarin gilt die gleiche Regel wie für Aspose.Words für Java Version. Standardmäßig sind alle Systemschriftarten der Plattform verfügbar, auf der die Anwendung ausgeführt wird.
Die Liste der Ordner, in denen die Suche durchgeführt wird, kann durch Aufrufen der Methode gefunden werden:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Schriftarten aus Ordner {#loading-fonts-from-folder} laden

Wenn das zu verarbeitende Dokument Links zu Schriftarten enthält, die sich nicht auf dem System befinden, oder Sie sie nicht zum Systemordner hinzufügen möchten oder Ihnen die Berechtigungen fehlen, besteht die beste Lösung darin, einen Ordner mit hinzuzufügen Ihre eigenen Schriftarten mit der Methode [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Dies ermöglicht das Ersetzen der Systemquelle durch eine Benutzerquelle. Aspose.Words sucht nicht mehr nach Schriftarten in der Registrierung oder im Ordner Windows\Font und sucht stattdessen nur nach Schriftarten innerhalb der angegebenen Ordner. Die Methode [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) gibt die entsprechenden Werte zurück.

### Geben Sie einen oder mehrere Schriftartordner an

Die Methoden [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) und [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) sind Verknüpfungen zur Methode **SetFontSources** mit einer oder mehreren Instanzen von [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Diese Methoden werden verwendet, um anzugeben, wo Aspose.Words nach Schriftarten suchen soll. Wenn ein Ordner nicht existiert oder nicht zugänglich ist, ignoriert Aspose.Words diesen Ordner einfach. Wenn alle Ordner, einschließlich der Quellen für die Schriftartenersetzung, ignoriert wurden, verwendet Aspose.Words standardmäßig die Schriftart Fanwood.

Das folgende Beispiel zeigt, wie Sie den Ordner oder die Quelle festlegen, die Aspose.Words anschließend verwendet, um beim Rendern oder Einbetten von Schriftarten nach TrueType-Schriftarten zu suchen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Ein zusätzlicher boolescher Parameter steuert, ob Schriftarten rekursiv durch alle Ordner gescannt werden, also alle untergeordneten Ordner eines bestimmten Ordners. Das folgende Beispiel zeigt, wie Sie Aspose.Words so einstellen, dass beim Rendern oder Einbetten von Schriftarten in mehreren Ordnern nach TrueType-Schriftarten gesucht wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Beachten Sie die Prioritäten. Wenn Schriftarten mit demselben Familiennamen und Stil in verschiedenen Schriftquellen vorhanden sind, wählt Aspose.Words die Schriftart aus der Quelle mit einer höheren Priorität aus. Siehe die Beschreibung des Felds "Priorität" unten.

Wenn Sie Systemschriftarten überhaupt nicht verwenden möchten, können Sie sie mit Aspose.Words ignorieren und nur Ihre eigenen Schriftarten verwenden:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Vorrangiges Eigentum

Die Eigenschaft [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) wird verwendet, wenn Schriftarten mit demselben Familiennamen und Stil in verschiedenen Schriftquellen vorhanden sind. In diesem Fall wählt Aspose.Words die Schriftart aus der Quelle mit dem höheren Prioritätswert aus. Beispielsweise befindet sich eine alte Version der Schriftart im Systemordner, und der Kunde hat eine neue Version derselben Schriftart in einem benutzerdefinierten Ordner hinzugefügt.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Schriftarten aus Stream laden {#loading-fonts-from-stream}

Aspose.Words stellt die Klasse [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource) bereit, mit der Schriftarten aus dem Stream geladen werden können. Um die Stream-Schriftartquelle zu verwenden, muss ein Benutzer eine abgeleitete Klasse aus **StreamFontSource** erstellen und eine Implementierung der [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/) -Methode bereitstellen. Die **OpenFontDataStream** -Methode könnte mehrmals aufgerufen werden. Zum ersten Mal wird es aufgerufen, wenn Aspose.Words die bereitgestellten Schriftquellen durchsucht, um eine Liste der verfügbaren Schriftarten zu erhalten. Später kann es aufgerufen werden, wenn die Schriftart im Dokument verwendet wird, um die Schriftdaten zu analysieren und die Schriftdaten in einige Ausgabeformate einzubetten. **StreamFontSource** kann nützlich sein, da die Schriftdaten nur dann geladen werden können, wenn sie benötigt werden, und nicht für die gesamte Lebensdauer von [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) im Speicher gespeichert werden.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Speichern und Laden eines Schriftsuchcaches

Bei der erstmaligen Suche nach einer Schriftart iteriert Aspose.Words über die vom Benutzer angegebenen Schriftquellen und bildet einen Schriftsuchcache basierend auf Daten aus diesen Quellen. Daher sammelt der Cache Informationen zu den verfügbaren Schriftarten: Schriftfamilie, Stil, vollständiger Schriftname und andere. Bei nachfolgenden Aufrufen sucht Aspose.Words nach Informationen über die gewünschte Schriftart anhand ihres Namens im Schriftsuchcache und analysiert anschließend die angegebenen Dateien, um die Schriftart zu verwenden.

Das Verfahren zum Parsen aller verfügbaren Schriftdateien zum Initialisieren des Caches ist ziemlich zeitaufwändig. Mit Aspose.Words können Sie den Cache mit der [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) -Methode speichern und laden, um das Leistungsproblem zu lösen. Das heißt, der Benutzer kann einen zuvor gespeicherten Cache aus einer Datei laden und den Schritt des Parsens aller verfügbaren Schriftdateien überspringen.

{{% alert color="primary" %}}

Verwenden Sie dieselbe **SaveSearchCache**-Methode, um den Cache zu aktualisieren.

{{% /alert %}}

{{% alert color="primary" %}}

Der Cache eignet sich auch für andere Szenarien, wenn Schriftarten über das Netzwerk geladen werden. Oder für Szenarien, in denen es keine Möglichkeit gibt, eine `FontSettings` -Instanz mit einem geladenen Cache zu speichern.

{{% /alert %}}

## Liste der verfügbaren Schriftarten anzeigen {#get-a-list-of-available-fonts}

Wenn Sie die Liste der verfügbaren Schriftarten abrufen möchten, mit denen beispielsweise ein PDF -Dokument gerendert werden kann, können Sie die [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/) -Methode verwenden, wie im folgenden Codebeispiel gezeigt. Die Klasse [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) gibt Informationen über die physische Schriftart an, die für die Schriftartengine Aspose.Words verfügbar ist:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}

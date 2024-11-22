---
title: Geben Sie den Speicherort für TrueType-Schriftarten in C# an
second_title: Aspose.Words für .NET
articleTitle: Geben Sie den Speicherort der TrueType-Schriftarten an
linktitle: Geben Sie den Speicherort der TrueType-Schriftarten an
description: "Geben Sie verschiedene TrueType-Schriftartenquellen an: Systemordner, Benutzerquellen, Laden von Schriftarten aus einem Stream, einem Dateisystem oder Speicher mithilfe von C#."
type: docs
weight: 30
url: /de/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Dieses Thema beschreibt das Standardverhalten von Aspose.Words bei der Suche nach TrueType-Schriftarten, einschließlich betriebssystemspezifischer Unterschiede, und zeigt, wie Benutzerschriftartenquellen angegeben werden.

Die [FontSourceBase](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsourcebase/)-Klasse wird verwendet, um verschiedene Schriftartquellen anzugeben. Es gibt mehrere Implementierungen der **FontSourceBase**-Klasse:

- [SystemFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/memoryfontsource)

Nachfolgend werden Implementierungsdetails für einige Klassen erläutert.

## Laden Sie Schriftarten aus System {#loading-fonts-from-system}

Es gibt eine spezielle [SystemFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/systemfontsource/)-Klasse, die standardmäßig immer verwendet wird. Es stellt alle auf dem System installierten TrueType-Schriftarten dar. Daher ist es möglich, eine Quellenliste mit **SystemFontSource** und allen anderen erforderlichen Quellen zu erstellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

In [FontSettings](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/) ist standardmäßig eine einzelne Instanz der **SystemFontSource**-Klasse definiert. Auf verschiedenen Betriebssystemen können sich Schriftarten an unterschiedlichen Orten befinden. Die Verwendung einer **FontSettings**-Instanz für jedes Dokument ist jedoch keine optimale Lösung. In den meisten Fällen sollte die Verwendung von [DefaultInstance](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/defaultinstance/) ausreichen.

Instanzen pro Dokument werden nur dann benötigt, wenn unterschiedliche Schriftartquellen für unterschiedliche Dokumente verwendet werden müssen, was ein seltener Fall ist. Die Verwendung mehrerer **FontSettings**-Instanzen verringert die Leistung, da sie keinen gemeinsamen Cache haben.

### Wo Aspose.Words in Windows nach TrueType-Schriftarten sucht

In den meisten Fällen haben Windows-Benutzer keine nennenswerten Probleme mit fehlenden Schriftarten oder falschen Layouts. Normalerweise durchsucht Aspose.Words ein Dokument und ruft die Schriftartdaten erfolgreich aus dem Systemordner ab, wenn es auf den Link einer Schriftart stößt.

Unter Windows übernimmt Aspose.Words zunächst alle verfügbaren Schriftarten aus dem Ordner _%windir%\Fonts. Diese Einstellung wird in den meisten Fällen für Sie funktionieren. Sie geben nur dann Ihre eigenen Schriftartenordner an, wenn dies erforderlich ist. Aspose.Words für .NET sucht außerdem nach zusätzlichen Schriftarten, die im Registrierungsschlüssel HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts registriert sind. Darüber hinaus ermöglicht Windows 10 die Installation von Schriftarten für den aktuellen Benutzer. Schriftarten werden im Ordner %userprofile%\AppData\Local\Microsoft\Windows\Fonts abgelegt und auch in der Registrierung HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts angegeben, wo Aspose.Words nach diesen Schriftarten sucht.

Wenn ein Dokument eingebettete Schriftarten enthält, kann Aspose.Words relevante Schriftartdaten aus dem Dokument lesen und diese zum Erstellen des Dokumentlayouts verwenden. Dokumente können auch Links zu Schriftarten enthalten, die sich nicht in den Systemordnern befinden. In diesem Fall treten die folgenden Szenarien auf:

– Benutzer können neue Schriftartquellen über die **FontSettings**-Klasse einrichten
- Aspose.Words kann versuchen, die fehlende Schriftart durch eine ähnliche zu ersetzen

{{% alert color="primary" %}}

Das Aspose.Words-Rendering auf einem Server funktioniert normalerweise nicht mit einer ASP.NET-Anwendung, die für die Ausführung unter der mittleren Vertrauensstufe konfiguriert ist, da sie den Zugriff auf die Registrierung verbietet und den Zugriff auf das Dateisystem einschränkt.

{{% /alert %}}

### Schriftarten auf Nicht-Windows-Systemen

Aspose.Words sucht in den Systemschriftartenordnern nach den Schriftarten. Eine Liste dieser Ordner kann mit der [GetSystemFontFolders](https://reference.aspose.com/words/de/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/)-Methode angezeigt werden. Wenn keine unterstützten Schriftarten gefunden werden, verwendet Aspose.Words die integrierte Standardschriftart Fanwood.ttf.

Da die Schriftartenmetriken von Windows- und Nicht-Windows-Betriebssystemen unterschiedlich sind, unternimmt Aspose.Words alles, um eine ähnliche Schriftart zu finden und ein dem Original ähnliches Layout zu erstellen. Dies ist jedoch nicht immer möglich. In diesen Fällen sollte die **FontSettings**-Klasse verwendet werden, um benutzerdefinierte Schriftarten oder Ersetzungsregeln hinzuzufügen.

#### Wo Aspose.Words in Linux nach TrueType-Schriftarten sucht

Verschiedene Linux-Distributionen können Schriftarten in unterschiedlichen Ordnern speichern. Aspose.Words sucht an mehreren Stellen nach Schriftarten. Standardmäßig sucht Aspose.Words an allen folgenden Speicherorten nach Schriftarten: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`Dieses Standardverhalten funktioniert für die meisten Linux-Distributionen, es ist jedoch nicht garantiert, dass es jederzeit funktioniert. In diesem Fall müssen Sie möglicherweise den Speicherort der true-Schriftarten explizit angeben. Dazu müssen Sie wissen, wo TrueType-Schriftarten in Ihrer Linux-Distribution installiert sind.

#### Wo Aspose.Words unter Mac OS X nach TrueType-Schriftarten sucht

Aspose.Words sucht nach Schriftarten im Ordner /Library/Fonts, dem Standardspeicherort für TrueType-Schriftarten unter Mac OS du brauchst.

## Laden Sie Schriftarten aus dem Ordner {#loading-fonts-from-folder}

Wenn das verarbeitete Dokument Links zu Schriftarten enthält, die nicht im System vorhanden sind, Sie diese nicht zum Systemordner hinzufügen möchten oder keine Berechtigungen haben, ist es die beste Lösung, einen Ordner mit Ihren eigenen Schriftarten hinzuzufügen die [SetFontsSources](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/setfontssources/)-Methode. Dadurch kann die Systemquelle durch eine Benutzerquelle ersetzt werden. Aspose.Words sucht nicht mehr nach Schriftarten in der Registrierung oder im Windows\Font-Ordner, sondern sucht stattdessen nur noch nach Schriftarten in den angegebenen Ordnern. Die [GetFontSources](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/getfontssources/)-Methode gibt die entsprechenden Werte zurück.

### Geben Sie einen oder mehrere Schriftartenordner an

Die Methoden [SetFontsFolder](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/setfontsfolder/) und [SetFontsFolders](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/setfontsfolder/s) sind Abkürzungen zur **SetFontSources**-Methode mit einer oder mehreren [FolderFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/folderfontsource/)-Instanzen. Diese Methoden werden verwendet, um anzugeben, wo Aspose.Words nach Schriftarten suchen soll. Wenn ein Ordner nicht existiert oder nicht zugänglich ist, ignoriert Aspose.Words diesen Ordner einfach. Wenn alle Ordner, einschließlich Quellen für die Schriftartersetzung, ignoriert wurden, verwendet Aspose.Words standardmäßig die Schriftart Fanwood.

Das folgende Beispiel zeigt, wie Sie den Ordner oder die Quelle festlegen, die Aspose.Words anschließend verwendet, um beim Rendern oder Einbetten von Schriftarten nach TrueType-Schriftarten zu suchen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

Ein zusätzlicher boolescher Parameter steuert, ob Schriftarten rekursiv in allen Ordnern gescannt werden und somit alle untergeordneten Ordner eines bestimmten Ordners gescannt werden. Das folgende Beispiel zeigt, wie Sie Aspose.Words so einstellen, dass beim Rendern oder Einbetten von Schriftarten in mehreren Ordnern nach TrueType-Schriftarten gesucht wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

Beachten Sie die Prioritäten. Wenn es Schriftarten mit demselben Familiennamen und Stil in verschiedenen Schriftartquellen gibt, wählt Aspose.Words die Schriftart aus der Quelle mit einer höheren Priorität aus. Siehe die Beschreibung des Feldes "Priorität" unten.

Wenn Sie überhaupt keine Systemschriftarten verwenden möchten, können Sie diese mit Aspose.Words ignorieren und nur Ihre eigenen Schriftarten verwenden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Vorrangiges Eigentum

Die [Priority](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsourcebase/priority/)-Eigenschaft wird verwendet, wenn Schriftarten mit demselben Familiennamen und Stil in verschiedenen Schriftartquellen vorhanden sind. In diesem Fall wählt Aspose.Words die Schriftart aus der Quelle mit dem höheren Prioritätswert aus. Beispielsweise gibt es eine alte Version der Schriftart im Systemordner und der Kunde hat eine neue Version derselben Schriftart in einem benutzerdefinierten Ordner hinzugefügt.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Laden Sie Schriftarten aus Stream {#loading-fonts-from-stream}

Aspose.Words stellt die [StreamFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/streamfontsource/)-Klasse bereit, die das Laden von Schriftarten aus dem Stream ermöglicht. Um die Stream-Schriftartquelle verwenden zu können, muss ein Benutzer eine abgeleitete Klasse aus **StreamFontSource** erstellen und eine Implementierung der [OpenFontDataStream](https://reference.aspose.com/words/de/net/aspose.words.fonts/streamfontsource/openfontdatastream/)-Methode bereitstellen. Die **OpenFontDataStream**-Methode könnte mehrmals aufgerufen werden. Zum ersten Mal wird es aufgerufen, wenn Aspose.Words die bereitgestellten Schriftartenquellen durchsucht, um eine Liste der verfügbaren Schriftarten zu erhalten. Später kann es aufgerufen werden, wenn die Schriftart im Dokument verwendet wird, um die Schriftartdaten zu analysieren und die Schriftartdaten in einige Ausgabeformate einzubetten. **StreamFontSource** kann nützlich sein, da es das Laden der Schriftartdaten nur dann ermöglicht, wenn sie benötigt werden, und nicht, sie während der [Schriftarteinstellungen](https://fontsettings/)-Lebensdauer im Speicher zu speichern.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** ist eine Alternative zu [MemoryFontSource](https://reference.aspose.com/words/de/net/aspose.words.fonts/memoryfontsource/), da es immer möglich ist, einen Stream in den Speicher zu laden und an **MemoryFontSource** zu übergeben. Der Unterschied besteht darin, dass das **MemoryFontSource** ständig im Speicher gespeichert wird und das **StreamFontSource** bei Bedarf geladen und sofort entsorgt wird. Es kann jedoch, wie oben beschrieben, mehrmals geladen werden. In einigen Fällen ist **MemoryFontSource** vorzuziehen, in anderen **StreamFontSource**.

## Speichern und laden Sie einen Cache für die Schriftartensuche

Bei der ersten Suche nach einer Schriftart durchläuft Aspose.Words die vom Benutzer angegebenen Schriftartenquellen und erstellt einen Schriftarten-Suchcache basierend auf Daten aus diesen Quellen. Daher sammelt der Cache Informationen über die verfügbaren Schriftarten: Schriftfamilie, Stil, vollständiger Schriftname und andere. Bei nachfolgenden Aufrufen sucht Aspose.Words im Schriftarten-Suchcache nach Informationen über die gewünschte Schriftart anhand ihres Namens und analysiert anschließend die angegebenen Dateien, um die Schriftart zu verwenden.

Das Verfahren zum Parsen aller verfügbaren Schriftartdateien zur Initialisierung des Caches ist recht zeitaufwändig. Mit Aspose.Words können Sie den Cache mithilfe der [SaveSearchCache](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/savesearchcache/)-Methode speichern und laden, um das Leistungsproblem zu lösen. Das heißt, der Benutzer kann einen zuvor gespeicherten Cache aus einer Datei laden und den Schritt des Parsens aller verfügbaren Schriftartdateien überspringen.

{{% alert color="primary" %}}

Verwenden Sie dieselbe **SaveSearchCache**-Methode, um den Cache zu aktualisieren.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie Schriftartquellen vorbereiten und im Voraus einen Cache für die Schriftartensuche generieren:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Sie Schriftartquellen festlegen und den Suchcache laden, bevor Dokumente verarbeitet werden:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Der Schriftarten-Suchcache eignet sich aufgrund einer Reihe von Einschränkungen hervorragend für die Aspose.Words-Integration in AWS-Lambda. Zum Beispiel auf die Größe des Hauptcontainers und damit auf die Anzahl der Schriftarten.

Der Cache eignet sich auch für andere Szenarien, wenn Schriftarten über das Netzwerk geladen werden. Oder für Szenarien, in denen es keine Möglichkeit gibt, eine `FontSettings`-Instanz mit geladenem Cache zu speichern.

{{% /alert %}}

## Holen Sie sich eine Liste der verfügbaren {#get-a-list-of-available-fonts}-Schriftarten

Wenn Sie die Liste der verfügbaren Schriftarten erhalten möchten, die beispielsweise zum Rendern eines PDF-Dokuments verwendet werden können, können Sie die [GetAvailableFonts](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsourcebase/getavailablefonts/)-Methode verwenden, wie im folgenden Codebeispiel gezeigt. Die [PhysicalFontInfo](https://reference.aspose.com/words/de/net/aspose.words.fonts/physicalfontinfo/)-Klasse gibt Informationen über die physische Schriftart an, die der Aspose.Words-Schriftart-Engine zur Verfügung steht:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}

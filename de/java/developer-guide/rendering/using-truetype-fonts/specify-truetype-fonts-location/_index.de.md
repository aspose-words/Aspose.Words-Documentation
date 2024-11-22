---
title: Wahre Angabe Typ Fonts Standort in Java
second_title: Aspose.Words für Java
articleTitle: Wahre Angabe Typ Fonts Standort
linktitle: Wahre Angabe Typ Fonts Standort
description: "Geben Sie verschiedene Wahr Geben Sie Schriftquellen ein: Systemordner, Benutzerquellen, Laden von Schriftarten aus einem Stream, einem Dateisystem oder Speicher mit Java."
type: docs
weight: 30
url: /de/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Dieses Thema beschreibt das Standardverhalten von Aspose.Words wenn es nach TrueType-Schriften sucht, einschließlich Betriebssystem-spezifische Unterschiede, und zeigt, wie man Benutzer-Schriftquellen angibt.

Die [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) Klasse wird verwendet, um verschiedene Schriftquellen anzugeben. Es gibt mehrere Implementierungen der **FontSourceBase** Klasse:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Im Folgenden werden Ausführungsdetails für einige Klassen erläutert.

## Schriftarten aus dem System laden {#loading-fonts-from-system}

Es gibt ein besonderes [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) Klasse, die immer standardmäßig verwendet wird. Es stellt alle auf dem System installierten TrueType-Schriften dar. Daher ist es möglich, eine Quellliste mit **SystemFontSource** und alle anderen erforderlichen Quellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Eine einzige Instanz der **SystemFontSource** Klasse wird standardmäßig definiert [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Auf verschiedenen Betriebssystemen können Schriftarten an verschiedenen Orten liegen. jedoch mit einer **FontSettings** Ein Beispiel für jedes Dokument ist keine optimale Lösung. In den meisten Fällen unter Verwendung [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) sollte genug sein.

Per-Dokumentationsinstanzen werden nur benötigt, wenn für verschiedene Dokumente unterschiedliche Schriftquellen verwendet werden müssen, was ein seltener Fall ist. Verwenden Sie mehrere **FontSettings** Instanzen verringert die Leistung, weil sie den Cache nicht teilen.

### Ort Aspose.Words Sieht nach TrueType Fonts auf Windows

In den meisten Fällen Windows Benutzer haben keine erheblichen Probleme mit verpassten Schriften oder falschen Layouts. Typischerweise, Aspose.Words geht durch ein Dokument, und wenn es auf den Link einer Schrift, es erfolgreich holt die Schriftdaten aus dem Systemordner.

Auf Windows Aspose.Words zuerst alle verfügbaren Schriftarten aus dem _%windir%\Fonts Ordner. Diese Einstellung wird für Sie die meiste Zeit arbeiten. Sie geben nur Ihre eigenen Fonts-Ordner an, wenn Sie müssen. Aspose.Words sucht auch nach zusätzlichen Schriftarten, die in der HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts Registrierungsschlüssel. Außerdem, Windows 10 ermöglicht die Installation von Schriftarten für den aktuellen Benutzer. Schriften werden in die %userprofile%\AppData\Local\Microsoft\Windows\Fonts Ordner und auch in der HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts Registrierung, wo Aspose.Words wird nach diesen Schriften suchen.

Wenn ein Dokument eingebettete Schriften enthält, Aspose.Words kann relevante Schriftdaten aus dem Dokument lesen und verwenden, um das Layout des Dokuments zu erstellen. Dokumente können auch Links zu Schriften enthalten, die sich nicht in den Systemordnern befinden, wobei folgende Szenarien funktionieren:

- Benutzer können durch die **FontSettings** Klasse
- Ja. Aspose.Words kann versuchen, die verpasste Schrift durch eine ähnliche zu ersetzen

### Schriftarten auf Non-Windows Systeme

Aspose.Words wird nach den Schriften in den System-Font-Ordnern suchen. Eine Liste dieser Ordner kann von der [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) Methode. Wenn keine unterstützten Schriftarten gefunden werden, Aspose.Words wird die eingebaute Standardschrift Fanwood.tf verwenden.

Da die Schriftmetriken Windows und nichtWindows Betriebssysteme sind anders, Aspose.Words macht alles möglich, um eine ähnliche Schrift zu finden und ein Layout ähnlich dem Original zu erstellen. Dies ist jedoch nicht immer möglich. In diesen Fällen **FontSettings** class sollte verwendet werden, um benutzerdefinierte Schriftarten oder Substitutionsregeln hinzuzufügen.

#### Ort Aspose.Words Sieht nach TrueType Fonts auf Linux

Verschiedene Linux Distributionen können Schriftarten in verschiedenen Ordnern speichern. Aspose.Words sucht nach Schriftarten an mehreren Orten. Standardmäßig, Aspose.Words sucht nach den Schriften in allen folgenden Orten: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts` Dieses Standardverhalten wird für die meisten Linux Distributionen, aber es ist nicht garantiert, die ganze Zeit zu arbeiten, in diesem Fall müssen Sie den Standort der true Schriftarten explizit eingeben. Um dies zu tun, müssen Sie wissen, wo TrueType Fonts auf Ihrem installiert sind Linux Verteilung.

#### Ort Aspose.Words Sucht nach TrueType Fonts auf Mac OS X

Aspose.Words sucht nach Schriftarten im /Library/Fonts-Ordner, der der Standard-Standort für TrueType Schriftarten auf Mac OS X ist. Während diese Einstellung für Sie die meiste Zeit funktioniert, müssen Sie ggf. Ihre eigenen Fonts Ordner in dem Fall angeben, wenn Sie müssen.

#### TrueType Fonts auf Android

Auf Android, Schriftarten Workflow wird in der Typeface Klasse verkapselt.
Es gibt fünf Arten von Schriftarten, jede Schriftart stellt eine Gruppe ähnlicher Schriftfamilien dar:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Zum Beispiel, nach Android" [Schriften.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config-Datei, "Zeiten" gehört zu "serif" Familie, so NotoSerif-Regular.tf wird verwendet, wenn "Zeiten" angefordert wird:

**Schriften.xml**

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

Zur Suche nach ähnlichen Schriftarten werden die zuvor beschriebenen Strategien verwendet

Zusätzlich zu ihnen, Aspose.Words hat eine eigene Liste von Ersatz für die Android Plattform.

Sagen wir, das Dokument enthält zuerst die PMingLiU-ExtB Schriftart, Aspose.Words sucht nach der gewünschten Schrift innerhalb der Systemquellen.

Die Standardliste Android Die Ordner der Schriftart sind:

- /system/fonts
- /system/font
- /data/fonts

Die Aspose.Words durch benutzerdefinierte Quellen, die mit der Methode eingestellt wurden:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Falls ein ausdrücklicher Ersatz angegeben wurde, Aspose.Words ersetzt die fehlende Schrift durch den Vorschlag des Benutzers:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Wenn keine der Regeln funktionieren, Aspose.Words Überprüfen Sie die interne Ersatztabelle. Wenn die Tabelle Informationen über eine gute Passform enthält, dann wird die Schrift ersetzt. In unserem Fall Aspose.Words wird ausgewählt `Typeface.SERIF`. Aber wenn die Tabelle nichts über die angeforderte Schrift weiß, dann Aspose.Words nimmt eine Schriftart auf Basis spezieller MS Word-Regeln oder der engsten Distanz in Panose Raum.

#### TrueType Fonts auf .NET Core und Xamarin

Für .NET Core und Xamarin die gleiche Regel gilt wie Aspose.Words für Java Version. Standardmäßig sind alle Systemarten der Plattform, auf der die Anwendung läuft, verfügbar.
Die Liste der Ordner, in denen die Suche durchgeführt wird, finden Sie unter dem Aufruf der Methode:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Schriftarten aus dem Ordner laden {#loading-fonts-from-folder}

Wenn das zu bearbeitende Dokument Links zu Schriften enthält, die nicht auf dem System sind, oder Sie wollen sie nicht in den Systemordner hinzufügen, oder Sie haben keine Berechtigungen, dann wäre die beste Lösung, einen Ordner mit Ihren eigenen Schriften mit der `SetFontsSources` Methode. Dadurch kann die Systemquelle durch eine Benutzerquelle ersetzt werden. Aspose.Words in der Registrierung keine Schriftarten mehr suchen oder Windows\Font Ordner und stattdessen nur für Schriftarten innerhalb des angegebenen Ordners scannen. Die `GetFontSources` Das Verfahren wird die entsprechenden Werte zurückgeben.

### Geben Sie ein oder mehrere Schriftordner an

Die [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) und SetFontsFolders Methoden sind Verknüpfungen zu den **SetFontSources** Verfahren mit einem oder mehreren [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) Fälle. Diese Methoden werden verwendet, um anzugeben, wo Aspose.Words sollte nach Schriftarten suchen. Wenn ein Ordner nicht existiert oder nicht zugänglich ist, Aspose.Words ignoriert diesen Ordner. Wenn alle Ordner, einschließlich Quellen für die Schriftsubstitution, ignoriert wurden, Aspose.Words wird Fanwood-Schrift als Standard verwenden.

Das folgende Beispiel zeigt, wie man den Ordner oder die Quelle einstellt, die Aspose.Words wird dann verwenden, um TrueType Schriftarten beim Rendern oder Einbetten von Schriftarten zu suchen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Ein extra Boolean-Parameter steuert, ob Schriften rekursiv durch alle Ordner gescannt werden und scannt daher alle Kinderordner eines bestimmten Ordners. Das folgende Beispiel zeigt, wie man Aspose.Words in mehreren Ordnern für TrueType Schriftarten beim Rendern oder Einbetten von Schriftarten zu suchen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Beachten Sie die Prioritäten. Wenn es Schriftarten mit dem gleichen Familiennamen und Stil in verschiedenen Schriftquellen gibt, dann Aspose.Words wird die Schrift aus der Quelle mit einer höheren Priorität auswählen. Siehe unten die Beschreibung des Feldes "Priority".

{{% /alert %}}

Wenn Sie überhaupt keine Systemfonts verwenden möchten, Aspose.Words Sie können sie ignorieren und Ihre eigenen Schriftarten nur verwenden:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Vorrangiges Eigentum

Die [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) Eigenschaft wird verwendet, wenn es Schriftarten mit dem gleichen Familiennamen und Stil in verschiedenen Schriftquellen. In diesem Fall Aspose.Words wählt die Schrift aus der Quelle mit dem höheren Prioritätswert. Zum Beispiel gibt es eine alte Version der Schrift auf dem Systemordner und der Kunde hat eine neue Version derselben Schrift in einem benutzerdefinierten Ordner hinzugefügt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Fonts aus Stream laden {#loading-fonts-from-stream}

Aspose.Words bietet [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) Klasse, die das Laden von Schriftarten aus dem Stream erlaubt. Um die Stream-Schriftenquelle zu verwenden, muss ein Benutzer eine abgeleitete Klasse von **StreamFontSource** und eine Umsetzung der [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) Methode. Die **OpenFontDataStream** Methode könnte mehrmals aufgerufen werden. Zum ersten Mal wird es aufgerufen, wenn Aspose.Words scannt die bereitgestellten Schriftquellen, um eine Liste der verfügbaren Schriftarten zu erhalten. Später kann es aufgerufen werden, wenn die Schrift im Dokument verwendet wird, um die Schriftdaten zu parsieren und die Schriftdaten in einige Ausgabeformate einzubetten. **StreamFontSource** kann nützlich sein, weil es erlaubt, die Schriftdaten nur dann zu laden, wenn es erforderlich ist, und nicht in den Speicher für die `FontSettings` Leben.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** eine Alternative zu [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) da es immer möglich ist, einen Strom zum Speicher zu laden und an **MemoryFontSource**. Der Unterschied ist, dass **MemoryFontSource** in dem Speicher die ganze Zeit gespeichert ist, und **StreamFontSource** wird nach Bedarf geladen und sofort entsorgt. Es kann aber mehrmals geladen werden, wie oben beschrieben. In einigen Fällen **MemoryFontSource** ist bevorzugt, und in anderen, **StreamFontSource**.

## Speichern und laden Sie eine Font-Suche Cache

Bei der Suche nach einer Schrift zum ersten Mal, Aspose.Words iteriert über die vom Benutzer angegebenen Schriftquellen und bildet einen Schriftsuchecache basierend auf Daten aus diesen Quellen. So sammelt der Cache Informationen über die verfügbaren Schriftarten: Schriftfamilie, Stil, voller Schriftname und andere. Bei nachfolgenden Anrufen, Aspose.Words sucht nach Informationen über die gewünschte Schrift mit ihrem Namen im Font-Suche-Cache, wonach es die angegebenen Dateien zur Verwendung der Schrift speichert.

Das Verfahren zum Parsing aller verfügbaren Schriftdateien zur Initialisierung des Caches ist sehr zeitaufwendig. Aspose.Words ermöglicht es Ihnen, den Cache mit dem **FontSettings.SaveSearchCache** Verfahren zur Lösung des Leistungsproblems. Das heißt, der Benutzer kann einen zuvor gespeicherten Cache aus einer Datei laden und den Schritt der Parsierung aller verfügbaren Schriftdateien überspringen.

{{% alert color="primary" %}}

Verwenden Sie die gleiche **SaveSearchCache** Methode, um den Cache zu aktualisieren.

{{% /alert %}}

{{% alert color="primary" %}}

Der Cache ist auch für andere Szenarien geeignet, wenn Schriftarten über das Netzwerk geladen werden. Oder für Szenarien, wenn es keine Möglichkeit gibt, eine `FontSettings` Beispiel mit einem geladenen Cache.

{{% /alert %}}


## Erhalten Sie eine Liste der verfügbaren Schriftarten {#get-a-list-of-available-fonts}

Wenn Sie die Liste der verfügbaren Schriften erhalten möchten, die zum Beispiel verwendet werden können, um ein PDF-Dokument zu machen, können Sie das [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) Verfahren, wie im folgenden Codebeispiel gezeigt. Die [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) class gibt Informationen über die verfügbare physikalische Schriftart an Aspose.Words schriftart engine:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}

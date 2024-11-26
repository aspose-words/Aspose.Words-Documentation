---
title: Systemanforderung
second_title: Aspose.Words für Java
articleTitle: Systemanforderung
linktitle: Systemanforderung
description: "Bevor Sie mit Aspose.Words für Java arbeiten, stellen Sie sicher, dass Sie die Anforderungen an Betriebssystem, Plattform, Frameworks und Umgebung erfüllen, damit die Aktivitäten auf Ihren Geräten ordnungsgemäß berücksichtigt werden."
type: docs
weight: 80
url: /de/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words für Java erfordert keine Installation eines Drittanbieterprodukts wie Microsoft Word. Aspose.Words selbst ist eine Engine zum Erstellen, Ändern, Konvertieren und Rendern von Dokumenten in verschiedenen Formaten, einschließlich Microsoft Word -Dokumentformaten.

## Unterstützte Betriebssysteme

Jedes Betriebssystem, das die Java-Laufzeitumgebung (JRE) ausführen kann, kann Aspose.Words für Java ausführen. In der folgenden Tabelle sind die meisten, aber nicht alle unterstützten Betriebssysteme aufgeführt.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Betriebssystem</td>
			<td style="font-weight: bold; width:400px">Sprachversionen</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>und andere</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS Version 10.9 (Mavericks) und höher</li></ul></td>
		</tr>
  <tr>
			<td>Mobile</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Unterstützte Cloud-Plattformen

Aspose.Words für Java unterstützt alle Cloud-Plattformen, auf denen Java-Anwendungen ausgeführt werden können.

## Unterstützte Java Versionen

Aspose.Words für Java unterstützt Java 7 und neuer. Wenn Sie gezwungen sind, Java 6 zu verwenden, geben wir immer noch ein separates JAR für Java 6 frei.


## Optionale Abhängigkeiten

Wie oben erwähnt, benötigt Aspose.Words für Java *only* die Java Laufzeitumgebung, und Sie müssen keine zusätzlichen Bibliotheken installieren.

Manchmal gibt es jedoch Situationen, in denen Sie möglicherweise Bibliotheken von Drittanbietern hinzufügen müssen:

- JogAmp JOGL Bibliothek für hardwarebeschleunigtes OpenGL Rendering. Die Bibliothek ist als externe Abhängigkeit in der aspose-words POM -Datei enthalten. Sie können die POM -Datei bearbeiten, um nur JOGL -Jars beizubehalten, die für Ihre Plattform erforderlich sind. Oder Sie können die Abhängigkeit entfernen, wenn Sie kein hardwarebeschleunigtes OpenGL -Rendering benötigen.
- HarfBuzz Schrift-Engine. Es ist bereits in JRE 9 und neuer enthalten. Wenn Sie JRE 8 oder älter verwenden, können Sie die Abhängigkeit des shaping-harfbuzz-Plugins in unserer POM -Datei verwenden. Andernfalls können Sie die Abhängigkeit entfernen.
- Java Erweiterte Bildgebung (JAI) zur Unterstützung von TIFF Bildern. TIFF-Bilder werden von Java 8 und älter nicht unterstützt. Für TIFF-Unterstützung in alten Java-Umgebungen hängt Aspose.Words für Java von der [Java Erweitertes Imaging-Paket (JAI)](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) von Oracle. Im Folgenden wird beschrieben, wie JAI installiert wird.

### So installieren Sie JAI auf Windows

Befolgen Sie diese Schritte, um native JAI und ImageIO auf Windows zu installieren:

1. Laden Sie **JAI 1.1.3** herunter.
   Zum Zeitpunkt des Schreibens ist nur die 32-Bit-Version des Installationsprogramms verfügbar. Wenn Sie also ein JDK verwenden, müssen Sie Folgendes herunterladen [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) und wenn Sie eine JRE verwenden, müssen Sie herunterladen [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Führen Sie das Installationsprogramm aus und verweisen Sie es auf das Verzeichnis, in dem JDK/JRE installiert ist.
1. Laden Sie **JAI Image I/O 1.1** herunter.
   Zum Zeitpunkt des Schreibens ist nur die 32-Bit-Version des Installationsprogramms verfügbar. Wenn Sie also ein JDK verwenden, müssen Sie Folgendes herunterladen [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) und wenn Sie eine JRE verwenden, müssen Sie herunterladen [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Führen Sie das Installationsprogramm aus und verweisen Sie es auf das Verzeichnis, in dem JDK/JRE installiert ist.

### So installieren Sie JAI auf Linux

Befolgen Sie diese Schritte, um native JAI und ImageIO auf Linux zu installieren:

1. Herunterladen **JAI 1.1.3** Auswahl der geeigneten Architektur:
   1. [modell: i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) für 32-Bit-Systeme
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) für 64-Bit-Prozessoren (auch wenn Intel-Prozessoren verwendet werden)
1. Extrahieren Sie die Datei in ein temporäres Verzeichnis.
1. Verschiebe JAR Dateien in die JDK/JRE **lib/ext** ordner.
1. Verschiebe SO-Dateien in die JDK/JRE **lib/amd64** ordner.<br>

   Auf einem 64-Bit-Ubuntu -System sehen die Schritte 1-4 beispielsweise folgendermaßen aus:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Laden Sie **JAI Image I/O 1.1** herunter und wählen Sie die geeignete Architektur aus:
   1. [modell: i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) für die 32-Bit-Systeme
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) für die 64-Bit-Versionen (auch wenn Intel-Prozessoren verwendet werden)
1. Extrahieren Sie die Datei in ein temporäres Verzeichnis.
1. Verschiebe JAR Dateien in die JDK/JRE **lib/ext** ordner.
1. Verschiebe SO-Dateien in die JDK/JRE **lib/amd64** ordner.<br>

   Auf einem 64-Bit-Ubuntu -System sehen die Schritte 5-8 beispielsweise folgendermaßen aus:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Ordner für temporäre Dateien

Aspose.Words für Java verwendet ein temporäres Verzeichnis auf Ihrem Computer, das über die Systemeigenschaft `java.io.tmpdir` angegeben wird. Aspose.Words für Java schreibt temporäre Dateien und entfernt diese Dateien, sobald das Rendern abgeschlossen ist.

`java.io.tmpdir` ist eine standardmäßige Java-Systemeigenschaft, die auch von festplattenbasierten Speicherrichtlinien verwendet wird. Es bestimmt, wohin JVM temporäre Dateien schreibt.

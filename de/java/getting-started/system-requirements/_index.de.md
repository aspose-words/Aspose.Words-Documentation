---
title: Systemanforderungen
second_title: Aspose.Words für Java
articleTitle: Systemanforderungen
linktitle: Systemanforderungen
description: "Bevor Sie mit der Arbeit beginnen Aspose.Words für Java, stellen Sie sicher, dass Sie das Betriebssystem, die Plattform, die Rahmen und die Umweltanforderungen erfüllen, damit die Aktivitäten auf Ihren Geräten ordnungsgemäß berücksichtigt werden."
type: docs
weight: 80
url: /de/java/system-requirements/
---

Aspose.Words für Java kein Produkt von Dritten wie Microsoft Word zu installieren. Aspose.Words selbst ist ein Motor zum Erstellen, Modifizieren, Konvertieren und Rendern von Dokumenten in verschiedenen Formaten, einschließlich Microsoft Word Dokumentformate.

## Unterstützte Betriebssysteme

Jedes Betriebssystem, das die Java Runtime Environment (JRE) kann laufen Aspose.Words für Java. Die folgende Tabelle listet die meisten, aber nicht alle unterstützten Betriebssysteme auf.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Betriebssystem</td>
			<td style="font-weight: bold; width:400px">Versionen</td>
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
			<td><ul><li>macOS Version 10.9 (Mavericks) und später</li></ul></td>
		</tr>
  <tr>
			<td>Mobil</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Unterstützte Cloud-Plattformen

Aspose.Words für Java unterstützt alle Cloud-Plattformen, die laufen können Java Anwendungen

## Unterstützt Java Versionen

Aspose.Words für Java Stützen Java 7 und neuer. Wenn Sie gezwungen sind, zu verwenden Java 6, wir lösen noch eine separate JAR für Java 6.


## Optionale Abhängigkeiten

Wie oben erwähnt, Aspose.Words für Java erfordert *only* die Java Runtime Environment, und Sie müssen keine zusätzlichen Bibliotheken installieren.

Allerdings gibt es manchmal Situationen, in denen Sie Drittanbieter-Bibliotheken hinzufügen müssen:

- Ja. JogAmp JOGL Bibliothek für Hardware beschleunigt OpenGL-Rendering. Die Bibliothek ist in den Aspose-Worte enthalten POM Datei als externe Abhängigkeit. Sie können die POM Datei, um JOGL Gläser nur für Ihre Plattform zu erhalten. Oder Sie können die Abhängigkeit entfernen, wenn Sie keine Hardware beschleunigt OpenGL Rendering benötigen.
- Ja. HarfBuzz schriftart motor. Es ist bereits in JRE 9 und neuer enthalten. Wenn Sie JRE 8 oder älter verwenden, können Sie die formgeben-harfbuzz-plugin Abhängigkeit in unserer POM Datei. Andernfalls können Sie die Abhängigkeit entfernen.
- Ja. Java Advanced Imaging (JAI) zur Unterstützung von TIFF-Bildern. TIFF Bilder werden nicht unterstützt Java 8 und älter. Für TIFF-Unterstützung im alten Java Umwelt, Aspose.Words für Java hängt von der [Java Advanced Imaging (JAI) Paket](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) von Oracle. Wir werden beschreiben, wie Sie JAI unten installieren.

### So installieren Sie JAI auf Windows

Folgen Sie diesen Schritten, um native JAI zu installieren und ImageIO auf Windows:

1. Download **1.1.3**.
   Zum Zeitpunkt des Schreibens steht nur die 32-Bit-Version des Installers zur Verfügung, wenn Sie also ein JDK verwenden, müssen Sie herunterladen [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) und wenn Sie eine JRE verwenden, müssen Sie herunterladen [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
ANHANG Führen Sie den Installer aus und zeigen Sie ihn in das Verzeichnis, in dem JDK/JRE installiert ist.
1. Download **JAI Bild I/O 1.1**.
   Zum Zeitpunkt des Schreibens steht nur die 32-Bit-Version des Installers zur Verfügung, wenn Sie also ein JDK verwenden, müssen Sie herunterladen [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) und wenn Sie eine JRE verwenden, müssen Sie herunterladen [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
ANHANG Führen Sie den Installer aus und zeigen Sie ihn in das Verzeichnis, in dem JDK/JRE installiert ist.

### So installieren Sie JAI auf Linux

Folgen Sie diesen Schritten, um native JAI zu installieren und ImageIO auf Linux:

1. Download **1.1.3** Auswahl der geeigneten Architektur:
   ANHANG [I586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) für 32-Bit-Systeme
   ANHANG [Amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) für 64-Bit-Eins (auch bei Verwendung von Intel-Prozessoren)
ANHANG Extrahieren Sie die Datei in ein temporäres Verzeichnis.
ANHANG Los. JAR Dateien zum JDK/JRE **lib/ext** Ordner.
ANHANG Verschieben Sie SO-Dateien in die JDK/JRE **lib/amd64** Ordner.<br/>

   Beispielsweise auf einem 64-Bit Ubuntu System, die Schritte 1-4 werden so aussehen:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Download **JAI Bild I/O 1.1**, Auswahl der geeigneten Architektur:
   ANHANG [I586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) für die 32-Bit-Systeme
   ANHANG [Amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) für die 64-Bit-Eins (auch bei Verwendung von Intel-Prozessoren)
ANHANG Extrahieren Sie die Datei in ein temporäres Verzeichnis.
ANHANG Los. JAR Dateien zum JDK/JRE **lib/ext** Ordner.
ANHANG Verschieben Sie SO-Dateien in die JDK/JRE **lib/amd64** Ordner.<br/>

   Beispielsweise auf einem 64-Bit Ubuntu System, die Schritte 5-8 werden so aussehen:<br/>
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

Aspose.Words für Java verwendet ein temporäres Verzeichnis auf Ihrem Computer, das über `java.io.tmpdir` Systemimmobilie. Aspose.Words für Java schreibt temporäre Dateien und entfernt diese Dateien, sobald das Rendern abgeschlossen ist.

`java.io.tmpdir` ist ein Standard Java systemeigenschaft, die auch von disk-basierten Speicherrichtlinien verwendet wird. Es bestimmt, wo das JVM temporäre Dateien schreibt.

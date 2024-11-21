---
title: Systeemeisen
second_title: Aspose.Words voor Java
articleTitle: Systeemeisen
linktitle: Systeemeisen
description: "Voordat u gaat werken met Aspose.Words voor Java, Zorg ervoor dat u voldoet aan de eisen van het besturingssysteem, het platform, de kaders en de omgeving, zodat de activiteiten op uw apparaten goed worden verantwoord."
type: docs
weight: 80
url: /nl/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words voor Java vereist geen product van derden zoals Microsoft Word te installeren. Aspose.Words zelf is een motor voor het maken, wijzigen, omzetten en renderen van documenten in verschillende formaten, waaronder Microsoft Word documentformaten.

## Ondersteunde besturingssystemen

Elk besturingssysteem dat de Java Runtime Environment (JRE) kan draaien Aspose.Words voor Java. De volgende tabel bevat de meeste, maar niet alle ondersteunde besturingssystemen.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Besturingssysteem</td>
			<td style="font-weight: bold; width:400px">Versies</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>en andere</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS versie 10.9 (Mavericks) en later</li></ul></td>
		</tr>
  <tr>
			<td>Mobiel</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Ondersteunde cloudplatforms

Aspose.Words voor Java ondersteunt alle cloudplatforms die kunnen draaien Java aanvragen

## Ondersteund Java Versies

Aspose.Words voor Java ondersteuning Java 7 en nieuwer. Als u gedwongen bent om Java 6, we laten nog steeds een aparte JAR voor Java 6.


## Optionele afhankelijkheden

Zoals we al zeiden, Aspose.Words voor Java vereist *only* de Java Runtime Environment, en u hoeft geen extra bibliotheken te installeren.

Echter, soms zijn er situaties waarin je nodig hebt om bibliotheken van derden toe te voegen:

- JogAmp JOGL bibliotheek voor hardware versnelde OpenGL rendering. De bibliotheek is opgenomen in de aspose-woorden POM bestand als een externe afhankelijkheid. U kunt de POM bestand om JOGL potten die alleen voor uw platform. Of je kunt de afhankelijkheid verwijderen als je geen hardware versneld OpenGL rendering nodig hebt.
- HarfBuzz Lettertype motor. Het is al opgenomen in JRE 9 en nieuwer. Als u JRE 8 of ouder gebruikt, kunt u de shaping-harfbuzz-plugin afhankelijkheid gebruiken in onze POM bestand. Anders kun je de afhankelijkheid verwijderen.
- Java Advanced Imaging (JAI) ter ondersteuning van TIFF-afbeeldingen. TIFF afbeeldingen worden niet ondersteund door Java 8 jaar en ouder. Voor TIFF-ondersteuning in oud Java omgevingen; Aspose.Words voor Java hangt af van de [Java Advanced Imaging (JAI) pakket](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) van Oracle. We beschrijven hieronder hoe we JAI kunnen installeren.

### Hoe JAI te installeren op Windows

Volg deze stappen om native JAI te installeren en ImageIO op Windows:

1. Downloaden **JAI 1.1.3**.
   Op het moment van schrijven is alleen de 32-bit versie van het installatieprogramma beschikbaar, dus als je een JDK gebruikt die je moet downloaden [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) en als u een JRE gebruikt die u moet downloaden [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Voer het installatieprogramma uit en wijs het naar de map waar JDK/JRE is geïnstalleerd.
1. Downloaden **JAI Afbeelding I/O 1.1**.
   Op het moment van schrijven is alleen de 32-bit versie van het installatieprogramma beschikbaar, dus als je een JDK gebruikt die je moet downloaden [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) en als u een JRE gebruikt die u moet downloaden [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Voer het installatieprogramma uit en wijs het naar de map waar JDK/JRE is geïnstalleerd.

### Hoe JAI te installeren op Linux

Volg deze stappen om native JAI te installeren en ImageIO op Linux:

1. Downloaden **JAI 1.1.3** de juiste architectuur kiezen:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) voor 32-bit systemen
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) voor 64 bits (zelfs als je Intel-processors gebruikt)
1. Het bestand uitpakken naar een tijdelijke map.
1. Verplaatsen JAR bestanden naar de JDK/JRE **lib/ext** map.
1. SO-bestanden naar JDK/JRE verplaatsen **lib/amd64** map.<br/>

   Bijvoorbeeld, op een 64-bit Ubuntu systeem, stap 1-4 zal er zo uitzien:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Downloaden **JAI Afbeelding I/O 1.1**, de juiste architectuur kiezen:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) voor de 32-bit systemen
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) voor de 64-bits degenen (zelfs als het gebruik van Intel processors)
1. Het bestand uitpakken naar een tijdelijke map.
1. Verplaatsen JAR bestanden naar de JDK/JRE **lib/ext** map.
1. SO-bestanden naar JDK/JRE verplaatsen **lib/amd64** map.<br/>

   Bijvoorbeeld, op een 64-bit Ubuntu systeem, stappen 5-8 zullen er zo uitzien:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Map voor tijdelijke bestanden

Aspose.Words voor Java gebruikt een tijdelijke map op uw computer, die via `java.io.tmpdir` systeemeigendom. Aspose.Words voor Java schrijft tijdelijke bestanden en verwijdert dan deze bestanden zodra rendering voltooid is.

`java.io.tmpdir` is een standaard Java systeemeigenschap die ook wordt gebruikt door schijfgebaseerde opslagbeleid. Het bepaalt waar de JVM tijdelijke bestanden schrijft.

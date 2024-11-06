---
title: Stelselvereistes
second_title: Aspose.Words vir Java
articleTitle: Stelselvereistes
linktitle: Stelselvereistes
description: "Voordat jy begin werk Aspose.Words vir Java, verseker dat u aan die bedryfstelsel, platform, raamwerke en omgewingsvereistes voldoen, sodat die aktiwiteite op u toestelle behoorlik verantwoord word."
type: docs
weight: 80
url: /af/java/system-requirements/
---

Aspose.Words vir Java vereis nie dat derdeparty-produkte soos Microsoft Word geïnstalleer moet word nie. Aspose.Words self is'n enjin vir die skep, wysiging, omskakeling en weergawe van dokumente in verskillende formate, insluitend Microsoft Word dokumentformate.

## Ondersteunde Bedryfstelsels

Enige Bedryfstelsel wat die Java Runtime Omgewing (JRE) kan hardloop kan hardloop Aspose.Words vir Java. Die volgende tabel bevat die meeste, maar nie almal nie, ondersteun Bedryfstelsels.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Bedryfstelsel</td>
			<td style="font-weight: bold; width:400px">Weergawes</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>en ander</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS weergawe 10.9 (Mavericks) en later</li></ul></td>
		</tr>
  <tr>
			<td>Mobiele toestelle</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Ondersteunde Wolkplatforms

Aspose.Words vir Java ondersteun enige wolk platforms wat Java aansoeke kan hardloop.

## Ondersteunde Java Weergawes

Aspose.Words vir Java ondersteun Java 7 en nuwer. As jy gedwing word om Java 6 te gebruik, stel ons steeds'n aparte JAR vry vir Java 6.


## Opsionele Afhanklikhede

Soos ons hierbo gesê het, Aspose.Words vir Java vereis *only* Die Java Runtime Omgewing, en jy hoef nie enige bykomende biblioteke te installeer.

Soms is daar egter situasies waar jy dalk derdepartybiblioteke moet byvoeg:

- JogAmp JOGL biblioteek vir hardeware versnelde OpenGL weergawe. Die biblioteek is ingesluit in die aspose-words POM lêer as'n eksterne afhanklikheid. U kan die POM - lêer wysig om die JOGL - potte wat slegs vir u platform benodig word, te bewaar. Of jy kan die afhanklikheid verwyder as jy nie hardeware versnelde OpenGL weergawe nodig het nie.
- HarfBuzz lettertipe enjin. Dit is reeds ingesluit in JRE 9 en nuwer. As u JRE 8 of ouer gebruik, kan u die shaping-harfbuzz-plugin-afhanklikheid in ons POM - lêer gebruik. Andersins kan u die afhanklikheid verwyder.
- Java Gevorderde Beeldvorming (JAI) om TIFF beelde te ondersteun. TIFF beelde word nie ondersteun deur Java 8 en ouer nie. Vir TIFF ondersteuning in ou Java omgewings, Aspose.Words vir Java hang af van die [Java Gevorderde Beeldvorming (JAI) pakket](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) Van Oracle. Ons sal beskryf hoe om JAI hieronder te installeer.

### Hoe om te Installeer JAI op Windows

Volg hierdie stappe om inheemse JAI en ImageIO op Windowste installeer:

1. Aflaai **JAI 1.1.3**.
   Ten tyde van die skryf hiervan is slegs die 32-bis weergawe van die installeerder beskikbaar, dus as u a JDK gebruik, moet u aflaai [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) en as jy a JRE gebruik, moet jy aflaai [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Begin die installeerder en wys dit na die gids waar JDK/JRE geïnstalleer is.
1. Aflaai **JAI Image I/O 1.1**.
   Ten tyde van die skryf hiervan is slegs die 32-bis weergawe van die installeerder beskikbaar, dus as u a JDK gebruik, moet u aflaai [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) en as jy a JRE gebruik, moet jy aflaai [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Begin die installeerder en wys dit na die gids waar JDK/JRE geïnstalleer is.

### Hoe om te Installeer JAI op Linux

Volg hierdie stappe om inheemse JAI en ImageIO op Linuxte installeer:

1. Aflaai **JAI 1.1.3** kies die toepaslike argitektuur:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) vir 32-bit stelsels
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) vir 64-bis (selfs As Intel-verwerkers gebruik word)
1. Pak die lêer uit in'n tydelike gids.
1. Skuif JAR lêers na die JDK/JRE **lib/ext** die gids.
1. Skuif SO lêers na die JDK/JRE **lib/amd64** die gids.<br>

   Byvoorbeeld, op'n 64-bit Ubuntu stelsel, stappe 1-4 sal lyk soos hierdie:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Aflaai **JAI Image I/O 1.1**, kies die toepaslike argitektuur:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) vir die 32-bit stelsels
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) vir die 64-bis (selfs As Intel-verwerkers gebruik word)
1. Pak die lêer uit in'n tydelike gids.
1. Skuif JAR lêers na die JDK/JRE **lib/ext** die gids.
1. Skuif SO lêers na die JDK/JRE **lib/amd64** die gids.<br>

   Byvoorbeeld, op'n 64-bit Ubuntu stelsel, stappe 5 - 8 sal lyk soos hierdie:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Gids Vir Tydelike Lêers

Aspose.Words vir Java gebruik'n tydelike gids op jou rekenaar, wat gespesifiseer word via `java.io.tmpdir` stelsel eiendom. Aspose.Words vir Java skryf tydelike lêers en verwyder dan hierdie lêers sodra die weergawe voltooi is.

`java.io.tmpdir` is'n standaard Java stelsel eienskap wat ook gebruik word deur skyf-gebaseerde stoor beleid. Dit bepaal waar die JVM skryf tydelike lêers.

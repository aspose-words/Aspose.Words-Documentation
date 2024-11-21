---
title: Cerințe De Sistem
second_title: Aspose.Words pentru Java
articleTitle: Cerințe De Sistem
linktitle: Cerințe De Sistem
description: "Înainte de a începe să lucrați cu Aspose.Words pentru Java, asigurați-vă că îndepliniți cerințele sistemului de operare, platformei, cadrelor și mediului, astfel încât activitățile de pe dispozitivele dvs. să fie contabilizate corespunzător."
type: docs
weight: 80
url: /ro/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words pentru Java nu necesită instalarea unui produs terță parte, cum ar fi Microsoft Word. Aspose.Words în sine este un motor pentru crearea, modificarea, conversia și redarea documentelor în diferite formate, inclusiv Microsoft Word formate de documente.

## Sisteme De Operare Acceptate

Orice sistem de operare care poate rula Java Runtime Environment (JRE) poate rula Aspose.Words pentru Java. Următorul tabel listează majoritatea, dar nu toate, sistemele de operare acceptate.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistem De Operare</td>
			<td style="font-weight: bold; width:400px">Versiuni</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>și altele</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS versiunea 10.9 (Mavericks) și mai târziu</li></ul></td>
		</tr>
  <tr>
			<td>Mobil</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Platforme Cloud Acceptate

Aspose.Words pentru Java suportă orice platforme cloud care pot rula Java aplicații.

## Suportat Java Versiuni

Aspose.Words pentru Java suporta Java 7 și mai noi. Dacă sunteți forțat să utilizați Java 6, vom elibera încă un JAR separat pentru Java 6.


## Dependențe Opționale

Așa cum am spus mai sus, Aspose.Words pentru Java necesită *only* Java Runtime Environment și nu este nevoie să instalați biblioteci suplimentare.

Cu toate acestea, uneori există situații în care ar putea fi necesar să adăugați biblioteci terțe:

- JogAmp JOGL bibliotecă pentru redare accelerată hardware OpenGL. Biblioteca este inclusă în fișierul aspose-words POM ca dependență externă. Puteți edita fișierul POM pentru a păstra borcanele JOGL necesare numai pentru platforma dvs. Sau puteți elimina dependența dacă nu aveți nevoie de redare accelerată hardware OpenGL.
- HarfBuzz motor de fonturi. Este deja inclus în JRE 9 și mai nou. Dacă utilizați JRE 8 sau mai vechi, puteți utiliza dependența shaping-harfbuzz-plugin în fișierul nostru POM. În caz contrar, puteți elimina dependența.
- Java Advanced Imaging (JAI) pentru a sprijini TIFF imagini. TIFF imaginile nu sunt acceptate de Java 8 și mai vechi. Pentru suport TIFF în medii vechi Java, Aspose.Words pentru Java depinde de [Java Pachet de imagini avansate (JAI) ](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) de la Oracle. Vom descrie cum se instalează JAI mai jos.

### Cum se instalează JAI pe Windows

Urmați acești pași pentru a instala nativ JAI și ImageIO pe Windows:

1. Descarcă **JAI 1.1.3**.
   La momentul scrierii, este disponibilă doar versiunea 32-bit a programului de instalare, Deci dacă utilizați un JDK trebuie să descărcați [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) și dacă utilizați un JRE trebuie să descărcați [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Rulați programul de instalare și indicați-l către directorul în care este instalat JDK/JRE.
1. Descarcă **JAI Image I/O 1.1**.
   La momentul scrierii, este disponibilă doar versiunea 32-bit a programului de instalare, Deci dacă utilizați un JDK trebuie să descărcați [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) și dacă utilizați un JRE trebuie să descărcați [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Rulați programul de instalare și indicați-l către directorul în care este instalat JDK/JRE.

### Cum se instalează JAI pe Linux

Urmați acești pași pentru a instala nativ JAI și ImageIO pe Linux:

1. Descărcați **JAI 1.1.3** alegerea arhitecturii corespunzătoare:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) pentru sistemele de 32 biți
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) pentru cele 64-bit (chiar dacă se utilizează procesoare Intel)
1. Extrageți fișierul într-un director temporar.
1. Mutați JAR fișiere în JDK/JRE **lib/ext** dosarul.
1. Mutați SO fișiere în JDK/JRE **lib/amd64** dosarul.<br>

   De exemplu, pe un sistem 64-bit Ubuntu, pașii 1 - 4 vor arăta astfel:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Descărcați **JAI Image I/O 1.1**, alegând arhitectura potrivită:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) pentru sistemele 32-bit
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) pentru cele 64-bit (chiar dacă se utilizează procesoare Intel)
1. Extrageți fișierul într-un director temporar.
1. Mutați JAR fișiere în JDK/JRE **lib/ext** dosarul.
1. Mutați SO fișiere în JDK/JRE **lib/amd64** dosarul.<br>

   De exemplu, pe un sistem 64-bit Ubuntu, pașii 5-8 vor arăta astfel:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Dosar pentru fișiere temporare

Aspose.Words pentru Java utilizează un director temporar pe computer, care este specificat prin proprietatea sistemului `java.io.tmpdir`. Aspose.Words pentru Java scrie fișiere temporare și apoi elimină aceste fișiere imediat ce redarea este finalizată.

`java.io.tmpdir` este o proprietate standard de sistem Java Care este, de asemenea, utilizată de politicile de stocare bazate pe disc. Acesta determină unde JVM scrie fișiere temporare.

---
title: Requisiti di sistema
second_title: Aspose.Words per Java
articleTitle: Requisiti di sistema
linktitle: Requisiti di sistema
description: "Prima di iniziare a lavorare con Aspose.Words per Java, assicurarsi di soddisfare i requisiti del sistema operativo, della piattaforma, dei framework e dell'ambiente in modo che le attività sui dispositivi siano correttamente contabilizzate."
type: docs
weight: 80
url: /it/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words per Java non richiede l'installazione di prodotti di terze parti come Microsoft Word. Aspose.Words è un motore per la creazione, la modifica, la conversione e il rendering di documenti in vari formati, inclusi i formati di documenti Microsoft Word.

## Sistemi operativi supportati

Qualsiasi sistema operativo in grado di eseguire l'ambiente di Runtime Java (JRE) può eseguire Aspose.Words per Java. La tabella seguente elenca la maggior parte, ma non tutti, i sistemi operativi supportati.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistema operativo</td>
			<td style="font-weight: bold; width:400px">Versione</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>e altri</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS versione 10.9 (Mavericks) e versioni successive</li></ul></td>
		</tr>
  <tr>
			<td>Mobile</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Piattaforme cloud supportate

Aspose.Words per Java supporta qualsiasi piattaforma cloud in grado di eseguire applicazioni Java.

## Versioni supportate Java

Aspose.Words per Java supporta Java 7 e versioni successive. Se sei costretto a usare Java 6, rilasciamo comunque un JAR separato per Java 6.


## Dipendenze opzionali

Come abbiamo detto sopra, Aspose.Words per Java richiede *only* l'ambiente di Runtime Java e non è necessario installare alcuna libreria aggiuntiva.

Tuttavia, a volte ci sono situazioni in cui potrebbe essere necessario aggiungere librerie di terze parti:

- Libreria JogAmp JOGL per il rendering con accelerazione hardware OpenGL. La libreria è inclusa nel file aspose-words POM come dipendenza esterna. È possibile modificare il file POM per conservare i jar JOGL richiesti solo per la piattaforma. Oppure è possibile rimuovere la dipendenza se non è necessario il rendering OpenGL con accelerazione hardware.
- HarfBuzz motore di font. È già incluso in JRE 9 e versioni successive. Se si utilizza JRE 8 o versioni precedenti, è possibile utilizzare la dipendenza shaping-harfbuzz-plugin nel nostro file POM. In caso contrario, è possibile rimuovere la dipendenza.
- Java Advanced Imaging (JAI) per supportare le immagini TIFF. Le immagini TIFF non sono supportate da Java 8 e versioni precedenti. Per il supporto TIFF nei vecchi ambienti Java, Aspose.Words per Java dipende dal [Java Advanced Imaging (JAI) pacchetto](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) di Oracle. Descriveremo come installare JAI di seguito.

### Come installare JAI su Windows

Attenersi alla seguente procedura per installare JAI nativo e ImageIO su Windows:

1. Scarica **JAI 1.1.3**.
   Al momento della scrittura, è disponibile solo la versione a 32 bit del programma di installazione, quindi se si utilizza un JDK è necessario scaricare [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) e se si utilizza un JRE è necessario scaricare [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Eseguire il programma di installazione e indirizzarlo alla directory in cui è installato JDK/JRE.
1. Scarica **JAI Image I/O 1.1**.
   Al momento della scrittura, è disponibile solo la versione a 32 bit del programma di installazione, quindi se si utilizza un JDK è necessario scaricare [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) e se si utilizza un JRE è necessario scaricare [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Eseguire il programma di installazione e indirizzarlo alla directory in cui è installato JDK/JRE.

### Come installare JAI su Linux

Attenersi alla seguente procedura per installare JAI nativo e ImageIO su Linux:

1. Scarica **JAI 1.1.3** scegliere l'architettura appropriata:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) per sistemi a 32 bit
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) per quelli a 64 bit (anche se si utilizzano processori Intel)
1. Estrarre il file in una directory temporanea.
1. Sposta i file JAR nel JDK/JRE **lib/ext** cartella.
1. Sposta i file SO nel JDK/JRE **lib/amd64** cartella.<br>

   Ad esempio, su un sistema a 64 bit Ubuntu, i passaggi 1-4 saranno simili a questo:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Scarica **JAI Image I/O 1.1**, scegliendo l'architettura appropriata:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) per i sistemi a 32 bit
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) per quelli a 64 bit (anche se si utilizzano processori Intel)
1. Estrarre il file in una directory temporanea.
1. Sposta i file JAR nel JDK/JRE **lib/ext** cartella.
1. Sposta i file SO nel JDK/JRE **lib/amd64** cartella.<br>

   Ad esempio, su un sistema a 64 bit Ubuntu, i passaggi 5-8 saranno simili a questo:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Cartella per i file temporanei

Aspose.Words per Java utilizza una directory temporanea sul computer, specificata tramite la proprietà di sistema `java.io.tmpdir`. Aspose.Words per Java scrive file temporanei e quindi li rimuove non appena il rendering è completato.

`java.io.tmpdir` è una proprietà di sistema standard Java utilizzata anche dai criteri di archiviazione basati su disco. Determina dove il JVM scrive i file temporanei.

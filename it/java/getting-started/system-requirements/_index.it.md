---
title: Requisiti di sistema
second_title: Aspose.Words per Java
articleTitle: Requisiti di sistema
linktitle: Requisiti di sistema
description: "Prima di iniziare a lavorare con Aspose.Words per Java, assicurarsi di soddisfare i requisiti del sistema operativo, della piattaforma, dei framework e dell'ambiente, in modo che le attività sui dispositivi siano adeguatamente contabilizzate."
type: docs
weight: 80
url: /it/java/system-requirements/
---

Aspose.Words per Java non richiede prodotti di terze parti, come Microsoft Word da installare. Aspose.Words è un motore per la creazione, la modifica, la conversione e il rendering di documenti in vari formati, tra cui Microsoft Word formati di documento.

## Sistemi operativi supportati

Qualsiasi sistema operativo in grado di eseguire Java Runtime Environment (JRE) può essere eseguito Aspose.Words per Java. La seguente tabella elenca la maggior parte, ma non tutti, i Sistemi Operativi supportati.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistema operativo</td>
			<td style="font-weight: bold; width:400px">Versioni</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpensUSE</li><li>CentOS</li><li>e altri</li></ul></td>
		</tr>
  <tr>
			<td>mac.</td>
			<td><ul><li>macOS versione 10.9 (Mavericks) e più tardi</li></ul></td>
		</tr>
  <tr>
			<td>Mobile</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Piattaforme cloud supportate

Aspose.Words per Java supporta tutte le piattaforme cloud in grado di eseguire Java applicazioni

## Supportato Java Versioni

Aspose.Words per Java Supporti Java 7 e più recente. Se siete costretti a usare Java 6, rilasciamo ancora un separato JAR per Java 6.


## Dipendenze facoltative

Come abbiamo detto sopra, Aspose.Words per Java richiede *only* il Java Runtime Environment, e non è necessario installare librerie aggiuntive.

Tuttavia, a volte ci sono situazioni in cui potrebbe essere necessario aggiungere librerie di terze parti:

- No. JogAmp JOGL libreria per il rendering OpenGL accelerato hardware. La biblioteca è inclusa nelle parole apposite POM file come dipendenza esterna. È possibile modificare il POM file per conservare i vasi JOGL richiesti solo per la vostra piattaforma. Oppure è possibile rimuovere la dipendenza se non è necessario il rendering OpenGL accelerato hardware.
- No. HarfBuzz motore font. È già incluso in JRE 9 e più recente. Se si utilizza JRE 8 o più vecchi, è possibile utilizzare la dipendenza shaping-harfbuzz-plugin nella nostra POM file. In caso contrario, è possibile rimuovere la dipendenza.
- No. Java Advanced Imaging (JAI) per supportare le immagini TIFF. Le immagini TIFF non sono supportate da Java 8 anni. Per il supporto TIFF in vecchio Java ambienti, Aspose.Words per Java dipende dal [Java Advanced Imaging (JAI) Pacchetto](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) da Oracle. Descriveremo come installare JAI qui sotto.

### Come Installare JAI su Windows

Seguire questi passaggi per installare nativo JAI e ImageIO su Windows:

1. Scarica **JAI 1.1.3**.
   Al momento della scrittura, è disponibile solo la versione a 32 bit del programma di installazione, quindi se si utilizza un JDK è necessario scaricare [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) e se si utilizza un JRE è necessario scaricare [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Eseguire l'installatore e puntarlo alla directory in cui è installato JDK/JRE.
1. Scarica **JAI Immagine I/O 1.1**.
   Al momento della scrittura, è disponibile solo la versione a 32 bit del programma di installazione, quindi se si utilizza un JDK è necessario scaricare [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) e se si utilizza un JRE è necessario scaricare [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Eseguire l'installatore e puntarlo alla directory in cui è installato JDK/JRE.

### Come Installare JAI su Linux

Seguire questi passaggi per installare nativo JAI e ImageIO su Linux:

1. Scarica **JAI 1.1.3** scegliere l'architettura appropriata:
   1. [I586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) per sistemi a 32 bit
   1. [Amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) per quelli a 64 bit (anche se si utilizzano processori Intel)
1. Estrarre il file in una directory temporanea.
1. Muovetevi! JAR file sul JDK/JRE **lib/ext** cartella.
1. Spostare i file SO al JDK/JRE **lib/amd64** cartella.<br/>

   Ad esempio, su un 64 bit Ubuntu sistema, step 1-4 sembrerà così:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Scarica **JAI Immagine I/O 1.1**, scegliere l'architettura appropriata:
   1. [I586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) per i sistemi a 32 bit
   1. [Amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) per quelli a 64 bit (anche se si utilizzano processori Intel)
1. Estrarre il file in una directory temporanea.
1. Muovetevi! JAR file sul JDK/JRE **lib/ext** cartella.
1. Spostare i file SO al JDK/JRE **lib/amd64** cartella.<br/>

   Ad esempio, su un 64 bit Ubuntu sistema, i passi 5-8 sembreranno così:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Cartella per file temporanei

Aspose.Words per Java utilizza una directory temporanea sul computer, specificata tramite `java.io.tmpdir` proprietà di sistema. Aspose.Words per Java scrive i file temporanei e quindi rimuove questi file non appena il rendering è completato.

`java.io.tmpdir` è uno standard Java proprietà di sistema che viene utilizzato anche da criteri di archiviazione basati su disco. Determina dove il JVM scrive i file temporanei.

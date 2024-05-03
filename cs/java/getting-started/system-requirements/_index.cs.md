---
title: Požadavky na systém
second_title: Aspose.Words místo Java
articleTitle: Požadavky na systém
linktitle: Požadavky na systém
description: "Než začnete pracovat s Aspose.Words místo Java, zajistit, abyste splnili požadavky na operační systém, platformu, rámce a životní prostředí, takže činnosti na vašich zařízeních jsou řádně zaúčtovány."
type: docs
weight: 80
url: /cs/java/system-requirements/
---

Aspose.Words místo Java nevyžaduje produkty třetích stran, jako je Microsoft Word k instalaci. Aspose.Words sám o sobě je motorem pro vytváření, úpravu, konverzi a zobrazování dokumentů v různých formátech, včetně Microsoft Word formáty dokumentů.

## Podporované operační systémy

Jakýkoli operační systém, který může spustit Java Runtime Environment (JRE) může běžet Aspose.Words místo Java. Následující tabulka uvádí většinu, ale ne všechny podporované operační systémy.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Provozní systém</td>
			<td style="font-weight: bold; width:400px">Verze</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>a další</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS verze 10.9 (Mavericks) a později</li></ul></td>
		</tr>
  <tr>
			<td>Mobilní</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Podporované cloudové platformy

Aspose.Words místo Java podporuje jakékoliv cloudové platformy, které mohou spustit Java žádosti

## Podporované Java Verze

Aspose.Words místo Java Podpora Java 7 a novější. Pokud jste nuceni použít Java 6, stále vydáváme oddělené JAR místo Java 6.


## Nepovinné závislosti

Jak jsme již uvedli, Aspose.Words místo Java vyžaduje *only* vá Java Runtime Environment, a nemusíte instalovat žádné další knihovny.

Nicméně, někdy jsou situace, kdy byste mohli potřebovat přidat knihovny třetích stran:

- JogAmp JOGL knihovna pro hardwarové zrychlení OpenGL renderování. Knihovna je součástí aspose slov POM soubor jako externí závislost. Můžete upravit POM soubor pro uchování sklenic JOGL požadovaný pouze pro vaši platformu. Nebo můžete odstranit závislost, pokud nepotřebujete hardwarové zrychlení OpenGL renderování.
- HarfBuzz Font engine. Je již součástí JRE 9 a novější. Pokud používáte JRE 8 nebo starší, můžete použít formovací-harfbuzz-plugin závislost v naší POM Složka. Jinak můžete odstranit závislost.
- Java Advanced Imaging (JAI) podporovat TIFF obrázky. TIFF obrázky nejsou podporovány Java Osm a starší. Pro podporu TIFF ve starých Java prostředí, Aspose.Words místo Java závisí na [Java Advanced Imaging (JAI) balení](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) od Oracle. Popíšeme, jak nainstalovat JAI níže.

### Jak nainstalovat JAI na Windows

Postupujte podle těchto kroků pro instalaci nativní JAI a ImageIO na Windows:

1. Stáhnout **JAI 1.1.3**.
   V době zápisu je k dispozici pouze 32-bitová verze instalátoru, takže pokud používáte JDK, musíte si stáhnout [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) a pokud používáte JRE, musíte si stáhnout [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Spusťte instalátor a nasměrujte jej do adresáře, kde je JDK/JRE nainstalován.
1. Stáhnout **JAI Image I/O 1.1**.
   V době zápisu je k dispozici pouze 32-bitová verze instalátoru, takže pokud používáte JDK, musíte si stáhnout [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) a pokud používáte JRE, musíte si stáhnout [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Spusťte instalátor a nasměrujte jej do adresáře, kde je JDK/JRE nainstalován.

### Jak nainstalovat JAI na Linux

Postupujte podle těchto kroků pro instalaci nativní JAI a ImageIO na Linux:

1. Stáhnout **JAI 1.1.3** výběr vhodné architektury:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) pro 32-bitové systémy
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) pro 64-bitové procesory (i když používají procesory Intel)
1. Vytáhněte soubor do dočasného adresáře.
1. Pohyb. JAR soubory do JDK/JRE **lib/ext** Složka.
1. Přesunout soubory SO do JDK/JRE **lib/amd64** Složka.<br/>

   Například na 64bitu Ubuntu systém, kroky 1-4 budou vypadat takto:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Stáhnout **JAI Image I/O 1.1**, výběr vhodné architektury:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) pro 32-bitové systémy
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) pro 64-bitové procesory (i když používají procesory Intel)
1. Vytáhněte soubor do dočasného adresáře.
1. Pohyb. JAR soubory do JDK/JRE **lib/ext** Složka.
1. Přesunout soubory SO do JDK/JRE **lib/amd64** Složka.<br/>

   Například na 64bitu Ubuntu systém, kroky 5-8 budou vypadat takto:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Složka pro dočasné soubory

Aspose.Words místo Java používá dočasný adresář na vašem počítači, který je určen prostřednictvím `java.io.tmpdir` vlastnost systému. Aspose.Words místo Java napíše dočasné soubory a poté odstraní tyto soubory, jakmile je vykreslení dokončeno.

`java.io.tmpdir` je standard Java Vlastnost systému, která se používá také pomocí zásad ukládání na disku. Určuje, kde JVM píše dočasné soubory.

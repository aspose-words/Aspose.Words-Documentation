---
title: Wymagania dotyczące układu
second_title: Aspose.Words zamiast Java
articleTitle: Wymagania dotyczące układu
linktitle: Wymagania dotyczące układu
description: "Przed rozpoczęciem pracy z Aspose.Words zamiast Java, zapewnić spełnianie wymagań systemu operacyjnego, platformy, ram i środowiska, tak aby działania na urządzeniach są prawidłowo rozliczane."
type: docs
weight: 80
url: /pl/java/system-requirements/
---

Aspose.Words zamiast Java nie wymaga produktu strony trzeciej, takiego jak: Microsoft Word do zainstalowania. Aspose.Words sam jest motorem tworzenia, modyfikacji, konwersji i renderowania dokumentów w różnych formatach, w tym Microsoft Word formaty dokumentów.

## Obsługiwane systemy operacyjne

Każdy system operacyjny, który może uruchomić Java Runtime Environment (JRE) może działać Aspose.Words zamiast Java. Poniższa tabela zawiera listę najbardziej, ale nie wszystkie, obsługiwanych systemów operacyjnych.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">System operacyjny</td>
			<td style="font-weight: bold; width:400px">Wersje</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>i inne</li></ul></td>
		</tr>
  <tr>
			<td>makos</td>
			<td><ul><li>Mac OS wersja 10.9 (Mavericks) i później</li></ul></td>
		</tr>
  <tr>
			<td>Mobile</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Obsługiwane platformy Cloud

Aspose.Words zamiast Java obsługuje platformy w chmurze, które mogą działać Java wniosków

## Obsługiwane Java Wersje

Aspose.Words zamiast Java wsparcie Java 7 i nowsze. Jeśli jesteś zmuszony do użycia Java 6, nadal uwalniamy osobny JAR zamiast Java 6.


## Nieobowiązkowe uzależnienia

Jak stwierdziliśmy powyżej, Aspose.Words zamiast Java wymaga *only* do Java Runtime Environment, i nie trzeba instalować żadnych dodatkowych bibliotek.

Jednak czasami są sytuacje, w których może być konieczne dodanie biblioteki trzeciej partii:

- JogAmp JOGL biblioteka dla sprzętowego przyspieszonego renderowania OpenGL. Biblioteka jest zawarta w aspe- słowa POM plik jako zależność zewnętrzna. Możesz edytować POM plik, aby zachować słoiki JOGL wymagane tylko dla platformy. Albo można usunąć zależność, jeśli nie potrzebujesz sprzętowego przyspieszonego renderowania OpenGL.
- HarfBuzz silnik czcionki. Jest on już włączony do JRE 9 i nowszy. Jeśli używasz JRE 8 lub starszych, można użyć shaping- harfbuzz -plugin zależności w naszym POM plik. W przeciwnym razie, możesz usunąć zależność.
- Java Advanced Imaging (JAI) wspieranie obrazów TIFF. Obrazy TIFF nie są obsługiwane przez Java 8 lat i więcej. Dla wsparcia TIFF w starych Java środowiska, Aspose.Words zamiast Java zależy od [Java Advanced Imaging (JAI) opakowanie](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) od Oracle. Poniżej opiszemy jak zainstalować JAI.

### Jak zainstalować JAI na Windows

Wykonaj te kroki, aby zainstalować natywny JAI i ImageIO dnia Windows:

1. Pobierz **JAI 1.1.3**.
   W momencie pisania dostępna jest tylko 32- bitowa wersja instalatora, więc jeśli używasz JDK musisz pobrać [Jai-1 _ 1 _ 3-lib-windows- i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) a jeśli używasz JRE musisz pobrać [Jai-1 _ 1 _ 3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Uruchom instalatora i skieruj go do katalogu, w którym jest zainstalowany JDK / JRE.
1. Pobierz **JAI Image I / O 1.1**.
   W momencie pisania dostępna jest tylko 32- bitowa wersja instalatora, więc jeśli używasz JDK musisz pobrać [jai _ imageio-1 _ 1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) a jeśli używasz JRE musisz pobrać [jai _ imageio-1 _ 1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Uruchom instalatora i skieruj go do katalogu, w którym jest zainstalowany JDK / JRE.

### Jak zainstalować JAI na Linux

Wykonaj te kroki, aby zainstalować natywny JAI i ImageIO dnia Linux:

1. Pobierz **JAI 1.1.3** wybór odpowiedniej architektury:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) dla systemów 32- bitowych
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) dla 64-bitowych (nawet przy użyciu procesorów Intel)
1. Wyciągnij plik do tymczasowego katalogu.
1. Przesuń JAR pliki do JDK / JRE **lib / ext** folder.
1. Przenieś pliki SO do JDK / JRE **lib / amd64** folder.<br/>

   Na przykład, na 64- bit Ubuntu system, kroki 1- 4 będą wyglądać tak:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Pobierz **JAI Image I / O 1.1**, wybór odpowiedniej architektury:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) dla systemów 32- bitowych
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) dla 64-bitowych (nawet przy użyciu procesorów Intel)
1. Wyciągnij plik do tymczasowego katalogu.
1. Przesuń JAR pliki do JDK / JRE **lib / ext** folder.
1. Przenieś pliki SO do JDK / JRE **lib / amd64** folder.<br/>

   Na przykład, na 64- bit Ubuntu system, kroki 5- 8 będą wyglądać tak:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Katalog plików tymczasowych

Aspose.Words zamiast Java używa tymczasowego katalogu na komputerze, który jest określony za pośrednictwem `java.io.tmpdir` własność systemu. Aspose.Words zamiast Java zapisuje pliki tymczasowe i usuwa je natychmiast po zakończeniu renderowania.

`java.io.tmpdir` jest standardem Java właściwość systemowa, która jest również wykorzystywana przez politykę przechowywania dysków. Określa, gdzie JVM pisze pliki tymczasowe.

---
title: Sistem Gereksinimleri
second_title: Aspose.Words için Java
articleTitle: Sistem Gereksinimleri
linktitle: Sistem Gereksinimleri
description: "Başlamadan önce Aspose.Words için Java ile çalışırken işletim sistemi, platform, çerçeveler ve ortam gereksinimlerini karşıladığınızı doğrulayın böylece cihazlarınızda gerçekleşecek olaylar doğru bir şekilde hesaplanır."
type: docs
weight: 80
url: /tr/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words için Java yüklenmesine üçüncü taraf ürünler Microsoft Word'e ihtiyaç yoktur. Aspose.Words kendisi çeşitli formatlarda, Microsoft Word belgelerinin formatları da dahil olmak üzere, belgelerin oluşturulması, değiştirilmesi, dönüştürülmesi ve oluşturulması için bir motor ve render motorudur.

## Desteklenen İşletim Sistemleri

Herhangi bir İşletim Sistemi Java Çalışma Ortamı (JRE)'yi çalıştırabiliyorsa, Aspose.Words için Java'i çalıştırabilir. Aşağıdaki tablo en çok, ancak hepsi değil, desteklenen işletim sistemlerini listeler.

<tablo>
	<tr>
			<td style="font-weight: bold; width:400px">İşletim Sistemi</td>
			<td style="font-weight: bold; width:400px">Sürümler</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li> <li>Windows 2008 Server (x64, x86)</li> <li>Windows 2012 Server (x64, x86)</li> <li>Windows 2012 R2 Server (x64, x86)</li> <li>Windows 2016 Server (x64, x86)</li> <li>Windows 2019 Server (x64, x86)</li> <li>Windows XP (x64, x86)</li> <li>Windows Vista (x64, x86)</li> <li>Windows 7 (x64, x86)</li> <li>Windows 8, 8.1 (x64, x86)</li> <li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>Açık SUSE</li><li>CentOS</li><li>ve diğerleri</li></ul></td>
		</tr>
  <tr>
			<td>MacOs</td>
			<td><ul><li>macOS sürüm 10.9 (Mavericks) ve sonrası</li></ul></td>
		</tr>
  <tr>
			<td>Mobil</td>
			<td><ul><li>Android</li> <li>iOS</li></ul></td>
		</tr>
</table>

## Desteklenen Bulut Platformları

Aspose.Words için Java destekler herhangi bir bulut platformu Java uygulamaları çalıştırmak

## Desteklenen Java Sürüümleri

Aspose.Words için Java destekler Java 7 ve sonrası. Eğer Java 6 kullanmaya zorlanıyorsanız biz yine de ayrı bir JAR Java 6 için yayınlıyoruz.


## İsteğe Bağlı Bağımlılıklar

Yukarıda belirttiğimiz gibi, Aspose.Words *only* Java Runtime Environment ve ek kütüphaneler yüklemeniz gerekmez.

Ancak bazen sizin üçüncü taraf kütüphaneleri eklemeniz gereken durumlar vardır:

- JogAmp JOGL donanım hızlandırmalı OpenGL işleme için kütüphane. Kütüphane, aspose-words POM dosyasına harici bir bağımlılık olarak dahildir. Sadece platformunuz için gerekli olan JOGL kaplarını korumak için POM dosyasını düzenleyebilirsiniz. Ya da donanım hızlandırmalı OpenGL işleme ihtiyacınız yoksa bağımlılığı kaldırın.
- HarfBuzz yazı tipi motoru. JRE 9 ve yeni sürümlerde zaten yer almaktadır. JRE 8 veya daha yeni kullanıyorsanız, şekillendirme harf buzz eklenti bağımlılığımızı kullanabilirsiniz POM dosyanızda. Aksi takdirde bağımlılığı kaldırabilirsin.
- Java Advanced Imaging (JAI) tiff resimlerini destekler. TIF görüntüleri Java 8 ve daha eski tarafından desteklenmez. Eski Java ortamları için TIFF desteği için, Aspose.Words Java'e bağlıdır. [Java Advanced Imaging (JAI) package](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) 'den gelen." Oracle Aşağıda JAI nasıl yükleneceğini tarif edeceğiz.

### JAI'yi Nasıl Yüklersiniz Windows üzerinde?

Bu adımları izleyerek yerel JAI ve ImageIO yükleyin Windows":

1. İndir **JAI 1.1.3**.
   Yazarken sadece yükleyicinin 32-bit versiyonu mevcuttu, bu yüzden bir JDK kullanıyorsanız [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) 'i ve bir JRE kullanıyorsanız [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe)'i indirmeniz gerekir.
1. Yükleyiciyi çalıştırın ve JDK/JRE'nin yüklendiği dizine işaret edin.
1. İndir **JAI Görüntü G/Ç 1.1**.
   Yazarken, sadece yükleyicinin 32-bit versiyonu mevcuttu, bu yüzden JDK kullanıyorsanız [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) ve JRE kullanıyorsanız [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe) indirmelisiniz
1. Yükleyiciyi çalıştırın ve JDK/JRE yüklendiği dizine yönlendirin.

### JAI'yi Linux üzerine nasıl yükleyeceğiniz

Bu adımları izleyerek yerli JAI ve ImageIO Linux üzerinde yükleyin:

1. İndirme **JAI 1.1.3**, uygun mimariyi seçerek:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) 32 bit sistemler için
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) 64 bitli olanları için (Intel işlemciler kullanıyor olsa bile)
1. Dosyayı geçici bir dizine çıkarın.
1. JAR dosyalarını JDK/JRE **lib/ext** klasörüne taşıyın.
1. SO dosyalarını JDK/JRE **lib/amd64** klasörüne taşı.<br />

   Örneğin, bir 64-bit Ubuntu sistemde adımlar 1-4 şu şekilde görünecektir:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. İndir **JAI Görüntü G/Ç 1.1** uygun mimariyi seçerek:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) için 32 bit sistemleri
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) 64 bit olanlar için (Intel işlemcileri kullandığınızda bile)
1. Dosyayı geçici bir dizine ayıkla.
1. Adım JAR dosyaları JDK/JRE **lib/ext** klasörüne taşıyın.
1. SO dosyalarını JDK/JRE **lib/amd64** klasörüne taşıyın.<br>

   Örneğin bir 64 bitli Ubuntu sistemde adımlar 5-8 şu şekilde görünecek:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Geçici Dosyalar için Klasör

Aspose.Words for Java bir bilgisayarınızda geçici bir klasör kullanır ve bu `java.io.tmpdir` sistem özelliğinde belirtilir. Aspose.Words for Java geçici dosyalar yazar ve bunları işleme tamamlandığında hemen kaldırır.

`java.io.tmpdir` bir standart Java sistem özelliğidir ve disk tabanlı depolama ilkeleri tarafından da kullanılır. Bu, JVM'nin geçici dosyaları nereye yazdığını belirler.

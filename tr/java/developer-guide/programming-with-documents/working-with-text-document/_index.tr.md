---
title: Metin Belge ile Java'da çalışmak
second_title: Aspose.Words için Java
articleTitle: Metin Belgesi ile Çalışmak
linktitle: Metin Belgesi ile Çalışmak
description: "Gelişmiş TXT belge işleme, listeler, BiDi, başlıklar/ayaklar, Java kullanarak."
type: docs
weight: 430
url: /tr/java/working-with-text-document/
---

Bu makalede metin belgesi aracılığıyla çalışmak için hangi seçeneklerin faydalı olabileceğini öğreneceğiz Aspose.Words. Lütfen bunun mevcut olan seçeneklerin tam bir listesi olmadığını ve sadece bunlarla çalışmanın bir örneğini içerdiğini unutmayın.

## Bi-DirectionAL Mark'ları Ekle

BiDi çalıştırmaları arasında biderksiyonal işaretler eklemeyi belirtmek için [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) özelliğini kullanabilirsiniz. Aspose.Words düz metin formatında dışarı aktarırken her BiDi çalıştırması öncesinde Unicode Karakteri 'sağdan sola' işareti (U+200F) ekler. Bu seçenek, MS Word Dosya Dönüştürme iletişim kutusu içinde 'Çift yönlü işaretleri ekle' seçeneğine karşılık gelir ve düz metin biçimine dışarı aktarırken kullanılır. Not edin ki, bu yalnızca MS Word'de Arapça veya İbranice düzenleme dilleri eklendiğinde bir sohbet penceresinde görünür.

Aşağıdaki kod örneği, `TxtSaveOptions.AddBidiMarks` özelliğini nasıl kullanacağınızı göstermektedir. Bu özelliğin varsayılan değeri *true*:":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## TXT Yüklerken Liste Öğelerini Tanı

Aspose.Words bir metin dosyasının liste öğelerini, liste numaraları veya düz metin olarak kendi belge nesne modeline içe aktarabilir. The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) özelliği bir belge düz metin formatından dışa aktarıldığında numaralandırılmış liste öğelerinin nasıl tanımlandığının belirtilmesine izin verir:

* Bu seçenek *true* olarak ayarlanırsa boşluklar da liste numaralandırma ayırıcıları olarak kullanılır: Arapça stil numaralandırma (1., 1.1.2.) listeleme tanıma algoritması hem boşlukları hem de nokta ('.') sembollerini kullanır.
:* Eğer bu seçenek *false* olarak ayarlanırsa, liste tanımı algoritması, listenin sayıları nokta, parantez ya da nokta-çizgi sembolleriyle biter şekilde sonlandığında liste paragraflarını tespit eder ("•", "*", "-" veya "o" gibi).

Aşağıdaki kod örneğinde bu özelliğin nasıl kullanılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## TXT yükleme sırasında önde ve sonunda boşlukları yönet

TXT dosyalarını yüklerken baş ve kuyruk boşluklarını işleme şeklini kontrol edebilirsiniz. Önündeki boşluklar kesilebilir, korunabilir veya girintiye dönüştürülebilir ve sondaki boşluklar kesilebilir veya korunabilir.

Aşağıdaki kod örneğinde, TXT dosyasını içeri aktarırken başlık ve kuyruk boşluklarını nasıl kesebileceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Belge Metni Yönünü Algıla

Aspose.Words sağlar [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) özelliğini [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) sınıfında belgenin metin yönünü (RTL / LTR) tespit etmek için. Bu özellik, [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) numaralandırmada sağlanan belge metin yönlerini ayarlar veya alır. Varsayılan değer soldan sağa doğru.

Aşağıdaki kod örneği, dosyayı içeri aktarmaya devam ederken belge metin yönünü nasıl tespit edileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Çıkış TXT Dosyasında Başlık ve Altbilgi Dışarı Aktar

Çıktı TXT belgesinde başlık ve alt bilgi dışarı aktarmak istiyorsanız, [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) özelliğini kullanabilirsiniz. Bu özellik başlıklar ve altbilgiler düz metin biçimine nasıl dışa aktarıldığını belirtir.

Aşağıdaki kod örneği, başlık ve altbilgileri düz metin biçimine nasıl dışarıya aktaracağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Çıkış Metininde Liste Girintisi Dışa Aktar

Aspose.Words düz metin biçimine dışarı aktarırken liste seviyelerinin nasıl girintilendirileceğini belirten [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) sınıfını tanıttı. [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/)" ile çalışırken "[ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation)" özelliği, liste seviyelerinin girintilenmesi için kullanılacak karakteri belirtmek ve bir liste seviyesi başına kaç karakter kullanılacağını saymak için sağlanır.

Karakter özelliğinin varsayılan değeri '\0' 'dur, bu da girintileme olmadığını gösterir. Sayı özelliği için varsayılan değer 0'dır ki bu bir girintili anlamına gelir.

### Tab Karakterini Kullanmak

Aşağıdaki kod örneği, sekme karakterleri kullanılarak liste düzeylerinin nasıl dışa aktarılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Uzay Karakterini Kullanmak

Aşağıdaki kod örneği boşluk karakterleri kullanılarak liste düzeylerinin nasıl dışa aktarılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Varsayılan Girintileme Kullanıyor

Aşağıdaki örnek kod, varsayılan girintileme kullanarak liste seviyelerini nasıl dışa aktaracağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}

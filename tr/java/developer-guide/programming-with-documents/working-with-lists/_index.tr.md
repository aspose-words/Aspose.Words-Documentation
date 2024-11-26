---
title: Listeler ile Çalışmak Java içinde
second_title: Aspose.Words için Java
articleTitle: Listelerle Çalışmak
linktitle: Listelerle Çalışmak
description: "Sayılandırma biçimlendirme özelliğine giriş Aspose.Words için Java."
type: docs
weight: 200
url: /tr/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Bir Microsoft Word belgesindeki liste bir dizi liste biçimlendirme özelliğidir. Listeler belgenizde metin biçimlendirmek, düzenlemek ve vurgulamak için kullanılabilir. Listeler, belgelerinizdeki verileri düzenlemenin harika bir yoludur ve okuyucuların önemli noktaları daha kolay anlamasını sağlar.

Her liste en fazla 9 seviyeye ve biçimlendirme özellikleri, örneğin sayı stili, başlangıç değeri, girintili, sekme konumu ve diğerleri ayrı ayrı her seviyede tanımlanır.

Bu makale, programlı olarak listelerle çalışmak için Aspose.Words kullanır.

## Liste Biçimlendirmesi Uygulayarak Listeler Oluşturma

Aspose.Words liste oluşturmayı kolaylaştırmak için liste biçimlendirmesi uygular. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sağladığı [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) özelliği bir **ListFormat** nesnesi döndürür. Bu nesne liste başlatmak ve bitirmek ve girintiyi artırmak/azaltmak için birkaç yöntem içerir. Microsoft Word'te iki genel türden liste vardır: noktalama işaretleri ve numaralandırma

- Bir numaralandırma listesi başlatmak için, [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) 'ü çağırın
- Numaralı bir liste başlatmak için, [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) çağırın

Mermi veya sayı ve biçimlendirme geçerli paragrafın ve **DocumentBuilder** ile [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)'e kadar oluşturulan tüm sonraki paragraflara eklenir ve dur demek için noktalı virgül biçimlendirmesi olarak çağrılır.

Word belgelerinde, listeleri dokuz seviyeye kadar içerebilirler. Her seviye için liste biçimlendirmesi ne tür bir nokta veya sayı kullanıldığını, sol kenarlık, noktadan metne arasındaki boşluk vb. belirtir. Aşağıdaki yöntemler listenin seviyesini değiştirir ve yeni seviyenin biçimlendirme özelliklerini uygular:

- Geçerli paragraftaki liste seviyesini bir düzey artırmak için [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent) çağırın
- Geçerli paragrafın liste seviyesini bir basamak azaltmak için [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent) çağırın

Yöntemler liste düzeyini değiştirir ve yeni düzeyin biçimlendirme özelliklerini uygular.

{{% alert color="primary" %}}

Paragraf için liste düzeyini almak veya ayarlamak için ayrıca [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) özelliğini kullanabilirsiniz. Liste düzeyleri 0'dan 8'e kadar numaralandırılır.

{{% /alert %}}

Aşağıdaki kod örneği bir çok düzeyli listenin nasıl oluşturulacağını göstermektedir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Bir liste seviyesi için biçimlendirme belirtin

Liste düzeyinde nesneler, bir liste oluşturulduğunda otomatik olarak oluşturulur. [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) sınıfının özellikleri ve yöntemlerini kullanarak bir listenin bireysel seviyelerinin biçimlendirilmesini kontrol edin.

## Her Bölüm için Yeniden Başlat Liste

Her bölüm için bir liste yeniden başlatmak için [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) özelliğini kullanabilirsiniz. Not edin ki bu seçenek sadece RTF, DOC ve DOCX belge formatlarında desteklenir. Bu seçenek OoxmlCompliance Ecma376'dan yüksekse sadece DOCX'e yazılır.

Aşağıdaki kod örneği bir listenin nasıl oluşturulacağını ve her bölüm için yeniden başlatılacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}


---
title: Tablo stilleriyle çalışmak Java'da
second_title: Aspose.Words için Java
articleTitle: Tablo Stili Uygula
linktitle: Tablo Stili Uygula
description: "Gelişmiş tablo biçimlendirme Java. Java'ı kullanarak bir tablo stili oluşturun. Gelişmiş tablo biçimlendirmesine giriş, Tablo stilleri Java kullanarak."
type: docs
weight: 80
url: /tr/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Bir tablo stili, kolayca bir tabloya uygulanabilen bir dizi biçimlendirme tanımlamaktadır. Sınır, gölgelendirme, hizalama ve yazı tipi gibi biçimlendirme bir tablo tarzında ayarlanabilir ve birçok tabloya tutarlı görünüm sağlamak için uygulanabilir.

Aspose.Words bir tabloya tablo stilini uygulamayı ve ayrıca herhangi bir tablo stilinin özelliklerini okumayı destekler. Tablo stilleri aşağıdaki yollarla yükleme ve kaydetme sırasında korunur:

- DOCX ve WordML formatlarında tablo stilleri yükleme ve kaydetme sırasında korunur
- Tablo stilleri, DOC formatında yükleme ve kaydetme yapıldığında korunur (ama başka hiçbir formata değil)
- Diğer formatlara dışa aktarırken veya yazdırırken tablo stilleri doğrudan tablo biçimlendirmesine genişletilir, böylece tüm biçimlendirme korunur

## Bir Tablo Stili Oluşturun

Kullanıcı yeni bir stil oluşturabilir ve stil koleksiyonuna ekleyebilir. The [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) yöntemi yeni bir tablo stili oluşturmak için kullanılır.

Aşağıdaki kod örneği yeni bir kullanıcı tanımlı tablo stilinin nasıl oluşturulacağını göstermektedir:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Mevcut Bir Tablo Stilini Kopyala

Gerekirse, şu anki bir dosyadaki zaten var olan bir tablo stilini stil koleksiyonunuza `AddCopy` yöntemiyle kopyalayabilirsiniz.

Bunu bilmek önemlidir ki bu kopyalama ile birbirine bağlı olan stiller de kopyalanır.

Aşağıdaki kod örneği bir stilin bir belgeden başka bir belgeye nasıl içe aktarılacağını göstermektedir:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Mevcut Bir Masa Stilini Uygula

Aspose.Words [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/)'ı [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) sınıfından devralır. **TableStyle** kullanıcıya gölgelendirme, dolgu, girintileme, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) ve [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont) gibi farklı stil seçeneklerini uygulamaya olanak tanır.

Bunun yanı sıra, Aspose.Words sağladığı [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) sınıfı ve `Table` sınıfının birkaç özelliğini belirtir ki hangi tablo stilini kullanacağımızı: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName) ve [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words ayrıca [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) sınıfını sağlar, bu da bir tablodaki belirli bir alanın atanan bir tablo stiline uygulanan özel biçimlendirmeyi temsil eder ve [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) bir koleksiyonu **ConditionalStyle** nesneyi temsil eder. Bu koleksiyon [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) numaralandırma türünün her değeri için bir öğe temsil eden kalıcı bir öğeler kümesini içerir. The **ConditionalStyleType** numaralandırma, bir tablo stilinde hangi koşullu biçimlendirmenin tanımlanabileceğini belirten tüm olası tablo alanlarını tanımlar.

Bu durumda, tüm olası tablo alanı tanımlanmış 'ConditionalStyleType' numaralandırma türünün altında koşullu biçimlendirme tanımlanabilir.

Aşağıdaki kod örneği, tablonun başlık satırına nasıl koşullu biçimlendirme tanımlanacağını göstermektedir:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Sınıflara stil uygulamak istediğiniz tablo kısımlarını da seçebilirsiniz, örneğin ilk sütun veya son sütun, çizgili satırlar. Onlar [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) numaralandırmada listelenir ve [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) özelliği aracılığıyla uygulanır. Bu **TableStyleOptions** numaralandırma bu özelliklerin bir bitwise kombinasyonu sağlar.

Aşağıdaki kod örneği bir tablo stili uygulandıran yeni bir tablonun nasıl oluşturulacağını göstermektedir:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Aşağıdaki resimler, **Table Styles** 'nin Microsoft Word'deki gösterimini ve bunların karşılık gelen özellikleri Aspose.Words gösterir.

![table-style-aspose-words-java](working-with-table-styles-1.png)

## Masa Stilinden Biçimlendirme Al ve Doğrudan Biçimlendirme olarak Uygula

Aspose.Words ayrıca bir tablo stilinde bulunan biçimlendirmeyi alarak onu tablo satırlarına ve hücrelerine doğrudan biçimlendirme olarak genişleten ' [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting)' yöntemini de sağlar. Biçimlendirmeyi tablo stili ve hücre stiliyle birleştirmeyi dene.

{{% alert color="primary" %}}

Bu yöntem, tabloya satır veya hücre biçimlendirme aracılığıyla uygulanmış başka bir biçimlendirmeyi geçersiz kılmayacaktır.

{{% /alert %}}

Aşağıdaki kod örneği, biçimi stillerden masraf satırlarına ve hücrelere doğrudan biçimlendirme olarak genişletmenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}

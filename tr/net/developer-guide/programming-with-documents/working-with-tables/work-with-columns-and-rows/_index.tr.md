---
title: C#'te Sütunlar ve Satırlar ile Çalışma
second_title: .NET için Aspose.Words
articleTitle: Sütunlar ve Satırlar ile Çalışma
linktitle: Sütunlar ve Satırlar ile Çalışma
description: "C# kullanarak bir tablonun satırları, sütunları ve hücreleri gibi bölümleriyle çalışma. Başlık Satırı C#'i belirtin."
type: docs
weight: 30
url: /tr/net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Tabloların nasıl çalıştığı üzerinde daha fazla kontrol sahibi olmak için sütunları ve satırları nasıl değiştireceğinizi öğrenin.

## Tablo Öğesi Dizinini {#find-the-index-of-table-elements}'i Bulun

Sütunlar, satırlar ve hücreler, seçilen belge düğümüne indeksinden erişilerek yönetilir. Herhangi bir düğümün dizinini bulmak, öğe türündeki tüm alt düğümlerin üst düğümden toplanmasını ve ardından koleksiyonda istenen düğümün dizinini bulmak için [IndexOf](https://reference.aspose.com/words/tr/net/aspose.words/nodecollection/indexof/) yöntemini kullanmayı içerir.

### {#find-the-index-of-table-in-a-document} Belgesindeki Tablonun Dizinini Bulma

Bazen bir belgedeki belirli bir tabloda değişiklik yapmanız gerekebilir. Bunu yapmak için bir tabloya indeksine göre başvurabilirsiniz.

Aşağıdaki kod örneği, bir belgedeki tablonun dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Tablo {#find-the-index-of-a-row-in-a-table}'teki Satırın Dizinini Bulma

Benzer şekilde seçilen bir tablodaki belirli bir satırda değişiklik yapmanız gerekebilir. Bunu yapmak için bir satıra dizinine göre de başvurabilirsiniz.

Aşağıdaki kod örneği, bir tablodaki bir satırın dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Bir Satırdaki Hücrenin Dizinini Bul {#find-the-index-of-a-cell-in-a-row}

Son olarak, belirli bir hücrede değişiklik yapmanız gerekebilir ve bunu hücre indeksi ile de yapabilirsiniz.

Aşağıdaki kod örneği, satırdaki bir hücrenin dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Sütunlar {#work-with-columns} ile Çalışma

Aspose.Words Document Object Model'de (DOM), [Table](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/) düğümü [Row](https://reference.aspose.com/words/tr/net/aspose.words.tables/row/) düğümlerinden ve ardından [Cell](https://reference.aspose.com/words/tr/net/aspose.words.tables/cell/) düğümlerinden oluşur. Dolayısıyla Aspose.Words'in `Document` Nesne Modelinde, Word belgelerinde olduğu gibi sütun kavramı yoktur.

Tasarım gereği, Microsoft Word ve Aspose.Words'deki tablo satırları tamamen bağımsızdır ve temel özellikler ve işlemler yalnızca tablonun satırlarında ve hücrelerinde bulunur. Bu, tablolara bazı ilginç özelliklere sahip olma yeteneği kazandırır:

- Her tablo satırı tamamen farklı sayıda hücreye sahip olabilir
- Dikey olarak her satırın hücreleri farklı genişliklere sahip olabilir
- Farklı satır formatına ve hücre sayısına sahip tabloları birleştirmek mümkündür

Sütunlar üzerinde gerçekleştirilen işlemler aslında satır hücrelerini sütunlara uygulanıyormuş gibi toplu olarak değiştirerek işlemi gerçekleştiren "kısayollardır". Yani, aynı tablo satırı hücre dizini üzerinde basitçe yineleme yaparak sütunlar üzerinde işlemler gerçekleştirebilirsiniz.

Aşağıdaki kod örneği, bir tablonun "sütununu" oluşturan hücreleri toplayan bir cephe sınıfını kanıtlayarak bu tür işlemleri basitleştirir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

Aşağıdaki kod örneği, boş bir sütunun tabloya nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

Aşağıdaki kod örneği, bir belgedeki tablodan bir sütunun nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Satırları Başlık Satırları Olarak Belirtin

Tablodaki ilk satırı Başlık Satırı olarak yalnızca ilk sayfada veya tablo birkaç sayfaya bölünmüşse her sayfada tekrarlamayı seçebilirsiniz. Aspose.Words'te, [HeadingFormat](https://reference.aspose.com/words/tr/net/aspose.words.tables/rowformat/headingformat/) özelliğini kullanarak Başlık Satırını her sayfada tekrarlayabilirsiniz.

Ayrıca, birden fazla başlık satırını, bu satırların tablonun başında birbiri ardına yerleştirilmesi durumunda da işaretleyebilirsiniz. Bunu yapmak için **HeadingFormat** özelliklerini bu satırlara uygulamanız gerekir.

{{% alert color="primary" %}}

Başlık Satırlarının iç içe geçmiş tablolarda çalışmadığını unutmayın. Yani başka bir tablonun içinde bir tablonuz varsa bu ayarın hiçbir etkisi olmayacaktır. Buna izin vermeyen Aspose.Words'nin değil Microsoft Word'in bir sınırlamasıdır.

{{% /alert %}}

Aşağıdaki kod örneği, sonraki sayfalarda tekrarlanan Başlık Satırlarını içeren bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Tabloların ve Satırların Sayfalar Arasında Ayrılmasını Önleyin {#keep-tables-and-rows-from-breaking-across-pages}

Bir tablonun içeriğinin sayfalara bölünmemesi gereken zamanlar vardır. Örneğin, bir başlık bir tablonun üzerindeyse, düzgün görünümü korumak için başlık ve tablo her zaman aynı sayfada bir arada tutulmalıdır.

Bu işlevselliği elde etmek için yararlı olan iki ayrı teknik vardır:

- Tablo satırlarına uygulanan `Allow row break across pages`
- Tablo hücrelerindeki paragraflara uygulanan `Keep with next`

Varsayılan olarak yukarıdaki özellikler devre dışıdır.

### Bir Satırın Sayfalar Arasında Kırılmasını Önleyin {#keep-a-row-from-breaking-across-pages}

Bu, bir satırın hücreleri içindeki içeriğin sayfaya bölünmesinin kısıtlanmasını içerir. Microsoft Word'te bu, Tablo Özellikleri altında "Satırın sayfalar arasında bölünmesine izin ver" seçeneği olarak bulunabilir. Aspose.Words'de bu, bir [Row](https://reference.aspose.com/words/tr/net/aspose.words.tables/row/)'in [RowFormat](https://reference.aspose.com/words/tr/net/aspose.words.tables/rowformat/) nesnesi altında [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/tr/net/aspose.words.tables/row/format/properties/allowbreakacrosspages) özelliği olarak bulunur.

Aşağıdaki kod örneği, bir tablodaki her satır için satırların sayfalar arasında bölünmesinin nasıl devre dışı bırakılacağını gösterir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)'ten indirebilirsiniz.

{{% /alert %}}

### Bir Tablonun Sayfalar Arasında Bozulmasını Önleyin {#keep-a-table-from-breaking-across-pages}

Tablonun sayfalara bölünmesini engellemek için tablonun içerdiği içeriğin bir arada kalmasını istediğimizi belirtmemiz gerekir.

Bunu yapmak için Aspose.Words, kullanıcıların bir tablo seçmesine ve tablo hücreleri içindeki her paragraf için true'e [KeepWithNext](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/keepwithnext/) parametresini etkinleştirmesine olanak tanıyan bir yöntem kullanır. Bunun istisnası, tablonun false olarak ayarlanması gereken son paragrafıdır.

Aşağıdaki kod örneği, bir tablonun aynı sayfada birlikte kalacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)'ten indirebilirsiniz.

{{% /alert %}}

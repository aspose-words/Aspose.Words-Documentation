---
title: Sütunlar ve Satırlar ile Çalışma
second_title: Python via .NET için Aspose.Words
articleTitle: Sütunlar ve Satırlar ile Çalışma
linktitle: Sütunlar ve Satırlar ile Çalışma
description: "Python kullanarak bir tablonun satırları, sütunları ve hücreleri gibi bölümleriyle çalışma. Başlık Satırı Python'i belirtin."
type: docs
weight: 30
url: /tr/python-net/working-with-columns-and-rows/
---

Tabloların nasıl çalıştığı üzerinde daha fazla kontrol sahibi olmak için sütunları ve satırları nasıl değiştireceğinizi öğrenin.

## Tablo Öğesi Dizinini Bulma

Sütunlar, satırlar ve hücreler, seçilen belge düğümüne indeksinden erişilerek yönetilir. Herhangi bir düğümün dizinini bulmak, öğe türündeki tüm alt düğümlerin üst düğümden toplanmasını ve ardından koleksiyonda istenen düğümün dizinini bulmak için [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) yöntemini kullanmayı içerir.

### Bir Belgedeki Tablonun Dizinini Bulma

Bazen bir belgedeki belirli bir tabloda değişiklik yapmanız gerekebilir. Bunu yapmak için bir tabloya indeksine göre başvurabilirsiniz.

Aşağıdaki kod örneği, bir belgedeki tablonun dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Tablodaki Bir Satırın Dizinini Bulma

Benzer şekilde seçilen bir tablodaki belirli bir satırda değişiklik yapmanız gerekebilir. Bunu yapmak için bir satıra dizinine göre de başvurabilirsiniz.

Aşağıdaki kod örneği, bir tablodaki bir satırın dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Bir Satırdaki Hücrenin Dizinini Bulma

Son olarak, belirli bir hücrede değişiklik yapmanız gerekebilir ve bunu hücre indeksi ile de yapabilirsiniz.

Aşağıdaki kod örneği, satırdaki bir hücrenin dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Sütunlarla Çalışma

Aspose.Words Document Object Model'de (DOM), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) düğümü [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) düğümlerinden ve ardından [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) düğümlerinden oluşur. Dolayısıyla Aspose.Words'in `Document` Nesne Modelinde, Word belgelerinde olduğu gibi sütun kavramı yoktur.

Tasarım gereği, Microsoft Word ve Aspose.Words'deki tablo satırları tamamen bağımsızdır ve temel özellikler ve işlemler yalnızca tablonun satırlarında ve hücrelerinde bulunur. Bu, tablolara bazı ilginç özelliklere sahip olma yeteneği kazandırır:

- Her tablo satırı tamamen farklı sayıda hücreye sahip olabilir
- Dikey olarak her satırın hücreleri farklı genişliklere sahip olabilir
- Farklı satır formatına ve hücre sayısına sahip tabloları birleştirmek mümkündür

Sütunlar üzerinde gerçekleştirilen işlemler aslında satır hücrelerini sütunlara uygulanıyormuş gibi toplu olarak değiştirerek işlemi gerçekleştiren "kısayollardır". Yani, aynı tablo satırı hücre dizini üzerinde basitçe yineleme yaparak sütunlar üzerinde işlemler gerçekleştirebilirsiniz.

Aşağıdaki kod örneği, bir tablonun "sütununu" oluşturan hücreleri toplayan bir cephe sınıfını kanıtlayarak bu tür işlemleri basitleştirir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

Aşağıdaki kod örneği, boş bir sütunun tabloya nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

Aşağıdaki kod örneği, bir belgedeki tablodan bir sütunun nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Satırları Başlık Satırları Olarak Belirtin

Tablodaki ilk satırı Başlık Satırı olarak yalnızca ilk sayfada veya tablo birkaç sayfaya bölünmüşse her sayfada tekrarlamayı seçebilirsiniz. Aspose.Words'te, [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/) özelliğini kullanarak Başlık Satırını her sayfada tekrarlayabilirsiniz.

Ayrıca, birden fazla başlık satırını, bu satırların tablonun başında birbiri ardına yerleştirilmesi durumunda da işaretleyebilirsiniz. Bunu yapmak için **HeadingFormat** özelliklerini bu satırlara uygulamanız gerekir.

{{% alert color="primary" %}}

Başlık Satırlarının iç içe geçmiş tablolarda çalışmadığını unutmayın. Yani başka bir tablonun içinde bir tablonuz varsa bu ayarın hiçbir etkisi olmayacaktır. Buna izin vermeyen Aspose.Words'nin değil Microsoft Word'in bir sınırlamasıdır.

{{% /alert %}}

Aşağıdaki kod örneği, sonraki sayfalarda tekrarlanan Başlık Satırlarını içeren bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Tabloların ve Satırların Sayfalar Arasında Ayrılmasını Önleyin

Bir tablonun içeriğinin sayfalara bölünmemesi gereken zamanlar vardır. Örneğin, bir başlık bir tablonun üzerindeyse, düzgün görünümü korumak için başlık ve tablo her zaman aynı sayfada bir arada tutulmalıdır.

Bu işlevselliği elde etmek için yararlı olan iki ayrı teknik vardır:

- Tablo satırlarına uygulanan `Allow row break across pages`
- Tablo hücrelerindeki paragraflara uygulanan `Keep with next`

Varsayılan olarak yukarıdaki özellikler devre dışıdır.

### Bir Satırın Sayfalar Arasında Kırılmasını Önleyin

Bu, bir satırın hücreleri içindeki içeriğin sayfaya bölünmesinin kısıtlanmasını içerir. Microsoft Word'te bu, Tablo Özellikleri altında "Satırın sayfalar arasında bölünmesine izin ver" seçeneği olarak bulunabilir. Aspose.Words'de bu, bir [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)'in [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) nesnesi altında [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/) özelliği olarak bulunur.

Aşağıdaki kod örneği, bir tablodaki her satır için satırların sayfalar arasında bölünmesinin nasıl devre dışı bırakılacağını gösterir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)'ten indirebilirsiniz.

{{% /alert %}}

### Bir Tablonun Sayfalardan Ayrılmasını Önleyin

Tablonun sayfalara bölünmesini engellemek için tablonun içerdiği içeriğin bir arada kalmasını istediğimizi belirtmemiz gerekir.

Bunu yapmak için Aspose.Words, kullanıcıların bir tablo seçmesine ve tablo hücreleri içindeki her paragraf için true'e [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) parametresini etkinleştirmesine olanak tanıyan bir yöntem kullanır. Bunun istisnası, tablonun false olarak ayarlanması gereken son paragrafıdır.

Aşağıdaki kod örneği, bir tablonun aynı sayfada birlikte kalacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)'ten indirebilirsiniz.

{{% /alert %}}
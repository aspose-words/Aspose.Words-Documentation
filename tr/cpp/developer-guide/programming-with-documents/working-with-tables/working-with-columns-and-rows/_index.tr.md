---
title: C++ içindeki Sütun ve Satırlarla Çalışma
second_title: Aspose.Words için C++
articleTitle: Sütun ve Satırlarla Çalışma
linktitle: Sütun ve Satırlarla Çalışma
description: "Bir tablonun bölümleriyle çalışmak - C++ kullanarak satırlar, sütunlar ve hücreler. C++ Başlık Satırını belirtin."
type: docs
weight: 30
url: /tr/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Tabloların nasıl çalıştığı üzerinde daha fazla denetim için sütunları ve satırları nasıl değiştireceğinizi öğrenin.

## Tablo Öğesi Dizinini Bulun

Sütunlar, satırlar ve hücreler, seçilen belge düğümüne dizini tarafından erişilerek yönetilir. Herhangi bir düğümün dizinini bulmak, öğe türündeki tüm alt düğümlerin üst düğümden toplanmasını ve ardından koleksiyonda istenen düğümün dizinini bulmak için [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) yöntemini kullanmayı içerir.

### Belgedeki Tablonun Dizinini Bulma

Bazen bir belgedeki belirli bir tabloda değişiklik yapmanız gerekebilir. Bunu yapmak için, bir tabloya dizinine göre başvurabilirsiniz.

Aşağıdaki kod örneği, bir belgedeki bir tablonun dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Tablodaki Bir Satırın Dizinini Bulun {#find-the-index-of-a-row-in-a-table}

Benzer şekilde, seçili bir tablodaki belirli bir satırda değişiklik yapmanız gerekebilir. Bunu yapmak için, bir satıra dizinine göre de başvurabilirsiniz.

Aşağıdaki kod örneği, bir tablodaki bir satırın dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Satırdaki Bir Hücrenin Dizinini Bulun {#find-the-index-of-a-cell-in-a-row}

Son olarak, belirli bir hücrede değişiklik yapmanız gerekebilir ve bunu hücre dizinine göre de yapabilirsiniz.

Aşağıdaki kod örneği, bir satırdaki bir hücrenin dizininin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Sütunlarla Çalışma

Aspose.Words Belge Nesnesi Modelinde (DOM), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) düğümü [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) düğümden ve ardından [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) düğümden oluşur. Bu nedenle, Aspose.Words 'ün `Document` Nesne Modelinde, Word belgelerinde olduğu gibi, sütun kavramı yoktur.

Tasarım gereği, Microsoft Word ve Aspose.Words içindeki tablo satırları tamamen bağımsızdır ve temel özellikler ve işlemler yalnızca tablonun satırlarında ve hücrelerinde bulunur. Bu, tablolara bazı ilginç özelliklere sahip olma yeteneği verir:

- Her tablo satırı tamamen farklı sayıda hücreye sahip olabilir
- Dikey olarak, her satırın hücreleri farklı genişliklere sahip olabilir
- Farklı satır biçimlerine ve hücre sayısına sahip tabloları birleştirmek mümkündür

Sütunlar üzerinde gerçekleştirilen tüm işlemler aslında satır hücrelerini sütunlara uygulanıyormuş gibi görünecek şekilde toplu olarak değiştirerek işlemi gerçekleştiren "kısayollar" dır. Diğer bir deyişle, yalnızca aynı tablo satırı hücre dizini üzerinde yineleyerek sütunlar üzerinde işlemler gerçekleştirebilirsiniz.

Aşağıdaki kod örneği, bir tablonun "sütununu" oluşturan hücreleri toplayan bir cephe sınıfını kanıtlayarak bu tür işlemleri basitleştirir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

Aşağıdaki kod örneği, tabloya boş bir sütunun nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

Aşağıdaki kod örneği, bir belgedeki bir tablodan bir sütunun nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Satırları Başlık Satırları Olarak Belirtin

Tablo birkaç bölüme ayrılmışsa, tablodaki ilk satırı yalnızca ilk sayfada veya her sayfada Üstbilgi Satırı olarak yinelemeyi seçebilirsiniz. Aspose.Words'de, [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/) özelliğini kullanarak her sayfadaki Başlık Satırını tekrarlayabilirsiniz.

Tablonun başında bu tür satırlar birbiri ardına bulunuyorsa, birden çok başlık satırını da işaretleyebilirsiniz. Bunu yapmak için **HeadingFormat** özelliklerini bu satırlara uygulamanız gerekir.

{{% alert color="primary" %}}

Üstbilgi Satırlarının iç içe geçmiş tablolarda çalışmadığını unutmayın. Başka bir deyişle, başka bir tablonun içinde bir tablonuz varsa, bu ayarın hiçbir etkisi olmaz. Buna izin vermeyen Microsoft Word sınırlamasıdır, Aspose.Words değil.

{{% /alert %}}

Aşağıdaki kod örneği, sonraki sayfalarda yinelenen Üstbilgi Satırlarını içeren bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Tabloların ve Satırların Sayfalar Arasında Bölünmesini Önleyin

Bir tablonun içeriğinin sayfalar arasında bölünmemesi gereken zamanlar vardır. Örneğin, bir başlık bir tablonun üzerindeyse, düzgün görünümü korumak için başlık ve tablo her zaman aynı sayfada bir arada tutulmalıdır.

Bu işlevselliği elde etmek için yararlı olan iki ayrı teknik vardır:

- `Allow row break across pages`, tablo satırlarına uygulanır
- tablo hücrelerindeki paragraflara uygulanan `Keep with next`

Varsayılan olarak, yukarıdaki özellikler devre dışıdır.

### Bir Satırın Sayfalar Arasında Bölünmesini Engelle {#keep-a-row-from-breaking-across-pages}

Bu, bir satırdaki hücrelerin içindeki içeriğin bir sayfaya bölünmesini kısıtlamayı içerir. Microsoft Word 'te bu, Tablo Özellikleri altında "Satırın sayfalar arasında kesilmesine izin ver" seçeneği olarak bulunabilir. Aspose.Words 'te bu, [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)'nin [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) nesnesinin altında [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/) özelliği olarak bulunur.

Aşağıdaki kod örneği, bir tablodaki her satır için sayfalar arasında satır kesmenin nasıl devre dışı bırakılacağını gösterir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Bir Tablonun Sayfalar Arasında Bölünmemesini Sağlayın {#keep-a-table-from-breaking-across-pages}

Tablonun sayfalar arasında bölünmesini durdurmak için, tabloda yer alan içeriğin bir arada kalmasını istediğimizi belirtmemiz gerekir.

Bunu yapmak için Aspose.Words, kullanıcıların bir tablo seçmesine ve tablo hücrelerindeki her paragraf için [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) parametresini true olarak etkinleştirmesine olanak tanıyan bir yöntem kullanır. Bunun istisnası, tablodaki false olarak ayarlanması gereken son paragraftır.

Aşağıdaki kod örneği, bir tablonun aynı sayfada birlikte kalacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}

---
title: Sütunlar ve Satırlar ile Çalışın Java
second_title: Aspose.Words için Java
articleTitle: Sütunlarla ve Satırlarla Çalışın
linktitle: Sütunlarla ve Satırlarla Çalışın
description: "Bir tablonun bölümleriyle çalışma – satırlar, sütunlar ve hücreler Java kullanarak. Header satırı belirtin Java."
type: docs
weight: 30
url: /tr/java/working-with-columns-and-rows/
---

Tablo üzerinde daha fazla kontrol için, nasıl sütunları ve satırları manipüle edileceğini öğrenin.

## Tablo Öğesi Dizini Bulun

Sütunlar, satırlar ve hücreler seçilen belge düğümüne erişerek yönetilir. Herhangi bir düğümün dizinini bulmak, alt düğümlerin tümünü ebeveyn düğümden toplayıp ardından [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) yöntemini kullanarak arzu edilen düğümün koleksiyon içindeki dizinini bulmayı içerir.

### Bir Belge İçinde Bir Tablonun Dizinini Bulun

Bazen bir belgedeki belirli bir tabloya değişiklik yapmanız gerekebilir. Bunu yapmak için, bir tablonun dizinine başvurabilirsiniz.

Aşağıdaki kod örneği bir belgedeki tablonun dizinini nasıl alacağını göstermektedir:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Bir Tablodaki Bir Satırın Endeksini Bulma

Benzer şekilde, belirli bir satıra seçilmiş bir tabloda değişiklik yapmanız gerekebilir. Bunu yapmak için, dizinine göre bir satıra da başvurabilirsiniz.

Aşağıdaki kod örneği bir tablodaki bir satırın dizinini nasıl alacağını göstermektedir:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Bir Sırada Hücre Endeksini Bulma

Son olarak, özel bir hücreye değişiklik yapmanız gerekebilir ve bunu hücre dizinine göre de yapabilirsiniz.

Aşağıdaki kod örneği bir satırdaki bir hücrenin dizinini nasıl alacağınızı gösterir:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Sütunlarla Çalış

Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) düğümü [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) düğüm ve sonra [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) düğüm içerir. Böylece, `Document` Nesne Modeli Aspose.Words içerisinde, kelime belgelerinde olduğu gibi, bir sütunun kavramı yoktur.

Tasarım gereği tablo satırları Microsoft Word ve Aspose.Words tamamen bağımsızdır, temel özellikler ve işlemler yalnızca tablodaki satırlar ve hücrelerde bulunur. Bu tabloların bazı ilginç özniteliklere sahip olma yeteneğini verir:

- Her tablo satırı tamamen farklı bir hücre sayısı olabilir
- Dikey olarak her satırdaki hücreler farklı genişlikler alabilir
- Farklı satır formatı ve hücre sayısına sahip tablolarla birleştirme mümkündür

![work-with-columns-aspose-words-java](working-with-columns-and-rows-1.png)

Sütunlara uygulanan herhangi bir işlem aslında "hızlı yollar"'dır ve bu şekilde satır hücrelerini toplu olarak değiştirerek sütunlara uygulanmış gibi göründüğü şekilde işlemi gerçekleştirir. Bu, yani; aynı tablo satırı hücre dizinini yineleyerek sütunlarda işlemler gerçekleştirebilirsiniz.

Aşağıdaki kod örneği, bir tablodaki "sütun"u oluşturan hücreleri toplayan bir "facade" sınıfı sağlayarak bu tür işlemleri basitleştirir:"

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Aşağıdaki kod örneği bir tabloya boş sütun eklemenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Aşağıdaki kod örneği bir belgedeki bir tablodan bir sütun nasıl kaldırılacağını göstermektedir:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Sütunları Başlık Sütunları Olarak Belirt

Tabloya ilk sayfa için sadece başlık satırı olarak veya birden fazla ise tablo bölündüğünde her sayfada tekrar tekrarlanabilir bir ilk satır seçebilirsiniz. In Aspose.Words birinde, başlık satırını her sayfada tekrarlayabilirsiniz ve bunu yapmak için [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) özelliğini kullanabilirsiniz.

Bir sonraki satırda bulunan bu satırlar birbiri ardına yer alıyorsa birden fazla başlık satırı işaretleyebilirsiniz. Bunu yapmak için bu satırlara **HeadingFormat** özelliklerini uygulamanız gerekir.

{{% alert color="primary" %}}

Not that başlık satırları iç içe geçmiş tablolarda çalışmaz. Bu demek oluyor ki, eğer bir tablo içinde başka bir tablo varsa, bu ayar etkili olmayacak. Bu bunu yapmaz bir sınırlamadır Microsoft Word, değilse Aspose.Words.

{{% /alert %}}

Aşağıdaki kod örneği bir sonraki sayfada tekrarlanan başlık satırları içeren bir tablo oluşturmayı gösterir:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Sayfa Aralarında Kırılmadan Tablolar ve Satırlar Tut" {#keep-tables-and-rows-from-breaking-across-pages}

Bir tablodaki içeriğin sayfalar arasında bölünmemesi gereken zamanlar var. Örneğin, eğer bir başlık bir tablonun üstündese, başlık ve tablo her zaman düzgün görünümlerini korumak için aynı sayfada birlikte tutulmalıdır.

Bu işlevselliği elde etmek için yararlı olan iki ayrı teknik vardır:''

- `Allow row break across pages`, tablo satırlarına uygulanan
- `Keep with next`, tablo hücrelerindeki paragraflara uygulanan

Varsayılan olarak, yukarıdaki özellikler devre dışı bırakılır.

<img src="keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Sayfalara yayılmaktan bir satırı sakla {#keep-a-row-from-breaking-across-pages}

Bu, bir satırın hücrelerindeki içeriğin bir sayfaya yayılmasını sınırlandırmayı içerir. Bu, Microsoft Word 'da Tablonun Özellikleri altında "Satırın Sayfa Arasında Kırılmasına İzin Ver" seçeneğinde bulunur. Bu, bir [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) nesnesindeki [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) altında, [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages) özelliğinin Aspose.Words olarak bulunur.

<img src="keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Aşağıdaki kod örneği, bir tablodaki her satır için sayfaları kesmeyi nasıl devre dışı bırakacağını göstermektedir:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Bir Tablonun Sayfa Üstünden Kırılmasını Önle." {#keep-a-table-from-breaking-across-pages}

Tablonun sayfaların arasında bölünmesini durdurmak için, tablodaki içeriğin birlikte kalmasını istediğimizi belirtmemiz gerekiyor.

Bunu yapmak için, Aspose.Words bir yöntem kullanır, kullanıcıların bir tablo seçmesine ve [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parametresini her tablo hücresi içindeki paragraf için true etmesine izin verir. Bu, tablodaki son paragraftır ve false'ye ayarlanmalıdır.

<img src="keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Aşağıdaki kod örneği bir tablonun aynı sayfada kalmasını nasıl ayarlayacağını gösterir:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
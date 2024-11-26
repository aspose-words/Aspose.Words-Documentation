---
title: Markdown DOM 'a çevirin
second_title: Aspose.Words için Java
articleTitle: Bir Markdown Document Object Model'a çevirin (DOM)
linktitle: Bir Markdown Document Object Model'a çevirin (DOM)
type: docs
description: "Tarnslate belgesiyle oynayın Markdown bir belgeye ve geri Document Object Model. Bu şekilde, karmaşık mevcut Markdown ile çalışabilirsiniz ve Java'yi kullanarak programatik olarak sıfırdan bir Markdown belgesi oluşturabilirsiniz."
weight: 20
url: /tr/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Belgenin içeriğini ve biçimlendirmesini programlı olarak okumak, değiştirmek ve değiştirmek için, bunu Aspose.Words Document Object Model ( DOM ) 'e çevirmek gerekir.

Word belgeleriyle çelişkili olarak, Markdown makale [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/) içinde açıklanan DOM'ü takip etmez. Bununla birlikte, Aspose.Words kendi mekanizmasını çevirerek Markdown belgeleri için DOM ve geri çevirme, bu nedenle metin biçimlendirme, tablolar, başlıklar vb. gibi öğeleri ile başarıyla çalışabiliriz.

Bu makale, çeşitli markdown özelliklerinin nasıl Aspose.Words DOM ve geri Markdown formatına çevrildiğini gösterir.

## Çevirinin karmaşıklığı Markdown – DOM – Markdown

Bu mekanizmanın ana zorluğu yalnızca Markdown'i DOM'e çevirmek değil, aynı zamanda ters dönüşümü gerçekleştirmektir – belgenin en az kaybıyla Markdown formatına geri dönüştürülmesini sağlamaktır. Ters dönüşüm için üçgen alıntılar gibi bazı elemanlar söz konusudur ve bu elemanların ters dönüşümü kolay değildir.

Çeviri motorumuz kullanıcıların var olan bir Markdown belgesinde karmaşık öğelerle çalışmasına olanak verir, ancak aynı zamanda orijinal yapısından başlayarak kendi Markdown biçimindeki belgelerini sıfırdan oluşturmasına da izin verir. Çeşitli öğeler oluşturmak için belirli kurallar daha sonra bu makalede açıklanan belirli adlara sahip stilleri kullanmanız gerekir. Bu stiller programatik olarak oluşturulabilir.

## Ortak Çeviri İlkeleri

Çizgili bloklar için [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) biçimlendirme kullanıyoruz. Bir özelliğin doğrudan karşılığı olmadığında bir Markdown özelliği var Aspose.Words DOM, bir karakter stilini kullanırız, adı bazı özel kelimelerden başlar.

Kapsayıcı bloklar için, iç içe geçmiş Markdown özellikleri göstermek için stil devralma kullanırız. Bu durumda, iç içe geçmiş özelliklerin bile olmaması durumunda bile, özel kelimelerle başlayan bir ad ile paragraf stilleri de kullanırız.

Girintili ve sıralı liste Markdown içinde de kaplama bloklarıdır. Onların iç içe geçmesi stil kalıtımı kullanarak diğer tüm kaplama blokları gibi DOM'de aynı şekilde temsil edilir. Bununla birlikte, ek olarak, DOM'deki listeler liste tarzında ya da paragraf biçimlendirmesi ile uyumlu sayısal bir biçimlendirme kullanır.

## İnline Bloklar

Bu, çevirirken [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) biçimlendirme kullanırız, **Bold** ve *Italic* veya ~Döndürme~ iç içe geçmiş markdown özellikleri.

| Markdown özelliğini | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold** <br /> `{1}` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic** <br /> `*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough** <br /> `~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Bir karakter stilimiz var, adı `InlineCode` kelimesiyle başlar, ardından isteğe bağlı bir nokta `(.)` ve birkaç ters tırnak ```(`)``` ile birlikte kullanılır `InlineCode` özelliği. Ters tırnak sayısı eksikse varsayılan olarak tek bir ters tırnak kullanılır.

| Markdown özelliği | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode** <br /> `{1}` | `Font.StyleName = “InlineCode[.][N]”` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink** <br /> `<scheme://domain.com>` <br /> `<email@domain.com>` | The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) sınıfı. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link** <br /> `{1}` <br /> `{2}` <br /> `{3}` <br /> `{4})` | [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) sınıfı. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image** <br /> `{1}` <br /> `{2}` <br /> `{3}` <br /> `{4})` | [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) sınıfı. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Konteyner Blokları

Bir belge başlıklar, paragraflar, listeler, alıntılar ve diğerleri gibi kapsayıcı blokların bir dizisidir. Kapsayıcı bloklar 2 sınıfa ayrılabilir: Yaprak blokları ve Karmaşık Kapsayıcılar. Yaprak bloklar sadece iç içe geçmiş içeriği içerebilir. Karmaşık kapsayıcılar ise diğer kapsayıcı blokları, yaprak blokları dahil olmak üzere içerebilir.

### Yaprak Blokları

Aşağıdaki tablo Aspose.Words 'da kullanılan Markdown Leaf bloklarının örneklerini göstermektedir:

| Markdown özelliği | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule** <br /> `-----` | Bu, karşılık gelen bir HorizontalRule şekline sahip basit bir paragraftır:<br />`DocumentBuilder.InsertHorizontalRule()`'' |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**< br / > `# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, burada (1<= N <= 9). <br />Bu yerleşik bir stil ile çevrilir ve kesinlikle belirtilen kalıba uymalıdır (son ekleri veya öneki izin verilmez). <br /> aksi takdirde, sadece normal bir paragrafla eşleşen bir stile sahip olacaktır. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading** <br /> `===` (eğer Başlık Düzeyi 1), <br /> `---` (eğer Başlık Düzeyi 2) | `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, 'Heading N''e dayalı stil.<br />Eğer (N >= 2), o zaman 'Heading 2' kullanılacak, aksi takdirde 'Heading 1'.<br />Herhangi bir sonek izin verilir fakat Aspose.Words içeri aktarıcı sırasıyla "1" ve "2" sayılarını kullanır. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = “IndentedCode[some suffix]”` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Karma Kapsayıcılar

Aşağıdaki tabloda, Markdown Karma Kapsayıcıların Aspose.Words'da kullanımının örnekleri gösterilmektedir:

| Markdown özelliği | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| 0**Quote**<br />1`> quote,`<br />2`>> nested quote` | `ParagraphFormat.StyleName = “Quote[some suffix]”`<br />Stilin adı için sonek isteğe bağlıdır, ancak Aspose.Words iç içe geçmiş alıntılar durumunda düzgün numaralar 1, 2, 3, …. kullanır. <br />İç içe geçme, miras alınan stiller aracılığıyla tanımlanır. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` | Puanlı listeler paragraf numaralandırma kullanılarak temsil edilir:<br /> `ListFormat.ApplyBulletDefault()`<br />There can be 3 types of bulleted lists. They are only diff in a numbering format of the very first level. These are: `‘-’`, `‘+’` or `‘*’` respectively. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList** <br /> `1. Item 1` <br /> `2. Item 2` <br /> `1) Item 2a` <br /> `2) Item 2b` | Numaralı sıralı listeler paragraf numaralandırması ile gösterilir:<br />`ListFormat.ApplyNumberDefault()`<br />İki numara biçimi işareti kullanılabilir: ‘.’ ve ‘)’. Varsayılan işaret ‘.’dir. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Masalar

Aspose.Words ayrıca aşağıda gösterildiği gibi tabloları DOM'e çevirmenizi sağlar:

| Markdown özellik | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table` <br /> `a|b`<br />`-|-`<br />`c|d ` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) ve [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) sınıfları. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Ayrıca bakınız

* [Working with Markdown Features](/words/java/working-with-markdown-features/)


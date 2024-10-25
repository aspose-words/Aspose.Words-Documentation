---
title: Markdown öğesini Belge Nesne Modeline Çevir (DOM)
second_title: Aspose.Words için C++
articleTitle: Markdown öğesini Belge Nesne Modeline Çevir (DOM)
linktitle: Markdown öğesini Belge Nesne Modeline Çevir (DOM)
type: docs
description: "Nesne Modelini Belgelemek için bir Markdown belgeyi Tarnslate edin ve C++ kullanarak geri dönün. Böylece karmaşık mevcut Markdown ile çalışabilir ve programlı olarak sıfırdan bir Markdown belgesi oluşturabilirsiniz."
weight: 20
url: /tr/cpp/translate-markdown-to-document-object-model/
---

Bir belgenin içeriğini ve biçimlendirmesini programlı olarak okumak, değiştirmek ve değiştirmek için belgeyi Aspose.Words Belge Nesne Modeline (DOM) çevirmeniz gerekir.

Word belgelerinin aksine, Markdown, belgede açıklanan DOM belgesine uymaz. [Aspose.Words Belge Nesne Modeli (DOM)](/words/cpp/aspose-words-document-object-model/) makale. Ancak Aspose.Words, metin biçimlendirme, tablolar, üstbilgiler ve diğerleri gibi öğeleriyle başarılı bir şekilde çalışabilmemiz için Markdown belgelerini DOM 'e ve geriye çevirmek için kendi mekanizmasını sağlar.

Bu makalede, çeşitli markdown özelliklerin Aspose.Words DOM biçimine ve Markdown biçimine nasıl çevrilebileceği açıklanmaktadır.

## Çevirinin Karmaşıklığı Markdown – DOM – Markdown

Bu mekanizmanın temel zorluğu sadece Markdown 'ı DOM 'e çevirmek değil, aynı zamanda ters dönüşümü yapmaktır – belgeyi en az kayıpla Markdown biçimine geri kaydetmek. Ters dönüşümün önemsiz olmadığı çok düzeyli alıntılar gibi öğeler vardır.

Çeviri motorumuz, kullanıcıların yalnızca mevcut bir Markdown belgedeki karmaşık öğelerle çalışmasına değil, aynı zamanda orijinal yapısıyla sıfırdan Markdown biçiminde kendi belgelerini oluşturmasına da olanak tanır. Çeşitli öğeler oluşturmak için, bu makalenin ilerleyen bölümlerinde açıklanan belirli kurallara göre belirli adlara sahip stilleri kullanmanız gerekir. Bu tür stiller programlı olarak oluşturulabilir.

## Ortak Çeviri İlkeleri

Satır içi bloklar için [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) biçimlendirme kullanıyoruz. Aspose.Words DOM içindeki bir Markdown özelliği için doğrudan bir yazışma olmadığında, bazı özel kelimelerden başlayan bir ada sahip bir karakter stili kullanırız.

Konteyner blokları için, iç içe Markdown özellikleri belirtmek için stil kalıtımını kullanırız. Bu durumda, iç içe geçmiş özellikler olmasa bile, bazı özel kelimelerden başlayan bir ada sahip paragraf stilleri de kullanırız.

Madde işaretli ve sıralı listeler Markdown içindeki kapsayıcı bloklarıdır. İç içe geçmeleri, stil kalıtımını kullanan diğer tüm kapsayıcı bloklarda olduğu gibi DOM ile temsil edilir. Bununla birlikte, ek olarak, DOM içindeki listeler, liste stilinde veya paragraf biçimlendirmesinde karşılık gelen sayı biçimlendirmesine sahiptir.

## Satır İçi Bloklar

**Bold**, *Italic* veya ~~Strikethrough~~ satır içi markdown özelliklerini çevirirken [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) biçimlendirme kullanıyoruz.

| Markdown özellik | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

`InlineCode` kelimesinden başlayan bir ada sahip bir karakter stili, ardından `InlineCode` özelliği için isteğe bağlı bir nokta `(.)` ve bir dizi geri işaret ```(`)``` kullanıyoruz. Bir dizi backtick kaçırılırsa, varsayılan olarak bir backtick kullanılır.

| Markdown özellik | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) sınıfı. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) sınıfı. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) sınıfı. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Konteyner Blokları

Belge, başlıklar, paragraflar, listeler, alıntılar ve diğerleri gibi bir kapsayıcı blokları dizisidir. Konteyner blokları 2 sınıflarına ayrılabilir: Yaprak blokları ve Karmaşık Kaplar. Yaprak blokları yalnızca satır içi içerik içerebilir. Karmaşık kaplar, sırayla, Yaprak blokları da dahil olmak üzere başka kap blokları içerebilir.

### Yaprak Blokları

Aşağıdaki tablo, Aspose.Words içinde Markdown Yaprak bloklarının kullanımına ilişkin örnekleri göstermektedir:

| Markdown özellik | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Bu, karşılık gelen HorizontalRule şekline sahip basit bir paragraftır:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, nerede (1<= N <= 9).<br />Bu, yerleşik bir stile çevrilir ve tam olarak belirtilen desende olmalıdır (soneklere veya öneklere izin verilmez).<br />Aksi takdirde, karşılık gelen bir stile sahip normal bir paragraf olacaktır. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, `"Heading N"` stiline göre.<br />Eğer (N> = 2), o zaman `"Heading 2"` kullanılacaktır, aksi takdirde `"Heading 1"`.<br />Herhangi bir son eke izin verilir, ancak Aspose.Words içe aktarıcı sırasıyla "1" ve "2" numaralarını kullanır. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />`[.]` ve `[info string]` isteğe bağlıdır. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Karmaşık Konteynerler

Aşağıdaki tablo, Aspose.Words içinde Markdown Karmaşık Kapsayıcıları kullanma örneklerini göstermektedir:

| Markdown özellik | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />Stil adındaki sonek isteğe bağlıdır, ancak Aspose.Words içe aktarıcı sıralı numaraları kullanır 1, 2, 3, .... iç içe geçmiş alıntılar durumunda.<br />Yuvalama, devralınan stiller aracılığıyla tanımlanır. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Madde işaretli listeler paragraf numaralandırması kullanılarak temsil edilir:<br />`get_ListFormat()->ApplyBulletDefault()`<br />3 madde işaretli liste türleri olabilir. Bunlar yalnızca ilk seviyenin numaralandırma biçiminde farklılık gösterir. Bunlar: sırasıyla `‘-’`, `‘+’` veya `‘*’`. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Sıralı listeler paragraf numaralandırması kullanılarak temsil edilir:<br />`get_ListFormat()->ApplyNumberDefault()`<br />2 sayı biçimi belirteçleri olabilir: ‘.’ ve ‘)’. Varsayılan belirteç ‘.’ 'dir. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Masalar

Aspose.Words ayrıca aşağıda gösterildiği gibi tabloların DOM 'e çevrilmesine de izin verir:

| Markdown özellik | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) ve [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) sınıfları. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Ayrıca bakınız

* [Markdown Özellikleriyle Çalışma](/words/cpp/working-with-markdown-features/)


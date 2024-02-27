---
title: Markdown'i DOM'ye çevir
second_title: .NET için Aspose.Words
articleTitle: Markdown'i Document Object Model'ye (DOM) çevir
linktitle: Markdown'i Document Object Model'ye (DOM) çevir
type: docs
description: "Bir Markdown belgesini Document Object Model'ye çevirin ve C# kullanarak geri alın. Böylece, mevcut karmaşık Markdown ile çalışabilir ve programlı olarak sıfırdan bir Markdown belgesi oluşturabilirsiniz."
weight: 20
url: /tr/net/translate-markdown-to-document-object-model/
---

Bir belgenin içeriğini ve biçimlendirmesini programlı olarak okumak, değiştirmek ve değiştirmek için onu Aspose.Words Document Object Model'ye (DOM) çevirmeniz gerekir.

Markdown, Word belgelerinin aksine, [Aspose.Words Document Object Model (DOM)](/words/tr/net/aspose-words-document-object-model/) makalesinde açıklanan DOM'ye uymuyor. Ancak Aspose.Words, Markdown belgelerini DOM'ye ve geriye çevirmek için kendi mekanizmasını sağlar, böylece metin biçimlendirmesi, tablolar, başlıklar ve diğerleri gibi öğeleriyle başarılı bir şekilde çalışabiliriz.

Bu makalede, çeşitli markdown özelliklerinin Aspose.Words DOM'e ve tekrar Markdown biçimine nasıl çevrilebileceği açıklanmaktadır.

## Markdown – DOM – Markdown Çevirisinin Karmaşıklığı

Bu mekanizmanın ana zorluğu yalnızca Markdown'i DOM'ye çevirmek değil, aynı zamanda ters dönüşümü de yapmaktır; yani belgeyi minimum kayıpla tekrar Markdown formatına kaydetmektir. Çok düzeyli tırnak işaretleri gibi ters dönüşümün önemsiz olmadığı öğeler vardır.

Çeviri motorumuz, kullanıcıların yalnızca mevcut bir Markdown belgesindeki karmaşık öğelerle çalışmasına değil, aynı zamanda orijinal yapıyla sıfırdan Markdown formatında kendi belgelerini oluşturmalarına da olanak tanır. Çeşitli öğeler oluşturmak için bu makalenin ilerleyen kısımlarında açıklanan belirli kurallara göre belirli adlara sahip stiller kullanmanız gerekir. Bu tür stiller programlı olarak oluşturulabilir.

## Ortak Çeviri İlkeleri

Satır içi bloklar için [Font](https://reference.aspose.com/words/net/aspose.words/font/) formatını kullanıyoruz. Aspose.Words DOM'de bir Markdown özelliğinin doğrudan karşılığı olmadığında, bazı özel kelimelerden başlayan bir isme sahip karakter stili kullanırız.

Konteyner blokları için, iç içe geçmiş Markdown özelliklerini belirtmek üzere stil mirasını kullanırız. Bu durumda iç içe geçmiş özellikler olmasa bile adı bazı özel kelimelerden başlayan paragraf stillerini de kullanıyoruz.

Madde işaretli ve sıralı listeler Markdown'te de kapsayıcı bloklardır. Yuvalanmaları, stil kalıtımını kullanan diğer tüm konteyner bloklarıyla aynı şekilde DOM'de temsil edilir. Bununla birlikte, ek olarak, DOM'deki listeler, liste stilinde veya paragraf biçiminde karşılık gelen sayı biçimlendirmesine sahiptir.

## Satır İçi Bloklar

**Bold**, *Italic* veya ~~Strikethrough~~ satır içi markdown özelliklerini çevirirken [Font](https://reference.aspose.com/words/net/aspose.words/font/) formatını kullanırız.

|  Markdown özelliği |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  ||
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} ||

`InlineCode` özelliği için `InlineCode` kelimesinden başlayan bir isme ve ardından isteğe bağlı bir nokta `(.)`'ye ve bir dizi geri tırnak ```(`)```'ine sahip bir karakter stili kullanırız. Bir dizi geri tıklama kaçırılırsa, varsayılan olarak bir geri tıklama kullanılacaktır.

|  Markdown özelliği |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) sınıfı |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) sınıfı |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) sınıfı |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  ||

## Konteyner Blokları

Belge, başlıklar, paragraflar, listeler, alıntılar ve diğerleri gibi bir dizi kapsayıcı bloktan oluşur. Konteyner blokları 2 sınıfa ayrılabilir: Yaprak bloklar ve Kompleks Konteynerler. Yaprak blokları yalnızca satır içi içerik içerebilir. Karmaşık kaplar ise Yaprak bloklar dahil diğer kap bloklarını içerebilir.

### Yaprak Blokları

Aşağıdaki tablo Aspose.Words'de Markdown Yaprak bloklarının kullanımına ilişkin örnekleri göstermektedir:

|  Markdown özelliği |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Bu, karşılık gelen HorizontalRule şekline sahip basit bir paragraftır:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, burada (1&lt;= N &lt;= 9).<br /> Bu, yerleşik bir stile dönüştürülür ve tam olarak belirtilen modelde olmalıdır (hiçbir sonek veya öneklere izin verilmez).<br /> Aksi takdirde, karşılık gelen stile sahip sıradan bir paragraf olacaktır |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (Başlık düzeyi 1 ise),<br /> `---` (Başlık düzeyi 2 ise) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, `“Heading N”` stilini temel alır.<br /> (N &gt;= 2) ise `“Heading 2”` kullanılacaktır, aksi takdirde `“Heading 1”` kullanılacaktır.<br /> Herhangi bir son eke izin verilir, ancak Aspose.Words içe aktarıcısı sırasıyla "1" ve "2" rakamlarını kullanır |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` ve `[info string]` isteğe bağlıdır |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Karmaşık Konteynerler

Aşağıdaki tablo Aspose.Words'de Markdown Karmaşık Kapsayıcıların kullanımına ilişkin örnekleri göstermektedir:

|  Markdown özelliği |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> Stil adındaki son ek isteğe bağlıdır, ancak Aspose.Words içe aktarıcısı 1, 2, 3, … sıralı sayıları kullanır. iç içe geçmiş tırnaklar durumunda.<br /> Yuvalama, devralınan stillerle tanımlanır |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Madde işaretli listeler paragraf numaralandırması kullanılarak temsil edilir:<br /> `ListFormat.ApplyBulletDefault()`<br /> 3 tip madde imli liste olabilir. Bunlar yalnızca ilk düzeyin numaralandırma biçiminde farklılık gösterir. Bunlar: sırasıyla `‘-’`, `‘+’` veya `‘*’` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Sıralı listeler paragraf numaralandırması kullanılarak temsil edilir:<br /> `ListFormat.ApplyNumberDefault()`<br /> 2 sayı biçimi işaretçisi olabilir: '.' Ve ')'. Varsayılan işaretleyici '.'dir |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### Tablolar

Aspose.Words ayrıca aşağıda gösterildiği gibi tabloların DOM'ye çevrilmesine de olanak tanır:

|  Markdown özelliği |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> 'bir | b`<br />`- | -`<br />`c | d' |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) ve [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) sınıfları |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## Ayrıca bakınız

* [Markdown Özellikleriyle Çalışmak](/words/tr/net/working-with-markdown-features/)


---
title: C#'te Paragraflarla Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Paragraflarla Çalışmak
linktitle: Paragraflarla Çalışmak
description: "C# belgesine bir paragraf ekleyin. C#'te paragraf stillerini ayarlayın. Paragraf stili ayırıcı C# ile çalışın. C#'i kullanarak paragraf düğümünü değiştirin."
type: docs
weight: 210
url: /tr/net/working-with-paragraphs/
---

Paragraf, mantıksal bir blok halinde birleştirilen ve özel bir karakterle (*paragraf sonu*) biten bir karakter kümesidir. Aspose.Words'te bir paragraf [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) sınıfı tarafından temsil edilir.

## Paragraf Ekle

Belgeye yeni bir paragraf eklemek için aslında bir paragraf sonu karakteri eklemeniz gerekir. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) belgeye yalnızca bir metin dizisi eklemekle kalmaz, aynı zamanda bir paragraf sonu da ekler.

Geçerli yazı tipi formatı da [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) özelliği tarafından belirtilir ve geçerli paragraf formatı [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) özelliği tarafından belirlenir. Bir sonraki bölümde paragraf biçimlendirme hakkında daha ayrıntılı bilgi vereceğiz.

Aşağıdaki kod örneği, bir belgeye nasıl paragraf ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Paragrafı Biçimlendir

Geçerli paragraf biçimlendirmesi, [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) özelliği tarafından döndürülen [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) nesnesi tarafından temsil edilir. Bu nesne, Microsoft Word'de mevcut olan çeşitli paragraf biçimlendirme özelliklerini kapsar. [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/)'i çağırarak bir paragrafın biçimlendirmesini varsayılan değerine (Normal stil, sola hizalanmış, girintisiz, boşluksuz, kenarlıksız, gölgesiz) kolayca sıfırlayabilirsiniz.

Aşağıdaki kod örneği paragraf biçimlendirmesinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Paragraf Stilini Uygula

**Font** veya **ParagraphFormat** gibi bazı biçimlendirme nesneleri stilleri destekler. Yerleşik veya kullanıcı tanımlı bir stil, ad, temel stil, yazı tipi, stil paragraf formatı vb. gibi uygun stil özelliklerini içeren bir [Style](https://reference.aspose.com/words/net/aspose.words/style/) nesnesi tarafından temsil edilir.

Ayrıca **Style** nesnesi, [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) numaralandırma değeriyle temsil edilen yerel ayardan bağımsız stil tanımlayıcısını döndüren [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) özelliğini kullanıma sunar. Gerçek şu ki, Microsoft Word'deki yerleşik stillerin adları farklı diller için yerelleştirilmiştir. Stil tanımlayıcıyı kullanarak belge dilinden bağımsız olarak doğru stili bulabilirsiniz. Numaralandırma değerleri *Normal*, *Başlık 1*, *Başlık 2* vb. gibi yerleşik Microsoft Word stillerine karşılık gelir. Tüm kullanıcı tanımlı stiller **StyleIdentifier.User** numaralandırma değerine ayarlanır.

Aşağıdaki kod örneği paragraf stilinin nasıl uygulanacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Farklı Paragraf Stilleri Koymak için Stil Ayırıcı Ekle

Microsoft Word'te Ctrl+Alt+Enter klavye kısayolu kullanılarak paragrafın sonuna stil ayırıcı eklenebilir. Bu özellik, aynı mantıksal yazdırılmış paragrafta iki farklı paragraf stili kullanmanıza olanak tanır. Belirli bir başlığın başlangıcındaki metnin bir kısmının içindekiler bölümünde görünmesini istiyorsanız ancak başlığın tamamının içindekiler bölümünde görünmesini istemiyorsanız bu işlevi kullanabilirsiniz.

Aşağıdaki kod örneği, farklı paragraf stillerine uyum sağlamak için stil ayırıcının nasıl ekleneceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Paragraf Stili Ayırıcıyı Tanımlayın

Aspose.Words, aşağıdaki örnekte gösterildiği gibi, bir paragrafı stil ayırıcıyla tanımlamak için `Paragraph` sınıfındaki [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) ortak özelliğini kullanıma sunar:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Paragrafa Kenarlık ve Gölgelendirme Uygulama

Aspose.Words'teki kenarlıklar [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) sınıfı tarafından temsil edilir; bu, indeks veya kenarlık türüne göre erişilen bir [Border](https://reference.aspose.com/words/net/aspose.words/border/) nesneleri koleksiyonudur. Kenarlık türü de [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) numaralandırmasıyla temsil edilir. Bazı numaralandırma değerleri birden fazla veya yalnızca bir belge öğesine uygulanır. Örneğin, **BorderType.Bottom** bir paragrafa veya tablo hücresine uygulanırken **BorderType.DiagonalDown** yalnızca tablo hücresindeki çapraz kenarlığı belirtir.

Hem kenarlık koleksiyonu hem de her ayrı kenarlık, renk, çizgi stili, çizgi genişliği, metinden uzaklık ve isteğe bağlı gölge gibi benzer özelliklere sahiptir. Aynı adı taşıyan özelliklerle temsil edilirler. Özellik değerlerini birleştirerek farklı kenarlık türleri elde edebilirsiniz. Ayrıca **BorderCollection** ve **Border** nesneleri, [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) yöntemini çağırarak bu değerleri varsayılan değerlerine sıfırlamanıza olanak tanır.

{{% alert color="primary" %}}

Kenarlık özellikleri varsayılan değerlerine sıfırlandığında kenarlığın görünmez hale geldiğini unutmayın.

{{% /alert %}}

Aspose.Words ayrıca belge öğeleri için gölgelendirme niteliklerini içeren [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) sınıfına da sahiptir. [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) numaralandırma değerini kullanarak, bir öğenin arka planına ve ön planına uygulanan istenen gölgeleme dokusunu ve renkleri ayarlayabilirsiniz. **TextureIndex** ayrıca **Shading** nesnesine farklı desenler uygulamanıza da olanak tanır. Örneğin, bir belge öğesinin arka plan rengini ayarlamak için **TextureIndex.TextureSolid** değerini kullanın ve ön plan gölgeleme rengini uygun şekilde ayarlayın.

Aşağıdaki kod örneği, bir paragrafa kenarlıkların ve gölgelendirmenin nasıl uygulanacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Paragraf Satırlarını Say

Herhangi bir Word belgesinin paragrafındaki satır sayısını saymak istiyorsanız aşağıdaki kod örneğini kullanabilirsiniz:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
---
title: Python'te Paragraflarla Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Paragraflarla Çalışmak
linktitle: Paragraflarla Çalışmak
description: "Python'i kullanarak bir belgede paragraf ekleyin ve biçimlendirmesini belirtin."
type: docs
weight: 210
url: /tr/python-net/working-with-paragraphs/
---

Paragraf, mantıksal bir blok halinde birleştirilen ve özel bir karakterle (*paragraf sonu*) biten bir karakter kümesidir. Aspose.Words'te bir paragraf [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) sınıfı tarafından temsil edilir.

## Paragraf Ekle

Belgeye yeni bir paragraf eklemek için aslında ona bir paragraf sonu karakteri eklemeniz gerekir. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) belgeye bir dizi metin de ekler ancak buna ek olarak bir paragraf sonu da ekler.

Geçerli yazı tipi formatı da [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) özelliği tarafından belirtilir ve geçerli paragraf formatı [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) özelliği tarafından belirlenir.

Aşağıdaki kod örneği, bir belgeye nasıl paragraf ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Paragrafı Biçimlendir

Geçerli paragraf biçimlendirmesi, [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) özelliği tarafından döndürülen bir [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) nesnesi tarafından temsil edilir. Bu nesne, Microsoft Word'de mevcut olan çeşitli paragraf biçimlendirme özelliklerini kapsar. [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/)'i çağırarak paragraf formatını varsayılan olarak Normal stile, sola hizalanmış, girintisiz, aralıksız, kenarlıksız ve gölgesiz olarak kolayca sıfırlayabilirsiniz.

Aşağıdaki kod örneği paragraf biçimlendirmesinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Paragraf Stili Uygula

[Font](https://reference.aspose.com/words/python-net/aspose.words/font/) veya [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) gibi bazı biçimlendirme nesneleri stilleri destekler. Tek bir yerleşik veya kullanıcı tanımlı stil, stilin adı, temel stili, yazı tipi ve paragraf formatı vb. gibi karşılık gelen stil özelliklerini içeren bir [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) nesnesi tarafından temsil edilir.

Ayrıca, bir [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) nesnesi, bir [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) numaralandırma değeriyle temsil edilen yerel ayardan bağımsız bir stil tanımlayıcısını döndüren [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) özelliğini sağlar. Önemli olan, Microsoft Word'deki yerleşik stillerin adlarının farklı diller için yerelleştirilmesidir. Bir stil tanımlayıcı kullanarak belgenin dilinden bağımsız olarak doğru stili bulabilirsiniz. Numaralandırma değerleri Normal, Başlık 1, Başlık 2 vb. gibi Microsoft Word yerleşik stillerine karşılık gelir. Kullanıcı tanımlı tüm stillere [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) değeri atanır

Aşağıdaki kod örneği paragraf stilinin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Farklı Paragraf Stilleri Koymak için Stil Ayırıcı Ekleme

MS Word'de Ctrl + Alt + Enter Klavye Kısayolu kullanılarak paragrafın sonuna stil ayırıcı eklenebilir. Bu özellik, yazdırılan bir mantıksal paragrafta iki farklı paragraf stilinin kullanılmasına olanak tanır. Belirli bir başlığın başlangıcındaki bir metnin İçindekiler Tablosu'nda görünmesini istiyorsanız ancak başlığın tamamının İçindekiler Tablosu'nda görünmesini istemiyorsanız, bu özelliği kullanabilirsiniz

Aşağıdaki kod örneği, farklı paragraf stillerine uyum sağlamak için stil ayırıcının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Paragraf Stili Ayırıcıyı Tanımlayın

Aspose.Words, bir [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) sınıfına genel bir [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) özelliği sağlar ve aşağıda verilen örnekte gösterildiği gibi Stil Ayırıcı Paragrafın tanımlanmasına olanak tanır:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Paragrafa Kenarlık ve Gölgelendirme Uygulama

Sınırlar [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) tarafından temsil edilir. Bu, indeks veya kenarlık türüne göre erişilen bir [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) nesneleri koleksiyonudur. Kenarlık türü [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) numaralandırmasıyla temsil edilir. Numaralandırmanın bazı değerleri birkaç veya yalnızca bir belge öğesine uygulanabilir. Örneğin, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) bir paragrafa veya tablo hücresine uygulanabilirken, [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) yalnızca tablo hücresindeki çapraz kenarlığı belirtir.

Hem kenarlık koleksiyonu hem de her ayrı kenarlık, renk, çizgi stili, çizgi genişliği, metinden uzaklık ve isteğe bağlı gölge gibi benzer özelliklere sahiptir. Aynı adı taşıyan özelliklerle temsil edilirler. Özellik değerlerini birleştirerek farklı kenarlık türleri elde edebilirsiniz. Ayrıca hem [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) hem de [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) nesneleri, [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) yöntemini çağırarak bu değerleri varsayılana sıfırlamanıza olanak tanır.

{{% alert color="primary" %}}

Kenarlık özellikleri varsayılan değerlerine sıfırlandığında kenarlığın görünmez hale geldiğini unutmayın.

{{% /alert %}}

Aspose.Words ayrıca belge öğeleri için gölgelendirme nitelikleri içeren [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) sınıfına da sahiptir. İstediğiniz gölgeleme dokusunu ve öğenin arka planına ve ön planına uygulanan renkleri ayarlayabilirsiniz.

Gölgeleme dokusu, [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) nesnesine çeşitli desenlerin uygulanmasına olanak tanıyan bir [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) numaralandırma değeriyle ayarlanır. Örneğin, bir belge öğesinin arka plan rengini ayarlamak için [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) değerini kullanın ve ön plan gölgeleme rengini uygun şekilde ayarlayın. Aşağıdaki örnekte bir paragrafa kenarlık ve gölgelendirmenin nasıl uygulanacağı gösterilmektedir.

Aşağıdaki kod örneği, bir paragrafa kenarlıkların ve gölgelendirmenin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}

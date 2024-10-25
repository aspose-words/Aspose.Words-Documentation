---
title: Paragraflarla çalışmak C++
second_title: Aspose.Words için C++
articleTitle: Paragraflarla Çalışmak
linktitle: Paragraflarla Çalışmak
description: "C++ kullanarak paragraf düğümü işleme uygulamaları."
type: docs
weight: 210
url: /tr/cpp/working-with-paragraphs/
---

Paragraf, mantıksal bir blokta birleştirilen ve özel bir karakterle biten bir karakter kümesidir – a *paragraph break*. Aspose.Words'de bir paragraf [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) sınıfı tarafından temsil edilir.

## Paragraf Ekleme

Belgeye yeni bir paragraf eklemek için aslında belgeye bir paragraf sonu karakteri eklemeniz gerekir. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) belgeye yalnızca bir metin dizesi eklemekle kalmaz, aynı zamanda bir paragraf sonu ekler.

Geçerli yazı tipi biçimlendirmesi [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) özelliği tarafından da belirtilir ve geçerli paragraf biçimlendirmesi [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/) özelliği tarafından belirlenir. Bir sonraki bölümde paragraf biçimlendirme hakkında daha ayrıntılı olarak konuşacağız.

Aşağıdaki kod örneği, belgeye paragrafın nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Paragrafı Biçimlendir

Geçerli paragraf biçimlendirmesi, **ParagraphFormat** özelliği tarafından döndürülen bir **ParagraphFormat** nesnesiyle temsil edilir. Bu nesne Microsoft Word'de bulunan çeşitli paragraf biçimlendirme özelliklerini kapsüller. Paragraf biçimlendirmesini varsayılan olarak Normal stile, sola hizalı girinti yok, boşluk yok, kenarlık yok ve gölgeleme yok olarak [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/) 'ı arayarak kolayca sıfırlayabilirsiniz.

Aşağıdaki kod örneği, paragraf biçimlendirmesinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Paragraf Stili Uygula

Yazı Tipi veya ParagraphFormat gibi bazı biçimlendirme nesneleri stilleri destekler. Tek bir yerleşik veya kullanıcı tanımlı stil, stilin adı, temel stili, yazı tipi ve paragraf biçimlendirmesi gibi karşılık gelen stil özelliklerini içeren `Style` nesnesiyle temsil edilir.

Ayrıca, bir **Style** nesnesi, **StyleIdentifier** numaralandırma değeriyle temsil edilen yerel ayardan bağımsız bir stil tanımlayıcısı döndüren [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) özelliğini sağlar. Mesele şu ki, Microsoft Word içindeki yerleşik stillerin adları farklı diller için yerelleştirilmiştir. Bir stil tanımlayıcısı kullanarak, belge dilinden bağımsız olarak doğru stili bulabilirsiniz. Numaralandırma değerleri, aşağıdaki gibi Microsoft Word yerleşik stillere karşılık gelir *Normal*, *Heading 1*, *Heading 2* vb. Tüm kullanıcı tanımlı stillere **StyleIdentifier.User** değeri atanır.

Aşağıdaki kod örneği, paragraf stilinin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Farklı Paragraf Stilleri Koymak için Stil Ayırıcı Ekleyin

Stil ayırıcı, MS Kelimesine Ctrl + Alt + Enter Klavye Kısayolunu kullanarak paragrafın sonuna eklenebilir. Bu özellik, bir mantıksal yazdırılan paragrafta kullanılan iki farklı paragraf stiline izin verir. Belirli bir başlığın başından itibaren bir metnin İçindekiler Tablosunda görünmesini istiyorsanız ancak başlığın tamamının İçindekiler Tablosunda görünmesini istemiyorsanız bu özelliği kullanabilirsiniz.

Aşağıdaki kod örneği, farklı paragraf stillerine uyum sağlamak için stil ayırıcısının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Paragraf Stili Ayırıcısını Tanımlama

` ` Aspose.Words `Paragraph` sınıfına [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) ortak mülk sağlar, aşağıda verilen örnekte gösterildiği gibi Stil Ayırıcı Paragrafın tanımlanmasına izin verir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Paragrafa Kenarlık ve Gölgelendirme Uygulama

Aspose.Words içindeki kenarlıklar [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) sınıfıyla temsil edilir - bu, dizin veya kenarlık türüne göre erişilen [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) nesnelerden oluşan bir koleksiyondur. Kenarlık türü `BorderType` numaralandırmasıyla temsil edilir. Numaralandırmanın bazı değerleri birden çok veya yalnızca bir belge öğesine uygulanabilir. Örneğin, **BorderType.Bottom** bir paragraf veya tablo hücresine uygulanabilirken **BorderType.DiagonalDown** yalnızca bir tablo hücresindeki köşegen kenarlığı belirtir.

Hem kenarlık koleksiyonu hem de her ayrı kenarlık, renk, çizgi stili, çizgi genişliği, metinden uzaklık ve isteğe bağlı gölge gibi benzer özelliklere sahiptir. Aynı ismin özellikleri ile temsil edilirler. Özellik değerlerini birleştirerek farklı kenarlık türleri elde edebilirsiniz. Ayrıca, hem **BorderCollection** hem de **Border** nesneleri, [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/) yöntemini çağırarak bu değerleri varsayılana sıfırlamanıza izin verir.

{{% alert color="primary" %}}

Kenarlık özellikleri varsayılan değerlerine sıfırlandığında kenarlığın görünmez hale geldiğini unutmayın.

{{% /alert %}}

Aspose.Words ayrıca [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) sınıfı belge öğeleri için gölgelendirme öznitelikleri içerir. İstediğiniz gölgelendirme dokusunu ve öğenin arka planına ve ön planına uygulanan renkleri ayarlayabilirsiniz.

Gölgelendirme dokusu, **Shading** nesnesine çeşitli desenlerin uygulanmasına izin veren bir [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) numaralandırma değeriyle ayarlanır. Örneğin, bir belge öğesinin arka plan rengini ayarlamak için [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) değerini kullanın ve ön plan gölgelendirme rengini uygun şekilde ayarlayın.

Aşağıdaki kod örneği, bir paragrafa kenarlıkların ve gölgelendirmenin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

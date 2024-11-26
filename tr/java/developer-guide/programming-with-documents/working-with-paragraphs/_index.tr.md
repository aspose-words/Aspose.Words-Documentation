---
title: Paragraflarla Çalışma Java ile
second_title: Aspose.Words için Java
articleTitle: Paragraflarla Çalışmak
linktitle: Paragraflarla Çalışmak
description: "Paragraf düğüm manipülasyon uygulamaları Java kullanma."
type: docs
weight: 210
url: /tr/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Bir paragraf, mantıksal bir blok oluşturan karakterlerin bir kümesidir ve özel bir karakterle sona erer – *paragraf değişikliği*. Bir Aspose.Words paragrafa [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) sınıfı ile temsil edilir.

## Bir Paragraf Ekleme

Bir belgeye yeni bir paragraf eklemek aslında onu bir paragraf kırma karakteriyle birlikte eklemeniz gerekir. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) sadece bir metin dizisini belgeden ekler aynı zamanda bir paragraf kırma da ekler.

Geçerli yazı tipinin biçimlendirilmesi ayrıca [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) özelliğinde belirtilir ve geçerli paragraf biçimi [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) özelliğinde belirlenir. Gelecek bölümde paragraf biçimlendirmesi hakkında daha ayrıntılı bilgi vereceğiz.

Aşağıdaki kod örneği bir belgenin içine paragraf eklemenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Biçim Paragrafa

Geçerli paragraf biçimlendirme [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) nesnesi tarafından temsil edilir ve bu nesne [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) özelliğinden döndürülür. Bu nesne çeşitli paragraf biçimlendirme özellikleri içeren Microsoft Word'ü kapsüller. Bir paragrafın varsayılan – Normal tarzı, sol hizalı, girintili değil, boşluk yok, kenarlıklar yok, gölgeleme yok – biçimlendirmesini kolayca sıfırlamak için [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting) 'ı çağırın.

Aşağıdaki kod örneği paragraf biçimlendirmesi ayarlamayı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Paragraf Biçimini Uygula

Font veya ParagrafBiçimlendir gibi bazı biçimlendirme nesneleri stilleri destekler. Tek bir yerleşik veya kullanıcı tanımlı stil, adı, temel stil, yazı tipi ve paragraf biçimlendirmesi gibi ilgili stil özelliklerini içeren [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) nesnesi tarafından temsil edilir ve benzeri.

Ayrıca, bir **Style** nesnesi [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) özelliğini sağlar ve bu özellik ayrıcalıklı olmayan bir stil tanımlayıcısını temsil eden bir **StyleIdentifier** değerini döndürür. Önemli olan nokta, Microsoft Word yerleşik stillerin adlarının farklı dillerde yerelleştirildiği noktasıdır. Bir stil tanımlayıcısı kullanarak, belge dilinden bağımsız olarak doğru stili bulabilirsiniz. Değerler Microsoft Word yerleşik stillerine karşılık gelir, örneğin *Normal*, Başlık 1, Başlık 2 vb. Tüm kullanıcı tanımlı stillere **StyleIdentifier.User değeri** atanır.

Aşağıdaki kod örneği bir paragraf stilini nasıl uygulayacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Farklı Paragraf stillerini koymak için Stil Ayırıcısı ekle

Stil ayırıcı, MS Word'de kontrol + alt + enter kısayolunu kullanarak bir paragrafın sonuna eklenebilir. Bu özellik, tek mantıksal basılı paragrafta kullanılan iki farklı paragraf stilini destekler. Bir başlığın başına gelen bazı metni İçindekiler tablosunda görmek istiyorsanız ancak İçindekiler tablosunda tüm başlık görmek istemiyorsanız bu özelliği kullanabilirsiniz.

Aşağıdaki kod örneğinde farklı paragraf stillerine uyum sağlamak için bir stil ayırıcı eklemeyi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Bir Paragrafın Kenarlık ve Gölgelendirme Uygulamak

Sınırlar Aspose.Words içinde [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) sınıfı temsil edilir – bu bir [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) nesne koleksiyonudur ve dizin veya sınır türü tarafından erişilir. `Border` türü [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) türeviyle temsil edilir. Türevinin bazı değerleri birkaç veya yalnızca bir belge öğesine uygulanabilir. Örneğin, **BorderType.Bottom**, bir paragraf veya tablo hücresine uygulanırken, **BorderType.DiagonalDown** yalnızca bir tablo hücresindeki çapraz sınıra belirtir.

Hem sınır koleksiyonu hem de her ayrı sınır benzer öznitelikler gibi renk, çizgi stili, çizgi kalınlığı, metinden uzaklık ve isteğe bağlı gölge. Onlar aynı isimdeki özellikleri ile temsil edilirler. Farklı sınır türlerine ulaşmak için özellik değerlerini birleştirirsiniz. Buna ek olarak, hem **BorderCollection** hem de **Border** nesneleri bu değerleri varsayılana sıfırlayarak çağırdığınız [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) yöntemini kullanarak bunları sıfırlamaya izin verir.

{{% alert color="primary" %}}

Sınır özellikleri varsayılan değerlere sıfırlandığında sınır görünmez olduğunu not edin.

{{% /alert %}}

Aspose.Words da belge öğeleri için gölgelendirme özniteliklerini içeren ' [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/)' sınıfına sahiptir. İstediğiniz gölgelendirme dokusunu ve öğenin arka planına ve ön plana uygulanan renkleri ayarlayabilirsiniz.

Gölgelendirme dokusu [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) numaralandırma değeriyle ayarlanır ki bu da çeşitli desenlerin **Shading** nesnesine uygulanmasını sağlar. Örneğin, bir belge öğesi için arka plan rengini ayarlamak istiyorsanız, `TextureIndex.TextureSolid` değerini kullanın ve ön plana gölgelendirme rengini uygun şekilde ayarlayın. Aşağıdaki kod örneğinde, paragraflara sınır ve gölgeleme nasıl uygulanacağını gösterilmektedir.

Aşağıdaki kod örneği bir paragrafın kenarlık ve gölgelendirme uygulamak için nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

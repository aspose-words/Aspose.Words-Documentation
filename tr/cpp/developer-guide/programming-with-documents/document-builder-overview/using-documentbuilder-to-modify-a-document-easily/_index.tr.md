---
title: Bir Belgeyi Kolayca Değiştirmek için DocumentBuilder kullanma
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi Kolayca Değiştirmek için DocumentBuilder kullanma
linktitle: Bir Belgeyi Kolayca Değiştirmek için DocumentBuilder kullanma
type: docs
description: "Bir belgeyi C++ içinde kolayca değiştirmek için belge oluşturucuyu kullanın."
weight: 190
url: /tr/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Biçimlendirme Belirtme

### Yazı Tipi Biçimlendirme

Geçerli yazı tipi biçimlendirmesi, `DocumentBuilder.Font` özelliği tarafından döndürülen bir `Font` nesnesiyle temsil edilir. `Font` sınıfı, Microsoft Word 'de mümkün olan çok çeşitli yazı tipi özelliklerini içerir. Aşağıdaki örnek, yazı tipi biçimlendirmesinin nasıl ayarlanacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Paragraf Biçimlendirme

Geçerli paragraf biçimlendirmesi, `DocumentBuilder.ParagraphFormat` özelliği tarafından döndürülen bir `ParagraphFormat` nesnesiyle temsil edilir. Bu nesne Microsoft Word içinde bulunan çeşitli paragraf biçimlendirme özelliklerini kapsüller. Paragraf biçimlendirmesini varsayılan olarak Normal stile, sola hizalı, girinti yok, boşluk yok, kenarlık yok ve gölgeleme yok olarak `ParagraphFormat.ClearFormatting` 'i arayarak kolayca sıfırlayabilirsiniz. Aşağıdaki örnekte paragraf biçimlendirmesinin nasıl ayarlanacağı gösterilmektedir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Asya Tipografisi ile Çalışmak

#### Asya ve Latin metinleri, Sayılar arasındaki Boşluğu otomatik olarak ayarlayın

Hem Doğu Asya hem de Latin metni içeren bir şablon tasarlıyorsanız ve her iki metin türü arasındaki boşlukları denetleyerek form şablonunun görünümünü geliştirmek istiyorsanız, form şablonunuzu bu iki metin türü arasındaki boşlukları otomatik olarak ayarlayacak şekilde yapılandırabilirsiniz. Bunu başarmak için ParagraphFormat sınıfının AddSpaceBetweenFarEastAndAlpha ve AddSpaceBetweenFarEastAndDigit özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği, `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` ve `ParagraphFormat.AddSpaceBetweenFarEastAndDigit` özelliklerinin nasıl kullanılacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Asya Paragraf Aralığını ve Girintilerini Değiştirme

Aşağıdaki kod örneği, Asya paragraf aralığı ve girintiler nasıl değiştirileceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Satır Sonu Seçeneklerini Ayarlama

MS Word'deki `Paragraph` özellikler iletişim kutusunun Asya Tipografisi sekmesinde satır sonu grubu bulunur. Bu grubun seçenekleri kullanılarak ayarlanabilir FarEastLineBreakControl, WordWrap, HangingPunctuation ParagraphFormat sınıfının özellikleri. Below code örneği bu özelliklerin nasıl kullanılacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Hücre Biçimlendirme

Bir tablonun oluşturulması sırasında hücre biçimlendirmesi kullanılır. `DocumentBuilder.CellFormat` özelliği tarafından döndürülen bir `CellFormat` nesnesiyle temsil edilir. CellFormat genişlik veya dikey hizalama gibi çeşitli tablo hücresi özelliklerini kapsüller. Aşağıdaki örnek, biçimlendirilmiş tek bir hücre içeren bir tablonun nasıl oluşturulacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Satır Biçimlendirme

Geçerli satır biçimlendirmesi, `DocumentBuilder.RowFormat` özelliği tarafından döndürülen bir `RowFormat` nesnesi tarafından belirlenir. Nesne, tüm tablo satırı biçimlendirmesi hakkındaki bilgileri kapsüller. Aşağıdaki örnekte, tek bir hücre içeren bir tablonun nasıl oluşturulacağı ve satır biçimlendirmesinin nasıl uygulanacağı gösterilmektedir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Liste Biçimlendirme

Aspose.Words liste biçimlendirmesi uygulayarak listelerin kolayca oluşturulmasını sağlar. DocumentBuilder, bir `ListFormat` nesnesi döndüren `DocumentBuilder.ListFormat` özelliğini sağlar. Bu nesnenin bir listeyi başlatmak ve bitirmek ve girintiyi artırmak / azaltmak için çeşitli yöntemleri vardır. Microsoft Word'de iki genel liste türü vardır: madde işaretli ve numaralandırılmış.

- Madde işaretli bir liste başlatmak için `ListFormat.ApplyBulletDefault` öğesini arayın.
- Numaralandırılmış bir liste başlatmak için `ListFormat.ApplyNumberDefault` öğesini arayın.

Madde işareti veya sayı ve biçimlendirme geçerli paragrafa eklenir ve madde işaretli liste biçimlendirmesini durdurmak için `ListFormat.RemoveNumbers` çağrılana kadar **DocumentBuilder** kullanılarak oluşturulan diğer tüm paragraflar çağrılır. Word belgelerinde listeler en fazla dokuz düzeyden oluşabilir. Her seviye için liste biçimlendirmesi, hangi madde işaretinin veya numaranın kullanıldığını, sol girintiyi, madde işareti ile metin arasındaki boşluğu vb. Belirtir.

- Geçerli paragrafın liste düzeyini bir düzey artırmak için `ListFormat.ListIndent` öğesini arayın.
- Geçerli paragrafın liste düzeyini bir düzey azaltmak için `ListFormat.ListOutdent` öğesini arayın.

Yöntemler liste düzeyini değiştirir ve yeni düzeyin biçimlendirme özelliklerini uygular.

{{% alert color="primary" %}}

Paragrafın liste düzeyini almak veya ayarlamak için `ListFormat.ListLevelNumber` özelliğini de kullanabilirsiniz. Liste seviyeleri 0 ile 8 arasında numaralandırılmıştır.

{{% /alert %}}

Aşağıdaki örnek, çok düzeyli bir listenin nasıl oluşturulacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Sayfa Yapısı ve Bölüm Biçimlendirme

Sayfa yapısı ve bölüm özellikleri, `DocumentBuilder.PageSetup` özelliği tarafından döndürülen `PageSetup` nesnesinde kapsüllenir. Nesne, bir bölümün tüm sayfa yapısı özniteliklerini (sol kenar boşluğu, alt kenar boşluğu, kağıt boyutu vb.) Özellik olarak içerir. Aşağıdaki örnek, geçerli bölüm için sayfa boyutu ve yönlendirme gibi özelliklerin nasıl ayarlanacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Stil Uygulama

Yazı Tipi veya ParagraphFormat gibi bazı biçimlendirme nesneleri stilleri destekler. Tek bir yerleşik veya kullanıcı tanımlı stil, stilin adı, temel stili, yazı tipi ve paragraf biçimlendirmesi gibi karşılık gelen stil özelliklerini içeren `Style` nesnesiyle temsil edilir.

Ayrıca, bir **Style** nesnesi, **Style.StyleIdentifier** numaralandırma değeriyle temsil edilen yerel ayardan bağımsız bir stil tanımlayıcısı döndüren `Style.StyleIdentifier` özelliğini sağlar. Mesele şu ki, Microsoft Word içindeki yerleşik stillerin adları farklı diller için yerelleştirilmiştir. Bir stil tanımlayıcısı kullanarak, belge dilinden bağımsız olarak doğru stili bulabilirsiniz. Numaralandırma değerleri, Normal, Başlık 1, Başlık 2 vb. Gibi Microsoft Word yerleşik stillerine karşılık gelir. Tüm kullanıcı tanımlı stillere **StyleIdentifier.User value** atanır. Aşağıdaki örnekte paragraf stilinin nasıl uygulanacağı gösterilmektedir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Kenarlıklar ve Gölgelendirme

Sınırlar BorderCollection ile temsil edilir. Bu, dizin veya kenarlık türüne göre erişilen Kenarlık nesneleri topluluğudur. Kenarlık türü `BorderType` numaralandırmasıyla temsil edilir. Numaralandırmanın bazı değerleri birden çok veya yalnızca bir belge öğesine uygulanabilir. Örneğin, `BorderType.Bottom` bir paragrafa veya tablo hücresine uygulanabilirken `BorderType.DiagonalDown` yalnızca bir tablo hücresindeki köşegen kenarlığı belirtir.

Hem kenarlık koleksiyonu hem de her ayrı kenarlık, renk, çizgi stili, çizgi genişliği, metinden uzaklık ve isteğe bağlı gölge gibi benzer özelliklere sahiptir. Aynı ismin özellikleri ile temsil edilirler. Özellik değerlerini birleştirerek farklı kenarlık türleri elde edebilirsiniz. Ayrıca, hem **BorderCollection** hem de **Border** nesneleri, `Border.ClearFormatting` yöntemini çağırarak bu değerleri varsayılana sıfırlamanıza izin verir. Kenarlık özellikleri varsayılan değerlere sıfırlandığında kenarlığın görünmez olduğunu unutmayın. `Shading` sınıfı, belge öğeleri için gölgelendirme öznitelikleri içerir. İstediğiniz gölgelendirme dokusunu ve öğenin arka planına ve ön planına uygulanan renkleri ayarlayabilirsiniz.

Gölgelendirme dokusu, **Shading** nesnesine çeşitli desenlerin uygulanmasına izin veren bir `TextureIndex` numaralandırma değeriyle ayarlanır. Örneğin, bir belge öğesinin arka plan rengini ayarlamak için `TextureIndex.TextureSolid` değerini kullanın ve ön plan gölgelendirme rengini uygun şekilde ayarlayın. Aşağıdaki örnek, bir paragrafa kenarlıkların ve gölgelendirmenin nasıl uygulanacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Izgaraya Yapış

Aspose.Words paragraf özelliği ek bileşenini ızgaraya almak ve ayarlamak için `ParagraphFormat.SnapToGrid` ve `Font.SnapToGrid` olmak üzere iki özellik sağlar.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## İmleci Hareket Ettirme

### Geçerli İmleç Konumunu Algılama

Oluşturucunun imlecinin şu anda herhangi bir zamanda konumlandırıldığı yeri edinebilirsiniz. `DocumentBuilder.CurrentNode` özelliği, bu oluşturucuda seçili olan düğümü döndürür. Düğüm, bir paragrafın doğrudan bir alt öğesidir. `DocumentBuilder` kullanarak gerçekleştirdiğiniz tüm ekleme işlemleri `DocumentBuilder.CurrentNode` 'dan önce eklenir. Geçerli paragraf boş olduğunda veya imleç paragrafın sonundan hemen önce konumlandırıldığında `DocumentBuilder.CurrentNode` null değerini döndürür.

Ayrıca, bu **DocumentBuilder** öğesinde seçili olan paragrafı alan `DocumentBuilder.CurrentParagraph` özelliğini de kullanabilirsiniz. Aşağıdaki örnek, belge oluşturucudaki geçerli düğüme nasıl erişileceğini gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Herhangi Bir Düğüme Geçme (Paragraflar ve Çocukları)

Paragraf veya paragrafın doğrudan alt öğesi olan bir belge nesnesi düğümünüz varsa, oluşturucunun imlecini bu düğüme yönlendirebilirsiniz. Bunu gerçekleştirmek için `DocumentBuilder.MoveTo` yöntemini kullanın. Aşağıdaki örnek, imleç konumunun belirli bir düğüme nasıl taşınacağını gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Belgenin Başlangıcına/Sonuna Gitme

Belgenin başına geçmeniz gerekiyorsa, `DocumentBuilder.MoveToDocumentStart` öğesini arayın. Belgenin sonuna gitmeniz gerekiyorsa, `DocumentBuilder.MoveToDocumentEnd` öğesini arayın. Aşağıdaki örnek, imleç konumunun belgenin başına veya sonuna nasıl taşınacağını gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Bir Bölüme Geçme

Birden çok bölüm içeren bir belgeyle çalışıyorsanız, `DocumentBuilder.MoveToSection` kullanarak istediğiniz bir bölüme geçebilirsiniz. Bu yöntem, imleci belirtilen bölümün başına taşır ve gerekli bölümün dizinini kabul eder. Bölüm dizini 0 'ten büyük veya ona eşit olduğunda, belgenin başından itibaren 0 ilk bölüm olacak şekilde bir dizin belirtir. Bölüm dizini 0 'ten küçük olduğunda, belgenin sonundan -1 son bölüm olacak şekilde bir dizin belirtir. Aşağıdaki örnek, bir imleç konumunun belirtilen bölüme nasıl taşınacağını gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Üstbilgi/ Altbilgiye Taşıma

Bir üstbilgi veya altbilgiye bazı veriler yerleştirmeniz gerektiğinde, önce `DocumentBuilder.MoveToHeaderFooter` kullanarak oraya gitmelisiniz. Yöntem, imlecin taşınması gereken üstbilgi veya altbilgi türünü tanımlayan bir HeaderFooterType numaralandırma değeri kabul eder. İlk sayfa için farklı üstbilgi ve altbilgi oluşturmak istiyorsanız, `PageSetup.DifferentFirstPageHeaderFooter` özelliğini **true** olarak ayarlamanız gerekir. Çift ve tek sayfalar için farklı üstbilgi ve altbilgi oluşturmak istiyorsanız, `PageSetup.OddAndEvenPagesHeaderFooter` öğesini **true** olarak ayarlamanız gerekir.

Ana hikayeye geri dönmeniz gerekiyorsa, üstbilgi veya altbilgiden çıkmak için **DocumentBuilder.MoveToSection** kullanın. Aşağıdaki örnek, DocumentBuilder kullanarak bir belgede üstbilgi ve altbilgi oluşturur.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Paragrafa Geçme

İmleci geçerli bölümde istediğiniz bir paragrafa taşımak için `DocumentBuilder.MoveToParagraph` kullanın. Bu yönteme iki parametre iletmelisiniz: paragraphIndex (taşınacak paragrafın dizini) ve characterIndex (paragrafın içindeki karakterin dizini).

Gezinme, geçerli bölümün geçerli hikayesinin içinde gerçekleştirilir. Diğer bir deyişle, imleci ilk bölümün birincil başlığına taşıdıysanız, paragraphIndex o bölümün başlığının içindeki paragrafın dizinini belirtir.

ParagraphIndex, 0 'ten büyük veya ona eşit olduğunda, bölümün başından itibaren 0 ilk paragraf olacak şekilde bir dizin belirtir. paragraphIndex, 0 'ten küçük olduğunda, bölümün sonundan -1 son paragraf olacak şekilde bir dizin belirtir.

Karakter dizini şu anda yalnızca paragrafın başına geçmek için 0 veya paragrafın sonuna gitmek için -1 olarak belirtilebilir. Aşağıdaki örnek, imleç konumunun belirtilen paragrafa nasıl taşınacağını gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Tablo Hücresine Taşıma

İmleci geçerli bölümdeki bir tablo hücresine taşımanız gerekiyorsa `DocumentBuilder.MoveToCell` kullanın. Bu yöntem dört parametreyi kabul eder:

- tableIndex - taşınacak tablonun dizini.
- rowIndex - tablodaki satırın dizini.
- columnIndex - tablodaki sütunun dizini.
- characterIndex - hücrenin içindeki karakterin dizini.

Gezinme, geçerli bölümün geçerli hikayesinin içinde gerçekleştirilir. Dizin parametreleri için, dizin 0 'den büyük veya ona eşit olduğunda, başlangıçtan itibaren 0 ilk öğe olacak şekilde bir dizin belirtir. Dizin 0 'den küçük olduğunda, son öğe olan -1 ile sondan bir dizin belirtir.

Ayrıca, şu anda characterIndex 'nin hücrenin başına geçmek için yalnızca 0 veya hücrenin sonuna gitmek için -1 belirtebileceğini unutmayın. Aşağıdaki örnek, imleç konumunun belirtilen tablo hücresine nasıl taşınacağını gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Bir yer imine Taşıma

Yer imleri, belgede yeni öğelerin ekleneceği belirli yerleri işaretlemek için sıklıkla kullanılır. Bir yer imine gitmek için `DocumentBuilder.MoveToBookmark` kullanın. Bu yöntemin iki aşırı yükü vardır. En basit olanı, imlecin hareket ettirileceği yer iminin adından başka bir şey kabul etmez. Aşağıdaki örnek, imleç konumunun yer imine nasıl taşınacağını gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Bu aşırı yük, imleci, belirtilen ada sahip yer iminin başlamasından hemen sonra bir konuma taşır. Başka bir aşırı yük `DocumentBuilder.MoveToBookmark` imleci daha hassas bir şekilde bir yer imine taşır. İki ek boole parametresini kabul eder:

- isStart imlecin yer iminin başına mı yoksa sonuna mı taşınacağını belirler.
- isAfter imlecin yer imi başlangıç veya bitiş konumundan sonra mı yoksa yer imi başlangıç veya bitiş konumundan önce mi hareket ettirileceğini belirler.

Aşağıdaki örnek, imlecin konumunu yer iminin bitiminden hemen sonrasına nasıl taşıyacağınızı gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Her iki yöntem için karşılaştırma büyük /küçük harfe duyarlı değildir.

Bu şekilde yeni metin eklemek, yer iminin mevcut metninin yerini almaz. Belgedeki bazı yer imlerinin form alanlarına atandığını unutmayın. Böyle bir yer imine geçmek ve oraya metin eklemek, metni form alanı koduna ekler. Bu, form alanını geçersiz kılmayacak olsa da, eklenen metin alan kodunun bir parçası haline geldiği için görünmez.

## Ölçü Birimleri Arasında Dönüştürme

Bazı ölçümleri (genişlik / yükseklik, kenar boşlukları ve çeşitli mesafeler) temsil eden Aspose.Words API 'te sağlanan nesne özelliklerinin çoğu nokta cinsinden değerleri kabul eder (1 inç 72 noktaya eşittir). Bazen bu uygun değildir, bu nedenle çeşitli ölçüm birimleri arasında dönüşüm yapmak için yardımcı işlevler sağlayan `ConvertUtil` sınıfı vardır. İnçleri noktalara, noktaları inçlere, pikselleri noktalara ve noktaları piksellere dönüştürmeye izin verir. Pikseller noktalara dönüştürüldüğünde veya tersi olduğunda, 96 dpi (inç başına nokta) çözünürlüklerde veya belirtilen dpı çözünürlüğünde gerçekleştirilebilir.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

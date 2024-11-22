---
title: Bir Dokümanı Değiştirmek için `DocumentBuilder`'u Kullanmak
second_title: Aspose.Words için Java
articleTitle: Bir Dokümanı Değiştirmek için `DocumentBuilder`'u Kullanmak
linktitle: Bir Dokümanı Değiştirmek için `DocumentBuilder`'u Kullanmak
type: docs
description: "Bir belgeyi kolayca değiştirmek için belge oluşturucu kullanın Java."
weight: 20
url: /tr/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Biçimlendirme Belirtmek

### Font Biçimlendirme

Geçerli yazı tipisi biçimi bir `Font` nesnesi tarafından temsil edilir, döndürülen `DocumentBuilder.Font` özelliğinin. `Font` sınıfı Microsoft Word'de olası çok çeşitli yazı tipi özellikleri içerir.

| ![font-formatting-aspose-words-java](documentbuilder-to-modify-document-1.png) |
|  :-  |
Aşağıdaki kod örneği, yazı tipi biçimlendirmesini ayarlamayı gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Hücre Biçimlendirme

Cell formatlaması bir tablo oluştururken kullanılır. `CellFormat` nesnesi tarafından temsil edilir ve `DocumentBuilder.CellFormat` özelliğinden döndürülür. CellFormat çeşitli tablo hücresi özelliklerini kapsülleyen, örneğin genişlik veya dikey hizalamayı.

| ![cell-formatting-aspose-words-java](documentbuilder-to-modify-document-2.png) |
|  :-  |
Aşağıdaki kod örneği, tek bir biçimlendirilmiş hücre içeren bir tablo oluşturmayı gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Sıra Biçimlendirme

Geçerli satır biçimlendirmesi bir `RowFormat` nesnesi tarafından belirlenir ve bu nesne `DocumentBuilder.RowFormat` özelliğinden döndürülür. Nesne tüm tablo satırı biçimlendirme hakkında bilgi içerir.

| ![row-formatting-aspose-words-java](documentbuilder-to-modify-document-3.png) |
|  :-  |
The be low code örneği tek bir hücre içeren bir tablo oluşturmak ve satır biçimlendirme uygulamak için nasıl yapılacağını gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Liste Biçimlendirme

Aspose.Words liste biçimlendirme uygulayarak kolayca oluşturulmasını sağlar. DocumentBuilder, bir `DocumentBuilder.ListFormat` nesnesi döndüren `ListFormat` özelliğini sunar. Bu nesne, bir listeyi başlatmak ve bitirmek ve girintiyi artırmak/azaltmak için çeşitli yöntemlere sahiptir.

| ![list-fformatting-aspose-words-java](documentbuilder-to-modify-document-4.png) |
|  :-  |
Microsoft Word 'da iki genel tür liste vardır: damlalı ve numaralandırılmış.

- Bir madde listesi başlatmak için, [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) çağırın.
- Numaralı bir liste başlatmak için, [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)'i çağırın.

İşaret veya sayı biçimlendirme, geçerli paragraf ve **DocumentBuilder** kullanılarak oluşturulan tüm sonraki paragraflara eklenir ve [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) çağrılıncaya kadar dur demek için kullanılır.

Word belgeleri içinde listeler dokuz seviyeye kadar olabilir. Her seviyedeki liste biçimlendirmesi hangi nokta veya numaranın kullanıldığını, sol girintinin, nokta ve metnin arasında boşluğun vb. belirtir.

- Geçerli paragrafın liste seviyesini bir seviye artırmak için [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent) çağırın.
- Geçerli paragraftaki liste düzeyini bir seviye aşağı indirmek için, [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent) çağırın.

Yöntemler, liste düzeyini değiştirir ve yeni düzeyin biçimlendirme özelliklerini uygular.

{{% alert color="primary" %}}

Ayrıca, paragraf için liste seviyesini almak veya ayarlamak için [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) özelliğini kullanabilirsiniz. Liste seviyeleri 0 ile 8'e kadar numaralandırılır.

{{% /alert %}}

Aşağıdaki kod örneği bir çok düzeyli liste nasıl oluşturulacağını göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Sayfa Kurulumu ve Bölüm Biçimlendirme

Sayfa kurulumu ve bölüm özellikleri `PageSetup` nesnesinde kapsüllenmiştir, bu da `DocumentBuilder.PageSetup` özelliğinin döndürdüğü nesnedir. Nesne tüm bölümlerin sayfa kurulumu özniteliklerini (sol kenar boşluğu, alt kenar boşluğu, kağıt boyutu vb.) özellik olarak içerir.

| ![section-formatting-aspose-words-java](documentbuilder-to-modify-document-5.png) |
|  :-  |
Aşağıdaki kod örneği şu özelliklerin nasıl ayarlandığını gösterir: sayfa boyutu ve yönelim geçerli bölüm için".

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Bir Stil Uygulama

Bazı biçimlendirme nesneleri, Örneğin: Yazı Tipi veya ParagrafBiçimlendirmenin desteklediği stiller. Tek bir yerleşik veya kullanıcı tarafından tanımlanan stilin temsilinin bir `Style` nesnesi içindeki ilgili stil özellikleri gibi adı, temel stil, yazı tipi ve paragraf biçimi gibi ve benzeri.

Ayrıca bir **Style** nesnesi [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) özelliğini sağlar ve bu da **Style.StyleIdentifier** değerine sahip olmayan bölge bağımsız stil tanımlayıcısı döndürür. Dikkat edilmesi gereken nokta yerleşik stillerin Microsoft Word isimleri farklı dillerde yerelleştirilmiştir. Bir stil tanımlayıcısını kullanarak, dil ne olursa olsun doğru stili bulabilirsiniz. Değerler Microsoft Word yerleşik stiller gibi Normal, Başlık 1, Başlık 2 vb. ile karşılık gelir. Tüm kullanıcı tarafından tanımlanan stillere **Styleidentifier kullanıcı değeri** değeri atanır.

| ![apply-style-aspose-words-java](documentbuilder-to-modify-document-6.png) |
|  :-  |
Aşağıdaki kod örneği, paragraf stilini nasıl uygulayacağını göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Sınırlar ve Gölgeleme

Sınırlar, Sınır Koleksiyonu tarafından temsil edilir. Bu, bir dizin veya sınır türü tarafından erişilen Sınır nesnelerinin bir koleksiyonudur. Sınır türü, `BorderType` numaralandırması tarafından temsil edilir. Numaralandırmanın bazı değerleri birden fazla veya yalnızca bir belge öğesine uygulanabilir. Örneğin, `BorderType.Bottom` bir paragraf veya tablo hücresine uygulanırken `BorderType.DiagonalDown` yalnızca bir tablo hücresindeki çapraz sınır belirtir.

Sınır koleksiyonu ve her ayrı sınır benzer özelliklere sahiptir: renk, çizgi stili, çizgi kalınlığı, metinden uzaklık ve isteğe bağlı gölge. Bunlar aynı isimlerdeki özelliklerle temsil edilirler. Farklı sınır tipleri elde etmek için özellik değerlerini birleştirerek bunu yapabilirsiniz. Buna ek olarak, hem 0 **BorderCollection** hem de 1 **Border** nesneleri bu değerleri varsayılan olarak sıfırlamak için çağrılabilen bir 2 [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) yöntemine sahiptir. Sınır özellikleri varsayılan değerlere sıfırlandığında sınırın görünmez olduğunu unutmayın.

| ![set-borders-shading-aspose-words-java](documentbuilder-to-modify-document-7.png) |
|  :-  |
The [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) sınıfı belge öğeleri için gölgelendirme özniteliklerini içerir. İstenen gölgelendirme dokusunu ve öğenin arka plan ve ön planına uygulanan renkleri ayarlayabilirsiniz.

Gölgeleme dokusu çeşitli desenlerin **Shading** nesnesine uygulanmasına izin veren bir [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) değer ile ayarlanır. Örneğin, bir belge öğesi için bir arka plan rengi ayarlamak için [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) değerini kullanın ve ön plan gölge rengini gerektiği şekilde ayarlayın.

| ![borders-and-shading-aspose-words-java](documentbuilder-to-modify-document-8.png) |
|  :-  |
Aşağıdaki örnek, bir paragrafta nasıl kenarlık ve gölgelendirme uygulanacağını göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words paragraf özelliklerini almak ve ayarlamak için iki özellik sağlar; `ParagraphFormat.SnapToGrid` ve `Font.SnapToGrid`

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Kursörü Hareket Ettirmek

### Geçerli Fare Konumunu Tespit Etme

Her zaman inşa edici'nin geçerli konumunu alabilirsiniz. [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) özelliği şu anda bu oluşturucuda seçilen düğüme karşılık gelir. Düğüm bir paragrafın doğrudan çocuğudur. `DocumentBuilder` kullanarak gerçekleştirdiğiniz tüm ekleme işlemleri, `DocumentBuilder.CurrentNode`'nin önünde eklenir. Geçerli paragraf boşsa veya imleç paragrafın sonundan hemen önce konumlandırılmışsa, `DocumentBuilder.CurrentNode` null döndürür.

Ayrıca, şu anda bu **DocumentBuilder**'da seçili olan paragrafı almak için [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) özelliğini kullanabilirsiniz. Be low code örneği bir belge oluşturucusunda geçerli düğüme erişmenin nasıl yapılacağını göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Herhangi Bir Düğüm'e Taşınma (Paragraflar ve Çocukları)

Bir belge nesne düğümüne sahipseniz ve bu bir paragraf veya paragrafın doğrudan çocuğudur, kurucunun imlemini bu düğüme işaret edebilirsiniz. Bunu yapmak için [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) yöntemini kullanın.
Aşağıdaki kod örneği, bir imlemin konumunu belirtilen bir düğüme nasıl hareket ettireceğini gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Belge Başlangıcı/Bitişine Geçmek

Eğer belgenin başına gitmeniz gerekiyorsa [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) çağrın. Eğer belgenin sonuna gitmeniz gerekiyorsa [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) çağrın.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Bir Bölüm'e Geçmek

Bir belgeye birden fazla bölüm içeren çalışıyorsanız, istediğiniz bölüme [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) kullanarak geçebilirsiniz. Bu yöntem, belirtilen bir bölümün başına imleci taşır ve gerekli bölümün dizinini kabul eder. Bölüm dizini sıfırdan büyük veya ona eşit olduğunda, bunu belgenin başlangıcından itibaren bir dizinden belirtir, 0'ın ilk bölümü olduğu anlamına gelir. Bölüm dizini sıfırdan küçük olduğunda, bunu belgenin sonundan itibaren bir dizinden belirtir, -1'in son bölümü olduğu anlamına gelir. Örnek below code, imlecin belirtilen bölüme nasıl taşınacağını göstermektedir. Bu örnek şablon dosyasını [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx) adresinden indirebilirsiniz.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Başlık/Altbilgi'ye Geçiş Yapıyor

Bir başlık veya altbilgiye bazı verileri yerleştirmek istediğinizde önce [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) kullanarak oraya gitmelisiniz. Yöntem, başlık veya altbilgi türünü belirten bir BaşlıkAltbilgi Türü numaralandırma değeri kabul eder ve imlecin nereye taşınacağını belirtir.

Eğer başlıklar ve altbilgiler oluşturmak istiyorsanız ve bunlar ilk sayfaya özgü farklı olsunlar, bu özellik [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter)'yi **true**'a ayarlamanız gerekir. Eğer başlıklar ve altbilgiler oluşturmak istiyorsanız ve bunlar çiftten tek tarafa farklı olsunlar, bu özellik [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter)'ü **true**'a ayarlamanız gerekir.

Ana hikayeye geri dönmeniz gerekirse, başlık veya altbilgi oluşturmak için bir belgede [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) kullanın. Aşağıdaki örnek, bir Belge Oluşturucu kullanarak başlıklar ve altbilgiler oluşturur.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Bir Paragraf'a Geçmek

Kullanım [DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) mevcut bölümde istediğiniz paragrafta imleç yerleştirmek için. Bu yöntemi kullanmak için iki parametre geçmeniz gerekir: paragrafDizin (paragrafın dizini paraya gitmek) ve karakterDizin (karakterin paragraf içindeki dizini).

Geçerli bölümün geçerli öyküsü içinde yönlendirme gerçekleştirilir. Yani, eğer imleci ilk bölüme ait ana başlığa hareket ettirirseniz, paragraphIndex bu başlığın içinde bu bölümdeki paragrafın dizinini belirtir.

ParagrafIndex sıfırdan büyük veya eşit olduğunda, bölümün başından başlayarak bir dizini belirtir, sıfır birinci paragrafı belirtir. ParagrafIndex eksi sıfırdan küçük olduğunda, bölümün sonundan başlayarak bir dizini belirtir, eksi bir son paragraftır. Karakter dizini şu anda sadece 0'a sıfırlayarak paragrafın başına veya -1'e sıfırlayarak paragrafın sonuna hareket edebilir. Aşağıdaki örnek kodda belirtilen bir paragrafa bir imleti nasıl taşıyacağınız gösterilmiştir. Bu örneğin şablon dosyasını [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)'dan indirebilirsiniz.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Bir Masa Hücresine Geçiş Yapma

Kullan [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) eğer şu anki bölümde bir tablo hücresine okçu taşımak istiyorsanız. Bu yöntem dört parametre kabul eder:

-tableIndex - hareket ettirilecek tablonun dizini.
- rowIndex - tablodaki satırın dizini.
-columnIndex- tablo içindeki sütunun dizini.
- karakterIndeksi - hücrenin içindeki karakterin dizini.

Geçerli bölümdeki geçerli hikayede içerik navigasyonu gerçekleştirilir.

Dizin parametreleri için, dizin 0 veya ondan büyük veya eşit olduğunda, 0 başlangıçtan bir dizin belirtir ve ilk öğe ilk öğedir. Dizin -1'den küçük olduğunda, son öğeden bir dizin belirtir ve son öğe -1'dir.

Ayrıca not edin ki karakter dizini şu anda hücrenin başına gitmek için 0'ı veya hücrenin sonuna gitmek için -1'i belirtmek dışında bir şey yapamaz. Aşağıdaki örnek kod, imleci belirtilen tablo hücresine nasıl hareket ettireceğini göstermektedir. Bu örneğin şablon dosyasını [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)'dan indirebilirsiniz.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Bir İşaret Çubuğuna Geçmek

Yeni öğeler eklenmek üzere bir belgedeki özel yerleri işaretlemek için sık sık yer imleri kullanılır. Bir yere yer imine gitmek için [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) kullanın. Bu yöntem iki aşırı yüklemedir. En basit olanı yalnızca imlecin hareket etmesi gereken yer iminin adını kabul eder. Aşağıdaki kod örneği imleci bir yer imine nasıl hareket ettireceğinizi gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Bu aşırı yük, belirtilen adda bulunan yer imine işaretçiyi taşıyacak. Başka bir aşırı yük [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) daha yüksek doğrulukla bir yer imine işaretçiyi taşıyacak. İki ek boolean parametre kabul eder:

- isStart, imleci yer işaretinin başlangıcına veya sonuna taşıyıp taşımayacağını belirler.
-isAfter, imzanın başlangıç veya bitiş konumundan sonra fare imlecini hareket ettirmeyi ya da imzanın başlangıç veya bitiş konumundan önce fare imlecini hareket ettirmeyi belirler.

Aşağıdaki kod örneğinde bir imlemin işaretleyici bitişinden hemen sonra konumunu nasıl taşıyacağınız gösterilmiştir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Bu şekilde yeni metin eklemek mevcut işaretleyici metnini değiştirmez. Unutmayın ki bazı belgedeki işaretleyiciler form alanlarına atanır. Böyle bir işaretleyiciye gitmek ve oraya metin eklemek, kodun içine metin ekler. Bu form alanı geçersiz kılmayacak olsa da, eklenen metin görünmez çünkü alan kodunun bir parçası haline gelir.

### Mevcut bir `Merge` Alanına Taşınmak

Bazen bir "el ile" Mail Merge gerçekleştirmek için `DocumentBuilder` veya bir birleştirme alanını özel bir şekilde doldurmak için bir Mail Merge olay işleyicisi içinde kullanmanız gerekebilir. İşte bu noktada [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) yararlı olabilir. Yöntem, birleştirme alanı adının adını kabul eder. Belirtilen birleştirme alanının hemen ötesine imleci getirir ve birleştirme alanını kaldırır. Aşağıdaki kod örneği, belirtilen birleştirme alanının hemen ötesine imlecin nasıl getirileceğini göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Ölçüm Birimleri Arasında Dönüştürme Nasıl Yapılır?

Çoğu nesne özelliği sağlanan Aspose.Words API o bazı ölçümler (genişlik / yükseklik, kenar boşlukları ve çeşitli mesafeler) temsil eden nokta değerlerini kabul eder (1 inç eşittir 72 noktaları). Bazen bu uygun değildir, bu yüzden `ConvertUtil` sınıfı farklı ölçüm birimleri arasında dönüştürme yapmak için yardımcı işlevler sağlayan sağlanır. İnçleri noktaya, noktaları inciye, pikselleri noktaya ve noktaları pikseli dönüştürebilir. Piksele nokta dönüştürülürken veya tersi dönüştürülürken, 96 dpi (noktalar/inç) çözünürlüklerinde veya belirtilen dpi çözünürlüğü ile yapılabilir.

Farklı sayfa özellikleri ayarlarken **ConvertUtil** çok kullanışlıdır çünkü örneğin inçler noktadan daha sık kullanılan ölçüm birimidir. Aşağıdaki örnekte, sayfa özelliklerini inç olarak ayarlamanın nasıl yapılacağını göstermektedir.

Aşağıdaki kod örneği, inç cinsinden sayfa özelliklerini belirtmeyi gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}

---
title: Dokument Öğelerini Ekle için DocumentBuilder'ı Kullanın
second_title: Aspose.Words için Java
articleTitle: Dokument Öğelerini Ekle için DocumentBuilder'ı Kullanın
linktitle: Dokument Öğelerini Ekle için DocumentBuilder'ı Kullanın
type: docs
description: "Belge öğelerini Java'deki belge oluşturucuya ekleyin."
weight: 10
url: /tr/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

0 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) bir belgeyi değiştirmek için kullanılır. Bu makale, çeşitli görevleri nasıl gerçekleştireceğini açıklar ve tanımlar.

## Metnin Bir Parçasını Ekleme

Metni belgelere eklemek için gereken metin dizgisini [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) yöntemine geçirin. Metin biçimlendirme, `Font` özelliğinde belirlenir. Bu nesne farklı yazı tipi özniteliklerini içerir (yazı tipinin adı, yazı tipi boyutu, renk vb.). Bazı önemli yazı tipi öznitelikleri ayrıca doğrudan erişmek için size izin veren [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) özellikleri tarafından temsil edilir. Bunlar Boolean özellikleri [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) ve [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Not edin ki karakter formatlamayı ayarladığınız şey belgedeki mevcut konumdan başlayarak tüm metne uygulanacaktır.

{{% /alert %}}

Aşağıdaki kod örneği, DocumentBuilder kullanarak biçimlendirilmiş metin ekler.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Bir Paragraf Ekleme

DocumentBuilder.writeln belgenin içine bir metin dizesi ekler fakat buna ek olarak paragraf aralığı ekler. Geçerli yazı tipi biçimlendirmesi de DocumentBuilder.getFont özelliği ile belirtilir ve geçerli paragraf biçimlendirme ise DocumentBuilder.getParagraphFormat özelliğine göre belirlenir

Aşağıdaki kod örneği, bir paragrafın belgeye nasıl ekleneceğini göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Bir Tablo Ekleme

Bir tablo oluşturmak için `DocumentBuilder` kullanan temel algoritma basittir:

1. [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)'u kullanarak tabloyu başlatın.
1. Bir hücre [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) kullanarak girin. Bu otomatik olarak yeni bir satır başlatır. Gerekirse, hücre biçimlendirmesi belirtmek için [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) özelliğini kullanın.
1. Hücre içeriğini `DocumentBuilder` yöntemlerini kullanarak girin.
1. Adımları tekrarlayın 2 ve 3 bir sıra tamamlanana kadar.
1. Geçerli satırı bitirmek için [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) çağırın. Gerekirse, satır biçimlendirmesi belirtmek için [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) özelliğini kullanın.
1. Adımları 2 - 5, tablo tamamlanana kadar tekrarlayın.
1. Tablo oluşturmayı bitirmek için [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) çağrın. Aşağıda uygun DocumentBuilder tablo oluşturma yöntemleri açıklanmaktadır.

### Bir Tablo Başlatmak

DocumentBuilder.startTable çağırmak bir tablo oluşturmanın ilk adımıdır. Bir hücre içinde de çağrılabilir, bu durumda iç içe geçmiş bir tablo başlatır. Çağırılması gereken sonraki yöntem DocumentBuilder.insertCell'dir.

### Bir Hücre Ekleme

DocumentBuilder.insertCell'i çağırdıktan sonra yeni bir hücre oluşturulur ve `DocumentBuilder` sınıfının diğer yöntemleri aracılığıyla eklediğiniz her içerik geçerli hücreye eklenir. Aynı satırda yeni bir hücre başlatmak için 'DocumentBuilder.insertCell'ı tekrar çağırın. Hücre biçimlendirmesini belirtmek için 'DocumentBuilder.getCellFormat' özelliğini kullanın. Bu özellik, bir tablo hücresinin tüm biçimlendirmesini temsil eden bir [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) nesnesini döndürür.

### Bir Satırı Tamamlamak

Call DocumentBuilder.endRow for to finish the current row. If you call DocumentBuilder.insertCell immediately after that, then the table continues on a new row. Use the `DocumentBuilder.RowFormat` property to specify row formatting. It returns a [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) object which represents all formatting for a table row.

### Bir tabloya son vermek

Call DocumentBuilder.endTable to finish the present row. This method should be called only once after DocumentBuilder.endRow was called. When called, DocumentBuilder.endTable moves the cursor out of the current cell to a position just after the table. The following example demonstrates how to build a formatted table that contains 2 rows and 2 columns.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Bir Kesiği Ekleme

Yeni bir satır, paragraf, sütun, bölüm ya da sayfa açıkça başlamak istiyorsanız, "DocumentBuilder.insertBreak" yöntemini çağırın. Bu yönteme eklemek istediğiniz kesme türünü temsil eden `BreakType` numaralandırmasından geçin
Aşağıdaki kod örneği bir belgedeki sayfa kesmelerini nasıl ekleyeceğinizi gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Görüntüyü eklemek

DocumentBuilder [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) yönteminin birkaç aşırı yüklemesi vardır ve size bir iç içe veya yüzen görüntü eklemenize izin verir. Görüntü EMF veya WMF metafile ise, belgeye metafil biçiminde eklenecektir. Tüm diğer görüntüler PNG formatında saklanacaktır. DocumentBuilder.insertImage yöntemi farklı kaynaklardan gelen görüntüleri kullanabilir:

- Bir dosya veya `URL` geçiren bir dize parametresi ile
- Bir akıdan `Stream` parametresi ile geçerek
- Bir Image nesnesinden bir Image parametresi ile
- Bir bayt dizisini parametre olarak geçirerek bir bayt dizisi oluşturur
- Ve diğerleri

DocumentBuilder.insertImage yöntemleri için her birinde, size aşağıdaki seçeneklerle bir görüntüyü ekleme imkanı tanıyan daha fazla aşırı yüklemeler vardır:

- İnline veya belirli bir konumda yüzen
- Yüzde ölçeği veya özel boyut

Ayrıca, DocumentBuilder.insertImage yöntemi oluşturulan ve eklenen yeni bir [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) nesnesini döndürür böylece şeklin özelliklerini daha da değiştirebilirsiniz.

### İnline Görüntü Ekleme

Geçir bir tek dize, görüntü içeren dosyayı temsil etmek için DocumentBuilder.insertImage'a. Görüntüyü belgeye iç içe geçmiş grafik olarak eklemek için kullanılır. Aşağıdaki kod örneğinde, belgenin imleç konumuna iç içe geçmiş bir görüntünün nasıl ekleneceği gösterilmektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Kayan (Kesinlikle Konumlandırılmış) Görüntü Ekleme

Bu örnek, bir dosya veya `URL`'dan bir yüzen görüntüyü belirtilen konumda ve boyutta ekler.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Bir Yer İşareti Ekleme

Bir belgedeki bir yer işareti eklemek için şunları yapmalısınız:

1. İşaretlemeyi istediğiniz adla [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) 'u geçirmek için bir çağrı yapın.
1. Kitap işareti metnini `DocumentBuilder` yöntemlerini kullanarak ekleyin.
1. Çağrı [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) geçirmek için aynı adı kullandığınız DocumentBuilder.startBookmark ile birlikte.

Kitap işaretleri herhangi bir aralıkta geçebilir ve örtüşebilir. Geçerli bir işaretçi oluşturmak için, aynı işaretçi adı ile hem DocumentBuilder.startBookmark hem de DocumentBuilder.endBookmark'ı çağırmanız gerekir.

Zayıf biçimlendirilmiş yer imleri veya aynı adı olan yer imleri belgenin kaydedildiği sırada göz ardı edilecektir.

Aşağıdaki kod örneği, bir belge oluşturucuyu kullanarak bir belgenin içine nasıl bir yer işareti ekleyeceğini göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Bir Alan Ekleme

Maddelerin Microsoft Word alanları bir alan kodu ve bir alan sonucundan oluşur. Alan kodu bir formül gibidir ve alan sonucu formülün ürettiği değerdir. Alan kodunda ayrıca belirli bir eylemi gerçekleştirmek için ek talimatlar sağlayan alan anahtarları da olabilir. Microsoft Word belgenizde alan kodlarını ve sonuçlarını anahtar tuş kombinasyonu Alt+F9 ile görüntüleyebilirsiniz. Alan kodları küme içine alınır ( { } ). Belgelerindeki alanları oluşturmak için [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)'ı kullanın. Bir alan türü, alan kodu ve alan değeri belirtmeniz gerekir. Belirli bir alan kodunun sözdizimi konusunda emin değilseniz, önce alanı Microsoft Word olarak oluşturun ve anahtar tuş kombinasyonunu kullanarak alan koduna geçin
Aşağıdaki kod örneği bir belgeye Belge Oluşturucu kullanarak bir birleştirme alanı ekler.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Bir `Form` Alanını Ekleme

Form alanları kullanıcı ile "etkileşim" sağlayan kelime alanlarının özel bir durumudur. Microsoft Word içindeki Form alanları metin kutusu, combobox ve onay kutusunu içerir.DocumentBuilder her bir form alanı türünü belgeye eklemek için özel yöntemler sağlar: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) ve [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Not edin form alanına ad belirtirseniz aynı adı taşıyan bir imla otomatik olarak oluşturulur.

### Bir Metin Girişi Ekleme

DocumentBuilder.insertTextInput bir belgedeki metin kutusunu eklemek için kullanılır. Aşağıdaki kod örneği, bir belgeye metin girişi form alanı eklemeyi gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Bir `CheckBox` ekliyor

DocumentBuilder.insertCheckBox bir belgeye onay kutusunu eklemek için kullanılır. Aşağıdaki kod örneği, bir belgeye form alanı olarak onay kutusunu eklemeyi gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Bir Kombinasyon Kutusu Ekleme

Bir kombinasyon kutusunu belgeye eklemek için DocumentBuilder.insert ComboBox çağırın. Aşağıdaki kod örneğinde bir belgeye bir kombinasyon kutusu form alanı eklemenin nasıl yapılacağı gösterilmiştir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Alan Düzeyinde Yerel Ekleme

Müşteriler şimdi alan düzeyinde Yerel ayarı belirtebilir ve daha iyi kontrol sağlayabilir. Belge oluşturucu içinde her bir alana ilişkin Yerel kimlikler ile ilişkilendirilebilir. Aşağıdaki örnekler, bu seçeneği nasıl kullanacağınızı göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## HTML ekleme

Bir Word belgesine bir HTML dizesi içeren bir HTML parçasını veya tüm HTML belgesini kolayca ekleyebilirsiniz. Bunu yapmak için sadece bu dizeyi DocumentBuilder'ın insertHtml yöntemine geçirin. Yöntemin yararlı uygulamalarından biri, Mail Merge sırasında bir veritabanına depolanan bir HTML dizesini belgeye eklemek ve bunun yerine çeşitli yöntemlerle belge oluşturucuyu kullanarak biçimlendirilmiş içeriği eklemektir. Aşağıdaki kod örneği DocumentBuilder kullanarak bir belgeye HTML ekler.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Hipere Bağlantı Ekleme

Belgeye bir bağlantı eklemek için DocumentBuilder.insertHyperlink kullanın. Bu yöntem üç parametre kabul eder: belge içinde görüntülenen bağlantı metni, bağlantı hedefi (URL veya belgedeki bir yer iminin adı) ve URL'nin başında ve sonunda tırnak işaretleri olması gereken bool parametresi true eğer `URL` bir yer iminin adı ise.DocumentBuilder.insertHyperlink DocumentBuilder.insertField yöntemini çağrır. Yöntem her zaman URL'nin başında ve sonunda tırnak işaretleri ekler. Bağlantı görüntüleme metninin yazı tipi biçimlendirilmesini açıkça belirtmek için `Font` özelliğini kullanmanız gerektiğini unutmayın. Aşağıdaki kod örneği, DocumentBuilder kullanarak bir belgeye bir bağlantı ekler.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Bir İçindekiler Tablosu Ekleme

Şu anda belgenin konumunda bir `TOC` (içindekiler) alanı eklemek için [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) yöntemini çağırın. DocumentBuilder.insertTableOfContents yöntemi yalnızca belgeye bir `TOC` alan ekleyecektir. İçindekileri oluşturmak ve sayfa numaralarına göre görüntülemek için, alan eklendikten sonra **Document.UpdateFields** yöntemi çağrılmalıdır. Aşağıdaki kod örneğinde bir İçindekiler alanı bir belgeye nasıl ekleneceği gösterilmiştir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## OLE Nesnesini Ekleme

Eğer istediğiniz Ole Nesne çağrısı [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## OLE Nesnesini Eklerken Dosya Adı ve Uzantısını Ayarla

OLE paketi bir miras ve 'belgelenmemiş' yoludur gömülü nesneleri depolamak için OLE işleyicisi bilinmiyorsa. Erken Windows sürümleri gibi Windows 3.1, 95 ve 98'te Packager.exe uygulaması, belgeye herhangi bir tür veriyi eklemek için kullanılabilir. Şimdi bu uygulama Windows dışlanmış olmasına rağmen MS Word ve diğer uygulamalar hala OLE işleyicisi eksik veya bilinmiyorsa veri eklemek için onu kullanıyor. OlePackage sınıfı, OLE Paketi özelliklerine erişmeyi sağlar. Aşağıdaki kod örneğinde OLE Paketi için dosya adı, uzantı ve görüntüleme adının nasıl ayarlanacağı gösterilmiştir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## OLE Nesnesine Erişim Ham Veri Alın

Aşağıdaki kod örneği, `OleFormat.GetRawData`( ) yöntemi kullanılarak nasıl OLE Nesne ham verileri elde edildiğini göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Belgeye Yatay Kural Ekle

Aşağıdaki kod örneği, bir belgeye `DocumentBuilder.InsertHorizontalRule` yöntemini kullanarak yatay kural şekil eklemeyi gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Şekillerle Çalışmak

### İnline ve Serbest-yüzen Şekilleri Ekleme

Bir belgeye bir tür ve boyut belirtilen iç içe geçmiş şekil ve serbest yüzen şekil ve belirtilen konum, boyut ve metin sarmalama türü eklemek için `DocumentBuilder.InsertShape` yöntemini kullanabilirsiniz. `DocumentBuilder.InsertShape` yöntemi, DML şeklinin belge modeline eklenmesine izin verir. Belge, DML şekillerini destekleyen bir biçimde kaydedilmelidir aksi takdirde bu tür düğümler VML şekline dönüştürülürken belge kaydedilir. Aşağıdaki kod örneği bu tür şekilleri belgeye eklemenin nasıl yapılacağını göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Snip Köşeli Dikdörtgen Oluştur

Bir snip köşe dikdörtgeni oluşturmak için Aspose.Words kullanabilirsiniz. Şekil türleri SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded ve DiagonalCornersRounded'tir. Bu şekil türleri DML şekil oluşturmak için `DocumentBuilder.InsertShape` yöntemi ile kullanılır. Bu türler VML şekilleri oluşturmak için kullanılamaz. "Shape" sınıfının halka açık oluşturucusunu kullanarak bir şekil oluşturmaya çalışmak "NotSupportedException" özel durumuna neden olur. Aşağıdaki kod örneği bu tür şekillerin belgenin içine nasıl ekleneceğini göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Şekiller DOM içinde Math XML ile Şekiller olarak içe aktarın

Şekilleri OfficeMath nesnelerine dönüştürmek için `LoadOptions.ConvertShapeToOfficeMath` özelliğini kullanabilirsiniz. Bu özelliğin varsayılan değeri MS Word davranışına karşılık gelir, yani denklem XML şeklini olan şekiller OfficeMath nesnelerine dönüştürülmez.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}

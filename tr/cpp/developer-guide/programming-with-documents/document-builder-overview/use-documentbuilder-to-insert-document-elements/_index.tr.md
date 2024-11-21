---
title: Belge Öğeleri Eklemek için `DocumentBuilder` kullanın
second_title: Aspose.Words için C++
articleTitle: Belge Öğeleri Eklemek için `DocumentBuilder` kullanın
linktitle: Belge Öğeleri Eklemek için `DocumentBuilder` kullanın
type: docs
description: "Belge oluşturucuyu kullanarak belge öğelerini C++ içine ekleyin."
weight: 80
url: /tr/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder`, belgeleri değiştirmek için kullanılır. Bu makalede, bir dizi görevin nasıl gerçekleştirileceği açıklanır ve açıklanır:

## Bir Metin Dizesi Ekleme

Belgeye eklemeniz gereken metin dizesini `DocumentBuilder.Write` yöntemine iletmeniz yeterlidir. Metin biçimlendirmesi `Font` özelliği tarafından belirlenir. Bu nesne farklı yazı tipi öznitelikleri (yazı tipi adı, yazı tipi boyutu, renk vb.) İçerir. Bazı önemli yazı tipi öznitelikleri, bunlara doğrudan erişmenize izin vermek için DocumentBuilder özellikleriyle de temsil edilir. Bunlar `Font.Bold`, `Font.Italic` ve `Font.Underline` Boolean özellikleridir.

Ayarladığınız karakter biçimlendirmesinin belgedeki geçerli konumdan itibaren eklenen tüm metinlere uygulanacağını unutmayın.

Aşağıdaki örnek, DocumentBuilder kullanılarak biçimlendirilmiş metin ekler.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Paragraf Ekleme

 `DocumentBuilder.Writeln` belgeye bir metin dizesi de ekler, ancak ek olarak bir paragraf sonu ekler. Geçerli yazı tipi biçimlendirmesi `DocumentBuilder.Font` özelliği tarafından da belirtilir ve geçerli paragraf biçimlendirmesi `DocumentBuilder.ParagraphFormat` özelliği tarafından belirlenir. Aşağıdaki örnek, belgeye nasıl paragraf ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Tablo Ekleme

DocumentBuilder kullanarak bir tablo oluşturmak için temel algoritma basittir:

1. Tabloyu `DocumentBuilder.StartTable` kullanarak başlatın.
1. `DocumentBuilder.InsertCell` kullanarak bir hücre ekleyin. Bu otomatik olarak yeni bir satır başlatır. Gerekirse, hücre biçimlendirmesini belirtmek için `DocumentBuilder.CellFormat` özelliğini kullanın.
1. `DocumentBuilder` yöntemlerini kullanarak hücre içeriğini ekleyin.
1. Satır tamamlanana kadar 2 ve 3 adımlarını tekrarlayın.
1. Geçerli satırı sonlandırmak için `DocumentBuilder.EndRow` öğesini çağırın. Gerekirse, satır biçimlendirmesini belirtmek için `DocumentBuilder.RowFormat` özelliğini kullanın.
1. Tablo tamamlanana kadar 2 - 5 adımlarını tekrarlayın.
1. Tablo oluşturmayı bitirmek için `DocumentBuilder.EndTable` öğesini arayın. Uygun DocumentBuilder tablo oluşturma yöntemleri aşağıda açıklanmıştır.

### Bir Tablo Başlatma

`DocumentBuilder.StartTable` 'ı çağırmak, bir tablo oluşturmanın ilk adımıdır. Bir hücrenin içinde de çağrılabilir, bu durumda iç içe geçmiş bir tablo başlatır. Aranacak bir sonraki yöntem `DocumentBuilder.InsertCell` 'dir.

### Hücre Ekleme

`DocumentBuilder->InsertCell` öğesini çağırdıktan sonra yeni bir hücre oluşturulur ve `DocumentBuilder` sınıfının diğer yöntemlerini kullanarak eklediğiniz tüm içerikler geçerli hücreye eklenir. Aynı satırda yeni bir hücre başlatmak için `DocumentBuilder->InsertCell` öğesini tekrar arayın. Hücre biçimlendirmesini belirtmek için `DocumentBuilder.CellFormat` özelliğini kullanın. Bir tablo hücresinin tüm biçimlendirmesini temsil eden bir `CellFormat` nesnesi döndürür.

### Bir Satırın Sonu

Geçerli satırı bitirmek için `DocumentBuilder.EndRow` öğesini çağırın. Bundan hemen sonra `DocumentBuilder->InsertCell` ararsanız, tablo yeni bir satırda devam eder.

Satır biçimlendirmesini belirtmek için `DocumentBuilder.RowFormat` özelliğini kullanın. Bir tablo satırı için tüm biçimlendirmeyi temsil eden bir `RowFormat` nesnesi döndürür.

### Bir Tabloyu Sonlandırma

Geçerli tabloyu bitirmek için `DocumentBuilder.EndTable` öğesini çağırın. Bu yöntem `DocumentBuilder->EndRow` çağrıldıktan sonra yalnızca bir kez çağrılmalıdır. Çağrıldığında, `DocumentBuilder.EndTable` imleci geçerli hücreden tablodan hemen sonraki bir konuma taşır. Aşağıdaki örnek, 2 satır ve 2 sütun içeren biçimlendirilmiş bir tablonun nasıl oluşturulacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Bir Mola Ekleme

Açıkça yeni bir satır, paragraf, sütun, bölüm veya sayfa başlatmak istiyorsanız `DocumentBuilder.InsertBreak` öğesini arayın. `BreakType` numaralandırmasıyla temsil edilen, eklemeniz gereken kesme türünü bu yönteme iletin. Aşağıdaki örnek, bir belgeye sayfa sonlarının nasıl ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Resim Ekleme

DocumentBuilder satır içi veya kayan bir görüntü eklemenize izin veren `DocumentBuilder->InsertImage` yönteminin birkaç aşırı yüklenmesini sağlar. Resim bir EMF veya WMF meta dosyası ise, belgeye meta dosyası biçiminde eklenir. Diğer tüm görüntüler PNG biçiminde saklanacaktır. `DocumentBuilder->InsertImage` yöntemi farklı kaynaklardan görüntüler kullanabilir:

- Bir dosyadan veya `URL` bir dize parametresi geçirerek `DocumentBuilder->InsertImage`.
- Bir `Stream` parametresi `DocumentBuilder->InsertImage` geçirerek bir akıştan.
- Bir Görüntü nesnesinden bir Görüntü parametresi geçirerek `DocumentBuilder->InsertImage`.
- Bir bayt dizisinden bir bayt dizisi parametresi geçirerek `DocumentBuilder.InsertImage`.`DocumentBuilder->InsertImage` yöntemlerinin her biri için, aşağıdaki seçeneklerle bir görüntü eklemenize izin veren başka aşırı yüklenmeler de vardır:
- Satır içi veya belirli bir konumda yüzer, örneğin `DocumentBuilder->InsertImage`.
- Yüzde ölçeği veya özel boyut, örneğin `DocumentBuilder.InsertImage`. Ayrıca `DocumentBuilder->InsertImage` yöntemi, Şeklin özelliklerini daha fazla değiştirebilmeniz için yeni oluşturulmuş ve eklenmiş bir `Shape` nesnesi döndürür.

### Satır İçi Görüntü Ekleme

Görüntüyü belgeye satır içi grafik olarak eklemek için görüntüyü içeren bir dosyayı temsil eden tek bir dizeyi `DocumentBuilder->InsertImage` konumuna geçirin. Aşağıdaki örnek, imleç konumundaki satır içi görüntünün belgeye nasıl ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Kayan (Kesinlikle Konumlandırılmış) Bir Görüntü Ekleme

Bu örnek, bir dosyadan veya `URL` 'dan belirli bir konuma ve boyuta kayan bir görüntü ekler.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Yer imi Ekleme

Belgeye bir yer imi eklemek için aşağıdakileri yapmanız gerekir:

1. `DocumentBuilder->StartBookmark` öğesini çağırın ve yer iminin istediğiniz adını iletin.
1. DocumentBuilder yöntemlerini kullanarak yer imi metnini ekleyin.
1. `DocumentBuilder.EndBookmark` ile **DocumentBuilder->StartBookmark** ile kullandığınız adın aynısını ileterek arayın.
1. Yer imleri üst üste gelebilir ve herhangi bir aralığı kapsayabilir. Geçerli bir yer imi oluşturmak için `DocumentBuilder->StartBookmark` ve `DocumentBuilder->EndBookmark` 'yi aynı yer imi adıyla çağırmanız gerekir.

{{% alert color="primary" %}}

Belge kaydedildiğinde kötü biçimlendirilmiş yer imleri veya yinelenen adlara sahip yer imleri göz ardı edilir.

{{% /alert %}}

Aşağıdaki örnek, bir belge oluşturucuyu kullanarak bir belgeye yer iminin nasıl ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## `Form` Alanı Ekleme

Form alanları, kullanıcıyla "etkileşime" izin veren belirli bir Sözcük alanı durumudur. Microsoft Word içindeki form alanları metin kutusu, birleşik giriş kutusu ve onay kutusunu içerir.DocumentBuilder her tür form alanını belgeye eklemek için özel yöntemler sağlar: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` ve `DocumentBuilder.InsertComboBox`. Form alanı için bir ad belirtirseniz, aynı ada sahip bir yer iminin otomatik olarak oluşturulduğunu unutmayın.

### Metin Girişi Ekleme

 `DocumentBuilder.InsertTextInput` belgeye bir metin kutusu eklemek için. Aşağıdaki örnek, bir belgeye metin giriş formu alanının nasıl ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Onay Kutusu Ekleme

Belgeye bir onay kutusu eklemek için `DocumentBuilder.InsertCheckBox` öğesini arayın. Aşağıdaki örnek, bir belgeye onay kutusu form alanının nasıl ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Birleşik Giriş Kutusu Ekleme

Belgeye birleşik giriş kutusu eklemek için `DocumentBuilder.InsertComboBox` öğesini arayın. Aşağıdaki örnek, bir belgeye birleşik giriş kutusu form alanının nasıl ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Alan Düzeyinde Yerel Ayar Ekleme

Müşteriler artık alan düzeyinde Yerel Ayarı belirtebilir ve daha iyi kontrol sağlayabilir. Yerel Ayar Kimlikleri DocumentBuilder içindeki her alanla ilişkilendirilebilir. Aşağıdaki örnekler, bu seçeneğin nasıl kullanılacağını göstermektedir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Köprü Ekleme

Belgeye köprü eklemek için `DocumentBuilder.InsertHyperlink` kullanın. Bu yöntem üç parametreyi kabul eder: belgede görüntülenecek bağlantının metni, bağlantı hedefi (URL veya belgenin içindeki bir yer iminin adı) ve `URL` belgenin içindeki bir yer iminin adıysa doğru olması gereken bir boole parametresi.DocumentBuilder.InsertHyperlink dahili olarak `DocumentBuilder.InsertField` çağırır.Yöntem her zaman URL 'nın başına ve sonuna kesme işaretleri ekler. Köprü görüntüleme metni için yazı tipi biçimlendirmesini `Font` özelliğini kullanarak açıkça belirtmeniz gerektiğini unutmayın. Aşağıdaki örnek, DocumentBuilder kullanarak bir belgeye bir köprü ekler.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Ole Nesnesi Ekleme

Ole Nesnesi istiyorsanız `DocumentBuilder.InsertOleObject` öğesini çağırın. Bu yönteme `ProgId` diğer parametrelerle açıkça iletin. Aşağıdaki örnek, bir belgeye Ole Nesnesinin nasıl ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Ole Nesnesi Eklerken Dosya Adını ve Uzantısını Ayarlama

OLE paket, OLE işleyicisi bilinmiyorsa gömülü nesneyi depolamanın eski ve "belgelenmemiş" bir yoludur. Windows 3.1, 95 ve 98 gibi ilk Windows sürümlerinde Paketleyici vardı.herhangi bir veri türünü belgeye gömmek için kullanılabilecek exe uygulaması. Şimdi, bu uygulama Windows dışında bırakıldı, ancak MS Word ve diğer uygulamalar, OLE işleyicisi eksik veya bilinmiyorsa verileri gömmek için kullanmaya devam ediyor. OlePackage sınıfı, OLE Paket özelliklerine erişime izin verir. Aşağıdaki örnek, OLE Paketi için dosya adı, uzantı ve görünen adın nasıl ayarlanacağını gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Ekleme HTML

Word belgesine HTML parçası veya tamamı HTML belgesi içeren bir HTML dizesini kolayca ekleyebilirsiniz. Bu dizeyi `DocumentBuilder->InsertHtml` yöntemine iletmeniz yeterlidir. Yöntemin yararlı uygulamalarından biri, bir HTML dizesini bir veritabanında depolamak ve mail merge sırasında belgeye eklemek, belge oluşturucunun çeşitli yöntemlerini kullanarak oluşturmak yerine biçimlendirilmiş içeriği eklemektir. Aşağıdaki örnekte, DocumentBuilder kullanarak bir belgeye HTML ekler gösterilmektedir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Belgeye Yatay Kural Ekleme

Below code örneği, `DocumentBuilder->InsertHorizontalRule` yöntemini kullanarak bir belgeye yatay kural şeklinin nasıl ekleneceğini gösterir.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}

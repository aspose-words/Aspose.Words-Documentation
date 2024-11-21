---
title: Alanlara Giriş Java''
second_title: Aspose.Words için Java
articleTitle: Alanlara Giriş
linktitle: Alanlara Giriş
description: "Alanlar özellik ayrıntıları, alan kodları ve alan sonuçları Aspose.Words Java için açıklanmıştır."
type: docs
weight: 10
url: /tr/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words sunucu tarafı işleme için tasarlanmış bir sınıf kütüphanesidir Microsoft Word belgeleri ve alanları aşağıdaki gibi destekler:

- bir belgedeki tüm alanlar açma/kaydetme ve dönüştürmeler sırasında korunur
- en çok alanları için sonuçları güncellemek mümkündür

Bu makalede "alan yapısı", Aspose.Words 'da desteklenen alanlar ve bu tür alanlarla çalışmanın ayrıntıları hakkında daha fazla bilgi edineceğiz.

## Alan Yapısı

Bir alan şu şekilde oluşur:

- Alan başlangıç ve ayırıcı düğümleri alan kodunu oluşturan içeriği (normalde düz metin olarak) kapsamak için kullanılır.
- Alan ayırıcı ve alan sonu, alan sonucunu çevreler. Bu çeşitli türlerde içerikten oluşabilir, metinlerden paragraflara ve tablolara kadar.
– Bazı alanlar bir ayırıcıya sahip olmayabilir, bu da tüm içeriğin alan kodunu oluşturduğu anlamına gelir.
- Alan kodu alanı davranışını tanımlar ve alan tanımlayıcısı ve genellikle diğer parametreler gibi alan adı ve anahtarlar içerir.
- Alan sonucu alanın en son değerlendirmesini içerir. Bu değer alan sonucunda depolanır ve kullanıcıya gösterilen değerdir. Bazı alanlar herhangi bir alan sonucu içermeyebilir bu nedenle belgede hiçbir şey görüntülemezler. Aynı şekilde, bazı alanlar henüz güncellenmemiş olabilir bu nedenle ayrıca herhangi bir alan sonucu olmayabilir.

![fields-aspose-words-java](introduction-to-fields-1.png)

Alan kodunu oluşturan içeriğin [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) düğüme sahip olarak depolandığı [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) ve [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) arasında depolandığı. Alan sonucu **FieldSeparator** ve [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) düğümleri arasında depolanır ve çeşitli türlerde içerikten oluşabilir. Normalde alan sonucu sadece Run düğümlerinden oluşan metin içerir, ancak FieldEnd düğümü tamamen farklı bir paragrafta yer alabilir ve böylece alan sonucunu **Table** ve **Paragraph** düğümleri gibi [block level nodes](/words/java/logical-levels-of-nodes-in-a-document/) tane içeren bileşik bir yapıya dönüştürür.

İşte bir alan nasıl depolanır Aspose.Words "DocumentExplorer" örneği kullanılarak, [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer) bulunabilir.

![document-explorer-aspose-words-java](introduction-to-fields-2.png)

## Alanlar Aspose.Words Document Object Model (DOM)

Bir belge Aspose.Words içine yüklendiğinde, belgenin alanları ayrı bileşenleri (düğümleri) bir kümesi olarak Aspose.Words Document Object Model içine yüklenir. Bir alan tek bir koleksiyon olarak **FieldStart**, **FieldSeparator** ve **FieldEnd** düğümleri ile birlikte bu düğümler arasındaki içeriğin yanında yüklenir. Bir alanın alan sonucu yoksa **FieldSeparator** düğümü olmayacaktır. Tüm bu düğümler her zaman iç içe ( [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) veya [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)'ün çocukları olarak) bulunur.

In Aspose.Words her bir **FieldXXX** düğümü, [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)'den türecek şekilde tanımlanır. Bu sınıf, belirtilen özelliğin aracılığıyla temsil edilen alanın türünü kontrol etmek için bir özellik sağlar. Örneğin, [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) alanı `FieldType.FieldMergeField` belge içindeki birleştirme alanını temsil eder.

{{% alert color="primary" %}}

Word belgesinde var olan bazı özel alanlar, bir koleksiyon olarak Aspose.Words 'ye aktarılmıyor **FieldXXX** düğümleri. Örneğin, `LINK` alanı ve `INCLUDEPICTURE` alanı, Aspose.Words'a bir [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) nesnesi olarak aktarılır. Bu nesne bu alanlarda normalde depolanan resim verileriyle çalışmak için özellikleri sağlar. `INCLUDEPICTURE` alanını **FieldXXX** düğümleri olarak aktarmak için [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) seçeneği belirtilmelidir **true**.

Form alanları ayrıca Aspose.Words kendi özel sınıfları olarak da içe aktarılır. [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) sınıfı, bir Word belgesinde bir form alanı temsil eder ve bir form alanına özgü ek yöntemler sağlar.

{{% /alert %}}

## Desteklenen alanlar

Aşağıdaki alanlar şu anda mevcut sürümde Aspose.Words'da desteklenmektedir:

- = (formül)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (dahil TOT ve TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Sophisticated Field Parsing

Aspose.Words Microsoft Word'in alanlarını işleme şeklini takip eder ve sonuç olarak doğru bir şekilde ele alır:

- iç içe alanlar:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- alan argüman bir iç içe geçmiş alanın sonucudur
- alanları bir alan kodunda da iç içe olabilir ve de alan sonuçlarında
- boşluklar/boşluk yok, tırnak işaretleri/tırnak işaretleri yok, alanlardaki kaçış karakterleri vb.":
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- birden fazla paragraf üzerinden uzanan alanlar

### Formül Alanları

Aspose.Words formül motorunun çok ciddi bir uygulamasıdır ve şu özellikleri destekler:

- aritmetik ve mantıksal operatörler:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- işlevler:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- yer imlerine referanslar:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- sayı biçimlendirme anahtarları:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Aşağıdaki ifadelerde işlevler şunlardır: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` ve `COMPARE` Alanlar

Yalnızca `IF` ifadelerin Aspose.Words'in kolaylıkla hesaplayabileceği bazı örnekleri size bu özelliğin ne kadar güçlü olduğunu fikir vermeli:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` ve `TIME` Alanlar

Aspose.Words tüm tarih ve saat biçimlendirme anahtarları Microsoft Word'te mevcut olanların tamamını destekler, bazı örnekler şunlardır:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge alan(lar)

Aspose.Words belgenizdeki mail merge alanlarının karmaşıklığı üzerinde hiçbir sınır koymaz ve iç içe geçmiş `IF` ve formül alanları destekler ve hatta bir formül kullanarak birleştirme alanı adını hesaplayabilir.

Aşağıda mail merge alanlarının bazı örnekleri Aspose.Words destekler:

- Mail merge alan anahtarları:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- formüldeki iç içe geçmiş birleştirme alanları:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- çalışma zamanında birleştirme alanının adını hesapla:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- veri kaynağındaki bir sonraki kayda koşullu hareket:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Biçim Anahtarlamaları

Bir belge içindeki bir alan sonuç elde değerinin nasıl biçimlendirileceğini belirten biçimler anahtarlarına sahip olabilir. Aspose.Words aşağıdaki biçimlendirme anahtarlarını destekler:

- @ – tarih ve saat formatlama
- \## – sayı biçimlendirme
- \\\\\\\\* Caps
- \\\\\\\\* İlkKafes
- \\\\\\\\* Alt
-\\\\\\\\* Üst
- \\\\\\\\* CHARFORMAT – alan kodunun ilk karakteri doğrultusunda sonucu biçimlendirir
- \\\\\\* MERGEFORMAT – eski sonuç nasıl biçimlendirilmişse buna göre sonucu biçimlendirin

### Date ve Alanlarda Sayı Biçimlendirme

Bir alan sonucunu hesaplarken bir Aspose.Words genellikle bir dizeyi bir sayı veya tarih değerine dönüştürmek ve ayrıca onu tekrar bir dizeye biçimlendirmek için ihtiyaç duyar. Varsayılan olarak Aspose.Words alan güncelleme sırasında ve mail merge alan değerlerini hesaplarken geçerli iş parçacığı kültürünü kullanarak ayrıştırma ve biçimlendirme gerçekleştirir. Ayrıca [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) sınıfı kullanılarak, hangi kültürün kullanıldığına ilişkin daha fazla kontrol sağlanır

varsayılan olarak [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) özelliği şu anda kullanılan iş parçacığı kültürü ile alanları biçimlendirerek [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD)'e ayarlanır
Bu özellik [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE)'e ayarlanabilir böylece alanın alan kodundan alınan dil, biçimlendirme için kullanılır

### Geçerli İş Parçacığı Kültürünü Kullanarak Biçimlendirme Yapmak

Alan hesaplama sırasında kullanılan kültürü kontrol etmek için, önce alan hesaplama işlevini çağırmadan önce **CurrentCulture** özelliğini istediğiniz kültürde ayarlayın.

Aşağıdaki kod örneği, güncelleme sırasında kullanılan kültürü nasıl değiştireceğinizi gösterir:

Örnek (özel `Thread.CurrentThread`.CurrentCulture yerine kamu CurrentThreadSettings.getLocale() ve setLocale() kullanın)

Geçerli kültürü alanları biçimlendirmek için kullanmak, bir sistemin tüm belge alanlarının nasıl biçimlendirileceğini güncelleme sırasında kolayca ve tutarlı bir şekilde kontrol etmesini sağlar.

### Biçimlendirme, Belge'deki Kültür Kullanarak

Öte yandan, Microsoft Word her bir alanı tek başına metin alanındaki dil temelinde biçimlendirir (özellikle alan kodundan gelen dizeler). Bazen bu davranış istenen şey olabilir, örneğin küresel belgeleriniz birden çok farklı dil içeren içerik içerse ve alanları yerel kullanılan metinle onurlandırmak istediğinizde. Ayrıca Aspose.Words bu işlevselliği de destekler.

Sınıf, [Document](https://reference.aspose.com/words/java/com.aspose.words/document/), bir [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) özelliği sağlar, bu üyeler bir belge içinde alanlar nasıl güncellenir kontrol etmek için kullanılabilir.

Aşağıdaki kod örneği, alan güncelleme sırasında tarih biçimlendirmesi için kullanılan kültürü belirtmek ve mail merge seçmek için nasıl kullanılacağını göstermektedir:

ORNEK

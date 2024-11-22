---
title: Alanlara Genel Bakış C++
second_title: Aspose.Words için C++
articleTitle: Alanlara Genel Bakış
linktitle: Alanlara Genel Bakış
description: "Alanlar ayrıntılarda, alan kodlarında ve açıklanan alan sonuçlarında yer alır Aspose.Words için C++."
type: docs
weight: 10
url: /tr/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words, Microsoft Word belgelerin sunucu tarafında işlenmesi için tasarlanmış bir sınıf kitaplığıdır ve alanları aşağıdaki şekillerde destekler:

- bir belgedeki tüm alanlar açma / kaydetme ve dönüştürme sırasında korunur
- çoğu alanın sonuçlarını güncellemek mümkündür

Bu makalede, alan yapısı, Aspose.Words 'da desteklenen alanlar ve bu alanlarla çalışmanın ayrıntıları hakkında daha fazla bilgi edineceğiz.

## Alan Yapısı

Bir alan şunlardan oluşur:

- Alan başlatma ve ayırıcı düğümler, alan kodunu oluşturan içeriği (normalde düz metin olarak) kapsamak için kullanılır.
- Alan ayırıcısı ve alan sonu, alan sonucunu kapsar. Bu, metin çalışmalarından paragraflara ve tablolara kadar çeşitli içerik türlerinden oluşabilir.
- Bazı alanlarda ayırıcı olmayabilir, bu da tüm içeriğin alan kodunu oluşturduğu anlamına gelir.
- Alan kodu, alanın davranışını tanımlar ve alan tanımlayıcısından ve genellikle alan adları ve anahtarlar gibi diğer parametrelerden oluşur.
- Alan sonucu, alanın en son değerlendirmesini içerir. Bu değer, sonuç alanında saklanır ve kullanıcıya görüntülenen değerdir. Bazı alanlarda herhangi bir alan sonucu olmayabilir, bu nedenle belgede hiçbir şey görüntülenmez. Aynı şekilde, bazı alanlar henüz güncellenmeyebilir, bu nedenle alan sonucu da olmayacaktır.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Alan kodunu oluşturan içerik, [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) ile [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/) arasında [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) düğüm olarak saklanır. Alan sonucu **FieldSeparator** ve [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) düğümleri arasında saklanır ve çeşitli içerik türlerinden oluşabilir. Normalde alan sonucu yalnızca **Run** düğümlerinden oluşan metni içerir, ancak **FieldEnd** düğümünün tamamen farklı bir paragrafta bulunması ve böylece alan sonucunun aşağıdakilerden oluşması mümkündür [blok düzeyinde düğümler](/words/cpp/logical-levels-of-nodes-in-a-document/) **Table** ve **Paragraph** düğümleri gibi.

"*DocumentExplorer"* örneğini kullanarak bir alanın Aspose.Words içinde nasıl saklandığına dair bir görünüm aşağıda verilmiştir.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Aspose.Words Belge Nesne Modelindeki Alanlar (DOM)

Bir belge Aspose.Words'ya yüklendiğinde, belgenin alanları Aspose.Words'ya yüklenir. [Aspose.Words Belge Nesne Modeli](/words/cpp/aspose-words-document-object-model/) ayrı bileşenler (düğümler) kümesi olarak. Bu düğümler arasındaki içerikle birlikte **FieldStart**, **FieldSeparator** ve **FieldEnd** düğümlerden oluşan bir koleksiyon olarak tek bir alan yüklenir. Bir alanın alan sonucu yoksa, **FieldSeparator** düğümü olmayacaktır. Bu düğümlerin tümü her zaman satır içi olarak bulunur ([Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) veya [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/) alt öğeleri olarak).

Aspose.Words 'te **FieldXXX** düğümlerin her biri [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/)'den türemiştir. Bu sınıf, [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/) özelliği aracılığıyla belirtilen düğüm tarafından temsil edilen alan türünü denetlemek için bir özellik sağlar. Örneğin **FieldType.FieldMergeField** belgedeki bir birleştirme alanını temsil eder.

{{% alert color="primary" %}}

Bir Word belgesinde **FieldXXX** düğüm koleksiyonu olarak Aspose.Words'ya içe aktarılmayan bazı özel alanlar vardır. Örneğin, `LINK` alanı ve `INCLUDEPICTURE` alanı Aspose.Words'ya `Shape` nesnesi olarak alınır. Bu nesne, normalde bu alanlarda depolanan görüntü verileriyle çalışmak için özellikler sağlar. `INCLUDEPICTURE` alanını **FieldXXX** düğüm olarak içe aktarmak için [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) seçeneğinin **true** olarak belirtilmesi gerekir.

Form alanları da kendi özel sınıfları olarak Aspose.Words içine alınır. [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) sınıfı, bir Word belgesindeki bir form alanını temsil eder ve bir form alanına özgü ek yöntemler sağlar.

{{% /alert %}}

## Desteklenen Alanlar

Aşağıdaki alanların hesaplanması Aspose.Words geçerli sürümünde desteklenir:

- = (formül)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Karmaşık Alan Ayrıştırma

Aspose.Words, Microsoft Word 'ın alanları işleme biçimini izler ve sonuç olarak doğru şekilde işler:

- iç içe geçmiş alanlar:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- alan bağımsız değişkeni, iç içe geçmiş bir alanın sonucu olabilir
- alanlar, alan sonucunun yanı sıra bir alan kodu içinde de yuvalanabilir
- boşluklar / boşluk yok, tırnak işaretleri / tırnak işaretleri yok, alanlardaki kaçış karakterleri vb.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- birden çok paragrafa yayılan alanlar

### Formül Alanları

Aspose.Words formül motorunun çok ciddi bir uygulamasını sağlar ve aşağıdakileri destekler:

- aritmetik ve mantıksal operatörler:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- işlevler:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- yer imlerine referanslar:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- sayı biçimlendirme anahtarları:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

İfadelerdeki aşağıdaki işlevler desteklenir: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` ve `COMPARE` Alanları

Aspose.Words'in kolayca hesaplayabileceği `IF` ifadelerden sadece bazıları size bu özelliğin ne kadar güçlü olduğu hakkında bir fikir vermelidir:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` ve `TIME` Alanları

Aspose.Words Microsoft Word 'da bulunan tüm tarih ve saat biçimlendirme anahtarlarını destekler, bazı örnekler:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Alanlar

Aspose.Words, belgelerinizdeki Mail Merge alanların karmaşıklığına herhangi bir sınır getirmez ve iç içe `IF` ve formül alanlarını destekler ve hatta bir formül kullanarak birleştirme alanının adını hesaplayabilir.

Aspose.Words'ın desteklediği Mail Merge alanlarından bazı örnekler:

- Mail merge alan anahtarları:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- formülde iç içe geçmiş birleştirme alanları:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- çalışma zamanında birleştirme alanının adını hesaplayın:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- veri kaynağındaki bir sonraki kayda koşullu taşıma:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Biçim Anahtarları

Belgedeki bir alan, sonuçta elde edilen değerin nasıl biçimlendirileceğini belirten biçimlendirme anahtarlarına sahip olabilir. Aspose.Words aşağıdaki biçim anahtarlarını destekler:

- @ - tarih ve saat biçimlendirme
- \\\# - sayı biçimlendirme
- \\\\\\\\* Büyük Harfler
- \\\\\\\\* FirstCap
- \\\\\\\\* Daha düşük
- \\\\\\\\* Yukarı
- \\\\\\\\* CHARFORMAT - sonucu alan kodunun ilk karakterine göre biçimlendir
- \\\\\\\\* MERGEFORMAT - sonucu eski sonucun nasıl biçimlendirildiğine göre biçimlendir

### Alanlarda Tarih ve Sayı Biçimlendirme

Aspose.Words bir alan sonucunu hesapladığında, genellikle bir dizeyi bir sayı veya tarih değerine ayrıştırması ve aynı zamanda bir string.By varsayılan Aspose.Words, alan güncellemesi sırasında alan değerlerini hesaplarken ayrıştırma ve biçimlendirme gerçekleştirmek için geçerli iş parçacığı kültürünü kullanır ve mail merge. Alan güncellemesi sırasında hangi kültürün kullanıldığı üzerinde daha fazla kontrole izin veren [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) sınıfı şeklinde sağlanan seçenekler de vardır.

- varsayılan olarak [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) özelliği, geçerli iş parçacığı kültürünü kullanarak alanları biçimlendiren [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) olarak ayarlanır
- bu özellik [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) olarak ayarlanabilir, böylece alanın alan kodundan ayarlanan dil bunun yerine biçimlendirme için kullanılır

### Geçerli iş parçacığının Kültürünü Kullanarak Biçimlendirme

Alan hesaplaması sırasında kullanılan kültürü denetlemek için, alan hesaplamasını çağırmadan önce **CurrentCulture** özelliğini seçtiğiniz bir kültüre ayarlamanız yeterlidir.

Aşağıdaki kod örneği, güncelleştirme sırasında biçimlendirme alanlarında kullanılan kültürün nasıl değiştirileceğini gösterir:

EXAMPLE

Alanları biçimlendirmek için geçerli kültürü kullanmak, bir sistemin alan güncellemesi sırasında belgedeki tüm alanların nasıl biçimlendirildiğini kolayca ve tutarlı bir şekilde kontrol etmesini sağlar.

### Belgedeki Kültürü Kullanarak Biçimlendirme

Öte yandan, Microsoft Word her bir alanı, alanda bulunan metnin diline göre biçimlendirir (özellikle, alan kodundan çalıştırmalar). Bazen alan güncellemesi sırasında, örneğin birçok farklı dilden oluşan içerik içeren belgeleri küreselleştirdiyseniz ve her alanın metinden kullanılan yerel ayarı onurlandırmasını istiyorsanız, bu istenen davranış olabilir. Aspose.Words bu işlevi de destekler.

[Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) sınıfı, belge içindeki alanların nasıl güncelleneceğini denetlemek için kullanılabilecek üyeler içeren bir [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) özelliği sağlar.

Aşağıdaki kod örneği, alan güncelleştirmesi ve Mail Merge sırasında tarih biçimlendirmesi için kullanılan kültürün nereden seçileceğini nasıl belirleyeceğinizi gösterir:

EXAMPLE

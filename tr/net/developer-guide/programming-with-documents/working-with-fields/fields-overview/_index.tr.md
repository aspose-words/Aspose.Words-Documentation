---
title: C#'te Alanlara Genel Bakış
second_title: .NET için Aspose.Words
articleTitle: Alanlara Genel Bakış
linktitle: Alanlara Genel Bakış
description: ".NET için Aspose.Words'te ayrıntılı olarak açıklanan alanlar özelliği, alan kodları ve alan sonuçları."
type: docs
weight: 10
url: /tr/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words, Microsoft Word belgelerinin sunucu tarafında işlenmesi için tasarlanmış bir sınıf kitaplığıdır ve alanları aşağıdaki şekillerde destekler:

- bir belgedeki tüm alanlar açma/kaydetme ve dönüştürmeler sırasında korunur
- çoğu alanın sonuçlarını güncellemek mümkündür

Bu yazımızda alan yapısı, Aspose.Words'te desteklenen alanlar ve bu alanlarla çalışmanın detayları hakkında daha fazla bilgi edineceğiz.

## Saha Yapısı

Bir alan şunlardan oluşur:

- Alan başlangıcı ve ayırıcı düğümler, alan kodunu oluşturan içeriği (normalde düz metin olarak) kapsamak için kullanılır.
- Alan ayırıcı ve alan ucu, saha sonucunu kapsar. Bu, metin dizilerinden paragraflara ve tablolara kadar çeşitli içerik türlerinden oluşabilir.
- Bazı alanlarda ayırıcı bulunmayabilir; bu, içeriğin tamamının alan kodunu oluşturduğu anlamına gelir.
- Alan kodu, alanın davranışını tanımlar ve alan tanımlayıcısından ve genellikle alan adı ve anahtarlar gibi diğer parametrelerden oluşur.
- Saha sonucu sahanın en güncel değerlendirmesini içerir. Bu değer alan sonucunda saklanır ve kullanıcıya gösterilir. Bazı alanlarda herhangi bir alan sonucu bulunmayabilir, dolayısıyla belgede hiçbir şey görüntülenmez. Aynı şekilde bazı alanlar henüz güncellenmemiş olabilir, bu nedenle alan sonucu da olmayabilir.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Alan kodunu oluşturan içerik, [FieldStart](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldstart/) ile [FieldSeparator](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldseparator/) arasında [Run](https://reference.aspose.com/words/tr/net/aspose.words/run/) düğümleri olarak depolanır. Alan sonucu **FieldSeparator** ve [FieldEnd](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldend/) düğümleri arasında depolanır ve çeşitli içerik türlerinden oluşabilir. Normalde alan sonucu yalnızca **Run** düğümlerinden oluşan metni içerir, ancak **FieldEnd** düğümünün tamamen farklı bir paragrafta konumlandırılması ve dolayısıyla alan sonucunun **Table** ve **Paragraph** düğümleri gibi [Bir Belgedeki Düğümlerin Mantıksal Düzeyleri](/words/tr/net/logical-levels-of-nodes-in-a-document/)'den oluşması da mümkündür.

Burada, [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)'de bulunabilen "*DocumentExplorer"* örneğini kullanarak bir alanın Aspose.Words'te nasıl saklandığına dair bir görünüm bulunmaktadır.

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Aspose.Words Document Object Model'deki (DOM) alanlar

Bir belge Aspose.Words'e yüklendiğinde, belgenin alanları bir dizi ayrı bileşen (düğüm) olarak [Aspose.Words Document Object Model (DOM)](/words/tr/net/aspose-words-document-object-model/)'ye yüklenir. Tek bir alan, **FieldStart**, **FieldSeparator** ve **FieldEnd** düğümlerinin bir koleksiyonu olarak ve bu düğümler arasındaki içerikle birlikte yüklenir. Bir alanın alan sonucu yoksa **FieldSeparator** düğümü olmayacaktır. Bu düğümlerin tümü her zaman satır içi olarak bulunur ([Paragraph](https://reference.aspose.com/words/tr/net/aspose.words/paragraph/) veya [SmartTag](https://reference.aspose.com/words/tr/net/aspose.words.markup/smarttag/)'nin çocukları olarak).

Aspose.Words'te **FieldXXX** düğümlerinin her biri [FieldChar](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldchar/)'den türetilir. Bu sınıf, belirtilen düğüm tarafından temsil edilen alan türünü [FieldType](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldtype/) özelliği aracılığıyla kontrol etmek için bir özellik sağlar. Örneğin **FieldType.FieldMergeField**, belgedeki bir birleştirme alanını temsil eder.

{{% alert color="primary" %}}

Bir Word belgesinde bulunan ve Aspose.Words'e **FieldXXX** düğümlerinin bir koleksiyonu olarak aktarılmayan bazı belirli alanlar vardır. Örneğin, `LINK` alanı ve `INCLUDEPICTURE` alanı Aspose.Words'e [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/) nesnesi olarak aktarılır. Bu nesne, normalde bu alanlarda depolanan görüntü verileriyle çalışacak özellikler sağlar. `INCLUDEPICTURE` alanını **FieldXXX** düğümleri olarak içe aktarmak için [PreserveIncludePictureField](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) seçeneğinin **true** olarak belirtilmesi gerekir.

Form alanları da Aspose.Words'e kendi özel sınıfları olarak aktarılır. [FormField](https://reference.aspose.com/words/tr/net/aspose.words.fields/formfield/) sınıfı, Word belgesindeki bir form alanını temsil eder ve form alanına özel ek yöntemler sağlar.

{{% /alert %}}

## Desteklenen Alanlar

Aşağıdaki alanların hesaplanması Aspose.Words'in güncel sürümünde desteklenmektedir:

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
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Gelişmiş Alan Ayrıştırma

Aspose.Words, Microsoft Word'nin alanları işleme biçimini takip eder ve sonuç olarak şunları doğru şekilde işler:

- iç içe geçmiş alanlar:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- alan argümanı iç içe geçmiş bir alanın sonucu olabilir
- alanlar, alan sonucunun yanı sıra alan kodunun içine de yerleştirilebilir
- boşluk/boşluk yok, tırnak işaretleri/tırnak işaretleri yok, alanlardaki kaçış karakterleri vb.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- birden fazla paragrafa yayılan alanlar

### Formül Alanları

Aspose.Words, formül motorunun çok ciddi bir uygulamasını sağlar ve aşağıdakileri destekler:

- aritmetik ve mantıksal operatörler:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- işlevler:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- yer imlerine referanslar:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- sayı biçimlendirme anahtarları:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

İfadelerde şu işlevler desteklenir: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` ve `COMPARE` Alanları

Aspose.Words'nin kolayca hesaplayabildiği `IF` ifadelerinden sadece birkaçı size bu özelliğin ne kadar güçlü olduğu hakkında bir fikir vermelidir:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` ve `TIME` Alanları

Aspose.Words, Microsoft Word'de bulunan tüm tarih ve saat biçimlendirme anahtarlarını destekler; bazı örnekler şunlardır:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Alanları

Aspose.Words, belgelerinizdeki Mail Merge alanlarının karmaşıklığına herhangi bir sınırlama getirmez ve iç içe `IF` ve formül alanlarını destekler ve hatta bir formül kullanarak birleştirme alanının adını hesaplayabilir.

Aspose.Words'nin desteklediği Mail Merge alanlarına bazı örnekler:

- Mail merge alan anahtarları:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- formüldeki iç içe geçmiş birleştirme alanları:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- çalışma zamanında birleştirme alanının adını hesaplayın:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- veri kaynağındaki bir sonraki kayda koşullu geçiş:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Format Anahtarları

Belgedeki bir alan, elde edilen değerin nasıl biçimlendirilmesi gerektiğini belirten biçimlendirme anahtarlarına sahip olabilir. Aspose.Words aşağıdaki format anahtarlarını destekler:

- \\\@ – tarih ve saat biçimlendirmesi
- \\\# – sayı biçimlendirmesi
- \\\* Büyük harfler
- \\\* İlk Cap
- \\\* Daha düşük
- \\\* Üst
- \\\* CHARFORMAT – sonucu alan kodunun ilk karakterine göre biçimlendir
- \\\* MERGEFORMAT – sonucu eski sonucun nasıl biçimlendirildiğine göre biçimlendir

### Alanlarda Date ve Sayı Biçimlendirmesi

Aspose.Words bir alan sonucunu hesapladığında, genellikle bir dizeyi bir sayı veya tarih değerine ayrıştırması ve ayrıca onu tekrar bir dizeye biçimlendirmesi gerekir. Aspose.Words, alan güncellemesi sırasında alan değerlerini hesaplarken varsayılan olarak ayrıştırma ve biçimlendirmeyi gerçekleştirmek için geçerli iş parçacığı kültürünü kullanır. ve mail merge. Alan güncellemesi sırasında hangi kültürün kullanıldığı üzerinde daha fazla kontrole olanak tanıyan [FieldOptions](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldoptions/) sınıfı biçiminde sağlanan seçenekler de vardır.

- varsayılan olarak [FieldUpdateCultureSource](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) özelliği, alanları geçerli iş parçacığı kültürünü kullanarak biçimlendiren [CurrentThread](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldupdateculturesource/) olarak ayarlanmıştır
- bu özellik [FieldCode](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldupdateculturesource/) olarak ayarlanabilir, böylece alanın alan kodundan ayarlanan dil bunun yerine biçimlendirme için kullanılır

### Geçerli Konunun Kültürünü Kullanarak Biçimlendirme

Alan hesaplaması sırasında kullanılan kültürü kontrol etmek için, alan hesaplamasını başlatmadan önce **Thread.CurrentThread.CurrentCulture** özelliğini istediğiniz bir kültüre ayarlamanız yeterlidir.

Aşağıdaki kod örneği, güncelleme sırasında biçimlendirme alanlarında kullanılan kültürün nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Alanları biçimlendirmek için mevcut kültürün kullanılması, sistemin alan güncellemesi sırasında belgedeki tüm alanların nasıl biçimlendirileceğini kolay ve tutarlı bir şekilde kontrol etmesine olanak tanır.

### Belgedeki Kültürü Kullanarak Biçimlendirme

Öte yandan Microsoft Word, her bir alanı, alanda bulunan metnin diline (özellikle alan kodundaki çalıştırmalara) göre biçimlendirir. Bazen alan güncellemesi sırasında bu istenen davranış olabilir; örneğin, birçok farklı dilden oluşan içerik içeren küreselleştirilmiş belgeleriniz varsa ve her alanın metinde kullanılan yerel ayarı dikkate almasını istiyorsanız. Aspose.Words de bu işlevselliği destekler.

[Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) sınıfı, alanların belge içinde nasıl güncellendiğini kontrol etmek için kullanılabilecek üyeleri içeren bir [FieldOptions](https://reference.aspose.com/words/tr/net/aspose.words/document/fieldoptions/) özelliği sağlar.

Aşağıdaki kod örneği, alan güncellemesi sırasında tarih biçimlendirmesi için kullanılan kültürün ve mail merge'in nereden seçileceğinin nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}

---
title: Metin Alanları ile Değiştir Java
second_title: Aspose.Words için Java
articleTitle: Alanları Statik Metinle Değiştir
linktitle: Alanları Statik Metinle Değiştir
description: "Metinlerle alanlar nasıl değiştirilir Java'u öğrenmek için. Alanları sabit verilerle değiştirin Java API kullanarak."
type: docs
weight: 37
url: /tr/java/replace-fields/
---

Alanları değiştirme genellikle bir belgeyi statik bir kopyaya kaydetmek istediğinizde gereklidir. Örneğin, bir e-postaya ek olarak gönderirken. `DATE` veya `TIME` gibi alanları sabit metinlere dönüştürmek belgenin gönderildiği tarihin aynı şekilde görüntülenmesini sağlar. Ayrıca, bazı durumlarda, belgelerinizden koşullu `IF` alanlarını kaldırmanız ve bunları en son metin sonucuyla değiştirmeniz gerekebilir. Örneğin, `IF` alanının sonucunu sabit metne dönüştürerek, alan belgede güncellendiğinde değeri dinamik olarak değişmeyecek şekilde.

Aşağıdaki diyagram, bir belge içinde nasıl `IF` alanı depolandığını göstermektedir:

the text is surrounded by the special field nodes – [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) ve [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
alan içinde bulunan metni alan kodu ve alan sonucu olarak ayırmak için [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) düğümü kullanılır
* Alan kodu alanın genel davranışını tanımlar, oysa alan sonucu bu alan güncellendiğinde en son sonucu korur Microsoft Word veya Aspose.Words ile
the field result, the field'de depolanan ve belgenin görüntülenmesinde gösterilen nedir?

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Aşağıdaki yapı, hiyerarşik biçimde ve demolar projesi **“DocumentExplorer”** kullanılarak da görülebilir ki bu, **Aspose.Words** yükleyicisiyle birlikte gelir.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Metinle Değiştirilemeyecek Alanlar

Bir alanı sabit metinle değiştirme, bazı durumlarda bir başlık veya alt bilgi alanındaki alanlar için düzgün çalışmıyor.

Örneğin, başlık veya altbilgide `PAGE` alanı statik metne dönüştürmeye çalışmak tüm sayfalarda aynı değeri görüntüleyecektir. Bunun nedeni başlık ve altbilginin birden fazla sayfada tekrarlanmasıdır ve alanlar olarak kaldığında her sayfa için doğru sonucu göstermek üzere özel bir şekilde işlenirler.

Ancak, üstbilgide, `PAGE` alanı iyi bir statik metin koşulu ile çevirilebilir. Bu metin koşulu, son sayfayı bölümün sonu olarak değerlendirerek, üstbilginin içindeki herhangi bir `PAGE` alanının tüm sayfalar üzerinde en son sayfayı göstermesine neden olacaktır.

Aşağıdaki örnek kod, alanın en son sonucuyla nasıl değiştirileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Belirli Belge Parçalarında Belirli Alan Türlerini Dönüştürme

**ConvertFieldsToStaticText** yöntemi iki parametre kabul eder - [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) özellikleri ve [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) numaralandırma, bu nedenle bu yönteme herhangi bir bileşik düğüm geçirmek mümkündür. Bu, alanların yalnızca belge içinde belirli bölümlerde statik metin olarak dönüştürülmesini sağlar.

Örneğin, bir [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) nesnesi geçirebilir ve belirtilen türdeki tüm belgedeki alanları sabit metinlere dönüştürebilir veya bir [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) nesnesinin bir bölümüne geçebilir ve bu bölümde bulunan alanların sadece alanlarını dönüştürebilirsiniz.

{{% alert color="primary" %}}

Bir blok düzeyli düğüm geçirdikçe örneğin [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) bilinmelidir ki bazı durumlarda alanlar birden fazla paragraf yayılabilir. Bu gerçekleşirse, bileşeni yerine üst düğümün geçirilmesi bu durumu önlemek için önerilir.

{{% /alert %}}

[FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) numaralandırma geçirilen **ConvertFieldsToStaticText** yöntemi, hangi tür alanların statik metin olarak dönüştürüleceğini belirtir. Belgeye bulunan diğer herhangi bir alan türü değişmeden kalır.

Aşağıdaki kod örneğinde, belirli bir türde - *targetFieldType* belirli bir düğümde - *compositeNode* alanları nasıl seçileceğini ve sonra bunları sabit metin olarak nasıl dönüştürdüğünü gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Aşağıdaki kod örneğinde bir belgedeki tüm `IF` alanları statik metne dönüştürmek gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Aşağıdaki kod örneği, bir belgenin gövdesindeki tüm `PAGE` alanları statik metin haline getirmek için nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Aşağıdaki kod örneği, son paragraftaki tüm `IF` alanlarını sabit metne dönüştürmenin nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}

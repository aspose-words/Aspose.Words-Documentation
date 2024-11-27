---
title: Mail Merge Mustache Sözdizimi
second_title: Aspose.Words için Python via .NET
articleTitle: Mail Merge Mustache Sözdiziminden Şablon
linktitle: Mail Merge Mustache Sözdiziminden Şablon
type: docs
description: "Python kullanarak Mustache sözdizimine sahip şablonlar oluşturun. Mustache sözdizimi, alan içermeyen şablonlarla (HTML veya TXT) kullanılacak tek seçenektir. Word şablonlarla iki seçeneğiniz vardır: alanlar veya Mustache sözdizimi."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /tr/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words, bilinen şablonlara ek olarak mustache sözdizimine sahip şablonlar oluşturmanıza olanak tanır. Mustache, `{{ }}` ile çevrelenmiş etiket adlarından oluşan ve şablonun verilerini içeren bir model nesnesi tarafından desteklenen şablon sözdiziminin alternatif bir çeşididir.

Mustache sözdizimi, HTML ve TXT şablonlar gibi alanlar içermeyen şablonlarla kullanılacak tek seçenektir. Word şablonlarla, alanları veya Mustache sözdizimini kullanmak için iki seçeneğiniz vardır.

Mustache sözdizimi, Mail Merge'ı bölgelerle kullanmak için bir alternatif olan *foreach* etiketini destekler. Bu nedenle, herhangi bir nedenle birleştirme alanlarını ve birleştirme bölgelerini kullanamıyorsanız veya kullanmak istemiyorsanız mustache sözdizimini kullanabilmenizin yararı budur.

Aşağıdaki resimde gösterildiği gibi *foreach* etiketini kullanarak Mail Merge alanlarını bazı ek alanlarla da birleştirebilirsiniz.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Mustache Şablonu Oluşturma

Açıklığa kavuşturulması gereken ilk önemli nokta, Mustache 'nin şablonlayıcı bir motor olmamasıdır. Mustache, Aspose.Words tarafından desteklenen bir [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) içindeki herhangi bir şablon için kullanılabilen başka bir sözdizimi varyantıdır. Bu nedenle, böyle bir şablonu hem programlı olarak hem de bir arayüz aracılığıyla oluşturabilirsiniz, yalnızca belirli sözdizimini eklemeniz ve Mustache belirtimine uymanız yeterlidir.

Selamlamayı karşılık gelen adlarıyla kişiselleştirmek için aynı e-postayı 50 alıcıya göndermeniz gerektiğini varsayalım. Alıcının adını aşağıdaki gibi bir yer tutucuyla değiştirebilirsiniz:

> Dear {{FirstName}}
>
> I hereby...

Buradaki soru: 1 tek Mustache şablondan 50 e-postayı nasıl oluşturabilirsiniz? Bunu yanıtlamak için, şablondaki yer tutucuların küme parantezlerini gerçek verilerle dolduracak ve bir çıktı belgesi oluşturacak bölgelere sahip bir Mail Merge gerçekleştirmeniz gerekir.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Yukarıdaki örnekte fark ettiğiniz gibi, Mustache 'de, küme ayraçlarını saat yönünde 90 derece döndürdüğünüzde mustache gibi görünen yer tutucular için küme ayraçları kullanmanız gerekir.

{{% /alert %}}

## Mustache Sözdizimi ile çalışın

Mustache, *for* döngüler ve *if* ve *else* koşullar gibi belirli kontrol akış ifadelerinden yoksun olduğu için mantıksız bir düzen olarak temsil edilir. Ancak koşullu değerlendirme ve döngü elde etmek için bölüm etiketleri işleme listelerini ve lambdaları kullanabilirsiniz. Bu nedenle, Mustache sözdizimini Mail Merge işlemine dahil etmek için [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) özelliğini kullanmanız ve değerini *True* olarak ayarlamanız gerekir.

## Mail Merge Değerini Akıllı Hale Getirmek için `IF` Alanlarını Kullanın

Aspose.Words Mail Merge alanlarını ve Mustache etiketlerini `IF` ifadesiyle kullanmanıza izin verir. `IF` alanları, bir alan boşsa istenmeyen boşlukları ve virgülleri bastırmak için herhangi bir Mail Merge belgesinde kullanılabilir.

`IF` alan formülü aşağıda gösterilmiştir:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Burada Koşul, birleştirme alanı veya Mustache etiketi olabilir.

Örneğin, cinsiyete bağlı olarak "onun", "onun", "o" veya "o" eklemeniz gerekiyorsa `IF` alanlarını aşağıdaki gibi kullanabilirsiniz:

**{ IF { MERGEFIELD Gender } = "MALE" " doğru metin " " yanlış metin" }**

**{ IF "{{ GENDER }}" = "MALE" " doğru metin " " yanlış metin" }**

Aşağıdaki kod örneği, Mustache etiketleri ve `IF` alanlarıyla Mail Merge işleminin nasıl gerçekleştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

[use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) özelliğini uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

Ve [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) özelliğini uyguladıktan sonra:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>

---
title: C++ içine Belge Ekleme ve Ekleme
second_title: Aspose.Words için C++
articleTitle: Belge Ekleme ve Ekleme
linktitle: Belge Ekleme ve Ekleme
description: "Belgeleri bir araya getirin: bul ve değiştir, birleştirme alanı, yer imi veya yalnızca belgenin sonunu kullanarak yeni veya mevcut bir belgeye belge ekleyin veya ekleyin."
type: docs
weight: 80
url: /tr/cpp/insert-and-append-documents/
---

Bazen birkaç belgeyi bir araya getirmek gerekir. Bunu manuel olarak yapabilir veya Aspose.Words ekle veya ekle özelliğini kullanabilirsiniz.

Ekleme işlemi, önceden oluşturulmuş belgelerin içeriğini yeni veya mevcut bir belgeye eklemenize olanak tanır.

Buna karşılık, ekle özelliği, yalnızca başka bir belgenin sonuna bir belge eklemenize olanak tanır.

Bu makalede, bir belgenin diğerine farklı şekillerde nasıl ekleneceği veya ekleneceği açıklanır ve belge eklerken veya eklerken uygulayabileceğiniz ortak özellikler açıklanır.

## Belge Ekleme

Yukarıda bahsedildiği gibi, Aspose.Words 'da bir belge bir düğüm ağacı olarak temsil edilir ve bir belgeyi diğerine ekleme işlemi, düğümleri ilk belge ağacından ikincisine kopyalamaktır.

Belgeleri farklı konumlara farklı şekillerde ekleyebilirsiniz. Örneğin, bir belgeyi değiştirme işlemi, birleştirme işlemi sırasında birleştirme alanı veya yer imi aracılığıyla ekleyebilirsiniz.

Belgenin tamamını önceki içe aktarmaya gerek kalmadan geçerli imleç konumuna eklemek için Microsoft Word'e belge eklemeye benzer [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) yöntemini de kullanabilirsiniz.

Aşağıdaki kod örneği, `InsertDocument` yöntemini kullanarak bir belgenin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

Aşağıdaki alt bölümlerde, bir belgeyi diğerine ekleyebileceğiniz seçenekler açıklanmaktadır.

### Bul ve Değiştir İşlemi Sırasında Belge Ekleme {#insert-a-document-during-find-and-replace-operation}

Bul ve değiştir işlemlerini gerçekleştirirken belge ekleyebilirsiniz. Örneğin, bir belge [INTRODUCTION] ve [CONCLUSION] metnine sahip paragraflar içerebilir. Ancak son belgede, bu paragrafları başka bir harici belgeden elde edilen içerikle değiştirmeniz gerekir. Bunu başarmak için replace olayı için bir işleyici oluşturmanız gerekir.

Aşağıdaki kod örneği, ekleme işleminde daha sonra kullanmak üzere replacement olayı için bir işleyicinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Aşağıdaki kod örneği, bul ve değiştir işlemi sırasında bir belgenin içeriğini diğerine nasıl ekleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Mail Merge İşlemi Sırasında Bir Belge Ekleme {#insert-a-document-during-mail-merge-operation}

Mail merge işlemi sırasında birleştirme alanına belge ekleyebilirsiniz. Örneğin, bir mail merge şablonu [Özet] gibi bir birleştirme alanı içerebilir. Ancak son belgede, başka bir harici belgeden elde edilen içeriği bu birleştirme alanına eklemeniz gerekir. Bunu başarmak için birleştirme olayı için bir işleyici oluşturmanız gerekir.

Aşağıdaki kod örneği, birleştirme olayını ekleme işleminde daha sonra kullanmak üzere bir işleyicinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Aşağıdaki kod örneği, oluşturulan işleyiciyi kullanarak birleştirme alanına bir belgenin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Yer imine Belge Ekleme

Bir metin dosyasını belgeye içe aktarabilir ve belgede tanımladığınız bir yer iminden hemen sonra ekleyebilirsiniz. Bunu yapmak için, belgenin eklenmesini istediğiniz yer imli bir paragraf oluşturun.

Aşağıdaki kodlama örneği, bir belgenin içeriğinin başka bir belgedeki yer imine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Yer iminin, son sonuç belgenizde görünmesini istediğiniz birden çok paragraf veya metni içermemesi gerektiğini unutmayın.

{{% /alert %}}

## Belge Ekleme

Bir belgeden varolan bir belgenin sonuna kadar ek sayfalar eklemeniz gereken bir kullanım durumunuz olabilir. Bunu yapmak için, başka bir belgenin sonuna bir belge eklemek için [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) yöntemini çağırmanız yeterlidir.

{{% alert color="primary" %}}

[AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) 'ın bir belge içindeki düğüm düzeyinde bir yöntem olduğunu unutmayın. Örneğin, bir paragraf oluşturabilir, biçimlendirme özelliklerini ayarlayabilir ve ardından **AppendChild** yöntemini kullanarak paragrafı gövdeye alt öğe olarak ekleyebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgenin başka bir belgenin sonuna nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Düğümleri Manuel Olarak İçe Aktarın ve Ekleyin {#import-and-insert-nodes-manually}

Aspose.Words, daha önce herhangi bir içe aktarma gereksinimi olmadan belgeleri otomatik olarak eklemenizi ve eklemenizi sağlar. Ancak, belgenize bölüm veya paragraf gibi belirli bir düğüm eklemeniz veya eklemeniz gerekiyorsa, önce bu düğümü manuel olarak içe aktarmanız gerekir.

Bir bölümü veya paragrafı diğerine eklemeniz veya eklemeniz gerektiğinde, esas olarak [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/) yöntemini kullanarak ilk belge düğüm ağacının düğümlerini ikincisine içe aktarmanız gerekir. Düğümlerinizi içe aktardıktan sonra, referans düğümden sonra / önce yeni bir düğüm eklemek için [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/) /[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) yöntemini kullanmanız gerekir. Bu, bir belgeden düğümleri içe aktararak ve belirli konumlara ekleyerek ekleme işlemini özelleştirmenize olanak tanır.

Alt düğümler listesinin sonuna yeni bir belirtilen düğüm eklemek için [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) yöntemini de kullanabilirsiniz, örneğin, bölüm düzeyinde değil paragraf düzeyinde içerik eklemek istiyorsanız.

Aşağıdaki kod örneği, düğümlerin el ile nasıl içe aktarılacağını ve **InsertAfter** yöntemini kullanarak belirli bir düğümden sonra nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

İçe aktarma, orijinal düğümün bir kopyası olan ve hedef belgeye eklenmeye uygun yeni bir düğüm oluşturur.

{{% /alert %}}

İçerik, bölüm bölüm hedef belgeye içe aktarılır; bu, içe aktarma sırasında sayfa yapısı ve üstbilgi veya altbilgi gibi ayarların korunduğu anlamına gelir. İki belgenin nasıl birleştirileceğini belirtmek için bir belge eklediğinizde veya eklediğinizde biçimlendirme ayarlarını tanımlayabileceğinizi de belirtmekte fayda vardır.

## Belge Ekleme ve Ekleme için Ortak Özellikler {#common-properties-for-insert-and-append-documents}

Her ikisi de [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) ve [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) yöntemler giriş parametreleri olarak [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) ve [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) 'yi kabul eder. **ImportFormatMode**, [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) ve [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) gibi farklı biçim modları seçerek bir belgeden diğerine içerik aktardığınızda belge biçimlendirmesinin nasıl birleştirileceğini denetlemenizi sağlar. **ImportFormatOptions**, aşağıdakiler gibi farklı içe aktarma seçeneklerini seçmenize olanak tanır [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), ve [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words, [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) ve [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup) özelliklerini kullanarak bir ekleme veya ekleme işleminde iki belge bir araya getirildiğinde ortaya çıkan belgenin görselleştirilmesini ayarlamanıza olanak tanır. **PageSetup** özelliği, aşağıdaki gibi bir bölümün tüm niteliklerini içerir [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), ve diğerleri. En yaygın kullanım durumu, eklenen içeriğin aynı sayfada görünüp görünmeyeceğini veya yenisine bölünüp bölünmeyeceğini tanımlamak için **SectionStart** özelliğini ayarlamaktır.

{{% alert color="primary" %}}

**Section** ve **PageSetup** özelliklerinin iki belgenin birlikte nasıl ekleneceğini / ekleneceğini kontrol etmediğini unutmayın. Yalnızca sonuç belgenizin görünümünü değiştirmenize izin verirler.

{{% /alert %}}

Aşağıdaki kod örneği, içeriğin iki sayfaya bölünmesini önlerken bir belgenin diğerine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}

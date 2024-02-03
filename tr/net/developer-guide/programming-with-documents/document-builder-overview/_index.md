---
title: C#'te Belge Oluşturucuya Genel Bakış
second_title: .NET için Aspose.Words
articleTitle: Belge Oluşturucuya Genel Bakış
linktitle: Belge Oluşturucuya Genel Bakış
type: docs
description: "DocumentBuilder, sıfırdan dinamik belgeler oluşturmanıza veya C# kullanarak mevcut belgelere yeni öğeler eklemenize olanak tanır. DocumentBuilder, .NET'ye metin, onay kutuları, tablolar, resimler ve diğer içerik öğelerini eklemek için yöntemler sağlar."
weight: 30
url: /tr/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), [Document](https://reference.aspose.com/words/net/aspose.words/document/) ile ilişkilendirilen güçlü bir sınıftır ve sıfırdan dinamik belgeler oluşturmanıza veya mevcut belgelere yeni öğeler eklemenize olanak tanır.

**DocumentBuilder**, metin, onay kutuları, ole nesneleri, paragraflar, listeler, tablolar, resimler ve diğer içerik öğelerini eklemek için yöntemler sağlar. Yazı tiplerini, paragraf veya bölüm formatını belirlemenize ve diğer işlemleri gerçekleştirmenize olanak tanır.

## Belge Oluşturucu veya Aspose.Words DOM

**DocumentBuilder**, en yaygın belge oluşturma görevlerini basitleştirmek için Aspose.Words Document Object Model'de (DOM) bulunan sınıfları ve yöntemleri tamamlar. Yani, belgelerin içeriğini hem ağaç yapısının iyi anlaşılmasını gerektiren Aspose.Words DOM aracılığıyla hem de DocumentBuilder'ı kullanarak oluşturabilir ve değiştirebilirsiniz. `DocumentBuilder`, karmaşık **Document** yapısına yönelik, hızlı ve kolay bir şekilde içerik ve biçimlendirme eklemenizi sağlayan bir "cephedir".

**DocumentBuilder** ile mümkün olan işlemler, Aspose.Words DOM'in sınıflarını doğrudan kullanırken de mümkündür. Ancak, Aspose.Words DOM sınıflarını doğrudan kullanmak genellikle **DocumentBuilder** kullanmaya göre daha fazla kod satırı gerektirir.

## Belgede Gezinme

Belgede gezinme, [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) ve [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) gibi çeşitli **DocumentBuilder.MoveToXXX** yöntemlerini kullanarak belgede başka bir konuma gidebileceğiniz sanal imleç kavramına dayanır. Bu sanal imleç, [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) ve diğer yöntemler çağrılırken metnin nereye ekleneceğini gösterir. Sanal imleç hakkında daha fazla bilgi edinmek için aşağıdaki "İmleçle Gezinme" makalesine bakın.

Aşağıdaki kod örneği, bir yer işaretine nasıl gidileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Belge Oluşturma ve Değiştirme

Aspose.Words API, bir belgenin çeşitli öğelerinin biçimlendirilmesinden sorumlu olan çeşitli sınıflar sağlar. Sınıfların her biri, metin, paragraf, bölüm ve diğerleri gibi belirli bir belge öğesiyle ilgili biçimlendirme özelliklerini kapsar. Örneğin, [Font](https://reference.aspose.com/words/net/aspose.words/font/) sınıfı karakter biçimlendirme özelliklerini, [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) sınıfı paragraf biçimlendirme özelliklerini vb. temsil eder. Bu sınıfların nesneleri, sınıflarla aynı adlara sahip olan karşılık gelen **DocumentBuilder** özellikleri tarafından döndürülür. Bu nedenle, belge oluşturma sırasında bunlara erişebilir ve istediğiniz biçimlendirmeyi ayarlayabilirsiniz.

Ayrıca `Write` yöntemini veya [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) ve benzeri yöntemler gibi **DocumentBuilder.InsertXXX** yöntemlerinden herhangi birini kullanarak imleç konumuna metin, onay kutusu, ole nesnesi, resimler, yer imleri, form alanları ve diğer belge öğeleri ekleyebilirsiniz.

**DocumentBuilder** kullanarak basit bir belgenin nasıl oluşturulacağını görelim.

### DocumentBuilder'ı kullanarak bir Belge oluşturun

Başlamak için bir **DocumentBuilder** oluşturmanız ve onu bir **Document** nesnesiyle ilişkilendirmeniz gerekir. Yapıcısını çağırarak yeni bir **DocumentBuilder** örneği oluşturursunuz ve bunu oluşturucuya eklenmek üzere bir **Document** nesnesine iletirsiniz.

Metin eklemek için belgeye eklemeniz gereken metin dizesini **Write** yöntemine iletin.

Aşağıdaki kod örneği, belge oluşturucu kullanarak basit bir belgenin nasıl oluşturulacağını gösterir.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Belge Biçimlendirmesini Belirtin

[Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) özelliği metin biçimlendirmesini tanımlar. Bu nesne farklı yazı tipi niteliklerini (yazı tipi adı, yazı tipi boyutu, rengi vb.) içerir. Bazı önemli yazı tipi nitelikleri, bunlara doğrudan erişmenize olanak sağlamak için **DocumentBuilder** özellikleriyle de temsil edilir. Bunlar [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) ve [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) boole özellikleridir.

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak biçimlendirilmiş bir metnin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/), belgedeki geçerli konumdan itibaren eklenen tüm metne uygulanacak karakter formatını belirtir.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/), geçerli paragrafın ve eklenecek tüm paragrafların paragraf formatını belirtir.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/), geçerli bölüm ve eklenecek bölümün tamamı için sayfa ve bölüm özelliklerini belirtir.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) ve [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/), belgedeki geçerli konumdan itibaren tablo hücrelerine ve satırlara uygulanacak biçimlendirme özelliklerini belirtir.

Bu durumda "geçerli", imlecin bulunduğu konum, paragraf, bölüm, hücre veya satır anlamına gelir.

{{% /alert %}}

{{% alert color="primary" %}}

Belgede farklı bir konuma gittiğinizde, bu konumun biçimlendirme özelliklerini yansıtacak şekilde **Font**, **ParagraphFormat** ve **PageSetup** özelliklerinin güncellendiğini unutmayın.

{{% /alert %}}

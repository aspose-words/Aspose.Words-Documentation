---
title: Python'te Belge Oluşturucuya Genel Bakış
second_title: Python via .NET için Aspose.Words
articleTitle: Belge Oluşturucuya Genel Bakış
linktitle: Belge Oluşturucuya Genel Bakış
type: docs
description: "DocumentBuilder, sıfırdan dinamik belgeler oluşturmanıza veya Python kullanarak mevcut belgelere yeni öğeler eklemenize olanak tanır. DocumentBuilder, Python'e metin, onay kutuları, tablolar, resimler ve diğer içerik öğelerini eklemek için yöntemler sağlar."
weight: 30
url: /tr/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ile ilişkilendirilen güçlü bir sınıftır ve sıfırdan dinamik belgeler oluşturmanıza veya mevcut belgelere yeni öğeler eklemenize olanak tanır.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), metin, onay kutuları, ole nesneleri, paragraflar, listeler, tablolar, resimler ve diğer içerik öğelerini eklemek için yöntemler sağlar. Yazı tiplerini, paragraf veya bölüm formatını belirlemenize ve diğer işlemleri gerçekleştirmenize olanak tanır.

## Belge Oluşturucu veya Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), en yaygın belge oluşturma görevlerini basitleştirmek için Aspose.Words Document Object Model'de (DOM) bulunan sınıfları ve yöntemleri tamamlar. Yani, belgelerin içeriğini hem ağaç yapısının iyi anlaşılmasını gerektiren Aspose.Words DOM aracılığıyla hem de DocumentBuilder'ı kullanarak oluşturabilir ve değiştirebilirsiniz. `DocumentBuilder`, karmaşık **Document** yapısına yönelik, hızlı ve kolay bir şekilde içerik ve biçimlendirme eklemenizi sağlayan bir "cephedir".

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ile mümkün olan işlemler, Aspose.Words DOM'in sınıflarını doğrudan kullanırken de mümkündür. Ancak, Aspose.Words DOM sınıflarını doğrudan kullanmak genellikle [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) kullanmaya göre daha fazla kod satırı gerektirir.

## Belgede Gezinme

Belgede gezinme, [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) ve [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) gibi çeşitli **DocumentBuilder.move_to_XXX** yöntemlerini kullanarak belgede başka bir konuma gidebileceğiniz sanal imleç kavramına dayanır. Bu sanal imleç, [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) ve diğer yöntemler çağrılırken metnin nereye ekleneceğini gösterir. Sanal imleç hakkında daha fazla bilgi edinmek için aşağıdaki "İmleçle Gezinme" makalesine bakın.

Aşağıdaki kod örneği, bir yer işaretine nasıl gidileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Belge Oluşturma ve Değiştirme

Aspose.Words API, bir belgenin çeşitli öğelerinin biçimlendirilmesinden sorumlu olan çeşitli sınıflar sağlar. Sınıfların her biri, metin, paragraf, bölüm ve diğerleri gibi belirli bir belge öğesiyle ilgili biçimlendirme özelliklerini kapsar. Örneğin, [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) sınıfı karakter biçimlendirme özelliklerini, [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) sınıfı paragraf biçimlendirme özelliklerini vb. temsil eder. Bu sınıfların nesneleri, sınıflarla aynı adlara sahip olan karşılık gelen [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) özellikleri tarafından döndürülür. Bu nedenle, belge oluşturma sırasında bunlara erişebilir ve istediğiniz biçimlendirmeyi ayarlayabilirsiniz.

Ayrıca `Write` yöntemini veya [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) ve benzeri yöntemler gibi **DocumentBuilder.insert_XXX** yöntemlerinden herhangi birini kullanarak imleç konumuna metin, onay kutusu, ole nesnesi, resimler, yer imleri, form alanları ve diğer belge öğeleri ekleyebilirsiniz.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) kullanarak basit bir belgenin nasıl oluşturulacağını görelim.

### DocumentBuilder'ı kullanarak bir Belge oluşturun

Başlamak için bir [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) oluşturmanız ve onu bir [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) nesnesiyle ilişkilendirmeniz gerekir. Yapıcısını çağırarak yeni bir [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) örneği oluşturursunuz ve bunu oluşturucuya eklenmek üzere bir [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) nesnesine iletirsiniz.

Metin eklemek için belgeye eklemeniz gereken metin dizesini [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) yöntemine iletin.

Aşağıdaki kod örneği, belge oluşturucu kullanarak basit bir belgenin nasıl oluşturulacağını gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Belge Biçimlendirmesini Belirtin

[font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) özelliği metin biçimlendirmesini tanımlar. Bu nesne farklı yazı tipi niteliklerini (yazı tipi adı, yazı tipi boyutu, rengi vb.) içerir. Bazı önemli yazı tipi nitelikleri, bunlara doğrudan erişmenize olanak sağlamak için [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) özellikleriyle de temsil edilir. Bunlar [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) ve [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) boole özellikleridir.

Aşağıdaki kod örneği, [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) kullanarak biçimlendirilmiş bir metnin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), belgedeki geçerli konumdan itibaren eklenen tüm metne uygulanacak karakter formatını belirtir.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), geçerli paragrafın ve eklenecek tüm paragrafların paragraf formatını belirtir.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/), geçerli bölüm ve eklenecek bölümün tamamı için sayfa ve bölüm özelliklerini belirtir.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) ve [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/), belgedeki geçerli konumdan itibaren tablo hücrelerine ve satırlara uygulanacak biçimlendirme özelliklerini belirtir.

Bu durumda "geçerli", imlecin bulunduğu konum, paragraf, bölüm, hücre veya satır anlamına gelir.

{{% /alert %}}

{{% alert color="primary" %}}

Belgede farklı bir konuma gittiğinizde, bu konumun biçimlendirme özelliklerini yansıtacak şekilde [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) ve [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) özelliklerinin güncellendiğini unutmayın.

{{% /alert %}}

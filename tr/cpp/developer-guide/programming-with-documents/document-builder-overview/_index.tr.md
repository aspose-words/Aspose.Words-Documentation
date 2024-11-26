---
title: Belge Oluşturucuya Genel Bakış C++
second_title: Aspose.Words için C++
articleTitle: Belge Oluşturucuya Genel Bakış
linktitle: Belge Oluşturucuya Genel Bakış
type: docs
description: "DocumentBuilder sıfırdan dinamik belgeler oluşturmanıza veya C++ kullanarak mevcut belgelere yeni öğeler eklemenize olanak tanır. DocumentBuilder C++'e metin, onay kutuları, tablolar, resimler ve diğer içerik öğeleri eklemek için yöntemler sağlar."
weight: 30
url: /tr/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ile ilişkilendirilen ve sıfırdan dinamik belgeler oluşturmanıza veya mevcut bir belgeye yeni öğeler eklemenize olanak tanıyan güçlü bir sınıftır.

**DocumentBuilder**

## Belge Oluşturucu veya Aspose.Words DOM

**DocumentBuilder**

**DocumentBuilder** ile mümkün olan işlemler, Aspose.Words DOM sınıflarını doğrudan kullanırken de mümkündür. Ancak, Aspose.Words DOM sınıflarını doğrudan kullanmak genellikle **DocumentBuilder** kullanmaktan daha fazla kod satırı gerektirir.

## Belge Gezintisi

Belge gezintisi, [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) ve [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/) gibi çeşitli **DocumentBuilder.MoveToXXX** yöntemleri kullanarak belgedeki başka bir konuma taşıyabileceğiniz sanal imleç kavramına dayanır. Bu sanal imleç, yöntemleri çağırırken metnin nereye ekleneceğini gösterir [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), ve diğerleri.

Aşağıdaki kod örneği, bir yer işaretine nasıl gidileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Belge Oluşturma ve Değiştirme

Aspose.Words API bir belgenin çeşitli öğelerini biçimlendirmekten sorumlu birkaç sınıf sağlar. Sınıfların her biri, metin, paragraf, bölüm ve diğerleri gibi belirli bir belge öğesiyle ilgili biçimlendirme özelliklerini kapsüller. Örneğin, [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) sınıfı karakter biçimlendirme özelliklerini, [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) sınıfı paragraf biçimlendirme özelliklerini vb. Temsil eder. Bu sınıfların nesneleri, sınıflarla aynı adlara sahip karşılık gelen **DocumentBuilder** özellikleri tarafından döndürülür. Bu nedenle, belge oluşturma sırasında bunlara erişebilir ve istediğiniz biçimlendirmeyi ayarlayabilirsiniz.

`Write` yöntemini veya [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) ve benzeri yöntemler gibi **DocumentBuilder.InsertXXX** yöntemlerinden herhangi birini kullanarak imleç konumuna metin, onay kutusu, ole nesnesi, resimler, yer imleri, form alanları ve diğer belge öğelerini de ekleyebilirsiniz.

**DocumentBuilder** kullanarak basit bir belgenin nasıl oluşturulacağını görelim.

### DocumentBuilder kullanarak Belge oluşturma

Başlamak için bir **DocumentBuilder** oluşturmanız ve onu bir **Document** nesnesiyle ilişkilendirmeniz gerekir. Oluşturucusunu çağırarak yeni bir **DocumentBuilder** örneği oluşturur ve oluşturucuya eklenmek üzere onu bir **Document** nesnesine iletirsiniz.

Bir metin eklemek için belgeye eklemeniz gereken metin dizesini **Write** yöntemine geçirin.

Aşağıdaki kod örneği, belge oluşturucuyu kullanarak basit bir belgenin nasıl oluşturulacağını gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Belge Biçimlendirmesini Belirtin

[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) özelliği metin biçimlendirmesini tanımlar. Bu nesne farklı yazı tipi öznitelikleri (yazı tipi adı, yazı tipi boyutu, renk vb.) İçerir. Bazı önemli yazı tipi öznitelikleri, bunlara doğrudan erişmenize izin vermek için **DocumentBuilder** özellikleriyle de temsil edilir. Bunlar [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) ve [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/) boolean özellikleridir.

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak biçimlendirilmiş bir metnin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) belgedeki geçerli konumdan itibaren eklenen tüm metne uygulanacak karakter biçimlendirmesini belirtir.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) geçerli ve eklenecek tüm paragraflar için paragraf biçimlendirmesini belirtir.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) geçerli bölümün ve eklenecek bölümün tamamının sayfa ve bölüm özelliklerini belirtir.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) ve [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) belgedeki geçerli konumdan itibaren tablo hücrelerine ve satırlara uygulanacak biçimlendirme özelliklerini belirtin.

Bu durumda, "geçerli" imlecin bulunduğu konum, paragraf, bölüm, hücre veya satır anlamına gelir.

{{% /alert %}}

{{% alert color="primary" %}}

Bu konumun biçimlendirme özelliklerini yansıtacak şekilde belgede farklı bir konuma gittiğinizde **Font**, **ParagraphFormat** ve **PageSetup** özelliklerinin güncellendiğini unutmayın.

{{% /alert %}}

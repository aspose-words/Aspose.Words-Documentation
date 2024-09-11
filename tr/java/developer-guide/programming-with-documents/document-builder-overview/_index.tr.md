---
title: Document Builder Genel Bakış Java
second_title: Aspose.Words için Java
articleTitle: Document Builder Genel Bakış
linktitle: Document Builder Genel Bakış
type: docs
description: "DocumentBuilder sizlere dinamik belgeleri sıfırdan oluşturma veya mevcut olanlara yeni öğeler ekleme imkanı tanır. DocumentBuilder metotları Java'da metin, onay kutuları, tablolar, resimler ve diğer içerik öğeleri eklemenizi sağlar."
weight: 30
url: /tr/java/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) güçlü bir sınıftır ve [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)'le ilişkilidir ve sizden sıfırdan dinamik belgeler oluşturmanıza veya var olanlara yeni öğeler eklemenize olanak tanır.

**DocumentBuilder** metin, onay kutuları, ole nesneleri, paragraflar, listeler, tablolar, resimler ve diğer içerik öğeleri eklemek için yöntemler sağlar. Yazı tiplerini, paragraf veya bölüm biçimlendirmesini belirtmenize izin verir ve diğer işlemleri gerçekleştirir.

## Document Oluşturucu veya Aspose.Words DOM

**DocumentBuilder** mevcut sınıfları ve yöntemleri Aspose.Words Document Object Model (DOM) ile birleştirerek en yaygın belge oluşturma görevlerini basitleştirir. Yani, bir belgenin içeriğini ve yapısını hem Aspose.Words DOM aracılığıyla (bir ağaç yapısına ilişkin iyi bir anlayış gerektirdiği) hem de DocumentBuilder kullanarak oluşturabilir ve değiştirebilirsiniz. `DocumentBuilder`, karmaşık **Document** yapısının "kapısı"dır, böylece içeriği hızlı ve kolay bir şekilde ekleyebilir ve biçimlendirebilirsiniz.

**DocumentBuilder** ile mümkün olan işlemler ayrıca Aspose.Words DOM sınıflarını doğrudan kullandığında da mümkündür. Fakat genellikle Aspose.Words DOM sınıflarını direkt olarak kullanmak, **DocumentBuilder**'u kullanarak kod yazmaktan daha fazla satır gerektirecektir.

## Doküman Gezintisi

Belge gezintisi, çeşitli yöntemler kullanılarak belgedeki bir başka konuma geçebileceğinizi belirten kavramı bir sanal imleç etrafında döner. **DocumentBuilder.MoveToXXX** [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) ve [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) gibi yöntemler. Sanal imleç, yöntemleri [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) ve diğerleri çağırdığınızda metin ekleneceği yeri gösterir. Sanal imleç hakkında daha fazla bilgi edinmek için "İmleçle gezinme" başlıklı bu makaleyi okuyun.

Aşağıdaki kod örneği bir yer imine nasıl gideceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Belge Oluşturma ve Düzenleme

Aspose.Words API belgeleri çeşitli öğeleri biçimlendirmekten sorumlu olan birden çok sınıf sağlar. Her sınıf, metin, paragraf, bölüm ve diğerleri gibi belirli bir belge öğesiyle ilişkili biçimlendirme özelliklerini kapsüller. Örneğin, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) sınıfı karakter biçimlendirme özelliklerini temsil eder, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) sınıfı paragraf biçimlendirme özelliklerini temsil eder vb. Bu sınıfların nesneleri ilgili **DocumentBuilder** özellikleri tarafından döndürülür ve sınıf adlarıyla aynı isimler verir. Bu nedenle onlara erişebilir ve belge oluşturma sırasında istediğiniz biçimi ayarlayabilirsiniz.

Metin, onay kutusları, Ole nesnesi, resimler, yer imleri, form alanları ve başka belge öğelerini imleç pozisyonuna `Write` yöntemi veya herhangi bir **DocumentBuilder.InsertXXX** yöntemlerinden biri, örneğin [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), ve benzer yöntemlerle ekleyebilirsiniz.

basit bir belge oluşturmak için nasıl bir **DocumentBuilder** kullanacağımızı görelim.

### DocumentBuilder kullanarak bir belge oluşturun

Başlamak için bir **DocumentBuilder** oluşturmanız ve onu bir **Document** nesnesiyle ilişkilendirmeniz gerekiyor. Bir **DocumentBuilder** yeni örneği çağırarak ve onu bir **Document** nesnesine ekleyerek oluşturursunuz.

Bir metin eklemek için, metni belgenin içine yerleştirmek istediğiniz dizeyi **Write** yöntemine geçirin.

Aşağıdaki kod örneği bir belge oluşturma nasıl yapılacağını gösterir bir belge oluşturucu kullanarak.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Belge Biçimlendirmeyi Belirt

1 [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) özelliği metin biçimlendirmesini tanımlar. Bu nesne farklı yazı tipi öznitelikleri içerir (yazı tipi adı, yazı tipi boyutu, renk vb.). Bazı önemli yazı tipi öznitelikleri ayrıca doğrudan erişmek için size izin veren **DocumentBuilder** özelliklerinde de temsil edilir. Bunlar [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) ve [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) Boolean özellikleri.

Aşağıdaki kod örneği, biçimlendirilmiş metin eklemek için **DocumentBuilder**'i nasıl kullanacağınızı gösterir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) belgenin geçerli konumundan itibaren tüm metinlere uygulanacak karakter biçimlendirmesini belirtir.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) geçerli paragrafı ve tüm gelecek paragrafları oluşturmak için paragraf biçimlendirmesini belirtir.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) geçerli bölümün ve eklenen tüm bölümlerin sayfa ve bölüm özelliklerini belirtir.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) ve [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat), belgenin mevcut konumundan itibaren tablo hücreleri ve satırlarına uygulanacak biçimlendirme özelliklerini belirtir.

Bu durumda "geçerli" demek imlecin bulunduğu konumu, paragrafı, bölümü, hücreyi ya da satırı ifade eder.

{{% /alert %}}

{{% alert color="primary" %}}

Notun **Font**, **ParagraphFormat**, ve **PageSetup** özellikleri, bu konumun biçimlendirme özelliklerini yansıtmak için belgenin farklı bir bölümüne gittiğinizde her zaman güncellenir.

{{% /alert %}}

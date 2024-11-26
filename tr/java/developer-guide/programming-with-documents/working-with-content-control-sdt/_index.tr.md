---
title: İçerik Kontrolü ile Çalışma SDT Java içinde
second_title: Aspose.Words için Java
articleTitle: İçerik Kontrolü ile Çalışmak SDT
linktitle: İçerik Kontrolü ile Çalışmak SDT
type: docs
description: "Gelişmiş belge içeriği yönetimi, Java kullanarak içerik kontrollerini (Yapılandırılmış Belge Etiketleri) nasıl oluşturup manipüle edeceğini gösterir."
weight: 390
url: /tr/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Bir şablondan içerik denetimlerini ve onay kutularını, metin kutularını, tarih seçicilerini ve açılır listeleri ekleyerek bir formu oluşturmak için Microsoft Word 'de başlayabilirsiniz. Aspose.Words'da bir yapılandırılmış belge etiketi veya herhangi bir belge yüklenen Aspose.Words içeriği kontrol bir StructuredDocumentTag düğümü olarak içe aktarılır. Yapılandırılmış belge etiketleri (SDT veya içerik kontrolü) müşteri tanımlı semantiği, davranışını ve görünümünü bir belgeye gömerek bunu mümkün kılar.

Yapılandırılmış belge etiketi bir belgede aşağıdaki yerlerde ortaya çıkabilir:

- Blok seviyesi - Paragraflar ve tablolar arasında, bir Body, HeaderFooter, Comment, Footnote veya bir Shape düğümünün çocuğu olarak.
- Satır Seviyesi - Bir tablodaki satırlar arasında, Tablo düğümüne bir alt öğe olarak.
- Hücre düzeyinde - Bir tablo satırındaki hücreler arasında, bir satır düğümüne alt öğe olarak.
- İnline seviyesi - İç içe geçmiş içerik içinde, bir Paragrafın alt öğesi olarak.
- İçerisinde başka bir StructuredDocumentTag'de gömülü.

## Bir Belgeye İçerik Kontrolü Yerleştirilmesi

Bu Aspose.Words sürümünde, aşağıdaki türlerde SDT veya içerik kontrolü oluşturulabilir:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Aşağıdaki kod örneği, türünü onay kutusuna ayarlayarak içerik kontrol oluşturmayı nasıl yapıldığını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Aşağıdaki kod örneği nasıl bir zengin metin kutusunun içerik kontrolünü oluşturacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Aşağıdaki kod örneğinde, combo kutusunu nasıl içerik kontrolü oluşturulacağını göstermektedir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## İçerik Kontrollerini Güncelleme Nasıl Yapılır?

Bu bölüm, SDT değerlerini veya içerik kontrolünü programlı olarak nasıl güncelleyeceğinizi açıklar.

Aşağıdaki kod örneği, onay kutusunun geçerli durumunu nasıl ayarlayacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Aşağıdaki kod örneği düz metin kutusunda, açılır menüde ve resim kutusunda içerik kontrollerini nasıl değiştireceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Bu örneklerin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx)'tan indirebilirsiniz.

{{% /alert %}}

## Özel XML Parçalarına Bağlama İçerik Kontrolü

Word belgeleri içinde XML verileri ile birlikte içerik denetimleri bağlayabilirsiniz

Aşağıdaki kod örneği içeriği nasıl bağlayacağınızı özel XML parçalarına gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## İçerik Kontrolü İçindeki İçeriği Temizle

İçerik kontrolünün içeriğini bir yer tutucu görüntüleyerek temizleyebilirsiniz. **StructuredDocumentTag.clear()** yöntemi bu yapılandırılmış belge etiketi içindeki içeriği temizler ve bir yer tutucu görüntüler, ancak içerik kontrolü revizyonları varsa içerik kontrolünün içeriğini temizlemek mümkün değildir. İçerik kontrolü bir yer tutucuya sahip değilse, MS Word'de olduğu gibi (tekrarlayan bölümler, tekrarlayan bölüm öğeleri, gruplar, onay kutuları ve alıntılar hariç) beş boşluk eklenir. İçerik kontrolü özel XML'e eşlendiğinde referans verilen XML düğümü temizlenir.

Aşağıdaki örnek kod, içerik kontrolünün içeriğini nasıl temizleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## İçerik Kontrol Değişiklikleri Arka Plan ve Sınır Renkleri

`StructuredDocumentTag.Color` özelliği, içerik kontrolünün rengini almak veya ayarlamanızı sağlar. Renk iki durumda içerik kontrolünü etkiler:

1. MS Word, fare ile içerik kontrolüne geçtiğinde arka planı vurgular. Bu, içeriği tanımlamak için yardımcı olur. Vurgulamanın rengi, *Color*'dan biraz daha yumuşaktır. Örneğin, MS Word, *Color* kırmızı olduğunda pembe renkte bir arka plan vurgulamaktadır.
2. İçerik kontrol ile etkileşime girdiğinizde (düzenleme, seçme vb.) içerik kontrolün kenarı *Color* ile renklendirilir.

Aşağıdaki kod örneği, içeriği nasıl değiştireceğinizi gösterir kontrol rengi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## İçerik Kontrolüne Girilen Yazıya Biçim Verme Nasıl Ayarlanır?

İçerik denetiminin stilini ayarlamak istiyorsanız, `StructuredDocumentTag.Style` veya `StructuredDocumentTag.StyleName` özelliklerini kullanabilirsiniz. Çıktı belgesindeki içerik denetimine metni girdiğinizde girilen metin "Alıntı" stiliyle görünecektir.

{{% alert color="primary" %}}

Notede, yalnızca Bağlantılı ve Karakter stilleri içeri kontrolüne uygulanabilir. Bir InvalidOperationException ( "Bu stili SDT'ye uygulayamaz") bir Bağlantılı veya Karakter stili olmayan bir stilin uygulandığı zaman atılır.

{{% /alert %}}

Aşağıdaki kod örneği, içerik kontrolünün stilini nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Tekrarlayan Bölüm İçerik Kontrolü ile Çalışmak

Tekrarlayan bölüm içerik kontrolü tekrarlanan içerikleri içerir. Yapılandırılmış belge etiketi düğümleri tekrarlayan bölüm ve tekrarlayan bölüm öğesi türleri oluşturmak için Aspose.Words kullanılır ve bu amaçla, [SdtType enumeration type](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) REPEATING_SECTION_ITEM üyesi sağlar.

Aşağıdaki kod örneği bir tekrarlayan bölüm içerik kontrolünü bir tabloya nasıl bağlayacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}


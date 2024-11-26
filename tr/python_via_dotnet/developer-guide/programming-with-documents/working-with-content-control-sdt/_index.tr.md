---
title: İçerik Kontrolü SDT ile Çalışma
second_title: Python via .NET için Aspose.Words
articleTitle: İçerik Kontrolü SDT ile Çalışma
linktitle: İçerik Kontrolü SDT ile Çalışma
description: "Python'u kullanarak müşteri tanımlı anlambilimin yanı sıra davranışını ve görünümünü bir belgeye gömebilirsiniz."
type: docs
weight: 390
url: /tr/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Microsoft Word'te bir şablonla başlayıp onay kutuları, metin kutuları, tarih seçiciler ve açılır listeler dahil içerik kontrolleri ekleyerek bir form oluşturabilirsiniz. Aspose.Words'de, Aspose.Words'ye yüklenen herhangi bir belgedeki Yapılandırılmış Belge Etiketi veya içerik kontrolü, [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) düğümü olarak içe aktarılır. Yapılandırılmış belge etiketleri (SDT veya içerik kontrolü), müşteri tanımlı anlambilimin yanı sıra davranışının ve görünümünün bir belgeye yerleştirilmesine olanak tanır. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) bir belgede aşağıdaki yerlerde bulunabilir:

- Blok düzeyinde - Paragraflar ve tablolar arasında, [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) veya [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) düğümünün alt öğesi olarak
- Satır düzeyi - Bir [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) düğümünün alt öğesi olarak bir tablodaki satırlar arasında
- Hücre düzeyi - Bir [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) düğümünün alt öğesi olarak bir tablo satırındaki hücreler arasında
- Satır içi düzey - Bir [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)'in alt öğesi olarak içerideki satır içi içerik arasında
- Başka bir [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)'in içine yerleştirilmiş

## İçerik Kontrollerini Belgeye Ekleme

Aspose.Words'in bu sürümünde aşağıdaki SDT türleri veya içerik kontrolü oluşturulabilir:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Aşağıdaki kod örneği, tür onay kutusunun içerik denetiminin nasıl oluşturulacağını gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Aşağıdaki kod örneği, tür zengin metin kutusunun içerik denetiminin nasıl oluşturulacağını gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Aşağıdaki kod örneği, tür birleşik giriş kutusunun içerik denetiminin nasıl oluşturulacağını gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## İçerik Kontrolleri nasıl güncellenir?

Bu bölümde SDT veya içerik kontrolü değerlerinin programlı olarak nasıl güncelleneceği açıklanmaktadır

Aşağıdaki kod örneği, onay kutusunun geçerli durumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Aşağıdaki kod örneği, düz metin kutusu, açılır liste ve resim türündeki içerik denetimlerinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Bu örneklerin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx)'ten indirebilirsiniz.

{{% /alert %}}

## İçerik Denetimini Özel XML Parçalarına Bağlama

İçerik kontrollerini Word belgelerindeki XML verileriyle (*özel XML bölümü*) bağlayabilirsiniz.

Aşağıdaki kod örneği, içerik denetiminin özel XML bölümlerine nasıl bağlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## Yapılandırılmış Belge Etiket Aralığının XML Eşlemesi

Bu yapılandırılmış belge etiketi aralığının, [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) özelliğini kullanarak geçerli belgenin özel bir XML bölümündeki XML verileriyle eşlenmesini sağlayabilirsiniz. Ancak, yapılandırılmış bir belge etiketi aralığını XML verileriyle eşlemek için [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) yöntemi kullanılabilir.

Aşağıdaki kod örneği, XML eşlemesinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## İçerik Denetiminin İçeriğini Temizleme

Bir yer tutucu görüntüleyerek içerik denetiminin içeriğini temizleyebilirsiniz. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) yöntemi, bu yapılandırılmış belge etiketinin içeriğini temizler ve tanımlanmışsa bir yer tutucu görüntüler. Ancak bir içerik denetiminin içeriğinde düzeltmeler varsa, bunların temizlenmesi mümkün değildir. İçerik kontrolünün yer tutucusu yoksa, MS Word'deki gibi beş boşluk eklenir (yinelenen bölümler, yinelenen bölüm öğeleri, gruplar, onay kutuları, alıntılar hariç). Bir içerik denetimi özel XML ile eşlenirse başvurulan XML düğümü temizlenir.

Aşağıdaki kod örneği, içerik denetimi içeriğinin nasıl temizleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## İçerik Kontrolü Arka Planını ve Kenarlık Renklerini Değiştirme

[StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) özelliği, içerik kontrolünün rengini almanıza veya ayarlamanıza olanak tanır. Renk, içerik kontrolünü iki durumda etkiler:

1. MS Word, fare içerik kontrolünün üzerine geldiğinde içerik kontrolünün arka planını vurgular. Bu, içerik kontrolünün tanımlanmasına yardımcı olur. Vurgulamanın rengi *color*'ten biraz "daha yumuşaktır". Örneğin, MS Word, *color* kırmızı olduğunda arka planı pembe renkle vurgular.
2. İçerik kontrolüyle etkileşimde bulunduğunuzda (düzenleme, seçme vb.), içerik kontrolünün çerçevesi *color* ile renklendirilir.

Aşağıdaki kod örneği, içerik denetiminin renginin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## İçerik Denetimine Yazılan Metni Biçimlendirmek için Stil Nasıl Ayarlanır

İçerik kontrolünün stilini ayarlamak istiyorsanız [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) veya [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) özelliklerini kullanabilirsiniz. Çıktı belgesindeki içerik kontrolüne metni yazdığınızda, yazılan metin "Alıntı" stiline sahip olacaktır.

{{% alert color="primary" %}}

İçerik kontrolüne yalnızca Bağlantılı ve Karakter stillerinin uygulanabileceğini unutmayın. Var olan ancak Bağlantılı olmayan veya Karakter stili uygulandığında bir istisna ("Bu stil SDT'ye uygulanamıyor") oluşturulur.

{{% /alert %}}

Aşağıdaki kod örneği, içerik denetimi stilinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Tekrarlanan Bölüm İçeriği Denetimiyle Çalışma

Tekrarlanan bölüm içerik kontrolü, içinde yer alan içeriğin tekrarlanmasına olanak tanır. Aspose.Words kullanılarak yinelenen bölüm ve yinelenen bölüm öğe türlerinin yapılandırılmış belge etiketi düğümleri oluşturulabilir ve bu amaçla [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) numaralandırma türü [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) özelliği sağlar.

Aşağıdaki kod örneği, yinelenen bölüm içerik denetiminin bir tabloya nasıl bağlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}

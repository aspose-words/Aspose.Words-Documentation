---
title: İçerik Kontrolü SDT ile Çalışma
second_title: .NET için Aspose.Words
articleTitle: İçerik Kontrolü SDT ile Çalışma
linktitle: İçerik Kontrolü SDT ile Çalışma
description: "Gelişmiş belge içerik yönetimi, C# kullanılarak içerik kontrollerinin (Yapılandırılmış Belge Etiketleri) nasıl oluşturulacağı ve değiştirileceği."
type: docs
weight: 390
url: /tr/net/working-with-content-control-sdt/
---

Microsoft Word'te bir şablonla başlayıp onay kutuları, metin kutuları, tarih seçiciler ve açılır listeler dahil içerik kontrolleri ekleyerek bir form oluşturabilirsiniz. Aspose.Words'de, Aspose.Words'ye yüklenen herhangi bir belgedeki Yapılandırılmış Belge Etiketi veya içerik kontrolü, StructuredDocumentTag düğümü olarak içe aktarılır. Yapılandırılmış belge etiketleri (SDT veya içerik kontrolü), müşteri tanımlı anlambilimin yanı sıra davranışının ve görünümünün bir belgeye yerleştirilmesine olanak tanır.

StructuredDocumentTag bir belgede aşağıdaki yerlerde bulunabilir:

- Blok düzeyinde – Paragraflar ve tablolar arasında, bir Gövde, ÜstbilgiFooter, Yorum, Dipnot veya Şekil düğümünün alt öğesi olarak
- Satır düzeyi – Bir Tablo düğümünün alt öğesi olarak, bir tablodaki satırlar arasında
- Hücre düzeyi – Bir Satır düğümünün alt öğesi olarak, bir tablo satırındaki hücreler arasında
- Satır içi düzey – Bir Paragrafın alt öğesi olarak içerideki satır içi içerik arasında
- Başka bir StructuredDocumentTag'in içine yerleştirilmiştir

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

Aşağıdaki kod örneği, tür onay kutusunun içerik denetiminin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Aşağıdaki kod örneği, tür zengin metin kutusunun içerik denetiminin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Aşağıdaki kod örneği, tür birleşik giriş kutusunun içerik denetiminin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## İçerik Kontrolleri Nasıl Güncellenir?

Bu bölümde SDT veya içerik denetimi değerlerinin programlı olarak nasıl güncelleneceği açıklanmaktadır.

Aşağıdaki kod örneği, onay kutusunun geçerli durumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Aşağıdaki kod örneği, düz metin kutusu, açılır liste ve resim türündeki içerik denetimlerinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## İçerik Denetimini Özel XML Parçalarına Bağlama

İçerik kontrollerini Word belgelerindeki XML verileriyle (*özel XML bölümü*) bağlayabilirsiniz.

Aşağıdaki kod örneği, içerik denetiminin özel XML bölümlerine nasıl bağlanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## Yapılandırılmış Belge Etiket Aralığının XML Eşlemesi

Bu yapılandırılmış belge etiketi aralığının, **StructuredDocumentTagRangeStart.XmlMapping özelliği**'i kullanarak geçerli belgenin özel bir XML bölümündeki XML verileriyle eşlenmesini sağlayabilirsiniz. Ancak, yapılandırılmış bir belge etiketi aralığını XML verileriyle eşlemek için [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) yöntemi kullanılabilir.

Aşağıdaki kod örneği, XML eşlemesinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## İçerik Denetiminin İçeriğini Temizleme

Bir yer tutucu görüntüleyerek içerik denetiminin içeriğini temizleyebilirsiniz. **StructuredDocumentTag.Clear** yöntemi, bu yapılandırılmış belge etiketinin içeriğini temizler ve tanımlanmışsa bir yer tutucu görüntüler. Ancak bir içerik denetiminin içeriğinde düzeltmeler varsa, bunların temizlenmesi mümkün değildir. İçerik kontrolünün yer tutucusu yoksa Microsoft Word'deki gibi beş boşluk eklenir (yinelenen bölümler, yinelenen bölüm öğeleri, gruplar, onay kutuları, alıntılar hariç). Bir içerik denetimi özel XML ile eşlenirse başvurulan XML düğümü temizlenir.

Aşağıdaki kod örneği, içerik denetimi içeriğinin nasıl temizleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## İçerik Kontrolü Arka Planını ve Kenarlık Renklerini Değiştirme

`StructuredDocumentTag.Color` özelliği, içerik kontrolünün rengini almanıza veya ayarlamanıza olanak tanır. Renk, içerik kontrolünü iki durumda etkiler:

1. MS Word, fare içerik kontrolünün üzerine geldiğinde içerik kontrolünün arka planını vurgular. Bu, içerik kontrolünün tanımlanmasına yardımcı olur. Vurgulamanın rengi *Color*'ten biraz "daha yumuşaktır". Örneğin, MS Word, *Color* Kırmızı olduğunda arka planı pembe renkle vurgular.
2. İçerik kontrolüyle etkileşimde bulunduğunuzda (düzenleme, seçme vb.), içerik kontrolünün çerçevesi *Color* ile renklendirilir.

Aşağıdaki kod örneği, içerik denetiminin renginin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## İçerik Denetimine Yazılan Metni Biçimlendirmek için Stil Nasıl Ayarlanır

İçerik kontrolünün stilini ayarlamak istiyorsanız `StructuredDocumentTag.Style` veya `StructuredDocumentTag.StyleName` özelliklerini kullanabilirsiniz. Çıktı belgesindeki içerik kontrolüne metni yazdığınızda, yazılan metin "Alıntı" stiline sahip olacaktır.

{{% alert color="primary" %}}

İçerik kontrolüne yalnızca Bağlantılı ve Karakter stillerinin uygulanabileceğini unutmayın. Var olan ancak Bağlantılı olmayan bir stil veya Karakter stili uygulandığında bir InvalidOperationException ("Bu stil SDT'ye uygulanamıyor") oluşturulur.

{{% /alert %}}

Aşağıdaki kod örneği, içerik denetimi stilinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Tekrarlanan Bölüm İçeriği Denetimiyle Çalışma

Tekrarlanan bölüm içerik kontrolü, içinde yer alan içeriğin tekrarlanmasına olanak tanır. Aspose.Words kullanılarak yinelenen bölüm ve yinelenen bölüm öğe türlerinin yapılandırılmış belge etiketi düğümleri oluşturulabilir ve [SdtType numaralandırma türü](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) bu amaçla **RepeatingSectionItem** özelliği sağlar.

Aşağıdaki kod örneği, yinelenen bölüm içerik denetiminin bir tabloya nasıl bağlanacağını gösterir.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}

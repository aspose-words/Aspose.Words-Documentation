---
title: Content Control ile Çalışma SDT
second_title: Aspose.Words için C++
articleTitle: Content Control ile Çalışma SDT
linktitle: Content Control ile Çalışma SDT
type: docs
description: "Gelişmiş belge içerik yönetimi, C++ kullanarak içerik denetimlerinin (Yapılandırılmış Belge Etiketleri) nasıl oluşturulacağı ve değiştirileceği."
weight: 390
url: /tr/cpp/structured-document-tags-or-content-control/
---

Microsoft Word içinde bir şablonla başlayıp onay kutuları, metin kutuları, tarih seçiciler ve açılır listeler dahil olmak üzere içerik denetimleri ekleyerek bir form oluşturabilirsiniz. Aspose.Words'de, Aspose.Words'ye yüklenen herhangi bir belgeden Yapılandırılmış bir Belge Etiketi veya içerik denetimi StructuredDocumentTag düğümü olarak içe aktarılır. Yapılandırılmış belge etiketleri (SDT veya içerik denetimi), müşteri tanımlı anlambilimin yanı sıra davranışını ve görünümünü bir belgeye gömmeye izin verir. StructuredDocumentTag aşağıdaki yerlerde bir belgede oluşabilir:

- Blok düzeyi - Paragraflar ve tablolar arasında, Gövde, HeaderFooter, Yorum, Dipnot veya Şekil düğümünün alt öğesi olarak
- Satır düzeyi - Bir tablodaki satırlar arasında, bir Tablo düğümünün alt öğesi olarak
- Hücre düzeyi - Bir Satır düğümünün alt öğesi olarak tablo satırındaki hücreler arasında
- Satır içi düzeyi - Paragrafın alt öğesi olarak içerideki satır içi içerik arasında
- Başka bir StructuredDocumentTag içinde yuvalanmış

## İçerik Denetimine Yazılan Metni Biçimlendirmek için Stil Nasıl Ayarlanır

İçerik denetimi stilini ayarlamak isterseniz, `StructuredDocumentTag.Style` veya `StructuredDocumentTag.StyleName` özelliklerini kullanabilirsiniz. Metni çıktı belgesindeki içerik denetimine yazdığınızda, yazılan metnin "Alıntı" stili olacaktır.

{{% alert color="primary" %}}

İçerik denetimine yalnızca Bağlantılı ve Karakter stillerinin uygulanabileceğini unutmayın. Bir InvalidOperationException ("Bu stili SDT 'e uygulayamaz"), var olan ancak Bağlı olmayan bir stil veya Karakter stili uygulandığında oluşturulur.

{{% /alert %}}

Aşağıdaki kod örneği, içerik denetimi stilinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Yinelenen Bölüm içerik denetimi ile Çalışma

Yinelenen bölüm içerik denetimi, içinde bulunan içeriğin tekrarlanmasına izin verir. Aspose.Words kullanılarak, yinelenen bölüm ve yinelenen bölüm öğe türlerinin yapılandırılmış belge etiketi düğümleri oluşturulabilir ve bu amaçla SdtType numaralandırma türü **RepeatingSectionItem** özelliği sağlar.

Aşağıdaki kod örneği, yinelenen bölüm içerik denetiminin bir tabloya nasıl bağlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}

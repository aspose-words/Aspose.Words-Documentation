---
title: Bir Belgedeki Düğümlerin Mantıksal Düzeyleri C++
second_title: Aspose.Words için C++
articleTitle: Bir Belgedeki Düğümlerin Mantıksal Düzeyleri
linktitle: Bir Belgedeki Düğümlerin Mantıksal Düzeyleri
type: docs
description: "İçinde Aspose.Words için C++ dokümantasyon, düğümlerin mantıksal düzeylerinden bahsetti - blok düzeyi, satır içi düzeyi veya satır düzeyi. Düğüm düzeyi, düğümün tipik olarak oluştuğu belge ağacındaki konumu tanımlamak için kullanılır."
weight: 10
url: /tr/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Bu dokümantasyon bazen bir belgedeki "blok seviyesi", "satır içi seviye" ("satır içi" olarak da bilinir) veya "satır seviyesi" gibi bir "seviyeye" ait bir düğüm sınıfı grubuna atıfta bulunur. düğümler. Bir belgedeki bu seviyeler tamamen mantıksal olarak ayırt edilir ve kalıtım veya diğer Aspose.Words DOM araçlarla açıkça ifade edilmez. Düğüm düzeyi, belge ağacında düğümün tipik olarak oluşacağı yeri tanımlamak için kullanılır.

Önceki makalede, düğümler arasındaki ilişkiden ve tüm düğümlerin herhangi bir düğümün çocuğu olmasına izin verilmemesi gerçeğinden bahsetmiştik. Örneğin, Hücre yalnızca bir Satır alt öğesi olabilir ve bir Satır yalnızca bir Tablo alt öğesi vb. Olabilir. Bu ilişkiler, düğümlerin belgedeki seviyelere mantıksal olarak bölünmesi için de geçerlidir.

Aşağıdaki bölümlerde Aspose.Words içindeki düğümlerin mantıksal düzeyleri ve her düzeye ait sınıflar açıklanmaktadır.

## Belge ve Bölüm Mantıksal Düzeyi

Bir Word belgesi, [Section](https://reference.aspose.com/words/cpp/aspose.words/section) sınıfı tarafından temsil edilen ve bölüm sonlarıyla ayrılmış bir veya daha fazla bölümden oluşur. Bir bölüm kendi sayfa boyutunu, kenar boşluklarını, yönünü, metin sütunlarının sayısını ve üstbilgi ve altbilgileri tanımlayabilir.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ve [Bölüm](https://www.aspose.com/api/words/cpp/aspose.words/section/) seviye düğümleri, aşağıdaki şemada gösterildiği gibi yapıya sahiptir.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Bir bölüm, ana metnin yanı sıra ilk, çift ve tek sayfaların üstbilgilerini ve altbilgilerini içerir. Metnin bu farklı "akışlarına" *stories* denir.

Aspose.Words 'de **Section** düğümü [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) ve [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) öykü düğümlerini içerir. **Body** nesnesi ana metni saklar. **HeaderFooter** nesneleri, her üstbilgi ve altbilgi için metni depolar. Herhangi bir hikayenin metni, sırasıyla Blok düzeyindeki **Paragraph** ve **Table** nesneleriyle temsil edilen paragraflardan ve tablolardan oluşur.

Ek olarak, her Word belgesi, Aspose.Words içindeki [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) düğümü tarafından temsil edilen bir sözlük içerebilir. Bir sözlük belgesi [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) ve [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) girdileri içerir.

**GlossaryDocument**

## Mantıksal Seviyeyi Engelle

Blok düzeyinde düğümler, içerik ve içerik denetimleri için kapsayıcıları temsil eder ve aşağıdaki düğümlerdeki belge ağacı alt düğümlerinde oluşabilir:

- Vücut
- Başlık
- Altbilgi
- Dipnot
- Yorum
- Şekil
- GroupShape
- Hücre
- StructuredDocumentTag

Blok düzeyinde düğümler aşağıdaki sınıflarla temsil edilir:

- en önemli blok düzeyinde düğümler olan [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) ve [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)
- Hem blok düzeyinde hem de satır içi düzeyinde gerçekleşen yer imleri
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), özel işaretlemeyi temsil eder ve hem içerik hem de içerik denetimleri içerebilir

Aşağıdaki diyagram blok düzeyindeki öğeleri göstermektedir.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Satır İçi Mantıksal Düzey

Satır içi düzey düğümler belgenin gerçek içeriğini temsil eder ve aşağıdaki kapsayıcılarda bulunabilir:

- Paragraf - en yaygın kap
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Satır içi düzey öğeler aşağıdaki sınıflarla temsil edilir:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - farklı biçimlendirilmiş metin çalıştırmaları
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) ve [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) yer imlerini temsil eder
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) ve [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) ek açıklamaları temsil eder
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) ve [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) alan karakterlerini temsil eder ve [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) Kelime alanlarını temsil eder
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) belgedeki özel karakterleri temsil eder
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) ve [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) şekilleri, çizimleri, resimleri vb. Temsil eder.
- SmartTag ve StructuredDocumentTag özel işaretlemeyi temsil eder

Aşağıdaki diyagram satır içi düzey düğüm yapısını göstermektedir.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Word içindeki şekiller, tümü `Shape` sınıfı kullanılarak temsil edilen Office Art AutoShapes, metin kutuları, resimler, OLE nesneleri ve ActiveX denetimlerini içerir. Bazı şekiller metin de içerebilir, bu nedenle Aspose.Words'teki Şekil düğümleri blok düzeyinde düğümler içerebilir.

Şekiller GroupShape düğümler kullanılarak birbirinin içinde gruplandırılabilir.

{{% /alert %}}

{{% alert color="primary" %}}

Dipnotlar ve yorumlar metin içerebilir, bu nedenle Aspose.Words içindeki Dipnot ve Yorum düğümleri blok düzeyinde düğümler içerebilir.

{{% /alert %}}

## Tablo, Satır ve Hücre Düğümü Düzeyi

Tablo, satır ve hücre düğümlerinden oluşur. Tablo öğeleri aşağıdaki sınıflarla temsil edilir:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) bir tablo satırını temsil eder
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) bir tablo hücresini temsil eder
- StructuredDocumentTag özel işaretlemeyi temsil eder

Aşağıdaki diyagram Tablo, Satır ve Hücre düzeylerinin düğüm yapılarını göstermektedir.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>

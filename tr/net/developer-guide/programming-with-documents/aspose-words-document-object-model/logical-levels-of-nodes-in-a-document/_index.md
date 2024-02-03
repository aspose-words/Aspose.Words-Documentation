---
title: C#'teki bir Belgedeki Düğümlerin Mantıksal Düzeyleri
second_title: .NET için Aspose.Words
articleTitle: Bir Belgedeki Düğümlerin Mantıksal Düzeyleri
linktitle: Bir Belgedeki Düğümlerin Mantıksal Düzeyleri
type: docs
description: ".NET için Aspose.Words belgelerinde düğümlerin mantıksal düzeylerinden bahsediliyordu - blok düzeyi, satır içi düzey veya C# kullanan satır düzeyi. Düğüm düzeyi, belge ağacında düğümün genellikle oluştuğu konumu tanımlamak için kullanılır."
weight: 10
url: /tr/net/logical-levels-of-nodes-in-a-document/
---

Bu belgeler bazen bir belgedeki "blok düzeyi", "satır içi düzey" ("satır içi" olarak da bilinir) veya "satır düzeyi" düğümleri gibi bir "düzeye" ait olan bir grup düğüm sınıfına atıfta bulunur.. Bir belgedeki bu düzeyler tamamen mantıksal olarak ayrılır ve kalıtımla veya diğer Aspose.Words DOM araçlarıyla açıkça ifade edilmez. Düğüm düzeyi, belge ağacında düğümün genellikle oluşacağı yeri tanımlamak için kullanılır.

Önceki makalede, düğümler arasındaki ilişkiden ve tüm düğümlerin herhangi bir düğümün çocuğu olmasına izin verilmediğinden zaten bahsetmiştik. Örneğin, Cell yalnızca bir Row alt öğesi olabilir ve bir Row yalnızca bir Table alt öğesi olabilir, vb. Bu ilişkiler aynı zamanda düğümlerin belgedeki düzeylere mantıksal olarak bölünmesi için de geçerlidir.

Aşağıdaki bölümlerde Aspose.Words'teki düğümlerin mantıksal düzeyleri ve her düzeye ait sınıflar açıklanmaktadır.

## Belge ve Bölüm Mantıksal Düzey

Bir Word belgesi, [Section](https://reference.aspose.com/words/net/aspose.words/section/) sınıfı tarafından temsil edilen ve bölüm sonlarıyla ayrılmış bir veya daha fazla bölümden oluşur. Bir bölüm kendi sayfa boyutunu, kenar boşluklarını, yönünü, metin sütunu sayısını ve üstbilgileri ve altbilgileri tanımlayabilir.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) ve [Section](https://reference.aspose.com/words/net/aspose.words/section/) seviye düğümleri aşağıdaki şemada gösterildiği gibi yapıya sahiptir.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="belge-ve-bölüm düzeyinde-aspose-kelimeler" style="width:700px"/>

Bölüm, ana metnin yanı sıra ilk, çift ve tek sayfaların üstbilgilerini ve altbilgilerini içerir. Bu farklı metin "akışlarına" *stories* adı verilir.

Aspose.Words'te **Section** düğümü, [Body](https://reference.aspose.com/words/net/aspose.words/body/) ve [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) öykü düğümlerini içerir. **Body** nesnesi ana metni saklar. **HeaderFooter** nesneleri her üst bilgi ve alt bilgi için metni saklar. Herhangi bir öykünün metni, sırasıyla Blok düzeyindeki **Paragraph** ve **Table** nesneleri tarafından temsil edilen paragraflardan ve tablolardan oluşur.

Ayrıca her Word belgesi, Aspose.Words'deki [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) düğümü tarafından temsil edilen bir sözlük içerebilir. Sözlük belgesi [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) ve [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) girişlerini içerir.

**GlossaryDocument**, farklı türdeki sözlük belgesi girişlerini temsil eden [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) düğümlerini içerir. Her **BuildingBlock**, belgelere eklenebilen, kaldırılabilen ve kopyalanabilen bölümler içerir.

## Mantıksal Seviyeyi Engelle

Blok düzeyindeki düğümler, içerik ve içerik kontrollerine yönelik kapsayıcıları temsil eder ve aşağıdaki düğümlerdeki belge ağacı alt düğümlerinde meydana gelebilir:

- Vücut
- Başlık
- Altbilgi
- Dipnot
- Yorum
- Şekil
-GroupShape
- Hücre
- StructuredDocumentTag

Blok düzeyindeki düğümler aşağıdaki sınıflarla temsil edilir:

- En önemli blok seviyesi düğümleri olan [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) ve [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/)
- Hem blok düzeyinde hem de satır içi düzeyde oluşan yer imleri
- Özel işaretlemeyi temsil eden ve hem içerik hem de içerik kontrollerini içerebilen [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/)

Aşağıdaki şemada blok düzeyindeki öğeler gösterilmektedir.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="blok düzeyinde-aspose-kelimeler" style="width:550px"/>

## Satır İçi Mantıksal Seviye

Satır içi düzeydeki düğümler, belgenin gerçek içeriğini temsil eder ve aşağıdaki kapsayıcılarda bulunabilir:

- Paragraf – en yaygın kapsayıcı
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Satır içi düzey öğeler aşağıdaki sınıflarla temsil edilir:

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) – farklı biçimlendirilmiş metin dizileri
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) ve [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) yer imlerini temsil eder
- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) ve [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) ek açıklamaları temsil eder
- Alan karakterlerini temsil eden [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) ve [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/), Word alanlarını temsil eden [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/)
- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/), belgedeki özel karakterleri temsil eder
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ve [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) şekilleri, çizimleri, görüntüleri vb. temsil eder.
- SmartTag ve StructuredDocumentTag özel işaretlemeyi temsil eder

Aşağıdaki diyagram satır içi düzey düğüm yapısını göstermektedir.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="satır içi düzey-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Word'teki şekiller, Office Art Otomatik Şekillerini, metin kutularını, görüntüleri, OLE nesnelerini ve ActiveX denetimlerini içerir ve bunların tümü `Shape` sınıfı kullanılarak temsil edilir. Bazı şekiller metin de içerebildiğinden, Aspose.Words'deki Şekil düğümleri blok düzeyinde düğümler içerebilir.

Şekiller, GroupShape düğümleri kullanılarak birbirlerinin içinde gruplandırılabilir.

{{% /alert %}}

{{% alert color="primary" %}}

Dipnotlar ve yorumlar metin içerebilir, dolayısıyla Aspose.Words'teki Dipnot ve Yorum düğümleri blok düzeyinde düğümler içerebilir.

{{% /alert %}}

## Tablo, Satır ve Hücre Düğümü Düzeyi

Tablo satırlardan ve hücrelerden oluşan düğümlerden oluşur. Tablo öğeleri aşağıdaki sınıflarla temsil edilir:

- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) bir tablo satırını temsil eder
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) bir tablo hücresini temsil eder
- StructuredDocumentTag özel işaretlemeyi temsil eder

Aşağıdaki şemada Tablo, Satır ve Hücre seviyelerinin düğüm yapıları gösterilmektedir.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="tablo-satır-hücre-aspose-kelimeler" style="width:910px"/>

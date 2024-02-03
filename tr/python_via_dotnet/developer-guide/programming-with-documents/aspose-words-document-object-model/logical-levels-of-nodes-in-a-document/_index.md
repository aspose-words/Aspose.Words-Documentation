---
title: Bir Belgedeki Düğümlerin Mantıksal Düzeyleri
second_title: Python via .NET için Aspose.Words
articleTitle: Bir Belgedeki Düğümlerin Mantıksal Düzeyleri
linktitle: Bir Belgedeki Düğümlerin Mantıksal Düzeyleri
type: docs
description: "Python via .NET için Aspose.Words belgelerinde, düğümlerin mantıksal düzeyleri (blok düzeyi, satır içi düzeyi veya satır düzeyi) belirtilmiştir. Düğüm düzeyi, belge ağacında düğümün genellikle oluştuğu konumu tanımlamak için kullanılır."
weight: 10
url: /tr/python-net/logical-levels-of-nodes-in-a-document/
---

Bu belgede bazen bir belgedeki "blok düzeyi", "satır içi düzey" ("satır içi" olarak da bilinir) veya "satır düzeyi" düğümleri gibi bir "düzey"e ait olan bir grup düğüm sınıfına atıfta bulunulur.. Bir belgedeki bu düzeyler tamamen mantıksal olarak ayrılır ve kalıtımla veya diğer Aspose.Words DOM araçlarıyla açıkça ifade edilmez. Düğüm düzeyi, belge ağacında düğümün genellikle oluşacağı yeri tanımlamak için kullanılır.

Önceki makalede, düğümler arasındaki ilişkiden ve tüm düğümlerin herhangi bir düğümün çocuğu olmasına izin verilmediğinden zaten bahsetmiştik. Örneğin, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) yalnızca bir [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) alt öğesi olabilir ve bir [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) yalnızca bir [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) alt öğesi olabilir, vb. Bu ilişkiler aynı zamanda düğümlerin belgedeki düzeylere mantıksal olarak bölünmesi için de geçerlidir.

Aşağıdaki bölümlerde Aspose.Words'teki düğümlerin mantıksal düzeyleri ve her düzeye ait sınıflar açıklanmaktadır.

## Belge ve Bölüm Mantıksal Düzey

Bir Word belgesi, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) sınıfı tarafından temsil edilen ve bölüm sonlarıyla ayrılmış bir veya daha fazla bölümden oluşur. Bir bölüm kendi sayfa boyutunu, kenar boşluklarını, yönünü, metin sütunu sayısını ve üstbilgileri ve altbilgileri tanımlayabilir.

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ve [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) seviye düğümleri aşağıdaki şemada gösterildiği gibi yapıya sahiptir.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="belge-ve-bölüm düzeyinde-aspose-kelimeler" style="width:700px"/>

Bölüm, ana metnin yanı sıra ilk, çift ve tek sayfaların üstbilgilerini ve altbilgilerini içerir. Bu farklı metin "akışlarına" *stories* adı verilir.

Aspose.Words'te [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) düğümü, [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) ve [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) öykü düğümlerini içerir. [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) nesnesi ana metni saklar. [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) nesneleri, her üst bilgi ve alt bilgi için metni saklar. Herhangi bir hikayenin metni, sırasıyla Blok düzeyindeki [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ve [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) nesneleri tarafından temsil edilen paragraflardan ve tablolardan oluşur.

Ayrıca her Word belgesi, Aspose.Words'deki [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) düğümü tarafından temsil edilen bir sözlük içerebilir. Sözlük belgesi [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) ve [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) girişlerini içerir.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/), farklı türdeki sözlük belgesi girişlerini temsil eden [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) düğümlerini içerir. Her [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/), belgelere eklenebilen, kaldırılabilen ve kopyalanabilen bölümler içerir.

## Mantıksal Seviyeyi Engelle

Blok düzeyindeki düğümler, içerik ve içerik kontrollerine yönelik kapsayıcıları temsil eder ve aşağıdaki düğümlerdeki belge ağacı alt düğümlerinde meydana gelebilir:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Blok düzeyindeki düğümler aşağıdaki sınıflarla temsil edilir:

- En önemli blok seviyesi düğümleri olan [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ve [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Hem blok düzeyinde hem de satır içi düzeyde gerçekleşen [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/)
- Özel işaretlemeyi temsil eden ve hem içerik hem de içerik kontrollerini içerebilen [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Aşağıdaki şemada blok düzeyindeki öğeler gösterilmektedir.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="blok düzeyinde-aspose-kelimeler" style="width:550px"/>

## Satır İçi Mantıksal Seviye

Satır içi düzeydeki düğümler, belgenin gerçek içeriğini temsil eder ve aşağıdaki kapsayıcılarda bulunabilir:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – en yaygın konteyner
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Satır içi düzey öğeler aşağıdaki sınıflarla temsil edilir:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – farklı biçimlendirilmiş metin dizileri
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ve [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) yer imlerini temsil eder
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ve [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) ek açıklamaları temsil eder
- Alan karakterlerini temsil eden [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ve [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/), Word alanlarını temsil eden [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/)
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/), belgedeki özel karakterleri temsil eder
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ve [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) şekilleri, çizimleri, görüntüleri vb. temsil eder.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) ve [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) özel işaretlemeyi temsil eder

Aşağıdaki diyagram satır içi düzey düğüm yapısını göstermektedir.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="satır içi düzey-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Word'teki şekiller, Office Art Otomatik Şekillerini, metin kutularını, görüntüleri, OLE nesnelerini ve ActiveX denetimlerini içerir ve bunların tümü `Shape` sınıfı kullanılarak temsil edilir. Bazı şekiller metin de içerebildiğinden, Aspose.Words'deki Şekil düğümleri blok düzeyinde düğümler içerebilir.

Şekiller [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) düğümleri kullanılarak birbirlerinin içinde gruplandırılabilir.

{{% /alert %}}

{{% alert color="primary" %}}

Dipnotlar ve yorumlar metin içerebilir, dolayısıyla Aspose.Words'deki [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) ve [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) düğümleri blok düzeyinde düğümler içerebilir.

{{% /alert %}}

## Tablo, Satır ve Hücre Düğümü Düzeyi

Tablo satır ve hücre düğümlerinden oluşur. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) öğeleri aşağıdaki sınıflarla temsil edilir:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) bir tablo satırını temsil eder
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) bir tablo hücresini temsil eder
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) özel işaretlemeyi temsil eder

Aşağıdaki şemada [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ve [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) seviyelerinin düğüm yapıları gösterilmektedir.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="tablo-satır-hücre-aspose-kelimeler" style="width:910px"/>
---
title: Bir Belge İçindeki Düğümlerin Mantıksal Seviyeleri Java''
second_title: Aspose.Words için Java
articleTitle: Bir Belge İçindeki Mantıksal Düğüm Seviyeleri
linktitle: Bir Belge İçindeki Mantıksal Düğüm Seviyeleri
type: docs
description: "Aspose.Words için Java belgeleri blok düzeyi, satır içi düzey veya satır düzeyi gibi düğümlerin mantıksal düzeyleri ile bahsetti - Düğüm düzeyi, belge ağacında düğümün tipik olarak gerçekleştiği yere tanımı yapmak için kullanılır."
weight: 10
url: /tr/java/logical-levels-of-nodes-in-a-document/
---

Bu belgeler bazen bir grup düğüm sınıfını bir belgedeki bir "seviye" olarak, örneğin "block-level", "inline-level" (aynı zamanda "inline") veya "row-level" düğümleri gibi ifade eder. Bu seviyeler bir belge içinde tamamen mantıksal olarak farklılaşır ve kalıtım veya diğer Aspose.Words DOM anlamları ile açıkça ifade edilmez. Düğüm düzeyi, bir belgedeki bir düğümün tipik olarak nerede olacağını tanımlamak için kullanılır.

Önceki makalede düğümlerin ilişkileri ve tüm düğümlerin bir düğümün alt düğümü olarak izin verilmeyeceği zaten konuştuk. Örneğin, hücre yalnızca satırın çocuğu olabilir ve bir satır yalnızca tablonun çocuğu olabilir ve benzeri. Bu ilişkiler belgenin mantıksal olarak düğümleri seviyelere bölmek için de geçerlidir.

Aşağıdaki bölümler, Aspose.Words içindeki düğümlerin mantıksal seviyelerini ve her seviyeye ait sınıfları açıklar.

## Belge ve Bölüm Mantıksal Düzey

Bir Word belgesi bir veya daha fazla bölüme sahiptir, bunlar [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) sınıfı ile temsil edilir ve bölüm kesintileri tarafından ayrılır. Bir bölüm kendi sayfa boyutunu, kenar boşluklarını, yönlendirmeyi, metin sütunlarının sayısını ve başlık ve altbilgiyi tanımlayabilir.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ve [Section](https://www.aspose.com/api/words/java/com.aspose.words/section) düzey düğümleri, aşağıdaki diyagramda gösterildiği gibi bir yapıya sahiptir.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Bir bölüm ana metni, ayrıca ilk, çift ve tek sayfalar için başlıklar ve altbilgiler içerir. Bu farklı ''akışlar'' metinleri şu şekilde adlandırılır: *stories*.

Aspose.Words düğümünde **Section** düğümüne [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) ve [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) hikaye düğümleri içerir. **Body** nesnesi ana metni saklar. **HeaderFooter** nesneleri başlık ve altbilgi için metni depolar. Her hikayenin metni, sırasıyla **Paragraph** ve **Table** nesneleriyle temsil edilen paragraflar ve tablolardan oluşur.

Ayrıca, her Word belgesi bir glos olarak temsil edilen [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) düğümü olan Aspose.Words'ta bulunan bir glos içerir. Bir glos belgesi [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT) ve [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) girişleri içerir.

**GlossaryDocument** farklı türdeki sözlük belge girdilerini temsil eden [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) düğümü içerir. Her **BuildingBlock** belgelere eklenebilir, çıkarılabilir ve kopyalanabilir bölümler içerir.

## Blok Mantıksal Seviye

Blok düzeyli düğümler içerik ve içerik kontrolleri için kapsayıcıları temsil eder ve aşağıdaki düğümlerde belge ağacındaki alt düğümlerde ortaya çıkabilir:

- Vücut
- Üstbilgi
- Altbilgi
- Alıntı notu
- Yorum
- Şekil
- GroupŞekil
- Hücre
- YapılandırılmışBelgeEtiketi

Block-level düğümleri aşağıdaki sınıflarla temsil edilir:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) ve [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) en önemli blok düzeyinde düğümler
- Kitap işaretleri, blok düzeyinde ve iç içe geçmiş düzeylerde gerçekleşir
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), özel işaretlemeyi temsil eder ve içerik ve içerik denetimleri içerebilir

Aşağıdaki şema blok düzeyindeki öğeleri göstermektedir.

<img src="block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## İnline Mantıksal Seviye

İnline seviyesindeki düğümler belgenin gerçek içeriğini temsil eder ve aşağıdaki kapsayıcılara dahil edilebilir:

- Paragraf – en yaygın kapsayıcıdır
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- Yapılandırılmış Belge Etiketi

Inline-level öğeleri aşağıdaki sınıflarla temsil edilir:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – farklı biçimde düzenlenmiş metin serileri
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) ve [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) imzasını temsil eder
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) ve [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) temsil eder notasyon
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) ve [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) alanı temsil eden karakterler ve [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) Word alanlarını temsil eder
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) belgenin içindeki özel karakterleri temsil eder
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ve [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) şekiller, çizimler, resimler vb. temsil eder.
- SmartTag ve StructuredDocumentTag özel işaretlemeyi temsil eder

Aşağıdaki diyagramda, iç içe geçmiş düzey düğüm yapısı gösterilmektedir.

<img src="inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Şekiller Microsoft Word'de Office Art AutoShapes, metin kutuları, resimler, OLE nesneleri ve ActiveX denetimleri içerir, bunlar hepsi `Shape` sınıfı kullanılarak temsil edilir. Bazı şekiller ayrıca metin de içerebilir, bu yüzden Aspose.Words içindeki Shape düğümleri blok seviyesinde düğümler içerebilir.

Şekiller GroupShape düğümleri kullanarak birbirinin içine yerleştirilebilir.

{{% /alert %}}

{{% alert color="primary" %}}

Alıntılar ve açıklamalar metin içerebilir, bu nedenle alıntı ve açıklama düğümleri Aspose.Words içinde blok düzeyinde düğümler içerebilir.

{{% /alert %}}

## Masa, Sıra ve Hücre Düğüm Düzeyi

Tablo, satır ve hücrelerin düğümlerinden oluşur. Tablo öğeleri aşağıdaki sınıflarla temsil edilir:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) bir tablo satırını temsil eder
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) bir tablo hücresini temsil eder
- StructuredDocumentTag özel işaretlemeyi temsil eder

Aşağıdaki diyagram, Tablo, Satır ve Hücre düzeylerindeki düğüm yapısını göstermektedir.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>

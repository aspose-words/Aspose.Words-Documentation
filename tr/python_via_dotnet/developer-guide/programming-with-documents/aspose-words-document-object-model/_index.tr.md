---
title: Aspose.Words DOM
second_title: Python via .NET için Aspose.Words
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM), bir Word belgesinin bellek içi temsilidir. Python kullanarak bir Word belgesinin içeriğini ve biçimlendirmesini okuyun, değiştirin ve değiştirin."
weight: 10
url: /tr/python-net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM), bir Word belgesinin bellek içi temsilidir. Aspose.Words DOM, bir Word belgesinin içeriğini ve biçimlendirmesini programlı olarak okumanıza, değiştirmenize ve değiştirmenize olanak tanır.

Bu bölümde Aspose.Words DOM'nin ana sınıfları ve bunların ilişkileri açıklanmaktadır. Aspose.Words DOM sınıflarını kullanarak belge öğelerine ve biçimlendirmeye programlı erişim sağlayabilirsiniz.

## `Document` Nesne Ağacı {#create-a-document-objects-tree} Oluşturma

Bir belge Aspose.Words DOM'ye okunduğunda, bir nesne ağacı oluşturulur ve kaynak belgenin farklı türdeki öğeleri, çeşitli özelliklere sahip kendi DOM ağacı nesnelerine sahip olur.

### Belge Düğümleri Ağacı {#build-document-nodes-tree} Oluşturun

Aspose.Words, bir Word belgesini belleğe okuduğunda, çeşitli belge öğelerini temsil eden farklı türde nesneler oluşturur. Bir metnin, paragrafın, tablonun veya bölümün her akışı bir düğümdür ve hatta belgenin kendisi de bir düğümdür. Aspose.Words, her belge düğümü türü için bir sınıf tanımlar.

Aspose.Words'teki belge ağacı, Bileşik Tasarım Modelini takip eder:

- Tüm düğüm sınıfları sonuçta Aspose.Words Document Object Model'deki temel sınıf olan [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) sınıfından türetilir.
- [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) veya [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) gibi diğer düğümleri içerebilen düğümler [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) sınıfından türetilir ve [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) sınıfı da [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) sınıfından türetilir.

Aşağıda verilen diyagram, Aspose.Words Document Object Model'nin (DOM) düğüm sınıfları arasındaki kalıtımı göstermektedir. Soyut sınıfların adları italiktir.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="iddia-kelimeler-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM ayrıca bir belgedeki görünümü ve stilleri özelleştirmek için kullanılan [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) veya [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) gibi düğüm dışı sınıfları da içerir. Bu sınıflar, [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) sınıfından miras alınmadığı için bu diyagramda gösterilmemiştir.

{{% /alert %}}

Bir örneğe bakalım. Aşağıdaki resimde farklı içerik türlerine sahip bir Microsoft Word belgesi gösterilmektedir.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="belge-örnek-aspose-kelimeler" style="width:700px"/>

Yukarıdaki belge Aspose.Words DOM'ye okunurken aşağıdaki şemada gösterildiği gibi nesneler ağacı oluşturulur.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-kelimeler" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ve diyagramdaki diğer tüm elipsler, Word belgesinin öğelerini temsil eden Aspose.Words nesneleridir.

### `Node` Türü {#get-a-node-type}'yi edinin

[Node](https://reference.aspose.com/words/python-net/aspose.words/node/) sınıfı, farklı düğümleri birbirinden ayırt edecek kadar yeterli olsa da, Aspose.Words, belirli bir türdeki düğümleri seçmek gibi bazı API görevlerini basitleştirmek için [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) numaralandırması sağlar.

Her düğümün türü [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) özelliği kullanılarak elde edilebilir. Bu özellik bir [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) numaralandırma değeri döndürür. Örneğin, [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) sınıfı tarafından temsil edilen bir paragraf düğümü [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph)'i döndürür ve [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) sınıfı tarafından temsil edilen bir tablo düğümü [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table)'yi döndürür.

Aşağıdaki örnek, [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) numaralandırmasını kullanarak bir düğüm türünün nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Belge Ağacı Gezintisi {#document-tree-navigation}

Aspose.Words, bir belgeyi düğümler arasında gezinmenizi sağlayan bir düğüm ağacı olarak temsil eder. Bu bölümde Aspose.Words'teki belge ağacının nasıl keşfedileceği ve gezinileceği açıklanmaktadır.

Daha önce sunulan örnek belgeyi Belge Gezgini'nde açtığınızda, düğüm ağacı tam olarak Aspose.Words'te temsil edildiği gibi görünür.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="belge içinde belge gezgini" style="width:680px"/>

{{% alert color="primary" %}}

"Belge Gezgini" örnek projesini [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples) üzerinden öğrenebilirsiniz.

{{% /alert %}}

### Belge Düğümleri İlişkileri {#document-nodes-relationships}

Ağaçtaki düğümlerin kendi aralarında ilişkileri vardır:

- Başka bir düğüm içeren bir düğüm *parent.*'tir
- Ana düğümün içerdiği düğüm bir *child.*'tir. Aynı ebeveynin alt düğümleri *sibling* düğümleridir.
- *root* düğümü her zaman [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) düğümüdür.

Diğer düğümleri içerebilen düğümler [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) sınıfından türetilir ve tüm düğümler sonuçta [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) sınıfından türetilir. Bu iki temel sınıf, ağaç yapısında gezinme ve değişiklik için ortak yöntemler ve özellikler sağlar.

Aşağıdaki UML nesne diyagramı, örnek belgenin birkaç düğümünü ve bunların ebeveyn, alt ve kardeş özellikleri aracılığıyla birbirleriyle ilişkilerini gösterir:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="belge-düğümleri-ilişkileri-aspose-kelimeler" style="width:370px"/>

#### Doküman Düğüm Sahibi

Bir düğüm, yeni oluşturulmuş veya ağaçtan kaldırılmış olsa bile her zaman belirli bir belgeye aittir, çünkü stiller ve listeler gibi belge genelindeki hayati yapılar [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) düğümünde depolanır. Örneğin, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) olmadan bir [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)'ye sahip olmak mümkün değildir çünkü her paragrafın, belge için genel olarak tanımlanmış atanmış bir stili vardır. Bu kural yeni düğümler oluşturulurken kullanılır. DOM'e doğrudan yeni bir [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) eklemek, yapıcıya bir belge nesnesinin aktarılmasını gerektirir.

{{% alert color="primary" %}}

[Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) özelliği düğümün ait olduğu belgeyi döndürür.

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) kullanarak yeni bir paragraf oluştururken, oluşturucunun her zaman [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) özelliği aracılığıyla kendisine bağlı bir [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sınıfı vardır.

Aşağıdaki kod örneği, herhangi bir düğüm oluştururken, düğümün sahibi olacak bir belgenin her zaman tanımlandığını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Ana Düğüm

Her düğümün [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) özelliği tarafından belirtilen bir ebeveyni vardır. Aşağıdaki durumlarda bir düğümün üst düğümü yoktur, yani [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) *None*'dir:

- Düğüm yeni oluşturuldu ve henüz ağaca eklenmedi.
- Düğüm ağaçtan kaldırıldı.
- Bu, her zaman Hiçbiri üst düğümüne sahip olan kök [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) düğümüdür.

[Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) yöntemini çağırarak bir düğümü üst öğesinden kaldırabilirsiniz. Aşağıdaki kod örneği, üst düğüme nasıl erişileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Çocuk Düğümler

Bir [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)'in alt düğümlerine erişmenin en etkili yolu, sırasıyla ilk ve son alt düğümleri döndüren [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) ve [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) özellikleridir. Alt düğüm yoksa bu özellikler *None* değerini döndürür.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) ayrıca alt düğümlere dizinlenmiş veya numaralandırılmış erişim sağlayan [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) koleksiyonunu da sağlar. [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) yöntemi, düğümlerin canlı bir koleksiyonunu döndürür; bu, düğümlerin kaldırılması veya eklenmesi gibi belgede her değişiklik yapıldığında **get_child_nodes** koleksiyonunun otomatik olarak güncellendiği anlamına gelir.

Bir düğümün çocuğu yoksa **get_child_nodes** yöntemi boş bir koleksiyon döndürür. [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) özelliğini kullanarak [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)'nin herhangi bir alt düğüm içerip içermediğini kontrol edebilirsiniz.

Aşağıdaki kod örneği, **get_child_nodes** koleksiyonu tarafından sağlanan numaralandırıcıyı kullanarak bir [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)'in hemen alt düğümlerinin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Kardeş Düğümler

Sırasıyla [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) ve [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) özelliklerini kullanarak belirli bir düğümden hemen önce veya sonra gelen düğümü elde edebilirsiniz. Bir düğüm ebeveyninin son çocuğuysa, [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) özelliği *None*'dir. Tersine, eğer düğüm ebeveyninin ilk çocuğu ise [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) özelliği *None*'dir.

Aşağıdaki kod örneği, bir bileşik düğümün tüm doğrudan ve dolaylı alt düğümlerinin verimli bir şekilde nasıl ziyaret edileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Alt ve Üst Düğümlere Yazılı Erişim {#typed-access-to-child-and-parent-nodes}

Şu ana kadar temel türlerden birini ([Node](https://reference.aspose.com/words/python-net/aspose.words/node/) veya [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)) döndüren özellikleri tartıştık. Ancak bazen değerleri [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) veya [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) gibi belirli bir düğüm sınıfına aktarmanız gerekebilecek durumlar olabilir. Yani kompozit olan Aspose.Words DOM ile çalışırken dökümden tamamen uzaklaşamazsınız.

Döküm ihtiyacını azaltmak için çoğu Aspose.Words sınıfı, güçlü bir şekilde yazılan erişim sağlayan özellikler ve koleksiyonlar sağlar. Yazılı erişimin üç temel modeli vardır:

- Bir üst düğüm, yazılan **ilk_XXX** ve **son_XXX** özelliklerini ortaya çıkarır. Örneğin [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)'in [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) ve [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) özellikleri vardır. Benzer şekilde [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)'nin [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) ve diğerleri gibi özellikleri vardır.
- Bir üst düğüm, [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) ve diğerleri gibi alt düğümlerin yazılı bir koleksiyonunu ortaya çıkarır.
- Bir alt düğüm, [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) ve diğerleri gibi üst düğümüne yazılı erişim sağlar.

Yazılan özellikler, bazen [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) ve [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/)'den devralınan genel özelliklere göre daha kolay erişim sağlayan yalnızca yararlı kısayollardır.

Aşağıdaki kod örneği, belge ağacının düğümlerine erişmek için yazılan özelliklerin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}

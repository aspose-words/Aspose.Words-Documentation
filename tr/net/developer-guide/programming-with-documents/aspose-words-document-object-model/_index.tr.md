---
title: C#'de Aspose.Words Document Object Model (DOM)
second_title: .NET için Aspose.Words
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM), bir Word belgesinin bellek içi temsilidir. C# kullanarak bir Word belgesinin içeriğini ve biçimlendirmesini okuyun, değiştirin ve değiştirin."
weight: 10
url: /tr/net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM), bir Word belgesinin bellek içi temsilidir. Aspose.Words DOM, bir Word belgesinin içeriğini ve biçimlendirmesini programlı olarak okumanıza, değiştirmenize ve değiştirmenize olanak tanır.

Bu bölümde Aspose.Words DOM'nin ana sınıfları ve bunların ilişkileri açıklanmaktadır. Aspose.Words DOM sınıflarını kullanarak belge öğelerine ve biçimlendirmeye programlı erişim sağlayabilirsiniz.

## `Document` Nesne Ağacı {#create-a-document-objects-tree} Oluşturma

Bir belge Aspose.Words DOM'ye okunduğunda, bir nesne ağacı oluşturulur ve kaynak belgenin farklı türdeki öğeleri, çeşitli özelliklere sahip kendi DOM ağacı nesnelerine sahip olur.

### Belge Düğümleri Ağacı {#build-document-nodes-tree} Oluşturun

Aspose.Words, bir Word belgesini belleğe okuduğunda, çeşitli belge öğelerini temsil eden farklı türde nesneler oluşturur. Bir metnin, paragrafın, tablonun veya bölümün her akışı bir düğümdür ve hatta belgenin kendisi de bir düğümdür. Aspose.Words, her belge düğümü türü için bir sınıf tanımlar.

Aspose.Words'teki belge ağacı, Bileşik Tasarım Modelini takip eder:

- Tüm düğüm sınıfları sonuçta Aspose.Words Document Object Model'deki temel sınıf olan [Node](https://reference.aspose.com/words/tr/net/aspose.words/node/) sınıfından türetilir.
- **Section** veya **Paragraph** gibi diğer düğümleri içerebilen düğümler [CompositeNode](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/) sınıfından türetilir ve bu da **Node** sınıfından türer.

Aşağıda verilen diyagram, Aspose.Words Document Object Model'nin (DOM) düğüm sınıfları arasındaki kalıtımı göstermektedir. Soyut sınıfların adları italiktir.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="iddia-kelimeler-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM ayrıca bir belgedeki görünümü ve stilleri özelleştirmek için kullanılan [Style](https://reference.aspose.com/words/tr/net/aspose.words/style/) veya [Font](https://reference.aspose.com/words/tr/net/aspose.words/font/) gibi düğüm dışı sınıfları da içerir. Bu sınıflar, `Node` sınıfından miras alınmadığı için bu diyagramda gösterilmemiştir.

{{% /alert %}}

Bir örneğe bakalım. Aşağıdaki resimde farklı içerik türlerine sahip bir Microsoft Word belgesi gösterilmektedir.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="belge-örnek-aspose-kelimeler" style="width:700px"/>

Yukarıdaki belge Aspose.Words DOM'ye okunurken aşağıdaki şemada gösterildiği gibi nesneler ağacı oluşturulur.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-kelimeler" style="width:700px"/>

[Document](https://reference.aspose.com/words/tr/net/aspose.words/document/), [Section](https://reference.aspose.com/words/tr/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/tr/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/tr/net/aspose.words/run/) ve diyagramdaki diğer tüm elipsler, Word belgesinin öğelerini temsil eden Aspose.Words nesneleridir.

### `Node` Türü {#get-a-node-type}'yi edinin

[Node](https://reference.aspose.com/words/tr/net/aspose.words/node/) sınıfı, farklı düğümleri birbirinden ayırt edecek kadar yeterli olsa da, Aspose.Words, belirli bir türdeki düğümleri seçmek gibi bazı API görevlerini basitleştirmek için [NodeType](https://reference.aspose.com/words/tr/net/aspose.words/node/nodetype/) numaralandırması sağlar.

Her düğümün türü [NodeType](https://reference.aspose.com/words/tr/net/aspose.words/node/nodetype/) özelliği kullanılarak elde edilebilir. Bu özellik bir **NodeType** numaralandırma değeri döndürür. Örneğin, **Paragraph** sınıfı tarafından temsil edilen bir paragraf düğümü **NodeType**.**Paragraph**'yi döndürür ve **Table** sınıfı tarafından temsil edilen bir tablo düğümü **NodeType**.**Table**'i döndürür.

Aşağıdaki örnek, **NodeType** numaralandırmasını kullanarak bir düğüm türünün nasıl alınacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Belge Ağacı Gezintisi {#document-tree-navigation}

Aspose.Words, bir belgeyi düğümler arasında gezinmenizi sağlayan bir düğüm ağacı olarak temsil eder. Bu bölümde Aspose.Words'teki belge ağacının nasıl keşfedileceği ve gezinileceği açıklanmaktadır.

Daha önce sunulan örnek belgeyi Belge Gezgini'nde açtığınızda, düğüm ağacı tam olarak Aspose.Words'te temsil edildiği gibi görünür.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="belge içinde belge gezgini" style="width:680px"/>

{{% alert color="primary" %}}

"Belge Gezgini" örnek projesini [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) üzerinden öğrenebilirsiniz.

{{% /alert %}}

### Belge Düğümü İlişkileri {#document-nodes-relationships}

Ağaçtaki düğümlerin kendi aralarında ilişkileri vardır:

- Başka bir düğüm içeren bir düğüm *parent.*'tir
- Ana düğümün içerdiği düğüm bir *child.*'tir. Aynı ebeveynin alt düğümleri *sibling* düğümleridir.
- *root* düğümü her zaman [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) düğümüdür.

Diğer düğümleri içerebilen düğümler [CompositeNode](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/) sınıfından türetilir ve tüm düğümler sonuçta [Node](https://reference.aspose.com/words/tr/net/aspose.words/node/) sınıfından türetilir. Bu iki temel sınıf, ağaç yapısında gezinme ve değişiklik için ortak yöntemler ve özellikler sağlar.

Aşağıdaki UML nesne diyagramı, örnek belgenin birkaç düğümünü ve bunların ebeveyn, alt ve kardeş özellikleri aracılığıyla birbirleriyle ilişkilerini gösterir:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="belge-düğümleri-ilişkileri-aspose-kelimeler" style="width:370px"/>

#### Doküman Düğüm Sahibi

Bir düğüm, yeni oluşturulmuş veya ağaçtan kaldırılmış olsa bile her zaman belirli bir belgeye aittir, çünkü stiller ve listeler gibi belge genelindeki hayati yapılar **Document** düğümünde depolanır. Örneğin, **Document** olmadan bir **Paragraph**'ye sahip olmak mümkün değildir çünkü her paragrafın, belge için genel olarak tanımlanmış atanmış bir stili vardır. Bu kural yeni düğümler oluşturulurken kullanılır. DOM'e doğrudan yeni bir **Paragraph** eklemek, yapıcıya bir belge nesnesinin aktarılmasını gerektirir.

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/tr/net/aspose.words/node/document/) özelliği düğümün ait olduğu belgeyi döndürür.

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) kullanarak yeni bir paragraf oluştururken, oluşturucunun her zaman [DocumentBuilder.Document](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/document/) özelliği aracılığıyla kendisine bağlı bir **Document** sınıfı vardır.

Aşağıdaki kod örneği, herhangi bir düğüm oluştururken, düğümün sahibi olacak bir belgenin her zaman tanımlandığını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Ana Düğüm

Her düğümün [ParentNode](https://reference.aspose.com/words/tr/net/aspose.words/node/parentnode/) özelliği tarafından belirtilen bir ebeveyni vardır. Bir düğümün üst düğümü yoktur, yani aşağıdaki durumlarda **ParentNode** boştur:

- Düğüm yeni oluşturuldu ve henüz ağaca eklenmedi.
- Düğüm ağaçtan kaldırıldı.
- Bu, her zaman boş bir üst düğüme sahip olan kök **Document** düğümüdür.

[Remove](https://reference.aspose.com/words/tr/net/aspose.words/node/remove/) yöntemini çağırarak bir düğümü üst öğesinden kaldırabilirsiniz. Aşağıdaki kod örneği, üst düğüme nasıl erişileceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Çocuk Düğümler

Bir [CompositeNode](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/)'in alt düğümlerine erişmenin en etkili yolu, sırasıyla ilk ve son alt düğümleri döndüren [FirstChild](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/firstchild/) ve [LastChild](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/lastchild/) özellikleridir. Alt düğüm yoksa bu özellikler *null* değerini döndürür.

**CompositeNode** ayrıca alt düğümlere dizinlenmiş veya numaralandırılmış erişim sağlayan [GetChildNodes](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/getchildnodes/) yöntemini de sağlar. **ChildNodes** özelliği, düğümlerin canlı bir koleksiyonudur; bu, düğümlerin kaldırılması veya eklenmesi gibi belgede her değişiklik yapıldığında, **ChildNodes** koleksiyonunun otomatik olarak güncellendiği anlamına gelir.

Bir düğümün çocuğu yoksa **ChildNodes** özelliği boş bir koleksiyon döndürür. [HasChildNodes](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/haschildnodes/) özelliğini kullanarak **CompositeNode**'nin herhangi bir alt düğüm içerip içermediğini kontrol edebilirsiniz.

Aşağıdaki kod örneği, `ChildNodes` koleksiyonu tarafından sağlanan numaralandırıcıyı kullanarak bir `CompositeNode`'in hemen alt düğümlerinin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Aşağıdaki kod örneği, dizinlenmiş erişimi kullanarak bir `CompositeNode`'in hemen alt düğümlerinin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Kardeş Düğümler

Sırasıyla [PreviousSibling](https://reference.aspose.com/words/tr/net/aspose.words/node/previoussibling/) ve [NextSibling](https://reference.aspose.com/words/tr/net/aspose.words/node/nextsibling/) özelliklerini kullanarak belirli bir düğümden hemen önce veya sonra gelen düğümü elde edebilirsiniz. Bir düğüm ebeveyninin son çocuğuysa **NextSibling** özelliği *null*'tir. Tersine, eğer düğüm ebeveyninin ilk çocuğu ise **PreviousSibling** özelliği *null*'tir.

Aşağıdaki kod örneği, bir bileşik düğümün tüm doğrudan ve dolaylı alt düğümlerinin verimli bir şekilde nasıl ziyaret edileceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Alt ve Üst Düğümlere Yazılı Erişim {#typed-access-to-child-and-parent-nodes}

Şu ana kadar temel türlerden birini (**Node** veya **CompositeNode**) döndüren özellikleri tartıştık. Ancak bazen değerleri **Run** veya **Paragraph** gibi belirli bir düğüm sınıfına aktarmanız gerekebilecek durumlar olabilir. Yani kompozit olan Aspose.Words DOM ile çalışırken dökümden tamamen uzaklaşamazsınız.

Döküm ihtiyacını azaltmak için çoğu Aspose.Words sınıfı, güçlü bir şekilde yazılan erişim sağlayan özellikler ve koleksiyonlar sağlar. Yazılı erişimin üç temel modeli vardır:

- Bir üst düğüm, yazılan **FirstXXX** ve **LastXXX** özelliklerini ortaya çıkarır. Örneğin **Document**'in [FirstSection](https://reference.aspose.com/words/tr/net/aspose.words/document/firstsection/) ve [LastSection](https://reference.aspose.com/words/tr/net/aspose.words/document/lastsection/) özellikleri vardır. Benzer şekilde **Table**'nin [FirstRow](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/lastrow/) ve diğerleri gibi özellikleri vardır.
- Bir üst düğüm, [Document.Sections](https://reference.aspose.com/words/tr/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/tr/net/aspose.words/story/paragraphs/) ve diğerleri gibi alt düğümlerin yazılı bir koleksiyonunu ortaya çıkarır.
- Bir alt düğüm, [Run.ParentParagraph](https://reference.aspose.com/words/tr/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/tr/net/aspose.words/paragraph/parentsection/) ve diğerleri gibi üst düğümüne yazılı erişim sağlar.

Yazılan özellikler, bazen [Node.ParentNode](https://reference.aspose.com/words/tr/net/aspose.words/node/parentnode/) ve [CompositeNode.FirstChild](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/firstchild/)'den devralınan genel özelliklere göre daha kolay erişim sağlayan yalnızca yararlı kısayollardır.

Aşağıdaki kod örneği, belge ağacının düğümlerine erişmek için yazılan özelliklerin nasıl kullanılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}

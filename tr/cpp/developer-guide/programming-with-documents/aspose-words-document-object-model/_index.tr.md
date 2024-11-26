---
title: Aspose.Words Belge Nesne Modeli (DOM) C++ içinde
second_title: Aspose.Words için C++
articleTitle: Aspose.Words Belge Nesne Modeli (DOM)
linktitle: Aspose.Words Belge Nesne Modeli (DOM)
type: docs
description: "Belge Nesne Modeli (DOM), bir Word belgesinin bellek içi temsilidir. C++ kullanarak bir Word belgesinin içeriğini ve biçimlendirmesini okuyun, değiştirin ve değiştirin."
weight: 10
url: /tr/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Belge Nesne Modeli (DOM), bir Word belgesinin bellek içi temsilidir. Aspose.Words DOM, bir Word belgesinin içeriğini ve biçimlendirmesini programlı olarak okumanıza, değiştirmenize ve değiştirmenize olanak tanır.

Bu bölümde Aspose.Words DOM'in ana sınıfları ve ilişkileri açıklanmaktadır. Aspose.Words DOM sınıflarını kullanarak belge öğelerine ve biçimlendirmeye programlı erişim elde edebilirsiniz.

## Belge Nesne Ağacı Oluştur {#create-a-document-objects-tree}

Bir belge Aspose.Words DOM 'e okunduğunda, bir nesne ağacı oluşturulur ve kaynak belgenin farklı türdeki öğelerinin çeşitli özelliklere sahip kendi DOM ağaç nesneleri vardır.

### Belge Düğümleri Ağacı Oluştur {#build-document-nodes-tree}

Aspose.Words bir Word belgesini belleğe okuduğunda, çeşitli belge öğelerini temsil eden farklı türde nesneler oluşturur. Bir metnin, paragrafın, tablonun veya bölümün her çalışması bir düğümdür ve belgenin kendisi bile bir düğümdür. Aspose.Words her belge düğümü türü için bir sınıf tanımlar.

Aspose.Words içindeki belge ağacı Bileşik Tasarım Desenini izler:

- Tüm düğüm sınıfları nihayetinde Aspose.Words Belge Nesne Modelindeki temel sınıf olan [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) sınıfından türetilir.
- Örneğin **Section** veya **Paragraph** gibi başka düğümler içerebilen düğümler, [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) sınıfından türetilir ve bu da **Node** sınıfından türetilir.

Aşağıda verilen diyagram, Aspose.Words Belge Nesne Modelinin (DOM) düğüm sınıfları arasındaki kalıtımı göstermektedir. Soyut sınıfların adları italiktir.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM, bir belgedeki görünümü ve stilleri özelleştirmek için kullanılan [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) veya [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) gibi düğüm olmayan sınıfları da içerir. Bu sınıflar bu diyagramda `Node` sınıfından devralınmamış olarak gösterilmez.

{{% /alert %}}

Bir örneğe bakalım. Aşağıdaki resimde farklı içerik türlerine sahip bir Microsoft Word belgesi gösterilmektedir.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Yukarıdaki belgeyi Aspose.Words DOM 'e okurken, aşağıdaki şemada gösterildiği gibi nesneler ağacı oluşturulur.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), ve diyagramdaki diğer tüm elipsler, Word belgesinin öğelerini temsil eden Aspose.Words nesnelerdir.

### Bir `Node` Türü alın {#get-a-node-type}

[Node](https://reference.aspose.com/words/cpp/aspose.words/node/) sınıfı, farklı düğümleri birbirinden ayıracak kadar yeterli olsa da, Aspose.Words, belirli bir türdeki düğümleri seçmek gibi bazı API görevleri basitleştirmek için [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) numaralandırmasını sağlar.

Her düğümün türü [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/) özelliği kullanılarak elde edilebilir. Bu özellik bir **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph** ve **Table** class returns **NodeType**.**Table** ile temsil edilen bir tablo düğümü döndürür.

Aşağıdaki örnek, **NodeType** numaralandırmasını kullanarak bir düğüm türünün nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Belge Ağacında Gezinme {#document-tree-navigation}

Aspose.Words bir belgeyi düğümler arasında gezinmenizi sağlayan düğüm ağacı olarak temsil eder. Bu bölümde, Aspose.Words içindeki belge ağacının nasıl keşfedileceği ve gezinileceği açıklanmaktadır.

Daha önce Belge Gezgini'nde sunulan örnek belgeyi açtığınızda, düğüm ağacı tam olarak Aspose.Words içinde temsil edildiği gibi görünür.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Belge Düğümü ilişkileri {#document-nodes-relationships}

Ağaçtaki düğümlerin aralarında ilişkiler vardır:

- Başka bir düğüm içeren bir düğüm bir *parent.*
- Üst düğümde bulunan düğüm, aynı üst düğümün *child.* Alt düğümleri *sibling* düğümleridir.
- *root* düğüm her zaman [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) düğümdür.

Diğer düğümleri içerebilen düğümler [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) sınıfından türetilir ve sonuçta tüm düğümler [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) sınıfından türetilir. Bu iki temel sınıf, ağaç yapısında gezinme ve değişiklik için ortak yöntemler ve özellikler sağlar.

Aşağıdaki UML nesne diyagramı, örnek belgenin birkaç düğümünü ve bunların üst, alt ve kardeş özellikleri aracılığıyla birbirleriyle ilişkilerini gösterir:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Belge Düğüm Sahibidir

Bir düğüm, yeni oluşturulmuş veya ağaçtan kaldırılmış olsa bile her zaman belirli bir belgeye aittir, çünkü stiller ve listeler gibi hayati belge çapında yapılar **Document** düğümünde saklanır. Örneğin, her paragrafın belge için genel olarak tanımlanmış atanmış bir stili olduğundan, **Document** olmadan **Paragraph** olması mümkün değildir. Bu kural, yeni düğümler oluştururken kullanılır. Doğrudan DOM 'ye yeni bir **Paragraph** eklemek, yapıcıya iletilen bir belge nesnesi gerektirir.

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) özelliği, düğümün ait olduğu belgeyi döndürür.

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) kullanarak yeni bir paragraf oluştururken, oluşturucunun her zaman [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/) özelliği aracılığıyla kendisine bağlı bir **Document** sınıfı vardır.

Aşağıdaki kod örneği, herhangi bir düğüm oluştururken, düğüme sahip olacak bir belgenin her zaman tanımlandığını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Üst Düğüm

Her düğümün [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) özelliği tarafından belirtilen bir üst öğesi vardır. Bir düğümün ana düğümü yoktur, yani aşağıdaki durumlarda **ParentNode** null olur:

- Düğüm yeni oluşturuldu ve henüz ağaca eklenmedi.
- Düğüm ağaçtan kaldırıldı.
- Bu, her zaman boş bir üst düğüme sahip olan kök **Document** düğümdür.

[Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) yöntemini çağırarak bir düğümü üst öğesinden kaldırabilirsiniz.Aşağıdaki kod örneği, üst düğüme nasıl erişileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Alt Düğümler

Bir [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) 'nin alt düğümlerine erişmenin en etkili yolu, sırasıyla ilk ve son alt düğümleri döndüren [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) ve [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) özellikleridir. Alt düğüm yoksa, bu özellikler *null* döndürür.

**CompositeNode**

Bir düğümün alt öğesi yoksa, **ChildNodes** özelliği boş bir koleksiyon döndürür. **CompositeNode** öğesinin [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/) özelliğini kullanarak herhangi bir alt düğüm içerip içermediğini kontrol edebilirsiniz.

Aşağıdaki kod örneği, `ChildNodes` koleksiyonu tarafından sağlanan numaralandırıcıyı kullanarak bir `CompositeNode` öğesinin hemen alt düğümlerinin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Aşağıdaki kod örneği, dizine eklenmiş erişimi kullanarak bir `CompositeNode` öğesinin hemen alt düğümlerinin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Kardeş Düğümler

Belirli bir düğümden hemen önce gelen veya onu izleyen düğümü sırasıyla [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) ve [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/) özelliklerini kullanarak elde edebilirsiniz. Bir düğüm üst öğesinin son alt öğesiyse, **NextSibling** özelliği *null* olur. Tersine, düğüm üst öğesinin ilk alt öğesiyse, **PreviousSibling** özelliği *null* olur.

Aşağıdaki kod örneği, bir bileşik düğümün tüm doğrudan ve dolaylı alt düğümlerinin nasıl verimli bir şekilde ziyaret edileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Alt ve Üst Düğümlere Yazılan Erişim

Şimdiye kadar, temel türlerden birini döndüren özellikleri tartıştık – **Node** veya **CompositeNode**. Ancak bazen **Run** veya **Paragraph** gibi belirli bir düğüm sınıfına değer atmanız gerekebilecek durumlar olabilir. Yani bileşik olan Aspose.Words DOM ile çalışırken dökümden tamamen kurtulamazsınız.

Döküm gereksinimini azaltmak için çoğu Aspose.Words sınıfı, kesin olarak yazılan erişim sağlayan özellikler ve koleksiyonlar sağlar. Yazılı erişimin üç temel modeli vardır:

- Bir üst düğüm, yazılan **FirstXXX** ve **LastXXX** özelliklerini gösterir. Örneğin, **Document** [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) ve [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) özelliklerine sahiptir. Benzer şekilde, **Table**, [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) ve diğerleri gibi özelliklere sahiptir.
- Bir üst düğüm, [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) ve diğerleri gibi yazılan bir alt düğüm koleksiyonunu gösterir.
- Bir alt düğüm, üst düğümüne [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) ve diğerleri gibi yazılı erişim sağlar.

Yazılan özellikler, bazen [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) ve [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) 'dan devralınan genel özelliklerden daha kolay erişim sağlayan yalnızca kullanışlı kısayollardır.

Aşağıdaki kod örneği, belge ağacının düğümlerine erişmek için yazılan özelliklerin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}

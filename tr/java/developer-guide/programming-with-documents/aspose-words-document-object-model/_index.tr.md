---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words için Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "(Document Object Model) (DOM) bir Word belgesi bellek içi temsilidir. Java'i kullanarak bir Word belgesinin içeriğini ve biçimlendirmesini oku, manipüle et ve değiştir."
weight: 10
url: /tr/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model (DOM), bir Word belgesi bellekteki gösterimidir. Aspose.Words DOM, programlı olarak bir Word belgesinin içeriğini ve biçimlendirilmesini okumanızı, manipüle etmenizi ve değiştirmenizi sağlar.

Bu bölüm Aspose.Words DOM'deki ana sınıfları ve ilişkilerini tanımlar. Aspose.Words DOM sınıflarını kullanarak bir belge öğelerine programlı erişim elde edebilirsiniz.

## Create Document Object Tree {#create-a-document-objects-tree}

Bir belge Aspose.Words DOM içine alındığında, bir nesne ağacı oluşturulur ve kaynak belgedeki farklı türdeki öğelerin kendi DOM ağaç nesneleri çeşitli özelliklere sahiptir.

### Yapı Doküman Düğüm Ağacı {#build-document-nodes-tree}

Bir Word belgesi belleğe Aspose.Words tarafından okunduğunda, çeşitli belge öğelerini temsil eden farklı türde nesneler oluşturur. Her metin, paragraf, tablo veya bölüm çalıştırması bir düğüm ve hatta belge de bir düğümdür. Aspose.Words her belge düğümü türü için bir sınıf tanımlar.

Aspose.Words içindeki belge ağacı Kompozit Tasarım Deseni'ni takip eder:

Tüm düğüm sınıfları nihayetinde [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) sınıfından türetilir, ki bu da Aspose.Words Document Object Model içindeki temel sınıftır.
- Diğer düğümleri içerebilecek düğümler, örneğin **Section** veya **Paragraph**, [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) sınıfından türetilirler, bu da **Node** sınıfından türeder.

Aşağıdaki diyagramda düğüm sınıfları arasındaki miras gösterilmektedir Aspose.Words Document Object Model (DOM). Soyut sınıfların isimleri italiktir.

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM ayrıca bir belge içinde görünüm ve stilleri özelleştirmek için kullanılan, [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) veya [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) gibi düğüm olmayan sınıfları da içerir. Bu sınıflar bu diyagramda gösterilmemektedir çünkü `Node` sınıfından devralınmaz.

{{% /alert %}}

Örnek bir şeye bakalım. Aşağıdaki görüntü, farklı türdeki içeriklere sahip bir Microsoft Word belgesini göstermektedir.

<img src="document-example.png" alt="document-example" style="width:700px"/>

Yukarıdaki belgeden Aspose.Words DOM okurken, nesne ağacı yukarıdaki şemada gösterildiği gibi oluşturulur.

<img src="document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), ve diyagramdaki diğer tüm elipsler Aspose.Words nesneleri Word belgesi öğelerini temsil eder.

### Bir `Node` Tür {#get-a-node-type}

[Node](https://reference.aspose.com/words/java/com.aspose.words/node/) sınıfı birbirinden farklı düğümleri ayırt etmek için yeterli olsa da, Aspose.Words belirli türde düğümleri seçme gibi bazı API görevleri kolaylaştırmak için [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) numaralandırma sağlar.

Her düğümün türü [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) özelliğini kullanarak elde edilebilir. Bu özellik bir **NodeType** enum değeri döndürür. Örneğin, **Paragraph** sınıfıyla temsil edilen bir paragraf düğümü **NodeType**.**Paragraph** döndürür ve **Table** sınıfıyla temsil edilen bir tablo düğümü **NodeType**.**Table** döndürür.

Aşağıdaki örnek, bir düğüm türünü almak için **NodeType** numaralandırmasının nasıl kullanılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Belge Ağacı Gezintisi {#document-tree-navigation}

Aspose.Words bir belgeden düğüm ağacı olarak temsil eder, bu da düğümler arasında gezinmenizi sağlar. Bu bölüm Aspose.Words'te belge ağacını keşfetme ve gezinti hakkında bilgi verir.

Örnek belgeyi, yukarıda sunulan, Belge Gezgini'nde açtığınızda, düğüm ağacı tam olarak Aspose.Words'da temsil edildiği gibi görünür.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Örnek projeyi "Belge Gezgini" [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer)'dan öğrenebilirsiniz.

{{% /alert %}}

### Belge Düğüm İlişkileri {#document-nodes-relationships}

Ağaçtaki düğümler aralarında ilişkiler içerir:

- Bir başka bir düğüm içeren bir düğüm *parent.* 'dir
- Ana düğümde bulunan düğüm bir *child.* 'dir. Aynı üst düğümün alt düğümleri *sibling* 'dir.
- *root* düğümü her zaman bir [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) düğümüdür.

Diğer düğümleri içerebilecek düğümler [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) sınıfından türemiş ve tüm düğümler nihai olarak [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) sınıfından türemiştir. Bu iki temel sınıf ağaç yapısı gezintisi ve değişikliği için ortak yöntemler ve özellikleri sağlar.

Aşağıdaki UML nesne diyagramı örnek belgeyi oluşturan bir dizi düğüm ve bunların ebeveyn, çocuk ve kardeş özellikleri aracılığıyla birbirlerine olan ilişkilerini göstermektedir:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Belge Düğüm Sahibi

Bir düğüm her zaman belirli bir belgeye aittir, hatta sadece oluşturulmuş veya ağaçtan kaldırılmış olsa bile, çünkü stil ve listeler gibi önemli belge genelinde yapılar **Document** düğümüde saklanır. Örneğin, bir **Paragraph** olmadan bir **Document** olamaz çünkü her paragrafın atanmış bir stili vardır ki bu stil belge için genel olarak tanımlanmıştır. Bu kural yeni düğümler oluşturulurken kullanılır. Yeni bir **Paragraph**'i doğrudan DOM'ye eklemek bir belge nesnesini oluşturucuya geçirmeyi gerektirir.

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) özelliği, düğümün ait olduğu belgeyi döndürür.

{{% /alert %}}

Bir yeni paragraf oluştururken [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kullanarak, oluşturucu her zaman **Document** sınıfına sahip olur ve [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) özelliğine göre ona bağlanır.

Aşağıdaki kod örneğinde herhangi bir düğüm oluştururken, sahip olacağı belge her zaman tanımlandığını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Ebeveyn Düğüm

Her düğüm, bir [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) özelliğine sahip üst düğüme sahiptir. Bir düğümün hiçbir üst düğümü yoktur, yani **ParentNode** null'dur aşağıdaki durumlarda:

- Düğüm sadece oluşturuldu ve ağaca henüz eklenmedi.
Sürücü ağacıdan kaldırıldı.
- Bu kök **Document** düğümü her zaman bir null üst düğüm.

Bir düğümü üst düğümünden çıkarabilirsiniz [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) yöntemini çağırarak. Aşağıdaki örnek kod, üst düğümüne erişmenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Çocuk Düğümleri

Bir [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) nin alt düğümlerine erişmenin en verimli yolu, sırasıyla ilk ve son alt düğümü döndüren [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) ve [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) özelliklerini kullanmaktır. Alt düğüm yoksa bu özellikler *null*'ı döndürür.

**CompositeNode** ayrıca [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) koleksiyonunu sağlar, böylece alt düğümlerin dizinli veya numaralandırılmış olarak erişilebilir. **ChildNodes** özelliği canlı bir düğümlere sahip bir koleksiyondur, bu da belgenin değiştirildiği, örneğin düğümlere kaldırıldığı veya eklendiği durumlarda, **ChildNodes** koleksiyonunun otomatik olarak güncelleneceği anlamına gelir.

Bir düğümün çocuğu yoksa, **ChildNodes** özelliği boş bir koleksiyon döndürür. **CompositeNode** içindeki herhangi bir alt düğüm olup olmadığını [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) özelliğini kullanarak kontrol edebilirsiniz.

Aşağıdaki kod örneği bir 0 `CompositeNode` kullanarak nasıl hemen alt düğümlerin listelenmesi gösterilir koleksiyon tarafından sağlanan `ChildNodes` 'den bir enumerator kullanır.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Aşağıdaki kod örneği, dizinli erişimi kullanarak bir `CompositeNode`'ın anında çocuk düğümlerini nasıl saydığını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Kardeş Düğümler

Bir belirli düğümün hemen öncesi veya sonraki düğümü elde etmek için sırasıyla [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) ve [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) özelliklerini kullanabilirsiniz. Bir düğüm, ebeveyni olan son çocuk ise, **NextSibling** özelliğinin değeri *null*'dir. Tersine, bir düğüm ebeveynin ilk çocuğu ise, **PreviousSibling** özelliğinin değeri *null* 'dir.

Aşağıdaki kod örneği, bileşik bir düğümün doğrudan ve dolaylı alt düğümlerini verimli bir şekilde ziyaret etmenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Çocuk ve Ana Düğümlerin Tipli Erişimi

Şu ana kadar, **Node** veya **CompositeNode** temel türlerden birini döndüren özellikleri tartıştık. Ancak bazen belirli bir düğüm sınıfı, örneğin **Run** veya **Paragraph**'e değerleri dönüştürmeniz gerekebilir. Yani Aspose.Words ve DOM'le çalışırken tamamen dönüştürmeden vazgeçemezsiniz.

Kast etme ihtiyacını azaltmak için çoğu Aspose.Words sınıfı güçlü tür erişimi sağlayan özellikler ve koleksiyonlar sağlar. Üç temel tipli erişim deseni vardır:

- Bir üst düğüm **FirstXXX** ve **LastXXX** türlü özelliklerini ortaya çıkarır. Örneğin, **Document** [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) ve [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) özelliklerine sahiptir. Benzer şekilde, **Table** [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow) ve [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow) gibi özellikleri vardır ve diğerleri.
- Bir üst düğüm, [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs) ve diğerleri gibi alt düğümlerin tiplenmiş bir koleksiyonunu ortaya çıkarır.
- Bir alt düğüm onun üstüne türlü erişim sağlar, örneğin [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection) ve diğerleri.

Girdi özellikleri yalnızca bazen genel özelliklere göre daha kolay erişim sağlayan [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) ve [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)'den devralınan yararlı kısayollerdir.

Aşağıdaki kod örneği, belgenin düğümlerine erişmek için tipli özellikleri nasıl kullanacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}

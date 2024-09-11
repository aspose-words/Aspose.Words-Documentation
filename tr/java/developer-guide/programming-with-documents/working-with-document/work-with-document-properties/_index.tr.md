---
title: Document Properties ile çalışın Java
second_title: Aspose.Words için Java
articleTitle: Belge Özellikleriyle Çalışın
linktitle: Belge Özellikleriyle Çalışın
description: "Aspose.Words için Java size belgeniz hakkında bazı yararlı bilgileri depolamanıza izin verir, örneğin API ve Sürüm Numarası veya Yetkili Date, yerleşik veya özel belge özellikleri ile."
type: docs
weight: 10
url: /tr/java/work-with-document-properties/
---

Belge özellikleri belgeniz hakkında bazı faydalı bilgileri depolamanıza imkan verir. Bu özellikler iki gruba ayrılabilir:

Belge başlığı, yazar adı, belge istatistikleri ve diğerleri gibi değerleri içeren sistem veya yerleşik.
Kullanıcı tarafından tanımlanmış veya özel, kullanıcı hem adı hem de değeri tanımlayabildiği ad-değer çiftleri olarak sağlanır.

Bilgi API ve sürüm numarası doğrudan çıktılar belgesine yazılacağı hakkında bilgi sahibi olmak yararlıdır. Örneğin, bir belgeyi PDF'ye dönüştürürken, Aspose.Words "Uygulama" alanını "Aspose.Words" ile doldurur ve "Aspose.Words için YY.M.N" alanını "Java" ile doldurur, burada *YY.M.N*, dönüştürme için kullanılan Aspose.Words'nin sürümüdür. Ayrıntılar için [Generator or Producer Name Included in Output Documents](/words/java/generator-or-producer-name-included-in-output-documents/)'a bakın.

{{% alert color="primary" %}}

Not edin ki, bu bilgileri çıktı belgelerinden değiştirmek veya kaldırmak için **doğrudan gidemiyorum** Aspose.Words kullanacaksınız.

{{% /alert %}}

## Erişim Belge Özellikleri

Aspose.Words 'da belge özelliklerine erişmek için:

[BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) yerleşik özellikleri elde etmek için

Kendi özelliklerini elde etmek için [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) kullanın.

**BuiltInDocumentProperties** ve **CustomDocumentProperties** [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) nesne koleksiyonudur. Bu nesneler ad veya dizin yoluyla indeks özelliğini kullanarak elde edilebilir.

**BuiltInDocumentProperties** ayrıca bir dizi girdi özelliği aracılığıyla belge özelliklerine erişim sağlar ve bu uygun türde değerleri döndürür. **CustomDocumentProperties** sizi bir belgeden belge özelliklerini eklemenize veya kaldırmanıza imkan verir.

The [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) sınıfı bir belgenin özelliğinin adını, değerini ve türünü almanızı sağlar. [Value]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) returns an object, but there is a set of methods allowing you to get the property value converted to a specific type. After you get to know what type the property is, you can use one of the {0} methods, such as {1}[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) ve **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt) uygun türde değeri elde etmek için kullanılır.

Aşağıdaki kod örneği, bir belgedeki yerleşik ve özel tüm özellikleri listelemenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Bu örnekten şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)'tan indirebilirsiniz.

{{% /alert %}}

Microsoft Word'da, "Dosya→ Özellikler" menü kullanarak belge özelliklerine erişebilirsiniz.

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Belge Özelliklerini Ekle veya Kaldır

Kurulumlu belge özelliklerini Aspose.Words kullanarak ekleyemez veya kaldırabilirsiniz. Onların değerlerini sadece değiştirebilir veya güncelleyebilirsiniz.

Özel belge özelliklerini Aspose.Words ile eklemek için, yeni özelliğin adını ve uygun türdeki değeri geçirerek [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) yöntemini kullanın. Yöntem, oluşturulan yeni **DocumentProperty** nesnesini döndürür.

Özel özellikleri kaldırmak için, [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) yöntemini özelliğin adını geçirmek için veya [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) yöntemini dizin üzerinden kaldırmak için kullanın. Ayrıca tüm özellikleri [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) yöntemiyle de kaldırabilirsiniz.

Aşağıdaki kod örneği verilen bir adla bir belgedeki özel bir özelliğin varlığını denetler ve birkaç daha fazla özel belge özelliğini ekler:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)'tan indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, özel bir belge özelliğini nasıl kaldıracağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Yerleşik Belge Özelliklerini Güncelleştir

Aspose.Words belge özelliklerini otomatik olarak güncellemez, Microsoft Word'nin bazı özelliklerle yaptığı gibi ancak statistik yerleşik belge özelliklerini güncellemek için bir yöntem sağlar. Aşağıdaki özellikleri yeniden hesaplamak ve güncellemek için [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount)'i çağırın:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## İçerik ile Bağlantılı Yeni Özel Bir Mülk Oluşturun

Aspose.Words yeni özel belge özelliğini oluşturmak için [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) yöntemini sağlar. Bu özellik, geçersizse [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) yeni oluşturulan özellik nesnesini veya null'u döndürür.

Aşağıdaki kod örneği bir özel özelliğe bağlantı kurmanın nasıl yapılandırıldığını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Belge Değişkenlerini Alın

Belge değişkenlerinin bir koleksiyonunu [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) özelliğini kullanarak alabilirsiniz. Değişken adları ve değerleri dizedir.

Aşağıdaki kod örneği, nasıl belge değişkenlerinin numaralandırılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Bu örnek için şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)'dan indirebilirsiniz.

{{% /alert %}}

## Belgeden Kişisel Bilgileri Kaldırın

Word belgesini diğer insanlarla paylaşmak istiyorsanız yazar adı ve şirket gibi kişisel bilgileri kaldırmak isteyebilirsiniz. Bunu yapmak için, belgeyi kaydetmeden önce yorumlar, değişiklikler ve belge özellikleri üzerindeki tüm kullanıcı bilgilerini kaldırmak için Microsoft Word özelliğini ayarlayan bir bayrak belirterek [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation)'ı kullanın.

{{% alert color="primary" %}}

Bu seçeneği ayarlamak, Aspose.Words sırasında bir belge işlerken aslında kişisel bilgileri kaldırmaz ve yalnızca Microsoft Word davranışını etkiler.

{{% /alert %}}

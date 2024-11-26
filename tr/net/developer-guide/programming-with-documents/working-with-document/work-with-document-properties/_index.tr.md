---
title: C#'te Belge Özellikleriyle Çalışma
second_title: .NET için Aspose.Words
articleTitle: Belge Özellikleriyle Çalışma
linktitle: Belge Özellikleriyle Çalışma
description: ".NET için Aspose.Words, C# kullanarak yerleşik veya özel belge özelliklerinde belgenizle ilgili API ve Sürüm Numarası veya Yetkili Date gibi bazı yararlı bilgilerin depolanmasına olanak tanır."
type: docs
weight: 10
url: /tr/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Belge özellikleri, belgeniz hakkında bazı yararlı bilgilerin saklanmasına olanak tanır. Bu özellikler iki gruba ayrılabilir:

* Belge başlığı, yazar adı, belge istatistikleri ve diğerleri gibi değerleri içeren sistem veya yerleşik.
* Kullanıcı tanımlı veya özel, kullanıcının hem adı hem de değeri tanımlayabildiği ad-değer çiftleri olarak sağlanır.

API ve Sürüm Numarası hakkındaki bilgilerin doğrudan çıktı belgelerine yazıldığını bilmek faydalıdır. Örneğin, bir belgeyi PDF'ye dönüştürdükten sonra Aspose.Words, "Uygulama" alanını "Aspose.Words" ile ve "PDF Yapımcısı" alanını ".NET için Aspose.Words YY.MN" ile doldurur; burada *YY.M.N*, dönüştürme için kullanılan Aspose.Words sürümüdür.. Daha fazla ayrıntı için bkz. [Çıktı Belgelerinde Yer Alan Üretici veya Üretici Adı](/words/tr/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Bu bilgiyi çıktı belgelerinden kaldırmak veya değiştirmek için **yönlendiremez** Aspose.Words'ye ihtiyacınız olduğunu unutmayın.

{{% /alert %}}

## Belge Özelliklerine Erişim

Aspose.Words'teki belge özelliklerine erişmek için şunu kullanın:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/tr/net/aspose.words/document/builtindocumentproperties/) yerleşik özellikleri elde etmek için.

* [CustomDocumentProperties](https://reference.aspose.com/words/tr/net/aspose.words/document/customdocumentproperties/) özel özellikler elde etmek için.

**BuiltInDocumentProperties** ve **CustomDocumentProperties**, [DocumentProperty](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentproperty/) nesnelerinin koleksiyonlarıdır. Bu nesneler indeksleyici özelliği aracılığıyla isme veya indekse göre elde edilebilir.

**BuiltInDocumentProperties** ayrıca, uygun türdeki değerleri döndüren bir dizi girilen özellik aracılığıyla belge özelliklerine erişim sağlar. **CustomDocumentProperties**, bir belgeye belge özellikleri eklemenizi veya belgeden belge özelliklerini kaldırmanızı sağlar.

[DocumentProperty](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentproperty/) sınıfı, bir belge özelliğinin adını, değerini ve türünü almanıza olanak tanır. [Value](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentproperty/value/) bir nesne döndürür, ancak özellik değerinin belirli bir türe dönüştürülmesini sağlayan bir dizi yöntem vardır. Özelliğin türünü öğrendikten sonra uygun türün değerini elde etmek için **DocumentProperty.**[ToString](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentproperty/tostring/) ve **DocumentProperty.**[ToInt](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentproperty/toint/) gibi **DocumentProperty.ToXXX** yöntemlerinden birini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgedeki tüm yerleşik ve özel özelliklerin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)'ten indirebilirsiniz.

{{% /alert %}}

Microsoft Word'te "Dosya → Özellikler" menüsünü kullanarak belge özelliklerine erişebilirsiniz.

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="belge-özellikleri-1.png ile çalış" style="width:400px"/>

## Belge Özellikleri Ekleme veya Kaldırma

Aspose.Words'i kullanarak yerleşik belge özelliklerini ekleyemez veya kaldıramazsınız. Yalnızca değerlerini değiştirebilir veya güncelleyebilirsiniz.

Aspose.Words ile özel belge özellikleri eklemek için, yeni özellik adını ve uygun türün değerini ileterek [Add](https://reference.aspose.com/words/tr/net/aspose.words.properties/customdocumentproperties/add/#add/) yöntemini kullanın. Yöntem, yeni oluşturulan **DocumentProperty** nesnesini döndürür.

Özel özellikleri kaldırmak için, kaldırılacak özellik adını ileterek [Remove](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentpropertycollection/remove/) yöntemini veya özelliği dizine göre kaldırmak için [RemoveAt](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentpropertycollection/remove/at) yöntemini kullanın. [Clear](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentpropertycollection/clear/) yöntemini kullanarak da tüm özellikleri kaldırabilirsiniz.

Aşağıdaki kod örneği, belirli bir ada sahip özel bir özelliğin bir belgede mevcut olup olmadığını kontrol eder ve birkaç özel belge özelliği daha ekler:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, özel bir belge özelliğinin nasıl kaldırılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Yerleşik Belge Özelliklerini Güncelle

Aspose.Words, Microsoft Word'nin bazı özelliklerde yaptığı gibi belge özelliklerini otomatik olarak güncellemez ancak bazı istatistiksel yerleşik belge özelliklerini güncellemek için bir yöntem sağlar. Aşağıdaki özellikleri yeniden hesaplamak ve güncellemek için [UpdateWordCount](https://reference.aspose.com/words/tr/net/aspose.words/document/updatewordcount/#updatewordcount/) yöntemini çağırın:

* [Characters](https://reference.aspose.com/words/tr/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/tr/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/tr/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/tr/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/tr/net/aspose.words.properties/builtindocumentproperties/lines/)

## İçeriğe Bağlı Yeni Bir Özel Özellik Oluşturun

Aspose.Words, içeriğe bağlı yeni bir özel belge özelliği oluşturmak için [AddLinkToContent](https://reference.aspose.com/words/tr/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) yöntemini sağlar. Bu özellik, yeni oluşturulan özellik nesnesini döndürür veya [LinkSource](https://reference.aspose.com/words/tr/net/aspose.words.properties/documentproperty/linksource/) geçersizse null değerini döndürür.

Aşağıdaki kod örneği, özel bir özelliğe bağlantının nasıl yapılandırılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Belge Değişkenlerini Alma

[Variables](https://reference.aspose.com/words/tr/net/aspose.words/document/variables/) özelliğini kullanarak belge değişkenlerinin bir koleksiyonunu alabilirsiniz. Değişken adları ve değerleri dizelerdir.

Aşağıdaki kod örneği, belge değişkenlerinin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Kişisel Bilgileri Belgeden Kaldır

Bir Word belgesini başkalarıyla paylaşmak istiyorsanız yazar adı ve şirketi gibi kişisel bilgileri kaldırmak isteyebilirsiniz. Bunu yapmak için, belgeyi kaydettikten sonra Microsoft Word'nin tüm kullanıcı bilgilerini yorumlardan, revizyonlardan ve belge özelliklerinden kaldıracağını belirten bayrağı ayarlamak üzere [RemovePersonalInformation](https://reference.aspose.com/words/tr/net/aspose.words/document/removepersonalinformation/) özelliğini kullanın.

Aşağıdaki kod örneği kişisel bilgilerin nasıl kaldırılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Bu seçeneğin ayarlanması, Aspose.Words'te bir belgeyi işlerken aslında kişisel bilgileri kaldırmaz ve yalnızca Microsoft Word davranışını etkiler.

{{% /alert %}}

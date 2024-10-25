---
title: C++ içindeki Belge Özellikleriyle Çalışma
second_title: Aspose.Words için C++
articleTitle: Belge Özellikleriyle Çalışma
linktitle: Belge Özellikleriyle Çalışma
description: "Aspose.Words için C++ API ve Sürüm Numarası veya Yetkilendirilme Tarihi gibi belgenizle ilgili bazı yararlı bilgilerin yerleşik veya özel belge özelliklerinde depolanmasına izin verir."
type: docs
weight: 10
url: /tr/cpp/work-with-document-properties/
---

Belge özellikleri, belgenizle ilgili bazı yararlı bilgilerin depolanmasına izin verir. Bu özellikler iki gruba ayrılabilir:

* Belge başlığı, yazar adı, belge istatistikleri ve diğerleri gibi değerleri içeren sistem veya yerleşik.
* Kullanıcı tanımlı veya özel, kullanıcının hem adı hem de değeri tanımlayabileceği ad-değer çiftleri olarak sağlanır.

API ve Sürüm Numarası hakkındaki bilgilerin doğrudan çıktı belgelerine yazıldığını bilmek yararlıdır. Örneğin, bir belgeyi PDF 'e dönüştürdükten sonra Aspose.Words, "Uygulama" alanını "Aspose.Words" ve "PDF Üretici" alanını "ile doldurur.Aspose.Words için C++ YY.M.N", burada *YY.M.N*, dönüşüm için kullanılan Aspose.Words sürümüdür. Daha fazla ayrıntı için bkz. [Çıktı Belgelerinde Yer Alan Üretici veya Üretici Adı](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Bu bilgileri çıktı belgelerinden değiştirmek veya kaldırmak için **cannot direct** Aspose.Words yaptığınızı unutmayın.

{{% /alert %}}

## Belge Özelliklerine Erişin

Aspose.Words içindeki belge özelliklerine erişmek için:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) yerleşik özellikler elde etmek için.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) özel özellikler elde etmek için.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

[DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) sınıfı, bir belge özelliğinin adını, değerini ve türünü almanızı sağlar. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) bir nesne döndürür, ancak özellik değerini belirli bir türe dönüştürmenize izin veren bir dizi yöntem vardır. Özelliğin ne tür olduğunu öğrendikten sonra, uygun türün değerini elde etmek için **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) ve **DocumentProperty.** [ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/) gibi **DocumentProperty.ToXXX** yöntemlerden birini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgedeki tüm yerleşik ve özel özelliklerin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Microsoft Word 'da "Dosya → Özellikler" menüsünü kullanarak belge özelliklerine erişebilirsiniz.

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Belge Özellikleri Ekleme veya Kaldırma

Aspose.Words kullanarak yerleşik belge özellikleri ekleyemez veya kaldıramazsınız. Yalnızca değerlerini değiştirebilir veya güncelleyebilirsiniz.

Aspose.Words ile özel belge özellikleri eklemek için, yeni özellik adını ve uygun türün değerini ileterek [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/) yöntemini kullanın. Yöntem, yeni oluşturulan **DocumentProperty** nesnesini döndürür.

Özel özellikleri kaldırmak için, kaldırılacak özellik adını ileterek [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/) yöntemini veya özelliği dizine göre kaldırmak için [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) yöntemini kullanın. [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/) yöntemini kullanarak tüm özellikleri de kaldırabilirsiniz.

Aşağıdaki kod örneği, bir belgede belirli bir ada sahip özel bir özelliğin bulunup bulunmadığını denetler ve birkaç özel belge özelliği daha ekler:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Aşağıdaki kod örneği, özel bir belge özelliğinin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Yerleşik Belge Özelliklerini Güncelle

Aspose.Words, Microsoft Word'in bazı özelliklerde yaptığı gibi belge özelliklerini otomatik olarak güncellemez, ancak bazı istatistiksel yerleşik belge özelliklerini güncellemek için bir yöntem sağlar. Aşağıdaki özellikleri yeniden hesaplamak ve güncellemek için [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) yöntemini çağırın:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## İçeriğe Bağlı Yeni Bir Özel Özellik Oluşturma

Aspose.Words içeriğe bağlı yeni bir özel belge özelliği oluşturmak için [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) yöntemini sağlar. Bu özellik, yeni oluşturulan özellik nesnesini döndürür veya [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) geçersiz ise null değerini döndürür.

Aşağıdaki kod örneği, özel bir özelliğe bağlantının nasıl yapılandırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Belge Değişkenlerini Al

[Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/) özelliğini kullanarak bir belge değişkenleri koleksiyonu alabilirsiniz. Değişken adları ve değerleri dizelerdir.

Aşağıdaki kod örneği, belge değişkenlerinin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Kişisel Bilgileri Belgeden Kaldırma

Bir Word belgesini başkalarıyla paylaşmak istiyorsanız, yazar adı ve şirket gibi kişisel bilgileri kaldırmak isteyebilirsiniz. Bunu yapmak için, Microsoft Word 'in belgeyi kaydettikten sonra tüm kullanıcı bilgilerini açıklamalardan, düzeltmelerden ve belge özelliklerinden kaldıracağını belirten bayrağı ayarlamak için [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) özelliğini kullanın.

Aşağıdaki kod örneği, kişisel bilgilerin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Bu seçeneğin ayarlanması, bir belgeyi Aspose.Words içinde işlerken kişisel bilgileri gerçekten kaldırmaz ve yalnızca Microsoft Word davranışını etkiler.

{{% /alert %}}

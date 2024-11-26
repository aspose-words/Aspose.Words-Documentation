---
title: Belge Özellikleriyle Çalışma
second_title: Python via .NET için Aspose.Words
articleTitle: Belge Özellikleriyle Çalışma
linktitle: Belge Özellikleriyle Çalışma
description: "Python için Aspose.Words, belgenizle ilgili API ve Sürüm Numarası veya Yetkili Date gibi bazı yararlı bilgilerin yerleşik veya özel belge özelliklerinde saklanmasına olanak tanır."
type: docs
weight: 10
url: /tr/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Belge özellikleri, belgeniz hakkında bazı yararlı bilgilerin saklanmasına olanak tanır. Bu özellikler iki gruba ayrılabilir:

* Belge başlığı, yazar adı, belge istatistikleri ve diğerleri gibi değerleri içeren sistem veya yerleşik.
* Kullanıcı tanımlı veya özel, kullanıcının hem adı hem de değeri tanımlayabildiği ad-değer çiftleri olarak sağlanır.

API ve Sürüm Numarası hakkındaki bilgilerin doğrudan çıktı belgelerine yazıldığını bilmek faydalıdır. Örneğin, bir belgeyi PDF'ye dönüştürdükten sonra Aspose.Words, "Uygulama" alanını "Aspose.Words" ile ve "PDF Yapımcısı" alanını ".NET için Aspose.Words YY.MN" ile doldurur; burada *YY.M.N*, dönüştürme için kullanılan Aspose.Words sürümüdür.. Daha fazla ayrıntı için bkz. [Çıktı Belgelerinde Yer Alan Üretici veya Üretici Adı](/words/tr/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Bu bilgiyi çıktı belgelerinden değiştirmek veya kaldırmak için **yönlendiremez** Aspose.Words'ye ihtiyacınız olduğunu unutmayın.

{{% /alert %}}

## Belge Özelliklerine Erişim

Aspose.Words'teki belge özelliklerine erişmek için şunu kullanın:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) yerleşik özellikleri elde etmek için.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) özel özellikler elde etmek için.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) ve [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/), [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) nesnelerinin koleksiyonlarıdır. Bu nesneler indeksleyici özelliği aracılığıyla isme veya indekse göre elde edilebilir.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) ayrıca, uygun türdeki değerleri döndüren bir dizi girilen özellik aracılığıyla belge özelliklerine erişim sağlar. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/), bir belgeye belge özellikleri eklemenizi veya belgeden belge özelliklerini kaldırmanızı sağlar.

[DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) sınıfı, bir belge özelliğinin adını, değerini ve türünü almanıza olanak tanır. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) bir nesne döndürür, ancak özellik değerinin belirli bir türe dönüştürülmesini sağlayan bir dizi yöntem vardır. Özelliğin türünü öğrendikten sonra uygun türün değerini elde etmek için **DocumentProperty.\_\_str\_\_** ve [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/) gibi **DocumentProperty.to_XXX** yöntemlerinden birini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgedeki tüm yerleşik ve özel özelliklerin nasıl numaralandırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)'ten indirebilirsiniz.

{{% /alert %}}

Microsoft Word'te "Dosya → Özellikler" menüsünü kullanarak belge özelliklerine erişebilirsiniz.

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="belge-özellikleri-1.png ile çalış" style="width:400px"/>

## Belge Özellikleri Ekleme veya Kaldırma

Aspose.Words'i kullanarak yerleşik belge özelliklerini ekleyemez veya kaldıramazsınız. Yalnızca değerlerini değiştirebilir veya güncelleyebilirsiniz.

Aspose.Words ile özel belge özellikleri eklemek için, yeni özellik adını ve uygun türün değerini ileterek [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) yöntemini kullanın. Yöntem yeni oluşturulan [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) nesnesini döndürür.

Özel özellikleri kaldırmak için, kaldırılacak özellik adını ileterek [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) yöntemini veya özelliği dizine göre kaldırmak için [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) yöntemini kullanın. [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) yöntemini kullanarak da tüm özellikleri kaldırabilirsiniz.

Aşağıdaki kod örneği, belirli bir ada sahip özel bir özelliğin bir belgede mevcut olup olmadığını kontrol eder ve birkaç özel belge özelliği daha ekler:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, özel bir belge özelliğinin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Yerleşik Belge Özelliklerini Güncelle

Aspose.Words, Microsoft Word'nin bazı özelliklerde yaptığı gibi belge özelliklerini otomatik olarak güncellemez ancak bazı istatistiksel yerleşik belge özelliklerini güncellemek için bir yöntem sağlar. Aşağıdaki özellikleri yeniden hesaplamak ve güncellemek için [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) yöntemini çağırın:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## İçeriğe Bağlı Yeni Bir Özel Özellik Oluşturun

Aspose.Words, içeriğe bağlı yeni bir özel belge özelliği oluşturmak için [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) yöntemini sağlar. Bu özellik, yeni oluşturulan özellik nesnesini döndürür veya **bağlantı_kaynağı** geçersizse null değerini döndürür.

Aşağıdaki kod örneği, özel bir özelliğe bağlantının nasıl yapılandırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Belge Değişkenlerini Alma

[variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) özelliğini kullanarak belge değişkenlerinin bir koleksiyonunu alabilirsiniz. Değişken adları ve değerleri dizelerdir.

Aşağıdaki kod örneği, belge değişkenlerinin nasıl ekleneceğini ve bunlara nasıl erişileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Kişisel Bilgileri Belgeden Kaldır

Bir Word belgesini başkalarıyla paylaşmak istiyorsanız yazar adı ve şirketi gibi kişisel bilgileri kaldırmak isteyebilirsiniz. Bunu yapmak için, belgeyi kaydettikten sonra Microsoft Word'nin tüm kullanıcı bilgilerini yorumlardan, revizyonlardan ve belge özelliklerinden kaldıracağını belirten bayrağı ayarlamak üzere [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) özelliğini kullanın.

Aşağıdaki kod örneği kişisel bilgilerin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Bu seçeneğin ayarlanması, Aspose.Words'te bir belgeyi işlerken aslında kişisel bilgileri kaldırmaz ve yalnızca Microsoft Word davranışını etkiler.

{{% /alert %}}

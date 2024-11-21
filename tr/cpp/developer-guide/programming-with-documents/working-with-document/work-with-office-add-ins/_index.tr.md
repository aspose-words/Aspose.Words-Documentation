---
title: C++ içindeki Office Eklentileriyle Çalışma
second_title: Aspose.Words için C++
articleTitle: Office Eklentileriyle Çalışma
linktitle: Office Eklentileriyle Çalışma
description: "Aspose.Words için C++ Office Eklentileriyle çalışmak için çeşitli sınıflar sağlar. Web uzantısı aracılığıyla Görev Bölmesi ekleyebilir ve bölme ve uzantı özelliklerini özelleştirebilirsiniz."
type: docs
weight: 50
url: /tr/cpp/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Bazen belgeleri değiştirmek için kod çalıştıran arabirim denetimlerine erişim vermek isteyebilirsiniz. Aspose.Words API, Office Eklentilerini temsil etmek için XML kelime dağarcığını genişleten öğeleri ve öznitelikleri özelleştirmek için çeşitli sınıflar veren `WebExtensions` ad alanını sağlar.

WebExtensions ad alanı şartlı olarak aşağıdakilere ayrılabilir:

* Görev bölmesiyle çalışmak için nesneler
* Web uzantılarıyla çalışmak için nesneler

## Görev Bölmelerini Kullanma

Görev bölmeleri, pencerenin sağ tarafında Microsoft Word içinde görüntülenen arabirim yüzeyleridir. Görev bölmesi, kullanıcıların belgeleri değiştirmek için kod çalıştırabilen arabirim denetimlerine erişmesine olanak tanır.

Örneğin, Aspose.Words API kullanarak bir görev bölmesi eklentisi ekleyebilir ve görünümünü özelleştirebilirsiniz.

## Web Uzantılarını Kullanma

Web Uzantıları, Office uygulamalarının yeteneklerini genişleten ve Office belge içeriğiyle etkileşime giren araçlardır. Web Uzantıları, kullanıcı deneyimini geliştirmek için Office istemcilerine ek işlevler sağlar.

Aspose.Words, [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) ve [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/) sınıflarını kullanarak Görev Bölmesi türünde Web Uzantıları ekleme olanağı sağlar ve ayrıca bölme ve uzantı özelliklerini özelleştirmenize olanak tanır.

Aşağıdaki kod örneği, görev bölmelerinin nasıl oluşturulacağını ve temel özelliklere sahip web uzantısı görev bölmelerine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

Görev bölmesi eklentilerinin listesini görmek için [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/) özelliğini kullanın.

Aşağıdaki kod örneği, böyle bir eklenti listesinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}

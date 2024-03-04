---
title: C#'te Office Eklentileriyle çalışma
second_title: .NET için Aspose.Words
articleTitle: Office Eklentileriyle Çalışma
linktitle: Office Eklentileriyle Çalışma
description: ".NET için Aspose.Words, C# kullanarak Office Eklentileriyle çalışmak için çeşitli sınıflar sağlar. Görev Bölmesini web uzantısı aracılığıyla ekleyebilir ve bölmeyi ve uzantı özelliklerini özelleştirebilirsiniz."
type: docs
weight: 50
url: /tr/net/work-with-office-add-ins/
---

Bazen belgeleri değiştirmek için kod çalıştıran arayüz kontrollerine erişim vermek isteyebilirsiniz. Aspose.Words API, Office Eklentilerini temsil etmek için XML kelime dağarcığını genişleten öğeleri ve nitelikleri özelleştirmek için çeşitli sınıflar sağlayan `WebExtensions` ad alanını sağlar.

WebExtensions ad alanı koşullu olarak aşağıdakilere ayrılabilir:

* Görev bölmesiyle çalışmaya yönelik nesneler
* Web uzantılarıyla çalışmaya yönelik nesneler

## Görev Bölmelerini Kullanma

Görev bölmeleri, Microsoft Word'te pencerenin sağ tarafında görüntülenen arayüz yüzeyleridir. Görev bölmesi, kullanıcıların belgeleri değiştirmek için kod çalıştırabilen arayüz kontrollerine erişmesine olanak tanır.

Örneğin, Aspose.Words API'yi kullanarak bir görev bölmesi eklentisi ekleyebilir ve görünümünü özelleştirebilirsiniz.

## Web Uzantılarını Kullanma

Web Uzantıları, Office uygulamalarının yeteneklerini genişleten ve Office belge içeriğiyle etkileşim kuran araçlardır. Web Uzantıları, kullanıcı deneyimini geliştirmek için Office istemcilerine ek işlevler sağlar.

Aspose.Words, [WebExtension](https://reference.aspose.com/words/tr/net/aspose.words.webextensions/webextension/) ve [TaskPane](https://reference.aspose.com/words/tr/net/aspose.words.webextensions/taskpane/) sınıflarını kullanarak Görev Bölmesi türünde Web Uzantıları ekleme olanağı sağlar ve ayrıca bölme ve uzantı özelliklerini özelleştirmenize de olanak tanır.

Aşağıdaki kod örneği, görev bölmelerinin nasıl oluşturulacağını ve temel özelliklere sahip web uzantısı görev bölmelerine nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Görev bölmesi eklentilerinin listesini görmek için [WebExtensionTaskPanes](https://reference.aspose.com/words/tr/net/aspose.words/document/webextensiontaskpanes/) özelliğini kullanın.

Aşağıdaki kod örneği, böyle bir eklenti listesinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}

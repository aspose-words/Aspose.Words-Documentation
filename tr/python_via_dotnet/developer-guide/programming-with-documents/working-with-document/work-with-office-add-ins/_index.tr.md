---
title: Python'te Office Eklentileriyle çalışma
second_title: Python via .NET için Aspose.Words
articleTitle: Office Eklentileriyle Çalışma
linktitle: Office Eklentileriyle Çalışma
description: "Python via .NET için Aspose.Words, Office Eklentileriyle çalışmak için çeşitli sınıflar sağlar. Görev Bölmesini web uzantısı aracılığıyla ekleyebilir ve bölmeyi ve uzantı özelliklerini özelleştirebilirsiniz."
type: docs
weight: 50
url: /tr/python-net/work-with-office-add-ins/
---

Bazen belgeleri değiştirmek için kod çalıştıran arayüz kontrollerine erişim vermek isteyebilirsiniz. Aspose.Words API, Office Eklentilerini temsil etmek için XML kelime dağarcığını genişleten öğeleri ve nitelikleri özelleştirmek için çeşitli sınıflar sağlayan [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) modülünü sağlar.

WebExtensions ad alanı koşullu olarak aşağıdakilere ayrılabilir:

* Görev bölmesiyle çalışmaya yönelik nesneler
* Web uzantılarıyla çalışmaya yönelik nesneler

## Görev Bölmelerini Kullanma

Görev bölmeleri, Microsoft Word'te pencerenin sağ tarafında görüntülenen arayüz yüzeyleridir. Görev bölmesi, kullanıcıların belgeleri değiştirmek için kod çalıştırabilen arayüz kontrollerine erişmesine olanak tanır.

Örneğin, Aspose.Words API'yi kullanarak bir görev bölmesi eklentisi ekleyebilir ve görünümünü özelleştirebilirsiniz.

## Web Uzantılarını Kullanma

Web Uzantıları, Office uygulamalarının yeteneklerini genişleten ve Office belge içeriğiyle etkileşim kuran araçlardır. Web Uzantıları, kullanıcı deneyimini geliştirmek için Office istemcilerine ek işlevler sağlar.

Aspose.Words, [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) ve [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) sınıflarını kullanarak Görev Bölmesi türünde Web Uzantıları ekleme olanağı sağlar ve ayrıca bölme ve uzantı özelliklerini özelleştirmenize de olanak tanır.

Aşağıdaki kod örneği, görev bölmelerinin nasıl oluşturulacağını ve temel özelliklere sahip web uzantısı görev bölmelerine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Görev bölmesi eklentilerinin listesini görmek için [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/) özelliğini kullanın.

Aşağıdaki kod örneği, böyle bir eklenti listesinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}

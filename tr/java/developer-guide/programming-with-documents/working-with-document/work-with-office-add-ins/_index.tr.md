---
title: Office eklentileri ile Java ile çalışın
second_title: Aspose.Words için Java
articleTitle: Ofis Eklentileri ile Çalışın
linktitle: Ofis Eklentileri ile Çalışın
description: "Aspose.Words için Java çeşitli Office Eklentileri ile çalışmak için sınıflar sağlar. Görev Penceresi'ni ekleyebilir ve bölme özelliklerini ve uzantı özelliklerini özelleştirebilirsiniz."
type: docs
weight: 50
url: /tr/java/work-with-office-add-ins/
---

Bazen, belgeleri değiştirmek için kodu çalıştıran arayüz kontrollerine erişim vermek isteyebilirsiniz. Aspose.Words API 'nin `WebExtensions` ad alanı, öğeleri ve öznitelikleri özelleştirmek için çeşitli sınıflar sağlar ve Office Eklentileri'ni temsil etmek için XML sözlüğünü genişletir.

WebExtensions ad alanı aşağıdaki şekilde koşullu olarak bölünebilir:

- Görev panelinde çalışmak için nesneler
Web uzantıları ile çalışmak için nesneler

## Görev Panolarını Kullanma

Görev panelleri, Microsoft Word 'da pencerenin sağ tarafına yerleştirilmiş arayüz yüzeyleridir. Görev Paneli, kullanıcıların arayüz denetimlerine erişmesine ve belgeleri değiştirmek için kod çalıştırabilmesine olanak tanır.

Örneğin, Aspose.Words 'yi kullanarak API görev penceresini ekleyebilir ve görünümünü özelleştirebilirsiniz.

## Web Uzantılarını Kullanma

Web Uzantıları, Office uygulamalarının yeteneklerini genişleten ve Office belge içeriğiyle etkileşim kuran araçlardır. Web Uzantıları, kullanıcı deneyimini geliştirmek için Office istemcilerine ek işlevsellik sağlar.

Aspose.Words görev çubuğu türünde web uzantılarını eklemek için [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) ve [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) sınıflarına sahip olma yeteneğini sağlar ve ayrıca bölme ve uzantı özelliklerini özelleştirmenize izin verir.

Örnek kod aşağıdaki şekilde web uzantısı görev panellerine temel özelliklerle nasıl görev paneli oluşturma ve ekleme gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Görev bölmesi eklentilerini bir listesini görmek için, [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) özelliğini kullanın.

Aşağıdaki kod örneği böyle bir eklenti listenin nasıl elde edileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}


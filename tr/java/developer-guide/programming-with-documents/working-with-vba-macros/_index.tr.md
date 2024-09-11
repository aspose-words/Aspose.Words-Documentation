---
title: VBA Macro'ları ile Java üzerinde çalışmak
second_title: Aspose.Words için Java
articleTitle: VBA Makrolarıyla Çalışmak
linktitle: VBA Makrolarıyla Çalışmak
description: "VBA projeleri ile çalışmak Java kullanarak."
type: docs
weight: 410
url: /tr/java/working-with-vba-macros/
---

Uygulamalar için (VBA) Visual Basic Microsoft Word için basit ama güçlü bir programlama dili, işlevselliği genişletmek için kullanılabilir. Aspose.Words API, VBA projesi kaynak koduna erişmek için üç sınıf sağlar:

- [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) sınıfı, VBA proje bilgilerine erişimi sağlar
- [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) sınıfı, VBA projesi modüllerinin koleksiyonunu döndürür
- [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) sınıfı, VBA proje modülüne erişim sağlar

## VBA Projesi Oluşturun

Aspose.Words API, belge içinde VbaProject almak veya ayarlamak için [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) özelliğini sağlar.

Aşağıdaki kod örneği, temel özelliklere sahip bir VBA projesi ve VBA modülü oluşturmak için nasıl yapılacağını göstermektedir. Ad ve Türü:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Makroları Oku

Aspose.Words kullanıcılara ayrıca VBA makrolarını okuma yeteneği sağlar.

Aşağıdaki kod örneği, belgeden VBA makroları okumak için nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Makroları Değiştir

Aspose.Words kullanarak kullanıcılar, VBA makrolarını değiştirebilirler.

Aşağıdaki kod örneği, [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) özelliğini kullanarak VBA Makrolarını nasıl değiştireceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## VBA Projesi Klonla

Aspose.Words ile ayrıca VBA projelerini klonlamak mümkündür.

Aşağıdaki kod örneği, var olan projenin bir kopyasını oluşturmak için kullanılan [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) özelliğini kullanarak VBA Proje'nin nasıl klonlanacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Klon VBA Modülü

Eğer gerekirse, VBA modüllerini de kopyalayabilirsin.

Aşağıdaki kod örneği, var olan projenin bir kopyasını oluşturmak için kullanılan [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) özelliğini kullanarak VBA Modülünü nasıl klonlayacağınızı göstermektedir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}

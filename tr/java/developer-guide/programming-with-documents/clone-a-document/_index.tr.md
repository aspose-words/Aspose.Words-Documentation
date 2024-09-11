---
title: Bir Belgeyi Klonla Java''
second_title: Aspose.Words için Java
articleTitle: Bir Belgeyi Klonla
linktitle: Bir Belgeyi Klonla
type: docs
description: "Kopyalama belgeden onun identik bir kopyasını elde etmek. Kopyalamayı yaparken, Java'i kullanarak orijinal belgesindeki düğümler ve özellikler klonlanır."
weight: 70
url: /tr/java/clone-a-document/
---

Bir belgeyi kopyalamak, orijinal bir belgeden tam olarak aynı kopyanın oluşturulması işlemidir ve bu performans iyileştirmeleri sağlar ve potansiyel bellek sızıntılarından kurtarır.

Bu makale, bir belgeyi kopyalamak için ana kullanım örneklerini ve Aspose.Words kullanarak bir belge klonu oluşturmayı açıklayacaktır.

## Klonlama Belgeleri ile İşlemler

Klonlama işlemi, belgeleri oluşturma sürecini daha hızlı hale getirmenizi sağlar çünkü her seferinde bir belgeyi bir dosya'dan yüklemenize ve ayrıştırmanıza gerek kalmaz.

Bir belge klonunu oluşturduktan sonra bunu düzenleyebilir ve ona farklı işlemler uygulayabilirsiniz örneğin onu orijinal belgeyle karşılaştırın, başka bir belgeye ekleyin veya ona ekleyin. Klonlanmış öğeleri veya içeriği başka bir belgeye eklemeden önce de değiştirebilirsiniz.

## Bir Belge Klonu Oluşturma

Aspose.Words size bir dosyayı [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) yöntemiyle kopyalamanızı sağlar ve bunu derin bir kopyalama yapar. Başka bir deyişle, DOM'ün tam bir kopyasını alırsınız. `Clone` yöntemi belgeleri oluşturmayı hızlandırır ve bir belgenin kopyasını almak için sadece tek bir satır kodunuz gerekir.

Klonlama orijinal belgeyle aynı içeriğe sahip yeni bir belge oluşturur ancak her orijinal belgenin benzersiz kopyaları olan [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/) vardır. Düğüm [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) yöntemini kullanarak klon işlemini bir belge düğümüne uygulayabilirsiniz, bu da bileşik belge düğümlerinin alt düğümleri ile olmadan veya onlarla birlikte kopyalanmasını sağlar.

{{% alert color="primary" %}}

Not edin ki, kopyalama yöntemini uygularken tüm belge özellikleri klonlanacaktır.

{{% /alert %}}

Aşağıdaki kod örneği bir belgenin nasıl klonlanacağını ve belgede bir bölüme çoğaltma oluşturmayı gösterir:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}

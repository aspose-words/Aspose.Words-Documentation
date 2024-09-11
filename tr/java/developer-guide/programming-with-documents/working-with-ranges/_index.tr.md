---
title: Java'da Aralıklarla Çalışmak
second_title: Aspose.Words için Java
articleTitle: Aralar ile Çalışmak
linktitle: Aralar ile Çalışmak
description: "Aspose.Words 'daki Aralık özelliğine Giriş` için ` Java '."
type: docs
weight: 130
url: /tr/java/working-with-ranges/
---

{{% alert color="primary" %}}

Eşsiz Aspose.Words içinde bir Aralık, başka bir şekilde ağaç benzeri bir belge modeline "düz bir pencere" "dir.

{{% /alert %}}

Eğer Microsoft Word Otomasyon ile çalıştınız varsa, muhtemelen bir belgenin içeriğini incelemek ve değiştirmek için kullanılan ana araçlarınlerden biri olan `Range` Nesne.Aralığı'nı biliyorsunuzdur.Nesne.Aralığı, belge içeriği ve biçimlendirmesi için bir 'pencere' gibidir.

Aspose.Words ayrıca [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) sınıfına da sahiptir ve benzer şekilde görünmek ve davranmak üzere tasarlanmıştır **Range** Microsoft Word içinde. **Range**'ın herhangi bir belgedeki rastgele bir bölümü kaplayamadığı ve bir **Start** veya **End** olmadığı halde, herhangi bir belge düğümü dahil olmak üzere [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)'un kapsamını içeren tüm düğümlerin aralığını erişebilirsiniz. Başka bir deyişle, her düğüm kendi aralığına sahiptir. **Range** nesnesi, aralığın içinde bulunan metinlere, yer işaretlerine ve form alanlarına erişmenize ve bunları değiştirmenize olanak tanır.

## Sade Metni Alıyor

Kullan [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) özelliğini aralıktaki düz, biçimlendirilmemiş metni almak için.

Aşağıdaki kod örneği bir aralıktan düz, biçimlendirilmemiş bir metin almayı nasıl gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)'dan indirebilirsiniz.

{{% /alert %}}

## Metni Sil

Sınıf `Range` aralıktaki tüm karakterleri silmek için [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete) çağrısı ile izin verir.

Aşağıdaki örnek kod, bir aralıktaki tüm karakterleri nasıl sileceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Örnek dosyanın örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)'dan indirebilirsiniz.

{{% /alert %}}

## 
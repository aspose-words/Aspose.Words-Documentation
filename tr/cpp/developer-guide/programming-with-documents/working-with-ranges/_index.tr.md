---
title: C++ içindeki Aralıklarla Çalışma
second_title: Aspose.Words için C++
articleTitle: Aralıklarla Çalışma
linktitle: Aralıklarla Çalışma
description: "Menzil özelliğine giriş Aspose.Words için C++."
type: docs
weight: 130
url: /tr/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

Aspose.Words 'da bir Aralık, belgenin başka türlü ağaç benzeri bir modeline "düz bir penceredir".

{{% /alert %}}

Microsoft Word Otomasyonla çalıştıysanız, belge içeriğini incelemek ve değiştirmek için ana araçlardan birinin **Range** nesnesi olduğunu biliyorsunuzdur. **Range**, belge içeriğine ve biçimlendirmesine bir "pencere" gibidir.

Aspose.Words ayrıca [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) sınıfına sahiptir ve Microsoft Word 'deki **Range**'e benzer şekilde görünecek ve hareket edecek şekilde tasarlanmıştır. **Range** bir belgenin rastgele bir bölümünü kapsayamasa ve **Start** ve **End** içermese de, [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)'ın kendisi de dahil olmak üzere herhangi bir belge düğümünün kapsadığı aralığa erişebilirsiniz. Başka bir deyişle, her düğümün kendi aralığı vardır. **Range** nesnesi, aralık içindeki metin, yer imleri ve form alanlarına erişmenizi ve bunları değiştirmenizi sağlar.

## Düz Metin Al

Aralığın düz, biçimlendirilmemiş metnini almak için [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) özelliğini kullanın.

Aşağıdaki kod örneği, bir aralığın düz, biçimlendirilmemiş bir metninin nasıl alınacağını gösterir:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Metni Silme

Aralık, [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/) öğesini çağırarak aralığın tüm karakterlerinin silinmesine izin verir.

Aşağıdaki kod örneği, bir aralığın tüm karakterlerinin nasıl silineceğini gösterir:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
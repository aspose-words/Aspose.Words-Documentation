---
title: C#'te Aralıklarla Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Aralıklarla Çalışmak
linktitle: Aralıklarla Çalışmak
description: ".NET için Aspose.Words'teki Aralık özelliğine giriş."
type: docs
weight: 130
url: /tr/net/working-with-ranges/
---

{{% alert color="primary" %}}

Aspose.Words'te Aralık, belgenin ağaç benzeri bir modeline açılan "düz bir penceredir".

{{% /alert %}}

Microsoft Word Automation ile çalıştıysanız muhtemelen belge içeriğini incelemek ve değiştirmek için kullanılan ana araçlardan birinin **Range** nesnesi olduğunu biliyorsunuzdur. **Range**, belge içeriğine ve biçimlendirmesine açılan bir "pencere" gibidir.

Aspose.Words ayrıca [Range](https://reference.aspose.com/words/tr/net/aspose.words/range/) sınıfına sahiptir ve Microsoft Word'deki **Range**'e benzer şekilde görünecek ve hareket edecek şekilde tasarlanmıştır. **Range**, bir belgenin rastgele bir bölümünü kapsayamamasına ve **Start** ve **End**'ye sahip olmamasına rağmen, [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/)'nin kendisi de dahil olmak üzere herhangi bir belge düğümünün kapsadığı aralığa erişebilirsiniz. Başka bir deyişle her düğümün kendi aralığı vardır. **Range** nesnesi, aralık içindeki metinlere, yer imlerine ve form alanlarına erişmenize ve bunları değiştirmenize olanak tanır.

## Düz Metni Al

Aralığın düz, biçimlendirilmemiş metnini almak için [Text](https://reference.aspose.com/words/tr/net/aspose.words/range/text/) özelliğini kullanın.

Aşağıdaki kod örneği, bir aralığın düz, biçimlendirilmemiş metninin nasıl alınacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Metni Sil

Aralık, [Delete](https://reference.aspose.com/words/tr/net/aspose.words/range/delete/)'i çağırarak aralıktaki tüm karakterlerin silinmesine olanak tanır.

Aşağıdaki kod örneği, bir aralıktaki tüm karakterlerin nasıl silineceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}
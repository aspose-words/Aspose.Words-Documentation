---
title: Python'te Aralıklarla Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Aralıklarla Çalışmak
linktitle: Aralıklarla Çalışmak
description: "Python kullanarak bir belgedeki aralıklarla çalışın."
type: docs
weight: 130
url: /tr/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

Aspose.Words'te [Range](https://reference.aspose.com/words/python-net/aspose.words/range/), belgenin ağaç benzeri bir modeline açılan "düz bir penceredir".

{{% /alert %}}

Microsoft Word Automation ile çalıştıysanız muhtemelen belge içeriğini incelemek ve değiştirmek için kullanılan ana araçlardan birinin [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) nesnesi olduğunu biliyorsunuzdur. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/), belge içeriğine ve biçimlendirmesine açılan bir "pencere" gibidir. Aspose.Words ayrıca [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) sınıfına sahiptir ve Microsoft Word'teki **Range**'e benzer şekilde görünecek ve hareket edecek şekilde tasarlanmıştır. **Range**, bir belgenin rastgele bir bölümünü kapsayamamasına ve **Start** ve **End**'ye sahip olmamasına rağmen, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)'nin kendisi de dahil olmak üzere herhangi bir belge düğümünün kapsadığı aralığa erişebilirsiniz. Başka bir deyişle her düğümün kendi aralığı vardır. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) nesnesi, aralık içindeki metinlere, yer imlerine ve form alanlarına erişmenize ve bunları değiştirmenize olanak tanır.

## Düz Metni Al

Aralığın düz, biçimlendirilmemiş metnini almak için [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) özelliğini kullanın.

Aşağıdaki kod örneği, bir aralığın düz, biçimlendirilmemiş metninin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Metni Silme

Aralık, [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)'i çağırarak aralıktaki tüm karakterlerin silinmesine olanak tanır

Aşağıdaki kod örneği, bir aralıktaki tüm karakterlerin nasıl silineceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}
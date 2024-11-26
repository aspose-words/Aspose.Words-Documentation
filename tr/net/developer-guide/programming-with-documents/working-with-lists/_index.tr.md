---
title: C#'te Listelerle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Listelerle Çalışmak
linktitle: Listelerle Çalışmak
description: ".NET için Aspose.Words'teki numaralandırma biçimlendirme özelliğine giriş."
type: docs
weight: 200
url: /tr/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word belgesindeki liste, bir dizi paragraf biçimlendirme özelliğidir. Listeler belgelerde metni yapılandırmak, düzenlemek ve vurgulamak için kullanılabilir. Listeler, okuyucuların önemli noktaları kavramasını ve anlamasını kolaylaştıracak şekilde belgelerdeki verileri düzenlemenin harika bir yoludur.

Her listede en fazla 9 düzey bulunabilir ve sayı stili, başlangıç değeri, girinti, sekme konumu ve diğerleri gibi biçimlendirme özellikleri her düzey için ayrı ayrı tanımlanır.

Aspose.Words'te listelerle çalışmak [Lists](https://reference.aspose.com/words/tr/net/aspose.words.lists/) ad alanıyla temsil edilir. Ancak [List](https://reference.aspose.com/words/tr/net/aspose.words.lists/list/) nesnesi her zaman [ListCollection](https://reference.aspose.com/words/tr/net/aspose.words.lists/listcollection/)'e aittir.

Bu makalede Aspose.Words kullanarak listelerle programlı olarak çalışma anlatılmaktadır.

## Liste Biçimlendirmesini Uygulayarak Listeler Oluşturun

Aspose.Words, liste biçimlendirmesini uygulayarak listelerin kolayca oluşturulmasına olanak tanır. [DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/), bir **ListFormat** nesnesi döndüren [ListFormat](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/listformat/) özelliğini sağlar. Bu nesnenin bir listeyi başlatmak ve bitirmek ve girintiyi artırmak/azaltmak için çeşitli yöntemleri vardır. Microsoft Word'da iki genel liste türü vardır: madde işaretli ve numaralı:

- Madde işaretli bir liste başlatmak için [ApplyBulletDefault](https://reference.aspose.com/words/tr/net/aspose.words.lists/listformat/applybulletdefault/)'i arayın
- Numaralandırılmış bir liste başlatmak için [ApplyNumberDefault](https://reference.aspose.com/words/tr/net/aspose.words.lists/listformat/applynumberdefault/)'i arayın

Madde işareti veya numara ve biçimlendirme, madde işaretli liste biçimlendirmesini durdurmak için [RemoveNumbers](https://reference.aspose.com/words/tr/net/aspose.words.lists/listformat/removenumbers/) çağrılıncaya kadar geçerli paragrafa ve **DocumentBuilder** kullanılarak oluşturulan diğer tüm paragraflara eklenir.

Word belgelerinde listeler en fazla dokuz düzeyden oluşabilir. Her düzey için liste biçimlendirmesi hangi madde işaretinin veya numaranın kullanıldığını, sol girintiyi, madde işareti ile metin arasındaki boşluğu vb. belirtir. Aşağıdaki yöntemler liste düzeyini değiştirir ve yeni düzeyin biçimlendirme özelliklerini uygular:

- Geçerli paragrafın liste düzeyini bir düzey artırmak için [ListIndent](https://reference.aspose.com/words/tr/net/aspose.words.lists/listformat/listindent/)'i arayın
- Geçerli paragrafın liste düzeyini bir düzey azaltmak için [ListOutdent](https://reference.aspose.com/words/tr/net/aspose.words.lists/listformat/listoutdent/)'i arayın

Paragrafın liste düzeyini almak veya ayarlamak için [ListLevelNumber](https://reference.aspose.com/words/tr/net/aspose.words.lists/listformat/listlevelnumber/) özelliğini de kullanabilirsiniz.

{{% alert color="primary" %}}

Liste düzeyleri 0'dan 8'e kadar numaralandırılmıştır.

{{% /alert %}}

Aşağıdaki kod örneği, çok düzeyli bir listenin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Liste Düzeyi İçin Biçimlendirmeyi Belirleme

Liste düzeyindeki nesneler, bir liste oluşturulduğunda otomatik olarak oluşturulur. Bir listenin bireysel düzeylerinin biçimlendirmesini denetlemek için [ListLevel](https://reference.aspose.com/words/tr/net/aspose.words.lists/listlevel/) sınıfının özelliklerini ve yöntemlerini kullanın.

## Her Bölüm için Listeyi Yeniden Başlatın

[IsRestartAtEachSection](https://reference.aspose.com/words/tr/net/aspose.words.lists/list/isrestartateachsection/) özelliğini kullanarak her bölüm için bir listeyi yeniden başlatabilirsiniz. Bu seçeneğin yalnızca RTF, DOC ve DOCX belge formatlarında desteklendiğini unutmayın. Bu seçenek yalnızca OoxmlCompliance'ın Ecma376'dan yüksek olması durumunda DOCX'e yazılacaktır.

Aşağıdaki kod örneği, bir listenin nasıl oluşturulacağını ve her bölüm için nasıl yeniden başlatılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}

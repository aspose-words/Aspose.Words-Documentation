---
title: Python'te Listelerle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Listelerle Çalışmak
linktitle: Listelerle Çalışmak
description: "Python kullanarak bir belgede listeler oluşturun, biçimlendirmeyi belirtin ve yeniden başlatın."
type: docs
weight: 200
url: /tr/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word belgesindeki liste, bir dizi liste biçimlendirme özelliğidir. Listeler, metni biçimlendirmek, düzenlemek ve vurgulamak için belgelerinizde kullanılabilir. Listeler, belgelerdeki verileri düzenlemenin harika bir yoludur ve okuyucuların önemli noktaları anlamasını kolaylaştırır

Her listede en fazla 9 düzey bulunabilir ve sayı stili, başlangıç değeri, girinti, sekme konumu vb. biçimlendirme özellikleri her düzey için ayrı ayrı tanımlanır.

Aspose.Words'te listelerle çalışmak [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) modülü tarafından temsil edilir. Ancak [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) nesnesi her zaman [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) koleksiyonuna aittir.

Bu konu, Aspose.Words kullanarak listelerle programlı olarak nasıl çalışılacağını açıklamaktadır

## Liste Formatını Uygulayarak Liste Oluşturma

Aspose.Words, liste biçimlendirmesini uygulayarak listelerin kolayca oluşturulmasına olanak tanır. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), bir [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) nesnesi döndüren [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) özelliğini sağlar. Bu nesnenin bir listeyi başlatmak ve bitirmek ve girintiyi artırmak/azaltmak için çeşitli yöntemleri vardır. Microsoft Word'da iki genel liste türü vardır: madde işaretli ve numaralı.

- Madde işaretli bir liste başlatmak için [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)'i arayın.
- Numaralandırılmış bir liste başlatmak için [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)'i arayın.

Madde işareti veya numara ve biçimlendirme, madde işaretli liste biçimlendirmesini durdurmak için [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) çağrılıncaya kadar geçerli paragrafa ve [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) kullanılarak oluşturulan diğer tüm paragraflara eklenir.

Word belgelerinde listeler en fazla dokuz düzeyden oluşabilir. Her düzey için liste biçimlendirmesi hangi madde işaretinin veya numaranın kullanıldığını, sol girintiyi, madde işareti ile metin arasındaki boşluğu vb. belirtir. Aşağıdaki yöntemler liste düzeyini değiştirir ve yeni düzeyin biçimlendirme özelliklerini uygular:

- Geçerli paragrafın liste düzeyini bir düzey artırmak için [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)'i arayın
- Geçerli paragrafın liste düzeyini bir düzey azaltmak için [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)'i arayın

Yöntemler liste düzeyini değiştirir ve yeni düzeyin biçimlendirme özelliklerini uygular.

{{% alert color="primary" %}}

Paragrafın liste düzeyini almak veya ayarlamak için [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) özelliğini de kullanabilirsiniz. Liste düzeyleri 0'dan 8'e kadar numaralandırılmıştır.

{{% /alert %}}

Aşağıdaki örnekte çok düzeyli bir listenin nasıl oluşturulacağı gösterilmektedir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Liste Düzeyi İçin Biçimlendirmeyi Belirleme

Liste düzeyindeki nesneler, bir liste oluşturulduğunda otomatik olarak oluşturulur. Bir listenin bireysel düzeylerinin biçimlendirmesini denetlemek için [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) sınıfının özelliklerini ve yöntemlerini kullanın.

## Her Bölüm için Listeyi Yeniden Başlatın

[is_restart_at_each_section özelliği](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) özelliğini kullanarak her bölüm için bir listeyi yeniden başlatabilirsiniz. Bu seçeneğin yalnızca RTF, DOC ve DOCX belge formatlarında desteklendiğini unutmayın. Bu seçenek yalnızca OoxmlCompliance'ın Ecma376'dan yüksek olması durumunda DOCX'e yazılacaktır.

Aşağıdaki kod örneği, bir listenin nasıl oluşturulacağını ve her bölüm için nasıl yeniden başlatılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}

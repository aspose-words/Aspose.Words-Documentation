---
title: C++ içindeki Listelerle Çalışma
second_title: Aspose.Words için C++
articleTitle: Listelerle Çalışma
linktitle: Listelerle Çalışma
description: "Numaralandırma biçimlendirme özelliğine giriş Aspose.Words için C++."
type: docs
weight: 200
url: /tr/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Microsoft Word belgesindeki liste, liste biçimlendirme özellikleri kümesidir. Listeler belgelerinizde metni biçimlendirmek, düzenlemek ve vurgulamak için kullanılabilir. Listeler, belgelerdeki verileri düzenlemenin harika bir yoludur ve okuyucuların kilit noktaları anlamasını kolaylaştırır.

Her liste 9 seviyesine kadar olabilir ve sayı stili, başlangıç değeri, girinti, sekme konumu vb. Biçimlendirme özellikleri her seviye için ayrı ayrı tanımlanır.

Aspose.Words'te listelerle çalışmak [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/) ad alanıyla temsil edilir. Ancak, [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) nesnesi her zaman [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/) koleksiyonuna aittir.

Bu konu, Aspose.Words kullanarak listelerle programlı olarak nasıl çalışılacağını açıklamaktadır.

## Liste Düzeyi için Biçimlendirme Belirtme

Liste düzeyinde nesneler, bir liste oluşturulduğunda otomatik olarak oluşturulur. Bir listenin tek tek düzeylerinin biçimlendirmesini denetlemek için [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) sınıfının özelliklerini ve yöntemlerini kullanın.

## Her Bölüm için Listeyi Yeniden Başlat

[IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/) özelliğini kullanarak her bölüm için bir listeyi yeniden başlatabilirsiniz. Bu seçeneğin yalnızca RTF, DOC ve DOCX belge biçimlerinde desteklendiğini unutmayın. Bu seçenek, yalnızca OoxmlCompliance Ecma376'dan yüksekse DOCX'ye yazılır.

Aşağıdaki kod örneği, her bölüm için bir listenin nasıl oluşturulacağını ve yeniden başlatılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}

---
title: Basit Mail Merge Operasyon C++
second_title: Aspose.Words için C++
articleTitle: Basit Mail Merge Operasyon
linktitle: Basit Mail Merge Operasyon
type: docs
description: "Basit bir mail merge doldurmak için kullanılır mail merge şablonunuzun içindeki veri kaynağınızdan gerekli verileri içeren alanlar - klasiğe benzer mail merge içinde Microsoft Word. Şablonunuza bir veya daha fazla birleştirme alanı ekleyin ve ardından basit olanı yürütün mail merge operasyon."
keywords: "how to execute mail merge c++"
weight: 10
url: /tr/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Basit bir mail merge doldurmak için kullanılır mail merge şablonunuzun içindeki veri kaynağınızdan gerekli verileri içeren alanlar (tek tablo gösterimi). Bu yüzden klasiğe benzer mail merge içinde Microsoft Word.

Şablonunuza bir veya daha fazla birleştirme alanı ekleyebilir ve ardından basit olanı yürütebilirsiniz mail merge operasyon. Şablonunuzda herhangi bir birleştirme bölgesi yoksa bunu kullanmanız önerilir.

Bu türü kullanmanın temel sınırlaması, veri kaynağındaki her kayıt için tüm belge içeriğinin tekrarlanacağıdır.

## Basit Bir Şekilde Nasıl Yürütülür Mail Merge Operasyon

Şablonunuz hazır olduğunda, basit olanı gerçekleştirmeye başlayabilirsiniz mail merge operasyon. Aspose.Words basit bir yürütme yapmanızı sağlar mail merge farklı kullanarak işlem [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) çeşitli veri nesnelerini veri kaynağı olarak kabul eden yöntemler.

Aşağıdaki kod örneği, basit bir kodun nasıl çalıştırılacağını gösterir. mail merge aşağıdakilerden birini kullanarak işlem [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) yöntem:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Basit çalıştırmadan önce belge arasındaki farkı fark edebilirsiniz mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

Ve basit yürüttükten sonra mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Birden Çok Birleştirilmiş Belge Nasıl Oluşturulur

İçinde Aspose.Words, standart mail merge işlem, yalnızca tek bir belgeyi veri kaynağınızdaki içerikle doldurur. Yani, yürütmek için ihtiyacınız olacak mail merge çıktı olarak birkaç birleştirilmiş belge oluşturmak için birçok kez işlem yapın.

Aşağıdaki kod örneği, bir çalışma sırasında birleştirilmiş birkaç belgenin nasıl oluşturulacağını gösterir. mail merge ile çalışma [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}

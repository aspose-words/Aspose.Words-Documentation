---
title: Basit Mail Merge Operasyon C++
second_title: Aspose.Words için C++
articleTitle: Basit Mail Merge Operasyon
linktitle: Basit Mail Merge Operasyon
type: docs
description: "Basit bir Mail Merge doldurmak için kullanılır Mail Merge şablonunuzun içindeki veri kaynağınızdan gerekli verileri içeren alanlar - klasiğe benzer Mail Merge içinde Microsoft Word. Şablonunuza bir veya daha fazla birleştirme alanı ekleyin ve ardından basit olanı yürütün Mail Merge operasyon."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /tr/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Basit bir Mail Merge doldurmak için kullanılır Mail Merge şablonunuzun içindeki veri kaynağınızdan gerekli verileri içeren alanlar (tek tablo gösterimi). Bu yüzden klasiğe benzer Mail Merge içinde Microsoft Word.

Şablonunuza bir veya daha fazla birleştirme alanı ekleyebilir ve ardından basit olanı yürütebilirsiniz Mail Merge operasyon. Şablonunuzda herhangi bir birleştirme bölgesi yoksa bunu kullanmanız önerilir.

Bu türü kullanmanın temel sınırlaması, veri kaynağındaki her kayıt için tüm belge içeriğinin tekrarlanacağıdır.

## Basit Bir Şekilde Nasıl Yürütülür Mail Merge Operasyon

Şablonunuz hazır olduğunda, basit olanı gerçekleştirmeye başlayabilirsiniz Mail Merge operasyon. Aspose.Words basit bir yürütme yapmanızı sağlar Mail Merge farklı kullanarak işlem [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) çeşitli veri nesnelerini veri kaynağı olarak kabul eden yöntemler.

Aşağıdaki kod örneği, basit bir kodun nasıl çalıştırılacağını gösterir. Mail Merge aşağıdakilerden birini kullanarak işlem [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) yöntem:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Basit çalıştırmadan önce belge arasındaki farkı fark edebilirsiniz mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

Ve basit yürüttükten sonra mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Birden Çok Birleştirilmiş Belge Nasıl Oluşturulur

İçinde Aspose.Words, standart Mail Merge işlem, yalnızca tek bir belgeyi veri kaynağınızdaki içerikle doldurur. Yani, yürütmek için ihtiyacınız olacak Mail Merge çıktı olarak birkaç birleştirilmiş belge oluşturmak için birçok kez işlem yapın.

Aşağıdaki kod örneği, bir çalışma sırasında birleştirilmiş birkaç belgenin nasıl oluşturulacağını gösterir. Mail Merge ile çalışma [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}

---
title: C++ içindeki Metin Belgesiyle Çalışma
second_title: Aspose.Words için C++
articleTitle: Metin Belgesiyle Çalışma
linktitle: Metin Belgesiyle Çalışma
description: "Gelişmiş TXT belge işleme, listeler, BiDi, üstbilgi / altbilgi, C++ kullanarak."
type: docs
weight: 430
url: /tr/cpp/working-with-text-document/
---

Bu makalede, Aspose.Words aracılığıyla bir metin belgesiyle çalışmak için hangi seçeneklerin yararlı olabileceğini öğreneceğiz. Lütfen bunun mevcut seçeneklerin tam bir listesi olmadığını, yalnızca bazılarıyla çalışmanın bir örneği olduğunu unutmayın.

## Çift Yönlü İşaretler Ekleyin

Düz metin biçiminde dışa aktarırken her BiDi çalıştırmadan önce çift yönlü işaretlerin eklenip eklenmeyeceğini belirtmek için [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) özelliğini kullanabilirsiniz. Aspose.Words Unicode Karakter ekler 'RIGHT-TO-LEFT MARK' ( U + 200F) metindeki her iki yönlü Çalıştırmadan önce. Bu seçenek, Düz Metin biçimine dışa aktardığınızda MS Word Dosyası Dönüştürme iletişim kutusundaki "Çift yönlü işaretler ekle" seçeneğine karşılık gelir. Diyalogda yalnızca MS Kelimesine Arapça veya İbranice düzenleme dillerinden herhangi biri eklendiğinde göründüğünü unutmayın.

Aşağıdaki kod örneği, **AddBidiMarks** özelliğinin nasıl kullanılacağını gösterir. Bu özelliğin varsayılan değeri *false*'dir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Yükleme Sırasında Liste Öğelerini Tanıma TXT

Aspose.Words bir metin dosyasının liste öğesini belge nesne modelinde liste numarası veya düz metin olarak içe aktarabilir. [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) özelliği, bir belge düz metin biçiminden içe aktarıldığında numaralandırılmış liste öğelerinin nasıl tanınacağını belirlemenizi sağlar:

* Bu seçenek *true* olarak ayarlanırsa, boşluklar liste numarası sınırlayıcıları olarak da kullanılır: Arap stili numaralandırma için liste tanıma algoritması (1., 1.1.2.) hem boşlukları hem de nokta (".") sembollerini kullanır.
* Bu seçenek *false* olarak ayarlanırsa, liste numaraları nokta, sağ köşeli ayraç veya madde işareti sembolleriyle (ör. "•", "*", "-" veya "o").

Aşağıdaki kod örneği, bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## TXT Yüklenirken Baştaki ve Sondaki boşluklarla Nasıl Başa Çıkılır

TXT dosyası yüklenirken öndeki ve sondaki boşlukların nasıl işleneceğini kontrol edebilirsiniz. Önde gelen boşluklar kesilebilir, korunabilir veya girintiye dönüştürülebilir ve sondaki boşluklar kesilebilir veya korunabilir.

Aşağıdaki kod örneği, TXT dosyasını içe aktarırken baştaki ve sondaki boşlukların nasıl kırpılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## TXT Çıktısında Üstbilgi ve Altbilgiyi Dışa Aktar

Çıktı TXT belgesinde üstbilgi ve altbilgiyi dışa aktarmak istiyorsanız, [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/) özelliğini kullanabilirsiniz. Bu özellik, üstbilgilerin ve altbilgilerin düz metin biçimine dışa aktarılma şeklini belirtir.

Aşağıdaki kod örneği, üstbilgileri ve altbilgileri düz metin biçimine nasıl dışa aktaracağınızı gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## TXT Çıktısında Liste Girintisini Dışa Aktar

Aspose.Words düz metin biçimine dışa aktarılırken liste düzeylerinin nasıl girintili olduğunu belirtmeye izin veren [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) sınıfını tanıttı. [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/) ile çalışırken, liste düzeylerini girintilemek için kullanılacak karakteri belirtmek ve bir liste düzeyi başına girinti olarak kaç karakterin kullanılacağını belirtmek için [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) özelliği sağlanır.

Karakter özelliği için varsayılan değer, girinti olmadığını belirten '\0' dir. Count özelliği için varsayılan değer 0 'dir, bu da girinti olmadığı anlamına gelir.

### Sekme Karakterini Kullanma

Aşağıdaki kod örneği, sekme karakterlerini kullanarak liste düzeylerinin nasıl dışa aktarılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Boşluk Karakterini Kullanma

Aşağıdaki kod örneği, boşluk karakterlerini kullanarak liste düzeylerinin nasıl dışa aktarılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Varsayılan Girintiyi Kullanma

Aşağıdaki kod örneği, varsayılan girintiyi kullanarak liste düzeylerinin nasıl dışa aktarılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}

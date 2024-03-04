---
title: C#'te Metin Belgesiyle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Metin Belgesiyle Çalışmak
linktitle: Metin Belgesiyle Çalışmak
description: "C# kullanarak gelişmiş TXT belge işleme, listeler, BiDi, üstbilgi/altbilgi."
type: docs
weight: 430
url: /tr/net/working-with-text-document/
---

Bu yazıda Aspose.Words aracılığıyla bir metin belgesiyle çalışmak için hangi seçeneklerin yararlı olabileceğini öğreneceğiz. Lütfen bunun mevcut seçeneklerin tam bir listesi olmadığını, yalnızca bazılarıyla çalışmanın bir örneği olduğunu unutmayın.

## Çift Yönlü İşaretler Ekle

Düz metin biçiminde dışa aktarırken her BiDi çalıştırmadan önce çift yönlü işaretlerin eklenip eklenmeyeceğini belirlemek için [AddBidiMarks](https://reference.aspose.com/words/tr/net/aspose.words.saving/txtsaveoptions/addbidimarks/) özelliğini kullanabilirsiniz. Aspose.Words, metindeki her çift yönlü Çalıştırma'dan önce 'SAĞDAN SOLA İŞARETİ' (U+200F) Unicode Karakterini ekler. Bu seçenek, Düz Metin formatına dışa aktardığınızda MS Word Dosya Dönüştürme iletişim kutusundaki "Çift yönlü işaretler ekle" seçeneğine karşılık gelir. Yalnızca Arapça veya İbranice düzenleme dillerinden herhangi birinin MS Word'e eklenmesi durumunda diyalogda görüneceğini unutmayın.

Aşağıdaki kod örneği **AddBidiMarks** özelliğinin nasıl kullanılacağını gösterir. Bu özelliğin varsayılan değeri *false*'dir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## TXT Yükleme Sırasında Liste Öğelerini Tanı

Aspose.Words, bir metin dosyasının liste öğesini, belge nesne modelinde liste numaraları veya düz metin olarak içe aktarabilir. [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/tr/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) özelliği, bir belge düz metin formatından içe aktarıldığında numaralı liste öğelerinin nasıl tanınacağını belirtmenize olanak tanır:

* Bu seçenek *true* olarak ayarlanırsa boşluklar aynı zamanda liste numarası sınırlayıcıları olarak da kullanılır: Arapça stil numaralandırma için liste tanıma algoritması (1., 1.1.2.) hem boşlukları hem de nokta (".") sembollerini kullanır.

* Bu seçenek *false* olarak ayarlanırsa, liste numaraları nokta, sağ köşeli parantez veya madde işareti sembolleriyle ("•", "*", "-" veya "o" gibi) bittiği zaman, liste tanıma algoritması liste paragraflarını algılar.

Aşağıdaki kod örneği bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## TXT Yükleme Sırasında Öndeki ve Sondaki Boşlukları İşleyin

TXT dosyası yüklenirken baştaki ve sondaki boşlukların işlenme şeklini kontrol edebilirsiniz. Öndeki boşluklar kesilebilir, korunabilir veya girintiye dönüştürülebilir ve arkadaki boşluklar kesilebilir veya korunabilir.

Aşağıdaki kod örneği, TXT dosyasını içe aktarırken öndeki ve sondaki boşlukların nasıl kırpılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Belge Metin Yönünü Algıla

Aspose.Words, belgedeki metin yönünü (RTL/LTR) algılamak için [TxtLoadOptions](https://reference.aspose.com/words/tr/net/aspose.words.loading/txtloadoptions/) sınıfında [DocumentDirection](https://reference.aspose.com/words/tr/net/aspose.words.loading/txtloadoptions/documentdirection/) özelliğini sağlar. Bu özellik, [DocumentDirection](https://reference.aspose.com/words/tr/net/aspose.words.loading/documentdirection/) numaralandırmasında sağlanan belge metni yönlerini ayarlar veya alır. Varsayılan değer *right*'a bırakılmıştır.

Aşağıdaki kod örneği, TXT dosyasını içe aktarırken belgenin metin yönünün nasıl algılanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## TXT Çıkışında Üstbilgi ve Altbilgiyi Dışa Aktarma

Çıkış TXT belgesinde üstbilgi ve altbilgiyi dışa aktarmak istiyorsanız [ExportHeadersFootersMode](https://reference.aspose.com/words/tr/net/aspose.words.saving/exportheadersfootersmode/) özelliğini kullanabilirsiniz. Bu özellik, üstbilgilerin ve altbilgilerin düz metin biçimine nasıl aktarılacağını belirtir.

Aşağıdaki kod örneği, üstbilgilerin ve altbilgilerin düz metin biçimine nasıl aktarılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Çıkış TXT'sinde Liste Girintisini Dışa Aktarma

Aspose.Words, düz metin biçimine dışa aktarırken liste düzeylerinin nasıl girintili olacağını belirlemeye olanak tanıyan [TxtListIndentation](https://reference.aspose.com/words/tr/net/aspose.words.saving/txtlistindentation/) sınıfını tanıttı. [TxtSaveOption](https://reference.aspose.com/words/tr/net/aspose.words.saving/txtsaveoptions/) ile çalışırken, liste düzeylerini girintilemek için kullanılacak karakteri belirtmek ve bir liste düzeyi başına girinti olarak kaç karakter kullanılacağını belirten sayıyı belirtmek için [ListIndentation](https://reference.aspose.com/words/tr/net/aspose.words.saving/txtsaveoptions/listindentation/) özelliği sağlanır.

Karakter özelliğinin varsayılan değeri '\0' olup girinti olmadığını gösterir. Count özelliği için varsayılan değer 0'dır; bu, girinti olmadığı anlamına gelir.

### Sekme Karakterini Kullanma

Aşağıdaki kod örneği, sekme karakterlerini kullanarak liste düzeylerinin nasıl dışarı aktarılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Boşluk Karakterini Kullanma

Aşağıdaki kod örneği, boşluk karakterlerini kullanarak liste düzeylerinin nasıl dışarı aktarılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Varsayılan Girintiyi Kullanma

Aşağıdaki kod örneği, varsayılan girintiyi kullanarak liste düzeylerinin nasıl dışarı aktarılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}

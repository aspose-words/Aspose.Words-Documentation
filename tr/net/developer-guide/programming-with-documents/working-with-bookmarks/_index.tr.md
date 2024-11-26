---
title: C#'te Yer İşaretleriyle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Yer İşaretleriyle Çalışmak
linktitle: Yer İşaretleriyle Çalışmak
description: "Yer imi kavramlarını ve C# kullanarak programınızda yer iminin nasıl kullanılabileceğini anlama."
type: docs
weight: 180
url: /tr/net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Yer imleri, bir Microsoft Word belgesinde, ileride başvurmak üzere adlandırdığınız ve tanımladığınız konumları veya parçaları tanımlar. Örneğin, daha sonra düzeltmek istediğiniz metni tanımlamak için yer imini kullanabilirsiniz. Metni bulmak için belgeyi kaydırmak yerine Yer İşareti iletişim kutusunu kullanarak metne gidebilirsiniz.

Aspose.Words kullanarak yer imleriyle gerçekleştirebileceğiniz işlemler, Microsoft Word kullanarak gerçekleştirebileceğiniz işlemlerle aynıdır. Yeni bir yer imi ekleyebilir, silebilir, bir yer imine taşıyabilir, bir yer imi adı alabilir veya ayarlayabilir, içindeki metni alabilir veya ayarlayabilirsiniz.

## Yer İşareti Ekle

Sırasıyla başlangıcını ve bitişini işaretleyerek bir yer imi oluşturmak için [StartBookmark](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/startbookmark/) ve [EndBookmark](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/endbookmark/)'yi kullanın. Her iki yönteme de aynı yer imi adını aktarmayı unutmayın. Bir belgedeki yer imleri herhangi bir aralıkla örtüşebilir ve yayılabilir. Kötü biçimlendirilmiş yer imleri veya yinelenen adlara sahip yer imleri, belge kaydedildiğinde göz ardı edilecektir.

{{% alert color="primary" %}}

Yer imlerindeki tüm beyaz boşlukların yerini alt çizgiler aldı. DOCX veya DOC gibi Word formatlarındaki yer imlerinde beyaz boşluklar bulunamayacağından bu kısıtlama Microsoft Word formatlarından kaynaklanmaktadır. Ancak PDF bu tür yer imlerine izin verir. Artık PDF veya XPS ana hatlarında yer imleri kullanmanız gerekiyorsa bunları beyaz boşluklarla kullanabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, yeni bir yer işaretinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Yer İşaretlerini Alın

Bazen yer imleri arasında geçiş yapmak veya başka amaçlar için bir yer imi koleksiyonu edinmek gerekebilir. Bu düğümde bulunan belgenin bir kısmını temsil eden bir [Range](https://reference.aspose.com/words/tr/net/aspose.words/range/) nesnesi döndüren herhangi bir belge düğümü tarafından sunulan [Node.Range](https://reference.aspose.com/words/tr/net/aspose.words/node/range/) özelliğini kullanın. Bir [BookmarkCollection](https://reference.aspose.com/words/tr/net/aspose.words/bookmarkcollection/) almak için bu nesneyi kullanın ve ardından belirli bir yer işaretini almak için koleksiyon dizin oluşturucuyu kullanın.

Aşağıdaki kod örneği, yer işareti koleksiyonundan yer işaretlerinin nasıl alınacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx)'ten indirebilirsiniz.

{{% /alert %}}


Aşağıdaki kod örneği, yer işareti adının ve metninin nasıl alınacağını veya ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir tabloya nasıl yer işareti koyulacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Bir yer iminin adını belgede zaten mevcut olan bir adla değiştirirseniz hiçbir hata oluşturulmayacak ve belgeyi kaydettiğinizde yalnızca ilk yer imi saklanacaktır.

Belgedeki bazı yer imlerinin form alanlarına atandığını unutmayın. Böyle bir yer imine gitmek ve oraya metin eklemek, metni form alanı koduna ekler. Bu, form alanını geçersiz kılmasa da, eklenen metin alan kodunun bir parçası haline geldiğinden görünmeyecektir.

Aşağıdaki kod örneği, yer imlerine eklenen tablonun sütunlarına nasıl erişileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Bir Yer İmine Taşı

Bir yer imine zengin içerik (yalnızca düz metin değil) eklemeniz gerekiyorsa, imleci yer imine taşımak için [MoveToBookmark](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/movetobookmark/)'i, ardından içerik eklemek için [DocumentBuilder's](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) yöntemlerini ve özelliklerini kullanmalısınız.

## Göster Yer İşareti İçeriğini Gizle

Yer İminin tamamı (*yer imi eklenen içerik dahil*), Aspose.Words kullanılarak `IF` alanının Gerçek kısmı içinde kapsüllenebilir. `IF` alanı ifadede (*İşleticinin Solunda*) iç içe bir Birleştirme Alanı içerecek şekilde olabilir ve Birleştirme Alanının değerine bağlı olarak `IF` alanı Word Belgesindeki Yer İşaretinin içeriğini gösterir veya gizler.

Aşağıdaki kod örneği, yer işaretlerinin nasıl gösterileceğini/gizleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}

---
title: C++ içindeki yer imleriyle Çalışma
second_title: Aspose.Words için C++
articleTitle: Yer imleriyle Çalışma
linktitle: Yer imleriyle Çalışma
description: "Yer imi kavramlarını ve yer iminin C++ kullanarak programınızda nasıl kullanılabileceğini anlama."
type: docs
weight: 180
url: /tr/cpp/working-with-bookmarks/
---

Yer imleri, ileride başvurmak üzere adlandırdığınız ve tanımladığınız konumları veya parçaları Microsoft Word belgesinde tanımlar. Örneğin, daha sonra gözden geçirmek istediğiniz metni tanımlamak için bir yer imi kullanabilirsiniz. Metni bulmak için belgede gezinmek yerine, Yer İmi iletişim kutusunu kullanarak belgeye gidebilirsiniz.

Aspose.Words kullanılarak yer imleriyle gerçekleştirilebilecek eylemler, Microsoft Word kullanılarak gerçekleştirebileceğinizle aynıdır. Yeni bir yer imi ekleyebilir, silebilir, bir yer imine gidebilir, bir yer imi adı alabilir veya ayarlayabilir, içine alınmış metni alabilir veya ayarlayabilirsiniz. Aspose.Words ile, yer imine bazı veriler eklemek veya içeriğine özel biçimlendirme uygulamak için raporlardaki veya belgelerdeki yer imlerini de kullanabilirsiniz. Belgenizdeki belirli bir konumdan metin almak için yer imlerini de kullanabilirsiniz.

## Yer imi Ekleme

Sırasıyla başlangıcını ve sonunu işaretleyerek bir yer imi oluşturmak için [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) ve [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) kullanın. Her iki yönteme de aynı yer imi adını iletmeyi unutmayın. Bir belgedeki yer imleri üst üste gelebilir ve herhangi bir aralığı kapsayabilir. Belge kaydedildiğinde kötü biçimlendirilmiş yer imleri veya yinelenen adlara sahip yer imleri göz ardı edilir.

Aşağıdaki kod örneği, yeni bir yer iminin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Yer imlerini Edinme

Bazen yer imleri arasında yinelemek veya başka amaçlar için bir yer imi koleksiyonu elde etmek gerekir. Belgenin bu düğümde bulunan bölümünü temsil eden bir [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) nesnesi döndüren herhangi bir belge düğümü tarafından gösterilen [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) özelliğini kullanın. Bir [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) almak için bu nesneyi kullanın ve ardından belirli bir yer işareti almak için koleksiyon dizinleyicisini kullanın.

Aşağıdaki kod örneği, bir yer imi koleksiyonundan yer imlerinin nasıl elde edileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Aşağıdaki kod örneği, bir yer imi adının ve metninin nasıl alınacağını veya ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Aşağıdaki kod örneği, bir tabloya nasıl yer işareti koyulacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Yer iminin adını belgede zaten var olan bir adla değiştirirseniz, hata oluşmaz ve belgeyi kaydettiğinizde yalnızca ilk yer imi saklanır.

{{% alert color="primary" %}}

Belgedeki bazı yer imlerinin form alanlarına atandığını unutmayın. Böyle bir yer imine geçmek ve oraya metin eklemek, metni form alanı koduna ekler. Bu, form alanını geçersiz kılmayacak olsa da, eklenen metin alan kodunun bir parçası haline geldiği için görünmez.

{{% /alert %}}

## Bir yer imine Gitme

Bir yer imine zengin içerik (yalnızca düz metin değil) eklemeniz gerekiyorsa, imleci yer imine taşımak için [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) ve ardından içerik eklemek için [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) yöntemlerini ve özelliklerini kullanmalısınız.

## Yer imi içeriğini Gizle'yi Göster

Tüm yer imi (*including the bookmarked content*), Aspose.Words kullanılarak `IF` alanının Gerçek kısmı içinde kapsüllenebilir. `IF` alanı, ifadede (*Left of Operator*) iç içe geçmiş bir Birleştirme Alanı içerecek şekilde olabilir ve Birleştirme Alanının değerine bağlı olarak `IF` alanı, Word Belgesindeki Yer İminin içeriğini gösterir veya gizler.

Aşağıdaki kod örneği, yer imlerinin nasıl gösterileceğini / gizleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}

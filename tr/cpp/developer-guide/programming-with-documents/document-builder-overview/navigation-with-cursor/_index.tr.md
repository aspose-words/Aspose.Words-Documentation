---
title: İmleç ile C++ içinde gezinme
second_title: Aspose.Words için C++
articleTitle: İmleç ile Gezinme
linktitle: İmleç ile Gezinme
description: "C++ kullanarak bir belgedeki paragraf, yer imi veya belirli bir karakter gibi farklı düğümler arasında gezinin."
type: docs
weight: 10
url: /tr/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Bir belgeyle çalışırken, kısa veya uzun olsa bile, belgenizde gezinmeniz gerekir. Sanal imleçle gezinme, bir belgedeki farklı düğümler arasında gezinme yeteneğini temsil eder.

Kısa bir belgede, ekleme noktasını klavyenin ok tuşlarını kullanarak veya ekleme noktasını istediğiniz yere bulmak için fareyi tıklatarak bile taşıyabildiğiniz için belgede dolaşmak basittir. Ancak çok sayıda sayfası olan büyük bir belgeye sahip olduğunuzda, bu temel teknikler yetersiz kalacaktır.

Bu makalede, bir belgede nasıl gezinileceği ve sanal bir imleçle belgenin farklı bölümlerine nasıl gidileceği açıklanmaktadır.

## Geçerli İmleç Konumunu Algılama

Belgenizde gezinme işlemine başlamadan önce, o anda seçili olan düğümü almanız gerekir. [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/) özelliğini kullanarak imlecin seçili bir düğümdeki tam konumunu alabilirsiniz. Ayrıca, geçerli düğümü almak yerine, [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) ve [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/) özelliklerini kullanarak seçili paragrafı veya seçili bölümü alabilirsiniz.

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 'i kullanarak gerçekleştirdiğiniz tüm ekleme işlemleri [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/)'dan önce eklenir. Geçerli paragraf boş olduğunda veya imleç paragrafın sonundan hemen önce konumlandırıldığında, **CurrentNode** nullptr değerini döndürür.

## Belgede Gezinme Yöntemleri

Metni düzenlerken, belgenizde nasıl gezineceğinizi ve belgede tam olarak nereye taşınacağınızı bilmek önemlidir. Aspose.Words bir belgede dolaşmanıza ve farklı bölümlerine ve bölümlerine gitmenize olanak tanır - bu, bir Word belgesindeki bir sayfaya veya başlığa kaydırmadan gitmek için Microsoft Word içindeki Gezinti Bölmesinin işlevine benzer.

Ana yöntem, imleç konumunu belgenizdeki belirli bir düğüme taşıyabilmektir, bunu [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/) yöntemini kullanarak başarabilirsiniz.

Aşağıdaki kod örneği, **DocumentBuilder**'ın bir belgedeki farklı düğümlere nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Ancak temel **MoveTo** yönteminin yanı sıra daha spesifik olanlar da var.

### Belgenin Başına veya Sonuna Gitme

[MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) ve [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/) yöntemlerini kullanarak belgenizin başına veya sonuna gidebilirsiniz.

Aşağıdaki kod örneği, imleç konumunun bir belgenin başına veya sonuna nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Yer imleriyle Gezin

Bulmak istediğiniz bir yeri işaretleyebilir ve kolayca tekrar oraya taşıyabilirsiniz. Belgenize istediğiniz kadar yer imi ekleyebilir ve ardından yer imlerini benzersiz adlarla tanımlayarak bunlar arasında gezinebilirsiniz. [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) yöntemini kullanarak bir yer imine geçebilirsiniz.

Aşağıdaki kod örnekleri, imleç konumunun yer imine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Tablo Hücrelerine Git

[MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/) yöntemini kullanarak bir tablo hücresine taşıyabilirsiniz. Bu yöntem, imlecinizi belirli bir tablodaki herhangi bir hücreye yönlendirmenizi sağlar. Ayrıca, imleci **MoveToCell** yöntemi içindeki bir hücrede herhangi bir konuma veya belirtilen karaktere taşımak için bir dizin belirtebilirsiniz.

Aşağıdaki kod örneği, imleç konumunun belirli bir tablo hücresine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Bir Alana Git

[MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/) yöntemini kullanarak belgenizdeki belirli bir alana geçebilirsiniz. Ayrıca, [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) yöntemini kullanarak belirli bir birleştirme alanına geçebilirsiniz.

Aşağıdaki kod örneği, belge oluşturucu imlecinin belirli bir alana nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Üstbilgi veya Altbilgiye Gitme

[MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/) yöntemini kullanarak bir üstbilgi veya altbilginin başına geçebilirsiniz.

Aşağıdaki kod örneği, belge oluşturucu imlecinin belge üstbilgisine veya altbilgisine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Bir Bölüme veya Paragrafa Gitme

[MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) veya [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/) yöntemlerini kullanarak belirli bir bölüme veya paragrafa geçebilirsiniz. Ayrıca, imleci **MoveToParagraph** yöntemi içindeki bir paragrafta herhangi bir konuma veya belirtilen bir karaktere taşımak için bir dizin belirtebilirsiniz.

Aşağıdaki kod örneği, bir belgedeki belirli bir bölüme ve belirli bir paragrafa nasıl geçileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}

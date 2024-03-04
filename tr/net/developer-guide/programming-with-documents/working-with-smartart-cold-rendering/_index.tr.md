---
title: C#'te SmartArt Soğuk İşleme ile Çalışma
second_title: .NET için Aspose.Words
articleTitle: SmartArt Soğuk İşleme ile Çalışma
linktitle: SmartArt Soğuk İşleme ile Çalışma
description: "C# kullanarak SmartArt şekillerine giriş."
type: docs
description: ".NET için Aspose.Words, SmartArt Soğuk İşleme gerçekleştirir; bu, önceden oluşturulmuş SmartArt çiziminin C# kullanılarak eksik veya yanlış olması durumunda SmartArt nesnelerini yerleştirip oluşturduğu anlamına gelir."
weight: 330
url: /tr/net/working-with-smartart-cold-rendering/
---

SmartArt grafikleri, bilgilerin görsel temsilini hızlı ve kolay bir şekilde oluşturmak için kullanılır. Çok sayıda düzen arasından durumunuza en uygun olanı seçmeniz yeterlidir. Bu kullanım kolaylığı SmartArt grafiklerini bazı amaçlar için oldukça popüler hale getiriyor.

Microsoft Word, önceden oluşturulmuş çizimi `SmartArt` nesnesiyle birlikte oluşturur ve kaydeder. Çoğu durumda, önceden oluşturulmuş çizim Aspose.Words tarafından iyi bir şekilde oluşturulur ve hiçbir ek eylem gerekmez. Ancak belge başka uygulamalar tarafından kaydedildiyse önceden oluşturulmuş SmartArt çizimi eksik veya yanlış olabilir. Bu durumda, `SmartArt` nesnesinin kendisi Aspose.Words kullanılarak düzenlenmeli ve oluşturulmalıdır. Bu işleme `SmartArt` Soğuk İşleme adını veriyoruz.

## SmartArt Soğuk İşlemeyi Kullanma

Aspose.Words, önceden oluşturulmuş bir çizimi kullanmanıza veya soğuk işleme gerçekleştirmenize olanak tanır:

* Önceden oluşturulmuş bir çizim mevcutsa Aspose.Words, `SmartArt` nesnesini oluşturmak için bunu kullanır.
* Önceden oluşturulmuş çizim eksikse Aspose.Words, `SmartArt` nesnesini oluşturmak için dolaylı olarak soğuk işleme gerçekleştirir.
* Önceden oluşturulmuş bir çizim mevcut ancak hatalıysa, [UpdateSmartArtDrawing](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/updatesmartartdrawing/) yöntemini çağırarak SmartArt soğuk işlemenin açıkça gerçekleştirilmesi gerekir.

Aşağıdaki kod örneği, belgedeki tüm diyagramlar için çizimlerin nasıl güncelleştirileceğini gösterir:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## Standart SmartArt Düzenleri Desteği

Şu anda yalnızca sınırlı sayıda standart Microsoft Word SmartArt düzeni desteklenmektedir. Ayrıca bu düzenlerden bazıları kısmen desteklenir; bu, diyagramın önemli düğümlerinin ve şekillerinin oluşturulduğu anlamına gelir, ancak Microsoft Word ve Aspose.Words diyagram düzeni arasında farklılıklar olabilir.

Aşağıdaki tablo tamamen ve kısmen desteklenen düzenleri listelemektedir:

|  SmartArt Düzenleri Group |  Tamamen desteklenen düzenler |  Kısmen desteklenen düzenler |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Temel Engelleme Listesi</li><li>Alternatif Altıgenler</li><li>Dikey Madde İşareti Listesi</li><li>Dikey Kutu Listesi</li><li>Değişen Genişlik Listesi</li><li>Yatay Madde İşareti Listesi</li><li>Group'lenmiş Liste</li><li>Dikey Blok Listesi</li><li>Dikey Şerit Listesi</li><li>Dikey Ok Listesi</li><li>Yamuk Listesi</li><li>Tablo Listesi</li><li>Piramit Listesi</li><li>Hedef Listesi</li></ul> |  <ul><li>Sıralı Liste</li><li>Dikey Parantez Listesi</li><li>Sekme Listesi</li><li>Yığılmış Liste</li><li>Dikey Vurgu Listesi</li><li>Dikey Daire Listesi</li></ul> |
|  `Process`  |  <ul><li>Temel Süreç</li><li>Vurgu Süreci</li><li>Sürekli Blok Süreci</li><li>Artan Ok İşlemi</li><li>Yakınsak Metin</li><li>Temel Zaman Çizelgesi</li><li>Temel Chevron Süreci</li><li>Chevron Vurgu Süreci</li><li>Kapalı Chevron Süreci</li><li>Şerit Listesi</li><li>Dikey Süreç</li><li>Kademeli Süreç</li><li>İşlem listesi</li><li>Temel Bükme İşlemi</li><li>Tekrarlanan Bükme İşlemi</li><li>Detaylı Süreç</li><li>Yukarı Ok</li><li>Azalan Süreç</li><li>Dairesel Bükme İşlemi</li></ul> |  <ul><li>Aşamalandırma Süreci</li><li>Adım Aşağı Süreci</li><li>Alternatif Akış</li><li>Artan Çember Süreci</li><li>Pasta Süreci</li><li>Birbirine Bağlı Blok Süreci</li><li>İşlem Okları</li><li>Çember Vurgusu Zaman Çizelgesi</li><li>Çember Süreci</li><li>Alt Adım Süreci</li><li>Aşamalı Süreç</li><li>Rastgele Sonuç Süreci</li><li>Daire Ok Süreci</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Parçalı Döngü</li><li>Altıgen Radyal</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Tablo Hiyerarşisi</li><li>Mimari Düzen</li></ul> |
|  `Relationship`  |  <ul><li>Denge</li><li>Huni</li><li>Vites</li><li>Artı Ve Eksi</li><li>Ok Şeridi</li><li>Dengeleme Okları</li><li>Karşıt Oklar</li><li>İç İçe Hedef</li><li>Temel Hedef</li><li>Temel Pasta</li><li>Temel Venn</li><li>Yığılmış Venn</li><li>Birbirine Bağlı Halka</li></ul> |  <ul><li>Çember İlişkisi</li><li>Karşıt Fikirler</li><li>Denklem</li><li>Dikey Denklem</li><li>Doğrusal Venn</li></ul> |
|  `Matrix`  |  <ul><li>Temel Matris</li><li>Başlıklı Matris</li><li>Izgara Matrisi</li><li>Döngü Matrisi</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Parçalı Piramit</li></ul> |

## Aspose.Words ve Microsoft'de SmartArt İşlemenin Karşılaştırılması

Aşağıdaki tablo, Microsoft Word çıkışıyla karşılaştırıldığında bazı standart düzenlerin Aspose.Words Soğuk İşlemesinin örnek resimlerini göstermektedir:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="sirküler_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="sirküler_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |

---
title: C++ 'de SmartArt Soğuk İşleme ile Çalışma
second_title: Aspose.Words için C++
articleTitle: SmartArt Soğuk İşleme ile Çalışma
linktitle: SmartArt Soğuk İşleme ile Çalışma
type: docs
description: "Aspose.Words için C++ SmartArt Soğuk İşleme gerçekleştirir, yani önceden oluşturulmuş SmartArt çizim eksik veya yanlışsa SmartArt nesneleri yerleştirir ve işler."
weight: 330
url: /tr/cpp/working-with-smartart-cold-rendering/
---

SmartArt grafikler, bilginin görsel bir temsilini hızlı ve kolay bir şekilde oluşturmak için kullanılır. Durumunuza en uygun çok sayıda düzen arasından seçim yapmanız yeterlidir. Bu kullanım kolaylığı, SmartArt grafiklerini bazı amaçlar için oldukça popüler hale getirir.

Microsoft Word önceden oluşturulmuş çizimi `SmartArt` nesnesiyle birlikte oluşturur ve kaydeder. Çoğu durumda, önceden oluşturulmuş çizim Aspose.Words tarafından iyi işlenir ve ek işlem gerekmez. Ancak, belge başka uygulamalar tarafından kaydedilirse, önceden oluşturulmuş SmartArt çizim eksik veya yanlış olabilir. Bu durumda, `SmartArt` nesnesinin kendisi düzenlenmeli ve Aspose.Words kullanılarak oluşturulmalıdır. Bu işleme `SmartArt` Soğuk İşleme diyoruz.

## SmartArt Soğuk İşleme Kullanma

Aspose.Words önceden oluşturulmuş bir çizim kullanmanıza veya soğuk oluşturma gerçekleştirmenize olanak tanır:

* Önceden oluşturulmuş bir çizim varsa, Aspose.Words onu `SmartArt` nesnesini oluşturmak için kullanır.
* Önceden oluşturulmuş çizim eksikse, Aspose.Words `SmartArt` nesnesini işlemek için örtülü olarak soğuk işleme gerçekleştirir.
* Önceden oluşturulmuş bir çizim varsa ancak yanlışsa, [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/) yöntemini çağırarak SmartArt soğuk işlemeyi açıkça gerçekleştirmesi gerekir.

Aşağıdaki kod örneği, belgedeki tüm diyagramların çizimlerinin nasıl güncelleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## Standart SmartArt Mizanpajlar için destek

Şu anda yalnızca sınırlı sayıda standart Microsoft Word SmartArt düzen desteklenmektedir. Ayrıca, bu düzenlerden bazıları kısmen desteklenir, yani diyagramın önemli düğümleri ve şekilleri oluşturulur, ancak Microsoft Word ile Aspose.Words diyagram düzeni arasında farklılıklar olabilir.

Aşağıdaki tablo, tamamen ve kısmen desteklenen düzenleri listeler:

| SmartArt Düzen Grubu | Tamamen desteklenen düzenler | Kısmen desteklenen düzenler |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Temel Blok Listesi</li><li>Alternatif Altıgenler</li><li>Dikey Madde İşareti Listesi</li><li>Dikey Kutu Listesi</li><li>Değişen Genişlik Listesi</li><li>Yatay Madde İşareti Listesi</li><li>Gruplandırılmış Liste</li><li>Dikey Blok Listesi</li><li>Dikey Şerit Listesi</li><li>Dikey Ok Listesi</li><li>Yamuk Listesi</li><li>Tablo Listesi</li><li>Piramit Listesi</li><li>Hedef Listesi</li></ul> | <ul><li>Sıralı Liste</li><li>Dikey Parantez Listesi</li><li>Sekme Listesi</li><li>Yığılmış Liste</li><li>Dikey Vurgu Listesi</li><li>Dikey Daire Listesi</li></ul> |
| `Process` | <ul><li>Temel Süreç</li><li>Vurgu Süreci</li><li>Sürekli Blok Süreci</li><li>Ok Sürecini Artırma</li><li>Metni Yakınsama</li><li>Temel Zaman Çizelgesi</li><li>Temel Şerit İşlemi</li><li>Chevron Vurgu Süreci</li><li>Kapalı Şerit İşlemi</li><li>Şerit Listesi</li><li>Dikey İşlem</li><li>Kademeli Süreç</li><li>İşlem Listesi</li><li>Temel Bükme İşlemi</li><li>Tekrarlanan Bükme İşlemi</li><li>Detaylı Süreç</li><li>Yukarı Ok</li><li>Azalan Süreç</li><li>Dairesel Bükme İşlemi</li></ul> | <ul><li>Süreci Hızlandırın</li><li>Aşağı Adım Süreci</li><li>Alternatif Akış</li><li>Çember Sürecini Artırma</li><li>Pie İşlem</li><li>Birbirine Bağlı Blok Süreci</li><li>İşlem Okları</li><li>Daire Vurgulu Zaman Çizelgesi</li><li>Çember Süreci</li><li>Alt Adım Süreci</li><li>Aşamalı Süreç</li><li>Rastgele Sonuç Süreci</li><li>Daire Ok İşlemi</li></ul> |
| `Cycle` |  | <ul><li>Bölümlenmiş Döngü</li><li>Altıgen Radyal</li></ul> |
| `Hierarchy` |  | <ul><li>Tablo Hiyerarşisi</li><li>Mimari Düzen</li></ul> |
| `Relationship` | <ul><li>Denge</li><li>Huni</li><li>Dişli</li><li>Artı Ve Eksi</li><li>Ok Şerit</li><li>Denge Okları</li><li>Karşıt Oklar</li><li>İç İçe Geçmiş Hedef</li><li>Temel Hedef</li><li>Temel Pie</li><li>Temel Venn</li><li>Yığılmış Venn</li><li>Birbirine bağlı Halka</li></ul> | <ul><li>Çember ilişkisi</li><li>Karşıt Fikirler</li><li>Denklem</li><li>Dikey Denklem</li><li>Doğrusal Venn</li></ul> |
| `Matrix` | <ul><li>Temel Matris</li><li>Başlıklı Matris</li><li>Izgara Matrisi</li><li>Döngü Matrisi</li></ul> |  |
| `Pyramid` |  | <ul><li>Parçalı Piramit</li></ul> |

## Aspose.Words ve Microsoft 'de SmartArt İşlemenin karşılaştırılması

Aşağıdaki tablo, Microsoft Word çıktısına kıyasla bazı standart mizanpajların Aspose.Words Soğuk İşlenmesinin örnek resimlerini göstermektedir:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |

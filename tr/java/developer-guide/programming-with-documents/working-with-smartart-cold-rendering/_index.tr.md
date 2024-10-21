---
title: SmartArt Cold Rendering ile Çalışmak Java içinde
second_title: Aspose.Words için Java
articleTitle: SmartArt Soğuk Render ile Çalışma
linktitle: SmartArt Soğuk Render ile Çalışma
type: docs
description: "Aspose.Words için Java akıllı Soğuk işleme yapar, bu da ön işlenmiş SmartArt çizimi eksikse veya hatalıysa SmartArt nesneleri düzenler ve oluşturur."
weight: 330
url: /tr/java/working-with-smartart-cold-rendering/
---

SmartArt grafikleri, bilgilere görsel bir gösterim oluşturmak için hızlı ve kolay bir şekilde kullanılır. Sadece sizin durumunuza en uygun olan düzenlerden birini seçersiniz. Bu kolay kullanım, SmartArt grafiklerini bazı amaçlar için oldukça popüler kılar.

Microsoft Word önceden işlenmiş çizimi oluşturur ve `SmartArt` nesnesiyle birlikte kaydeder. Çoğu durumda, önceden işlenmiş çizim Aspose.Words tarafından iyi işlenir ve ek eylemler gerekmez. Ancak, diğer uygulamalar tarafından kaydedilen belge durumunda, önceden işlenmiş SmartArt çizimi eksik olabilir veya hatalı olabilir. Bu durumda, `SmartArt` nesnesinin kendisi düzenlenmeli ve Aspose.Words kullanılarak işlenmelidir. Bu işlemi `SmartArt` soğuk işleme" olarak adlandırıyoruz.

## SmartArt Soğuk Katmanlandırma Kullanımı

Aspose.Words önceden işlenmiş bir çizimi kullanmanıza veya soğuk işleme yapmanıza izin verir:

Önceden işlenmiş bir çizim mevcutsa, Aspose.Words onu `SmartArt` nesnesini oluşturmak için kullanır.
* Önceden işlenmiş çizim eksikse, Aspose.Words implicit olarak soğuk işleme yapar `SmartArt` nesnesini işlemek için.
Eğer bir önceden işlenmiş çizim mevcut olsa da yanlışsa, [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) yöntemini çağırarak SmartArt soğuk yeniden oluşturmayı açıkça gerçekleştirmek gerekir.

Aşağıdaki kod örneği, belgedeki tüm diyagramlar için çizimleri nasıl güncelleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Standart SmartArt Düzeni için destek

Şu anda yalnızca sınırlı sayıda standart Microsoft Word SmartArt düzeni desteklenmektedir. Ayrıca, bu düzenlerden bazıları kısmen desteklenmektedir, yani diyagramın önemli düğümleri ve şekilleri oluşturulur, ancak Microsoft Word ile Aspose.Words arasında diyagram düzeni arasında farklılıklar olabilir.

Aşağıdaki tablo tam ve kısmen desteklenen düzenleri listeler:

| SmartArt Düzeni Group | Tamamen desteklenen düzenler | Kısmen desteklenen düzenler |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Temel Blok Listesi</li><li>Değiştirgen Altıgenler</li><li>Dikey Nokta Listesi</li><li>Dikey Kutular Listesi</li><li>Değişken Genişlik Listesi</li><li>Yatay Nokta Listesi</li><li>Grouped Listesi</li><li>Dikey Blok Listesi</li><li>Dikey Omuz Listesi</li><li>Dikey Ok Listesi</li><li>Trapezoid Listesi</li><li>Tablo Listesi</li><li>Piramit Listesi</li><li>Hedef Listesi</li></ul> | <ul><li>Sıralı Liste</li><li>Dikey Parantez Listesi</li><li>Sekme Listesi</li><li>Yığınlı Liste</li><li>Dikey Vurgu Listesi</li><li>Dikey Çember Listesi</li></ul> |
| `Process` | <ul><li>Temel Süreç</li><li>Vurgu Süreci</li><li>Sürekli Blok Süreci</li><li>Artan Ok Süreci</li><li>Yakınsak Metin</li><li>Temel Zaman Çizelgesi</li><li>Temel Köşe Süreci</li><li>Köşe Vurgusu Süreci</li><li>Kapalı Köşe Süreci</li><li>Köşe Listesi</li><li>Dikey Süreç</li><li>Sıkıştırılmış Süreç</li><li>Süreç Listesi</li><li>Temel Bükme Süreci</li><li>Tekrarlayan Bükme Süreci</li><li>Ayrıntılı Süreç</li><li>Yükseliş Okları</li><li>Düşüş Süreci</li><li>Dairenim Bükme Süreci</li></ul> | <ul><li>Adım Yükseltme Süreci</li><li>Adım İndirme Süreci</li><li>Değişik Akış</li><li>Artan Çember Süreci</li><li>Piye Süreci</li><li>Birleşmiş Blok Süreci</li><li>Süreç Okları</li><li>Çember Vurgulu Zaman Çizelgesi</li><li>Çember Süreci</li><li>Alt Adım Süreci</li><li>Fazalı Süreç</li><li>Rastgele Sonuç Süreci</li><li>Çember Ok Süreci</li></ul> |
| `Cycle` | – | <ul><li>Segmented Cycle</li><li>Hexagonal Radial</li></ul> |
| `Hierarchy` | – | <ul><li>Tablo Hiyerarşisi</li> <li>Mimari Düzen</li></ul> |
| `Relationship` | <ul><li>Denge</li><li>Havane Boru</li><li>Piyasa</li><li>Plus Ve Minus</li><li>Ok Şeridi</li><li>Karşılaştırma Okları</li><li>Karşıt Oklar</li><li>İç içe hedef</li><li>Temel hedef</li><li>Temel pasta</li><li>Temel Venn</li><li>Yığılmış Venn</li><li>Bağlantılı yüzük</li></ul> | <ul><li>Çember İlişki</li> <li>Karşıt Fikirler</li> <li>Denklem</li> <li>Dikey Denklem</li> <li>Doğrusal Venn</li></ul> |
| `Matrix` | <ul><li>Temel Matris</li><li>Başlık matris</li><li>Grid Matris</li><li>Döngü Matris</li></ul> | – |
| `Pyramid` | – | <ul><li>Segmentli Piramit</li></ul> |

## SmartArt Renderlamasının Aspose.Words ve Microsoft karşılaştırması

Aşağıdaki tablo, bazı standart düzenlere karşılaştırılan Aspose.Words soğuk sunumunun örnek resimlerini göstermektedir Microsoft Word çıktı olarak:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |

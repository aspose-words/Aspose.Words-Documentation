---
title: Yazı Tipinin C++ içinde Değiştirildiğini Nasıl Anlayabilirim
second_title: Aspose.Words için C++
articleTitle: Yazı Tipinin Değiştirildiğini Nasıl Anlayabilirim
linktitle: Yazı Tipinin Değiştirildiğini Nasıl Anlayabilirim
description: "Bir belgenin düzeninin neden değiştiğinden veya belirli bir yazı tipinin neden beklendiği gibi görünmediğinden emin değilseniz, yazı tipi değiştirme uyarı mesajları yardımcı olabilir."
type: docs
weight: 13
url: /tr/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Bazen belge düzeninin neden değiştiği veya bazı yazı tiplerinin neden beklendiği gibi görünmediği belirsiz olabilir. Bu gibi durumlarda, IWarningCallback arabirimi tarafından uygulanan yazı tipi değiştirme uyarı mesajları kurtarmaya gelir. [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) uyarı türüne ve standart açıklama metni biçimine sahipler, "Font '<OriginalFont>' bulunamadı. Bunun yerine '<SubstitutionFont>' yazı tipini kullanarak. Sebep: <Reason>", aşağıdaki nedenlerle:

- "belgeden alternatif ad" – [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) ile değiştirmek için
- "fontconfig ikamesi" - yazı tipi yapılandırma kuralına göre değiştirme için
- "tablo ikamesi" – tablo kuralına göre ikame için
- "yazı tipi bilgisi değiştirme" - yazı tipi bilgisi kuralına göre değiştirme için
- "varsayılan yazı tipi değiştirme" - varsayılan yazı tipi kuralına göre değiştirme için
- "ilk kullanılabilir yazı tipi" - ilk kullanılabilir yazı tipiyle değiştirmek için

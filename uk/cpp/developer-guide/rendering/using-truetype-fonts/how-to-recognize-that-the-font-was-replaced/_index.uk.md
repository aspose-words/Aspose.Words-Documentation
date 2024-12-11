﻿---
title: Як розпізнати, що шрифт замінено на C++
second_title: Aspose.Words для C++
articleTitle: Як розпізнати, що Шрифт був замінений
linktitle: Як розпізнати, що Шрифт був замінений
description: "Якщо ви не впевнені, чому формат документа змінився або чому певний шрифт виглядає не так, як очікувалося, повідомлення із попередженнями про заміну шрифту можуть допомогти."
type: docs
weight: 13
url: /uk/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Іноді може бути незрозуміло, чому формат документа змінився або чому якийсь шрифт виглядає не так, як очікувалося. У таких випадках на допомогу приходять попередження про заміну шрифту, реалізовані в інтерфейсі IWarningCallback. Вони мають тип попередження [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) та стандартний текстовий формат опису: "Шрифт "<OriginalFont>" не знайдено. Замість нього використовується шрифт " <SubstitutionFont>". Причина: <Reason>", з наступними причинами:

- "Альтернативна назва з документа" - для заміни на [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "fontconfig substitution" – для заміни за правилом налаштування шрифту
- "підстановка таблиці" – для підстановки за правилом таблиці
- "підстановка інформації про шрифт" - для підстановки за правилом інформації про Шрифт
- "заміна шрифту за замовчуванням" – для заміни за правилом шрифту за замовчуванням
- "перший доступний шрифт" – для заміни на перший доступний шрифт
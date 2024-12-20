---
title: Режим FIPS
second_title: Aspose.Words для Java
articleTitle: Режим FIPS
linktitle: Режим FIPS
description: "Aspose.Words для Java використовує кілька алгоритмів криптографії та хешу при обробці документів для дотримання стандартів FIPS."
type: docs
weight: 80
url: /uk/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words використовує кілька алгоритмів криптографії та хешу при обробці документів, і ця стаття описує, як вона пов'язана з стандартами FIPS.

Федеральні стандарти обробки інформації (FIPS) – це сукупність відкритих стандартів, розроблених Федеральним урядом Сполучених Штатів Америки для встановлення вимог до різних цілей, таких як забезпечення безпеки комп’ютерів та взаємоздатності.

## BouncyCastle до порятунку

Aspose.Words для Java і Aspose.Words для Android використовувати замок Bouncy FIPS JAR для шифрування, розшифрування та оформлення документів. Про нас JAR Розроблено та реалізовано для задоволення вимог FIPS 140-2, рівня 1.

FIPS 140-2 - це стандарт безпеки U.S., який використовується для затвердження криптографічних модулів. Цей стандарт визначає вимоги безпеки, які будуть задоволені криптографічним модулем та забезпечує високі рівні безпеки, призначені для покриття широкого спектру потенційних додатків та середовищ. Для отримання більш детальної інформації на FIPS 140-2 див. у [ІСТОРІЯ](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003)й

Aspose.Words для .NET використовує загальну версію Bouncy Castle без підтримки FIPS.

## Активація режиму FIPS

Починаючи з версії 18.10 Aspose.Words дозволяє працювати в двох режимах: Загальні та FIPS.

За замовчуванням Aspose.Words працює в загальному режимі, тому немає обмежень на використання алгоритмів і ключів в цьому випадку.

Ви можете переключити Aspose.Words від загального режиму в режим FIPS за допомогою методу:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

З точки зору безпеки ви не можете змінити режим назад до Генерального плану.

Також зверніть увагу, що Aspose.Words не вдається автоматично розпізнати, чи є ваша операційна система в режимі FIPS, тому ви повинні переключатися Aspose.Words до режиму FIPS явно

Використовуйте наступний метод, щоб переконатися Aspose.Words для Java в режимі FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Коли режим FIPS знаходиться, Aspose Words дозволить вам використовувати деякі алгоритми криптографії та ключі з не затвердженими довжини.

Наприклад, при спробі відкрити ODT зашифрований документ, в той час як режим FIPS активний, ви можете побачити наступний виняток:

{{% alert color="primary" %}}

НезатвердженоСекретністьОперація Видача: Намагатися відкрити файл ODT, який використовує алгоритм Blowfish. Цей алгоритм не наведено до списку алгоритмів FIPS.

{{% /alert %}}

Це відбувається тому, що алгоритм Blowfish не знаходиться на списку затверджених алгоритмів FIPS.

При використанні ключів невідповідної довжини:

НезатвердженоСекретністьОперація Видача: Ви не можете використовувати ключ з розміром 1024 для RSA в режимі FIPS.

Більш детальну інформацію щодо переліку затверджених алгоритмів див. [Боунс Керівництво користувача](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithms (Symmetric)".



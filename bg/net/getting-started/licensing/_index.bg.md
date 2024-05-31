---
title: Лицензиране и записване
second_title: Aspose.Words вместо .NET
articleTitle: Лицензиране и записване
linktitle: Лицензиране и записване
description: "Aspose.Words вместо .NET предоставя различни планове за закупуване или предлага безплатен пробен период и 30-дневен временен лиценз за оценка, като използва правилата за лицензиране и абонамент в C#."
type: docs
weight: 55
url: /bg/net/licensing/
---

Понякога, за да се проучи системата по-добре, искате да се потопите в кода възможно най-бързо. За да го направим по-лесно, Aspose.Words предоставя различни планове за закупуване или предлага безплатен процес и 30-дневен временен лиценз за оценка.

{{% alert color="primary" %}}

Имайте предвид, че има редица общи политики и практики, които ви насочват към това как да се оцени, правилно лиценз, и закупуване на нашите продукти. Можете да ги намерите в [Политика за закупуване и ЧЗВ](https://purchase.aspose.com/policies/) секция.

{{% /alert %}}

## Безплатен пробен или временен лиценз

Aspose.Words е невероятен софтуер, който разработчиците могат да опитат преди закупуване.

### Свободно изпитване

Версията за оценка е същата като закупената. [Версия на изпитването](https://releases.aspose.com/words/) просто става лицензиран, когато добавите няколко реда код за прилагане на лиценза.

Версията на изпитването Aspose.Words без посочения лиценз осигурява пълна функционалност на продукта, но поставя оценителен воден знак в горната част на документа при зареждане и запазване и ограничава максималния размер на документа до няколко стотин параграфа.

### Временен лиценз

Ако желаете да тествате Aspose.Words без ограниченията на версията на процеса, можете да поискате и 30-дневен временен лиценз. За повече подробности вижте [Получаване на временен лиценз](https://purchase.aspose.com/temporary-license/) страница.

## Закупен лиценз

След покупката трябва да приложите лицензния файл или да включите лицензния файл като вграден ресурс. Този раздел описва вариантите за това как може да се направи това, а също и коментари по някои общи въпроси.

{{% alert color="primary" %}}

Трябва да зададете лиценза:

* само веднъж за област на приложение

* преди да използвате други Aspose.Words класове

{{% /alert %}}

{{% alert color="primary" %}}

Можете да намерите ценова информация за [Информация за цените](https://purchase.aspose.com/pricing/words/family/) страница.

{{% /alert %}}

### Защита на закупения лиценз

След закупуване на лиценз, трябва внимателно да прочетете информацията на страницата [Защита на закупения лиценз](https://purchase.aspose.com/orders/protecting-your-license-file) за да защитя лиценза ти. Моля, имайте предвид, че тази страница е достъпна за гледане само ако имате платен лиценз.

### Опции за прилагане на лиценза

Лицензи могат да се прилагат от различни места:

* Изяснена пътека
* Папката, съдържаща *Aspose.Words.dll* файл
* Папката, съдържаща монтажа, наречен *Aspose.Words.dll*
* Папката, съдържаща монтажа на входа (твоята *.exe*)
* Вграден ресурс в монтажа се нарича *Aspose.Words.dll*
* Като Metered License

Когато цитираш *Aspose.Words.dll* в приложението библиотеката е копирана във вашата изходна директория (освен ако * Copy Local* в свойствата за този запис е зададена false). Често най-лесният начин да зададете лиценз е да поставите лицензния файл в същата папка като *Aspose.Words.dll* и посочете само името на файла без пътя.

{{% alert color="primary" %}}

Използвайте [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) метод за лицензиране на компонент.

Обаждане **SetLicense** Много пъти не е вредно, просто губи времето на процесора.

Обаждане [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) Много пъти не е вредно също, но просто губи времето на процесора и може да натрупват потреблението неправилно.

{{% /alert %}}

#### Прилагане на Лиценз Използване на файл или Stream обект

Когато развивате заявлението си, се обадете **SetLicense** в кода за стартиране преди да използвате Aspose.Words Класове.

##### Зареждане на лиценз от файл

Използване на [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) метод, можете да се опитате да намерите лицензния файл в вградените ресурси или монтажни папки за по-нататъшна употреба.

Следният пример за код показва как да инициализирате лиценз от папка:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Зареждане на лиценз от обект на поток

Следният пример за код показва как да инициализирате лиценз от поток с помощта на друг [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) метод:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Включване на Лицензния файл като вграден ресурс

Един чист начин да пакетирате лиценз с вашето заявление и се уверете, че няма да бъде загубен е да го включите като вграден ресурс в един от конгресите, които призовават Aspose.Words. За да включите файл като вграден ресурс, следвайте следните стъпки:

1. В Visual Studio, включва .lic файл в проекта, като се използва ...**Добави съществуващ елемент.**менюто.
2. Изберете файла в Solution Explorer и зададете**Изграждане на действие, за да се интегрират** в прозореца на Пропърти.
3. Във вашия код, позовете **SetLicense** Това е само краткото име на ресурсния файл.

#### Кандидатстване на изпитан лиценз

Aspose.Words позволява на разработчиците да прилагат измерван ключ. Това е нов механизъм за лицензиране.

Новият механизъм за лицензиране ще бъде използван заедно със съществуващия метод за лицензиране. Тези клиенти, които искат да бъдат таксувани въз основа на използването на API Характеристиките могат да използват лицензите за метеорит.

След завършване на всички необходими стъпки, за да получите този тип лиценз, ще получите ключовете, а не лицензния файл. Този измерван ключ може да се приложи с помощта на [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) клас, специално представен за тази цел.

Не се обаждай **SetMeteredKey** метод често, така че този метод за лицензиране правилно натрупва потребление и го докладва на нас. Просто мигновено Aspose.Words Библиотека, обадете се. **SetMeteredKey** Веднъж, след това напусне библиотеката instantiated и го повторно.

Следният пример за код показва как да се определят ограничени публични и частни ключове:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Обикновено това е достатъчно, за да се прилага измервания лиценз веднъж в началото на заявлението. Въпреки това, ако измерваният механизъм за лицензиране не успее да комуникира със сървърите Aspose в продължение на 24 часа, Aspose.Words ще излезе от лицензиран режим и ще премине към режим за оценка. За да избегнете такъв случай, трябва редовно да проверявате статуса на лиценза. Aspose.Words Превръща се в режим на оценяване, моля, нанесете отново измервания лиценз.

{{% alert color="primary" %}}

Моля, имайте предвид, че трябва да имате стабилна интернет връзка за правилното използване на лиценза Metered, тъй като механизмът Metered изисква постоянно взаимодействие с нашите услуги за правилни изчисления. За повече подробности, вижте [Често задавани въпроси относно лицензите](https://purchase.aspose.com/faqs/licensing/metered/) секция.

{{% /alert %}}

### Промяна на името на лиценза

Името на файла с лицензите не трябва да бъде готино.Aspose.Words.Клифт. Можете да го преименувате по ваш вкус и да използвате това име, когато задавате лиценз в заявлението си.

### "Не мога да намеря името на лиценза. Изключение

Когато закупите и изтеглите лиценз, уеб сайта Aspose име на лицензния файл *"Aspose.Words.LIC*. Сваляте лицензния файл чрез браузъра си. В този случай, някои браузъри признават лицензния файл като XML и прилагат разширение .xml към него, така че пълното име на файла на вашия компютър става *"Aspose.Words.lic.XML"*.

Кога Microsoft Windows е конфигуриран да скрие разширения за известни типове файлове (за съжаление, това е по подразбиране в повечето Windows инсталации), лицензният файл ще се появи като *"Aspose.Words. LIC" * in Windows Експлорър. Вероятно ще помислите, че това е истинското име на файла и ще се обадите. **SetLicense** преминавайки го *"Aspose.Words.LIC*, но няма такъв файл, следователно изключение.

За да решите проблема, преименувайте файла, за да премахнете невидимия .xml разширение. Препоръчваме също така да изключите опцията "side extensions" в Microsoft Windows.

## Използване на множество композиционни продукти

Ако използвате множество Aspose продукти във Вашето приложение, като Aspose.Words както и `Aspose.Cells`, Ето няколко полезни съвета:

* Задаване на лиценз за всеки продукт Aspose отделно. Дори ако имате един лиценз файл за всички компоненти, например, "Spose.Total.lic," все още трябва да се обадите **SetLicense** поотделно за всеки продукт Aspose, който използвате в заявлението си.
* Use the Fully Qualified License Class Name. Всеки Aspace продукт има **License** Клас в собственото си пространство. Например, Aspose.Words е [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) както и `Aspose.Cells` е `Aspose.Cells`. Книжката. Използването на напълно квалифицираното име на класа ви позволява да избегнете объркване по отношение на лиценза, за който се отнася продуктът.
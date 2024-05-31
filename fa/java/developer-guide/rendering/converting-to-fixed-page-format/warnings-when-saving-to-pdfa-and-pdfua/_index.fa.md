---
title: هشدار در هنگام صرفه جویی در PDF / A و PDF /UA
second_title: Aspose.Words برای Java
articleTitle: اخطارهای دسترسی هنگام پس انداز به PDF / A و PDF /UA
linktitle: اخطارهای دسترسی هنگام پس انداز به PDF / A و PDF /UA
description: "PDF /A و PDF /UA الزامات دسترسی مربوط به محتوای سند را اعمال می کنند. هنگام صرفه جویی در PDF/A یا PDF/UA Java و این مسئله نقض است، هشدار صادر می شود."
type: docs
weight: 29
url: /fa/java/warnings-when-saving-to-pdfa-and-pdfua/
---

فرمت های PDF / A و PDF /UA تعدادی از الزامات دسترسی مربوط به محتوای سند را اعمال می کنند که نمی توانند در طول تبدیل خودکار از Word به PDF انجام شوند. این الزامات در مقاله قبلی * کار با PDF /A یا PDF /UA توصیف شده است. هشدارها برای برخی از این مشکلات صادر می شود.

هشدارها هنگام صرفه جویی در یکی از فرمت های PDF/A یا PDF/UA صادر می شوند و این مسئله نقض انطباق است. به عنوان مثال، هشدار در مورد عنوان سند از دست رفته در هنگام صرفه جویی در PDF /UA صادر خواهد شد و در هنگام صرفه جویی در PDF / A صادر نخواهد شد.

همه هشدارها [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.دانلود بازی Minor FormattingLos** و [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**... pdf**... در اینجا لیستی از ارزش های هشدار جدید شرح داده شده است:

|  ارزش هشدار |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  عنوان مستند گم شده است. این نقض الزامات انطباق است. سند خروجی به طور کامل سازگار نخواهد بود." |                          |   {{< emoticons/tick >}}  |
|  این سند شامل سرفصل هایی است که سطوح آن به صورت متوالی نیست. این نقض الزامات انطباق است. سند خروجی به طور کامل سازگار نخواهد بود." |                          |   {{< emoticons/tick >}}  |
|  اشکالی بدون متن alt در سند وجود دارد. این نقض الزامات انطباق است. سند خروجی به طور کامل سازگار نخواهد بود." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  جداول بدون متن alt در سند وجود دارد. این نقض الزامات انطباق است. سند خروجی به طور کامل سازگار نخواهد بود." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  پیوندهای بدون متن alt در سند وجود دارد. این نقض الزامات انطباق است. سند خروجی به طور کامل سازگار نخواهد بود." |                          |   {{< emoticons/tick >}}  |
|  جداول بدون سر و صدا / ستون در سند وجود دارد. این نقض الزامات انطباق است. سند خروجی به طور کامل سازگار نخواهد بود." |                          |   {{< emoticons/tick >}}  |
|  این سند شامل کاراکترهای یونیA یونیکد است. این نقض الزامات انطباق است. سند خروجی به طور کامل سازگار نخواهد بود." |   {{< emoticons/tick >}}  |                          |
|  این سند حاوی notdef است. glyphs این نقض الزامات انطباق است. سند خروجی به طور کامل سازگار نخواهد بود." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
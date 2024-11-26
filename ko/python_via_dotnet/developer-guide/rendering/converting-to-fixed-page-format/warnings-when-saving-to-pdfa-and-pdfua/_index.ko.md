---
title: PDF/A 및 PDF/UA에 저장할 때의 경고
second_title: Python용 Aspose.Words
articleTitle: PDF/A 및 PDF/UA로 저장할 때 접근성 문제 경고
linktitle: PDF/A 및 PDF/UA로 저장할 때 접근성 문제 경고
description: "PDF/A 및 PDF/UA는 문서 콘텐츠와 관련된 접근성 요구 사항을 부과합니다. Python의 PDF/A 또는 PDF/UA로 저장하고 문제가 규정 준수를 위반하는 경우 경고가 표시됩니다."
type: docs
weight: 29
url: /ko/python-net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A 및 PDF/UA 형식은 Word에서 PDF로 자동 변환하는 동안 충족될 수 없는 문서 콘텐츠와 관련된 다양한 접근성 요구 사항을 부과합니다. 이러한 요구 사항은 이전 문서 *"PDF/A 또는 PDF/UA 작업"*에 설명되어 있습니다. 이제 이러한 문제 중 일부에 대해 경고가 발행됩니다.

PDF/A 또는 PDF/UA 형식 중 하나로 저장할 때 경고가 표시되며 문제가 규정 준수를 위반합니다. 예를 들어 PDF/UA로 저장할 때는 문서 제목 누락에 대한 경고가 표시되고 PDF/A로 저장할 때는 표시되지 않습니다.

모든 경고는 [WarningType](https://reference.aspose.com/words/python-net/aspose.words/warningtype/)**.MinorFormattingLoss** 및 [WarningSource](https://reference.aspose.com/words/python-net/aspose.words/warningsource/)**.PDF**에 관한 것입니다. 다음은 새로운 설명 경고 값 목록입니다

|  설명 경고 값 |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "문서에 연속되지 않은 수준의 제목이 포함되어 있습니다. 이는 규정 준수 요구 사항을 위반하는 것입니다. 출력 문서는 완전히 규정을 준수하지 않습니다." |                          |   {{< emoticons/tick >}}  |
|  "문서에 대체 텍스트가 없는 셰이프가 있습니다. 이는 규정 준수 요구 사항을 위반하는 것입니다. 출력 문서는 완전히 규정을 준수하지 않습니다." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "문서에 대체 텍스트가 없는 테이블이 있습니다. 이는 규정 준수 요구 사항을 위반하는 것입니다. 출력 문서는 완전히 규정을 준수하지 않습니다." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "문서에 유니코드 PUA 문자가 포함되어 있습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서는 완전히 규정을 준수하지 않습니다." |   {{< emoticons/tick >}}  |                          |
|  "문서에 .notdef glyph가 포함되어 있습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서는 완전히 규정을 준수하지 않습니다." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |

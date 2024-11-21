---
title: PDF/A 및 PDF/UA로 저장할 때 경고
second_title: Aspose.Words 제품정보 Java
articleTitle: PDF/A 및 PDF/UA로 저장할 때 접근성 문제 경고
linktitle: PDF/A 및 PDF/UA로 저장할 때 접근성 문제 경고
description: "PDF/A 및 PDF/UA는 문서 내용과 관련된 접근성을 부과합니다. PDF/A 또는 PDF/UA를 저장할 때 Java 그리고 문제는 준수를 위반, 경고가 발급됩니다."
type: docs
weight: 29
url: /ko/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A 및 PDF/UA 형식은 Word에서 PDF로 자동 변환 중에 수행 할 수없는 문서 내용과 관련된 액세스 가능성 요구 사항을 부과합니다. 이 요구 사항은 이전 문서에서 설명됩니다 *"PDF/A 또는 PDF/UA"* 작업. 이제 경고는 이러한 문제의 일부를 위해 발행됩니다.

PDF/A 또는 PDF/UA 형식 중 하나에 저장할 때 경고가 발행되고 문제점은 수락을 위반합니다. 예를 들어, 누락된 문서 제목에 대한 경고는 PDF/UA로 저장하고 PDF/A로 저장할 때 발급되지 않습니다.

모든 경고는 [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLosss의** · [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**.· 사이트맵**· 다음은 새로운 설명 경고 값의 목록입니다:

|  기술 경고 값 |  PDF 파일 |  PDF/UA의 |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Document 제목이 누락되었습니다. 이 준수 요구 사항을 위반합니다. 출력 문서는 완전히 호환되지 않습니다." |                          |   {{< emoticons/tick >}}  |
|  "문서에는 레벨이 연속되지 않는 헤드링이 포함되어 있습니다. 이 준수 요구 사항을 위반합니다. 출력 문서는 완전히 호환되지 않습니다." |                          |   {{< emoticons/tick >}}  |
|  "문서에는 alt 텍스트가없는 모양이 있습니다. 이 준수 요구 사항을 위반합니다. 출력 문서는 완전히 호환되지 않습니다." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "문서에는 alt 텍스트가없는 테이블이 있습니다. 이 준수 요구 사항을 위반합니다. 출력 문서는 완전히 호환되지 않습니다." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "문서에는 alt 텍스트가없는 하이퍼 링크가 있습니다. 이 준수 요구 사항을 위반합니다. 출력 문서는 완전히 호환되지 않습니다." |                          |   {{< emoticons/tick >}}  |
|  "문서의 헤더 행 / 컬럼없이 테이블이 있습니다. 이 준수 요구 사항을 위반합니다. 출력 문서는 완전히 호환되지 않습니다." |                          |   {{< emoticons/tick >}}  |
|  "문서에는 유니코드 PUA 문자가 포함되어 있습니다. 이 준수 요구 사항을 위반합니다. 출력 문서는 완전히 호환되지 않습니다." |   {{< emoticons/tick >}}  |                          |
|  "문자는 .notdef를 포함합니다 glyph₢ 킹 이 준수 요구 사항을 위반합니다. 출력 문서는 완전히 호환되지 않습니다." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |

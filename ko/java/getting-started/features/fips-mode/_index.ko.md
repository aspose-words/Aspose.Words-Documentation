---
title: FIPS 모드
second_title: Aspose.Words 제품정보 Java
articleTitle: FIPS 모드
linktitle: FIPS 모드
description: "Aspose.Words 제품정보 Java FIPS 표준을 준수하기 위해 문서를 처리 할 때 여러 암호화 및 해시 알고리즘을 사용합니다."
type: docs
weight: 80
url: /ko/java/fips-mode/
---

Aspose.Words 문서를 처리 할 때 여러 암호화 및 해시 알고리즘을 사용하여이 문서는 FIPS 표준과 관련 된 방법을 설명합니다.

연방 정보 처리 표준 (FIPS)은 미국 연방 정부가 컴퓨터 보안 및 상호 운용성을 보장하는 것과 같은 다양한 목적으로 요구 사항을 수립하기 위해 개발 된 개방적으로 출판 된 표준의 집합입니다.

## BouncyCastle 에 the 구조

Aspose.Words 제품정보 Java · Aspose.Words 제품정보 Android Bouncy Castle FIPS를 사용하여 JAR 암호화, 해독 및 서명 문서. 더 보기 JAR FIPS 140-2, Level 1 요구사항을 충족하도록 설계 및 구현되었습니다.

FIPS 140-2는 암호화 모듈을 승인하는 데 사용되는 미국 정부 컴퓨터 보안 표준입니다. 이 표준은 암호화 모듈에 의해 만족 될 보안 요구 사항을 지정하고 광범위한 잠재적 응용 프로그램과 환경을 커버하기위한 보안의 높은 수준을 제공합니다. FIPS 140-2에 대한 자세한 내용은 [NIST 출판](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003)·

Aspose.Words 제품정보 .NET FIPS 지원없이 일반 Bouncy Castle 버전을 사용합니다.

## FIPS 모드 활성화

에서 시작 버전 18.10 Aspose.Words 두 가지 모드에서 작동 할 수 있습니다: 일반 및 FIPS.

기본 정보 Aspose.Words 일반 모드에서 작동하므로 이 경우 알고리즘 및 키의 사용 제한이 없습니다.

전환 할 수 있습니다 Aspose.Words 일반 모드에서 다음 방법을 사용하여 FIPS 모드로:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

런타임에서 일반 모드를 변경할 수 없습니다.

더 알아보기 Aspose.Words 자동적으로 당신의 운영 체계가 FIPS 형태에 있다는 것을 인식할 수 없습니다, 그러므로 당신은 전환해야 합니다 Aspose.Words FIPS 모드로 표현합니다

다음 방법을 사용하여 확인 Aspose.Words 제품정보 Java FIPS 형태에 있습니다:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

FIPS 모드가 켜지면 Aspose Words는 비 승인 된 길이로 몇 가지 암호화 알고리즘과 키를 사용하여 예방합니다.

예를 들어, ODT 암호화 된 문서를 열려고 할 때 FIPS 모드가 활성화되어 다음과 같은 예외를 볼 수 있습니다

{{% alert color="primary" %}}

UnapprovedSecurity운영 예외: Blowfish 알고리즘을 사용하는 ODT 파일을 엽니다. 이 알고리즘은 FIPS 승인 알고리즘 목록에 없습니다.

{{% /alert %}}

블로어 알고리즘이 FIPS 승인 알고리즘에 있지 않기 때문에 발생합니다.

다른 예외는 부적절한 길이의 키가 사용되는 경우 발생할 수 있습니다

UnapprovedSecurity운영 예외: FIPS 모드에서 RSA 크기 1024를 사용할 수 없습니다.

승인 된 알고리즘 목록에 대한 자세한 내용은 여기를 참조하십시오. [팟캐스트 사용자 가이드](https://downloads.bouncycastle.org/fips-java/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithms (Symmetric)".



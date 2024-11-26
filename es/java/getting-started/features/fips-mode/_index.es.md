---
title: Modo FIPS
second_title: Aspose.Words por Java
articleTitle: Modo FIPS
linktitle: Modo FIPS
description: "Aspose.Words para Java utiliza varios algoritmos criptográficos y hash al procesar documentos para cumplir con los estándares FIPS."
type: docs
weight: 80
url: /es/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words utiliza varios algoritmos criptográficos y hash al procesar documentos y este artículo describe cómo se relaciona con los estándares FIPS.

Los Estándares Federales de Procesamiento de la Información (FIPS) son un conjunto de estándares publicados abiertamente desarrollados por el gobierno federal de los Estados Unidos para establecer requisitos con diversos fines, como garantizar la seguridad informática y la interoperabilidad.

## BouncyCastle al rescate

Aspose.Words para Java y Aspose.Words para Android use el Castillo hinchable FIPS JAR para cifrar, descifrar y firmar documentos. El JAR ha sido diseñado e implementado para cumplir con los requisitos del FIPS 140-2, Nivel 1.

FIPS 140-2 es un estándar de seguridad informática del gobierno de los EE.UU. que se utiliza para aprobar módulos criptográficos. Este estándar especifica los requisitos de seguridad que cumplirá un módulo criptográfico y proporciona altos niveles de seguridad destinados a cubrir una amplia gama de aplicaciones y entornos potenciales. Para obtener más detalles sobre FIPS 140-2, consulte el [NIST publicación](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words para .NET usa la versión general de castillo hinchable sin soporte para FIPS.

## Activación del modo FIPS

A partir de la versión 18.10 Aspose.Words permite trabajar en dos modos: General y FIPS.

Por defecto Aspose.Words funciona en el modo General, por lo que no hay restricciones en el uso de algoritmos y claves en este caso.

Puede cambiar Aspose.Words del modo general al modo FIPS utilizando el siguiente método:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Por razones de seguridad, no puede volver a cambiar el modo a General en tiempo de ejecución.

También tenga en cuenta que Aspose.Words no puede reconocer automáticamente si su sistema operativo está en modo FIPS, por lo tanto, debe cambiar el modo Aspose.Words a FIPS explícitamente.

Utilice el siguiente método para asegurarse de que Aspose.Words para Java esté en modo FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Cuando el modo FIPS está activado, Aspose Words le impedirá utilizar algunos algoritmos de criptografía y claves con longitudes no aprobadas.

Por ejemplo, al intentar abrir un documento cifrado ODT mientras el modo FIPS está activo, es posible que vea la siguiente excepción:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: Un intento de abrir un archivo ODT que usa el algoritmo Blowfish. Este algoritmo no está en la lista de algoritmos aprobados FIPS.

{{% /alert %}}

Esto sucede porque el algoritmo Blowfish no está en la lista de algoritmos aprobados FIPS.

La excepción similar puede ocurrir si se usan claves de longitud inapropiada:

UnapprovedSecurityOperationException: No puede usar una tecla con el tamaño 1024 para RSA en el modo FIPS.

Para obtener más detalles sobre la lista de algoritmos aprobados, consulte [BouncyCastle Guía del Usuario](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Algoritmos de cifrado (simétricos)".



---
title: Aspose.Words para .NET a través de COM Interop
second_title: Aspose.Words para .NET
articleTitle: Cómo utilizar Aspose.Words para .NET a través de COM Interop
linktitle: Cómo utilizar Aspose.Words para .NET a través de COM Interop
type: docs
description: "Utilice Aspose.Words para .NET a través de COM Interop en Python, PHP, VBScript, JScript y otros lenguajes de programación."
weight: 130
url: /es/net/how-to-use-aspose-words-via-com-interop/
---

La información de este tema se aplica a escenarios en los que desea utilizar Aspose.Words para .NET a través de COM Interop en cualquiera de los siguientes lenguajes de programación:

- ASP
- Delphi ([Ejemplo](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## Trabajar con COM Interop

Aspose.Words para .NET se ejecuta bajo el control de .NET Framework y esto se denomina código administrado. El código escrito en todos los lenguajes anteriores se ejecuta fuera del .NET Framework y se denomina código no administrado. La interacción entre el código no administrado y Aspose.Words se produce a través de la función .NET llamada COM Interop.

Los objetos Aspose.Words son objetos .NET, pero cuando se utilizan a través de COM Interop, aparecen como objetos COM en su lenguaje de programación. Por lo tanto, es mejor asegurarse de saber cómo crear y utilizar objetos COM en su lenguaje de programación antes de comenzar a utilizar Aspose.Words.

Estos son los temas que eventualmente necesitarás dominar:

- Utilizar objetos COM en tu lenguaje de programación. Consulte la documentación de su lenguaje de programación y los temas específicos del lenguaje más adelante en esta documentación.
- Trabajar con objetos COM expuestos por .NET COM Interop. Consulte [Interoperating con código no administrado](https://learn.microsoft.com/en-us/dotnet/framework/interop/) y [Exponer componentes .NET Framework a COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) en MSDN.
- Modelo de objetos de documento Aspose.Words. Consulte Aspose.Words [Guía para desarrolladores](/words/es/net/developer-guide/) y [API Reference](https://reference.aspose.com/words/net/).

## Registre Aspose.Words para .NET con COM Interop

Después de [Instalación](/words/es/net/installation/), debe registrar Aspose.Words para COM Interop utilizando la utilidad `regasm.exe`.

`regasm.exe` es una herramienta incluida en .NET Framework SDK. Todas las herramientas .NET Framework SDK se encuentran en el directorio `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`, por ejemplo *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Para obtener el archivo tlb, ejecute `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` en cmd, donde `<installdir>` es el directorio donde instaló Aspose.Words, generalmente `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Trabajar con Aspose.Words a través de COM Interop

### ProgID

ProgID significa "identificador programático", es el nombre de una clase `COM` que debe usar para crear un objeto.

Actualmente, Aspose.Words define cuatro objetos COM que se pueden crear públicamente. Sus ProgID son:

- ComHelper
- Documento
- Generador de documentos
- Licencia

Los ProgID constan del nombre de la biblioteca ("Aspose.Words") y el nombre de la clase.

### Biblioteca de tipos

Durante la instalación, el Aspose.Words.tlb (biblioteca de tipo COM) se copia a su computadora para:

- Para .NET Framework 4.0 a **<installdir>\lib\net40-cliente**

Si su lenguaje de programación (por ejemplo Visual Basic o Delphi) le permite hacer referencia a una biblioteca de tipos `COM`, agregue una referencia a **Aspose.Words.tlb** y podrá ver todas las clases, métodos, propiedades y enumeraciones Aspose.Words en su Explorador de objetos.

### Crear objetos COM

La creación de un objeto .NET es similar a la creación de un objeto COM normal:

**VBScript**

```
ayudante oscuro
Establecer ayudante = CreateObject("Aspose.Words.ComHelper")
 
```

Una vez creado, podrás acceder a los métodos y propiedades del objeto, como si fuera un objeto `COM`:

**VBScript**

```
doctor oscuro
Establecer doc = ayudante.Open("C:\my.doc")
 
```

Algunos métodos tienen sobrecargas y serán expuestos por COM Interop con un sufijo numérico agregado, excepto el primer método que permanece sin cambios. Por ejemplo, las sobrecargas de métodos `Document.Save` se convierten en `Document.Save`, `Document.Save_2`, `Document.Save_3`, etc.

Para obtener más información, consulte los artículos específicos del idioma más adelante en esta documentación.

### Crear un ensamblaje contenedor

Si necesita utilizar muchas de las clases, métodos y propiedades de Aspose.Words, considere crear un ensamblado contenedor (usando C# o cualquier otro lenguaje de programación .NET), que le ayudará a evitar el uso de Aspose.Words directamente desde código no administrado.

Un buen enfoque es desarrollar un ensamblado .NET que haga referencia a Aspose.Words y haga todo el trabajo con él, y solo exponga el conjunto mínimo de clases y métodos a código no administrado. Entonces su aplicación debería funcionar solo con su biblioteca contenedora.

Reducir la cantidad de clases y métodos que necesita invocar a través de COM Interop podría simplificar su proyecto, porque el uso de clases .NET a través de COM Interop a menudo requiere habilidades avanzadas.
<a name="inicio"></a>
Elige un idioma para leer la documentación:

<<<<<<< HEAD
- [Documentación en Español](https://github.com/Synergy2Devs/netepScript/blob/main/docs/README.es.md) 🇪🇸
- [Documentation in English](https://github.com/Synergy2Devs/netepScript/blob/main/docs/README.en.md) 🇬🇧
---
=======
- [Documentación en Español](#spanish) 🇪🇸
- [Documentation in English](#english) 🇬🇧
---
<a name="english"></a>
# **netepScript** 🚀

This script installs Node, Express, TypeScript, ESLint, and Prettier automatically. The idea behind this script is to execute all dependency installations and environment configurations with a single command, streamlining project setup from scratch.

## **Contents** 📚

- [Prerequisites](#prerequisites) 🖥️
- [Installation](#installation) ⚙️
- [Scripts](#scripts) 📜
- [Project Structure](#project-structure) 🏗️
- [Configuration](#configuration) 🔧
- [Contributions](#contributions) 💡
- [License](#license) 📄
- [Contact](#contact) 📬

<a name="prerequisites"></a>
## **Prerequisites** 🖥️

- A computer running Windows 🪟 or Linux 🐧 or a Mac with MacOS 🍎
- Git Bash or Windows Subsystem for Linux (WSL) (only for Windows)
- A code editor, preferably Visual Studio Code
- Administrator permissions (optional, for running the script with sudo on Linux)

<a name="installation"></a>
## **Installation** ⚙️

To use netepScript, first create an empty folder where you will host your project. Download the compressed file and extract it into that folder. Then, open the folder with your preferred text editor or access it from your operating system's terminal. After installing all dependencies, you can remove the script file so that it is not included in the final project.

**On Windows 🪟**

- It's best to use a bash terminal, such as the one available within Visual Studio Code.

- Open a new bash terminal and make sure you're in the folder where you extracted netepScript.

- Next, make the script executable by typing in the console:

```bash
chmod +x netepScript.v0-9-01.sh
```
- Now you're ready to run the script to start the installation process:

```bash
./netepScript.v0-9-01.sh
```
**On Linux 🐧 or MacOS 🍎**

- You can access it from Visual Studio Code or directly from the Linux terminal in the folder where you extracted netepScript.

- Similarly, make the script executable by typing in the console:

```bash
chmod +x netepScript.v0-9-01.sh
```
- Now you're ready to run the script to start the installation process:

```bash
./netepScript.v0-9-01.sh
```
<a name="scripts"></a>
**Scripts** 📜

Several scripts have been configured in the package.json file in this project to facilitate development and production:

- _npm run dev # Starts the server in development mode using ts-node-dev._
- _npm run build # Compiles TypeScript code to JavaScript._
- _npm start # Starts the server using compiled code._
- _npm run lint # Runs ESLint to check code quality._
- _npm run format # Runs Prettier to format code._

<a name="project-structure"></a>
**Project Structure** 🏗️

- The project structure is as follows:

```ts
.
├── src
│ ├── config
│ ├── controllers
│ ├── interfaces
│ ├── middlewares
│ ├── models
│ ├── routes
│ ├── servicese
│ ├── index.ts
│ └── server.ts
├── .eslintrc.json
├── .prettierrc
├── .nodemon.json
├── package.json
├── package-lock.json
├── tsconfig.json
├── .env
├── .gitignore
└── README.md
```
- src: Main source code folder.
- config:
- controllers: Controllers for handling HTTP requests.
- interfaces: TypeScript interfaces.
- middlewares: Custom middlewares.
- models: Data models.
- routes: Route definitions.
- services: Application services.
- index.ts: Main entry file.
- server.ts: Server configuration file.
- .eslintrc.json: ESLint configuration.
- .prettierrc: Prettier configuration.
- .nodemon.json: Nodemon configuration.
- package.json: npm configuration file.
- package-lock.json: npm version lock file.
- tsconfig.json: TypeScript configuration.
- .env: Environment variables.
- .gitignore: gitignore configuration file.

<a name="configuration"></a>
## **Configuration ** 🔧

Below are the most important configurations for the project.

- _TypeScript_

The tsconfig.json file contains TypeScript configuration. Here's an example of basic configuration:

```json
{
  "compilerOptions": {
    "target": "es2016",
    "module": "commonjs",
    "outDir": "./dist",
    "rootDir": "./src",
    "strict": true,
    "esModuleInterop": true
  },
  "include": ["src/**/*.ts"],
  "exclude": ["node_modules"]
}
```
- _ESLint_

The .eslintrc.json file contains ESLint configuration. Here's an example of basic configuration:

```ts
module.exports = {
  parser: "@typescript-eslint/parser",
  plugins: ["@typescript-eslint", "prettier"],
  extends: [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:prettier/recommended",
  ],
  parserOptions: {
    ecmaVersion: "latest",
  },
  env: {
    es6: true,
  },
  rules: {
    "prettier/prettier": "error",
  },
};
```
- _Prettier_

The .prettierrc file contains Prettier configuration. Here's an example of basic configuration:

```json
{
  "singleQuote": true,
  "trailingComma": "all",
  "semi": true,
  "tabWidth": 2,
  "bracketSpacing": true,
  "arrowParens": "always",
  "endOfLine": "lf"
}
```

- _Nodemon_

The nodemon.json file contains Nodemon configuration. Here's an example of basic configuration:

```json
{
  "watch": ["src"],
  "ext": "ts,json",
  "ignore": ["src/tests/*", "node_modules"],
  "exec": "ts-node src/index.ts"
}
```
<a name="contributions"></a>
## **Contributions** 💡

Contributions are welcome. If you have any suggestions or improvements, open an issue or pull request to discuss any changes you would like to make.

- **Our Mission**
  * To drive the development of quality software, tackling technical challenges with creativity and dedication. We aim not only to solve problems but also to inspire and collaborate with other developers to build a more advanced and accessible digital future.

- **Experience and Collaboration**
  * With a combined track record in diverse projects, from web applications to enterprise solutions, we have gained experience in designing robust architectures and implementing effective solutions that meet client needs.

- **Our Commitment**
  * We are committed to technical excellence and continuous improvement. We believe in sharing our knowledge through open-source contributions, thus strengthening the global software development ecosystem.

  <a name="license"></a>
## **License** 📄

ISC License

Copyright (c) 2024 Synergy2Devs

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

<a name="contact"></a>
## **Contact** 📬

We are ready to hear your ideas and explore how we can work together to take them to the next level. Contact us today and let's start building the future!

- **Synergy2Devs**
  - <a href="mailto:synergy2devs@gmail.com">Email Us 📧</a>
  - [Our GitHub](https://github.com/Synergy2Devs)

- **Marcelo Robin**
  - [GitHub](https://github.com/mnibor)
  - [Linkedin](https://www.linkedin.com/in/marcelo-a-robin-3605b1286/)

- **Jesus Garcia**
  - [GitHub](https://github.com/JAJesusGarcia)
  - [Linkedin](https://www.linkedin.com/in/jesusjagarcia/)

[Go to the top ↑](#start)

---
<a name="spanish"></a>
# **netepScript** 🚀

Este script instala Node, Express, TypeScript, ESLint y Prettier automáticamente. La idea de este script es ejecutar todas las instalaciones de dependencias y configuraciones de entorno con un solo comando, agilizando el inicio de proyectos desde cero.

## **Contenido** 📚

- [Requisitos Previos](#requisitos-previos) 🖥️
- [Instalación](#instalacion) ⚙️
- [Scripts](#scripts) 📜
- [Estructura del Proyecto](#estructura-del-proyecto) 🏗️
- [Configuración](#configuración) 🔧
- [Contribuciones](#contribuciones) 💡
- [Licencia](#licencia) 📄
- [Contacto](#contacto) 📬

<a name="requisitos-previos"></a>
## **Requisitos previos** 🖥️

- Un ordenador con Windows 🪟 o Linux 🐧 o una Mac con MacOS 🍎
- Git Bash o Windows Subsystem for Linux (WSL) (solo para Windows)
- Un editor de código, preferentemente utilizar Visual Studio Code
- Permisos de administrador (opcional, para ejecutar el script con sudo para Linux)

<a name="instalacion"></a>
## **Instalación** ⚙️

Para utilizar netepScript, primero crea una carpeta vacía donde alojarás tu proyecto. Descarga el archivo comprimido y descomprímelo dentro de esa carpeta. A continuación, abre la carpeta con tu editor de texto preferido o accede a ella desde la terminal de tu sistema operativo. Después de instalar todas las dependencias, se puede eliminar el archivo del script para que no se incluya en el mismo.

**En Windows 🪟**

- Lo ideal es utilizar una terminal de bash, como la que se encuentra disponible dentro de Visual Studio Code.

- Accede a una nueva terminal de bash, y asegúrate de estar en la carpeta donde has descomprimido netepScript.

- Luego vamos a convertir el script en ejecutable escribiendo en la consola:

```bash
chmod +x netepScript.v0-9-01.sh
```
- Luego estamos en condiciones de ejecutar el script para que se inicie el proceso de instalación:

```bash
./netepScript.v0-9-01.sh
```
**En Linux 🐧 o MacOS 🍎**

- Puedes acceder desde Visual Studio Code o directamente desde la terminal de Linux en la carpeta donde has descomprimido netepScript.

- Luego vamos a convertir el script en ejecutable escribiendo en la consola:

```bash
chmod +x netepScript.v0-9-01.sh
```
- Luego estamos en condiciones de ejecutar el script para que se inicie el proceso de instalación:

```bash
./netepScript.v0-9-01.sh
```
<a name="scripts"></a>
**Scripts** 📜

En este proyecto se han configurado varios scripts en el archivo package.json para facilitar el desarrollo y la producción:

- _npm run dev # Inicia el servidor en modo de desarrollo utilizando ts-node-dev._
- _npm run build # Compila el código TypeScript en JavaScript._
- _npm start # Inicia el servidor utilizando el código compilado._
- _npm run lint # Ejecuta ESLint para verificar la calidad del código._
- _npm run format# Ejecuta Prettier para formatear el código._

<a name="estructura-del-proyecto"></a>
**Estructura del Proyecto** 🏗️

- La estructura del proyecto es la siguiente:

```ts
.
├── src
│ ├── config
│ ├── controllers
│ ├── interfaces
│ ├── middlewares
│ ├── models
│ ├── routes
│ ├── servicese
│ ├── index.ts
│ └── server.ts
├── .eslintrc.json
├── .prettierrc
├── .nodemon.json
├── package.json
├── package-lock.json
├── tsconfig.json
├── .env
├── .gitignore
└── README.md
```

- src: Carpeta principal del código fuente.
- config:
- controllers: Controladores para manejar las solicitudes HTTP.
- interfaces: Interfaces TypeScript.
- middlewares: Middlewares personalizados.
- models: Modelos de datos.
- routes: Definiciones de rutas.
- services: Servicios de la aplicación.
- index.ts: Archivo de entrada principal.
- server.ts: Archivo de configuración del servidor
- .eslintrc.json: Configuración de Elisnt.
- .prettierrc: Configuración de Prettier.
- .nodemon.json: Configuración de Nodemon.
- package.json: Archivo de configuración de npm.
- package-lock.json: Archivo de bloqueo de versiones de npm.
- tsconfig.json: Configuración de TypeScript.
- .env: Variables de entorno.
- .gitignore: Archivo de configuración de gitignore.

<a name="configuracion"></a>
## **Configuración** 🔧

A continuación se describen las configuraciones más importantes del proyecto.

- _TypeScript_

El archivo tsconfig.json contiene la configuración de TypeScript. Aquí tienes un ejemplo de configuración básica:

```json
{
  "compilerOptions": {
    "target": "es2016",
    "module": "commonjs",
    "outDir": "./dist",
    "rootDir": "./src",
    "strict": true,
    "esModuleInterop": true
  },
  "include": ["src/**/*.ts"],
  "exclude": ["node_modules"]
}
```

- _ESLint_

El archivo .eslintrc.json contiene la configuración de ESLint. Aquí tienes un ejemplo de configuración básica:

```ts
module.exports = {
  parser: "@typescript-eslint/parser",
  plugins: ["@typescript-eslint", "prettier"],
  extends: [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:prettier/recommended",
  ],
  parserOptions: {
    ecmaVersion: "latest",
  },
  env: {
    es6: true,
  },
  rules: {
    "prettier/prettier": "error",
  },
};
```

- _Prettier_

El archivo .prettierrc contiene la configuración de Prettier. Aquí tienes un ejemplo de configuración básica:

```json
{
  "singleQuote": true,
  "trailingComma": "all",
  "semi": true,
  "tabWidth": 2,
  "bracketSpacing": true,
  "arrowParens": "always",
  "endOfLine": "lf"
}
```

- _Nodemon_

  El archivo nodemon.json contiene la configuracion de Nodemon. Aquí tienes un ejemplo de configuración básica:

```json
{
  "watch": ["src"],
  "ext": "ts,json",
  "ignore": ["src/tests/*", "node_modules"],
  "exec": "ts-node src/index.ts"
}
```
<a name="contribuciones"></a>
## **Contribuciones** 💡

Las contribuciones son bienvenidas. Si tienes alguna sugerencia o mejora, abre un issue o un pull request para discutir cualquier cambio que te gustaría hacer.

<a name="sobre-nosotros"></a>
## **Sobre Nosotros** 🌍

Somos un equipo de desarrolladores apasionados por la creación de soluciones innovadoras y robustas en el ámbito de la programación. Nos especializamos en el desarrollo de aplicaciones escalables y eficientes utilizando tecnologías modernas y buenas prácticas de ingeniería de software.

- **Nuestra Misión**
  * Impulsar el desarrollo de software de calidad, abordando desafíos técnicos con creatividad y compromiso. Buscamos no solo resolver problemas, sino también inspirar y colaborar con otros desarrolladores para construir un futuro digital más avanzado y accesible.

- **Experiencia y Colaboración**
  * Con una trayectoria combinada en proyectos diversos, desde aplicaciones web hasta soluciones empresariales, hemos adquirido experiencia en el diseño de arquitecturas sólidas y en la implementación de soluciones eficaces que cumplen con las necesidades del cliente.

- **Nuestro Compromiso**
  * Estamos comprometidos con la excelencia técnica y la mejora continua. Creemos en compartir nuestro conocimiento a través de código abierto y contribuciones a la comunidad, fortaleciendo así el ecosistema de desarrollo de software global.

<a name="licencia"></a>
## **Licencia** 📄

Licencia ISC

Copyright (c) 2024 Synergy2Devs

Se concede permiso para usar, copiar, modificar y/o distribuir este software para cualquier propósito, con o sin cargo, siempre que el aviso de copyright anterior y este aviso de permiso aparezcan en todas las copias.

EL SOFTWARE SE PROPORCIONA "TAL CUAL" Y EL AUTOR RENUNCIA A TODAS LAS GARANTÍAS CON RESPECTO A ESTE SOFTWARE, INCLUYENDO TODAS LAS GARANTÍAS IMPLÍCITAS DE COMERCIABILIDAD Y ADECUACIÓN. EN NINGÚN CASO EL AUTOR SERÁ RESPONSABLE POR CUALQUIER DAÑO ESPECIAL, DIRECTO, INDIRECTO O CONSECUENTE, O POR CUALQUIER DAÑO QUE RESULTE DE LA PÉRDIDA DE USO, DATOS O BENEFICIOS, YA SEA EN UNA ACCIÓN DE CONTRATO, NEGLIGENCIA U OTRA ACCIÓN TORTICERA, QUE SURJA DE O EN CONEXIÓN CON EL USO O RENDIMIENTO DE ESTE SOFTWARE.

<a name="contacto"></a>
## **Contacto** 📬

Estamos listos para escuchar tus ideas y explorar cómo podemos trabajar juntos para llevarlas al siguiente nivel. ¡Contáctanos hoy y comencemos a construir el futuro!


- **Synergy2Devs**
  - <a href="mailto:synergy2devs@gmail.com">Escríbenos un email 📧</a>
  - [Nuestro GitHub](https://github.com/Synergy2Devs)

- **Marcelo Robin**
  - [GitHub](https://github.com/mnibor)
  - [Linkedin](https://www.linkedin.com/in/marcelo-a-robin-3605b1286/)

- **Jesus Garcia**
  - [GitHub](https://github.com/JAJesusGarcia)
  - [Linkedin](https://www.linkedin.com/in/jesusjagarcia/)

[Ir arriba de todo ↑](#inicio)
>>>>>>> 84e3c49 (.)

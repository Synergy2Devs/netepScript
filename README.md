<a name="inicio"></a>
# **netepScript** 🚀

Este script instala Node, Express, TypeScript, ESLint y Prettier automáticamente. La idea de este script es ejecutar todas las instalaciones de dependencias y configuraciones de entorno con un solo comando, agilizando el inicio de proyectos desde cero.

## **Contenido** 📚

- [Requisitos Previos](#requisitos-previos) 🖥️
- [Instalación](#instalacion) ⚙️
- [Scripts](#scripts) 📜
- [Estructura del Proyecto](#estructura-del-proyecto) 🏗️
- [Configuración](#configuración) 🔧
- [Contribuciones](#contribuciones) 💡
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
chmod +x netepScript.v0-8-9.sh
```
- Luego estamos en condiciones de ejecutar el script para que se inicie el proceso de instalación:

```bash
./netepScript.v0-8-9.sh
```
**En Linux 🐧 o MacOS 🍎**

- Puedes acceder desde Visual Studio Code o directamente desde la terminal de Linux en la carpeta donde has descomprimido netepScript.

- Luego vamos a convertir el script en ejecutable escribiendo en la consola:

```bash
chmod +x netepScript.v0-8-9.sh
```
- Luego estamos en condiciones de ejecutar el script para que se inicie el proceso de instalación:

```bash
./netepScript.v0-8-9.sh
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

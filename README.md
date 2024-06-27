# **netepScript**

Este script instala Node, Express, TypeScript, ESLint y Prettier automáticamente. La idea de este script es ejecutar todas las instalaciones de dependencias y configuraciones de entorno con un solo comando, agilizando el inicio de proyectos desde cero.

## **Contenido**

- [Instalación](#instalación)
- [Scripts](#scripts)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Configuración](#configuración)
- [Contribuciones](#contribuciones)
- [Contacto](#contacto)

## **Instalación**

Para empezar con este proyecto, descarga el archivo, descomprímelo dentro de una nueva carpeta y abre la carpeta con tu editor de texto de preferencia o la terminal nativa de tu sistema operativo.

- Descargar y descomprimir el archivo

- Abrir la carpeta en tu terminal o editor

Luego ejecuta el script.

```bash
bash netepScript.v0-8-9.sh
```

## **Scripts**

En este proyecto se han configurado varios scripts en el archivo package.json para facilitar el desarrollo y la producción:

npm run dev # Inicia el servidor en modo de desarrollo utilizando ts-node-dev.
npm run build # Compila el código TypeScript en JavaScript.
npm start # Inicia el servidor utilizando el código compilado.
npm run lint # Ejecuta ESLint para verificar la calidad del código.
npm run format# Ejecuta Prettier para formatear el código.

## **Estructura del Proyecto**

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
- .gitignore: Archivo de configuracion de gitignore.

## **Configuración**

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

## **Contribuciones**

Las contribuciones son bienvenidas. Si tienes alguna sugerencia o mejora, abre un issue o un pull request para discutir cualquier cambio que te gustaría hacer.

- Marcelo Robin:

* GitHub: marcelo-robin
* LinkedIn: Marcelo Robin

- Jesus García:

* GitHub: JAJesusGarcia
* LinkedIn: Jesus García

Sobre Nosotros

Somos dos amigos apasionados por la programación y hemos creado esta cuenta de GitHub para desarrollar proyectos juntos y compartir nuestras herramientas con la comunidad.

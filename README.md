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

## **Sobre Nosotros**

Somos un equipo de desarrolladores apasionados por la creación de soluciones innovadoras y robustas en el ámbito de la programación. Nos especializamos en el desarrollo de aplicaciones escalables y eficientes utilizando tecnologías modernas y buenas prácticas de ingeniería de software.

- **Nuestra Misión**
  Nuestra misión es impulsar el desarrollo de software de calidad, abordando desafíos técnicos con creatividad y compromiso. Buscamos no solo resolver problemas, sino también inspirar y colaborar con otros desarrolladores para construir un futuro digital más avanzado y accesible.

- **Experiencia y Colaboración**
  Con una trayectoria combinada en proyectos diversos, desde aplicaciones web hasta soluciones empresariales, hemos adquirido experiencia en el diseño de arquitecturas sólidas y en la implementación de soluciones eficaces que cumplen con las necesidades del cliente.

- **Nuestro Compromiso**
  Estamos comprometidos con la excelencia técnica y la mejora continua. Creemos en compartir nuestro conocimiento a través de código abierto y contribuciones a la comunidad, fortaleciendo así el ecosistema de desarrollo de software global.

## **Contacto**

Estamos abiertos a colaboraciones, oportunidades de desarrollo conjunto y discusiones sobre innovación tecnológica. No dudes en contactarnos para explorar cómo podemos trabajar juntos en tu próximo proyecto.

- **_Marcelo Robin:_**

* [GitHub](https://github.com/mnibor){:target="\_blank"}
* [Linkedin](https://www.linkedin.com/in/marcelo-a-robin-3605b1286/){:target="\_blank"}

- **_Jesus García:_**

* [GitHub](https://github.com/JAJesusGarcia){:target="\_blank"}
* [linkedin](https://www.linkedin.com/in/jesusjagarcia/){:target="\_blank"}

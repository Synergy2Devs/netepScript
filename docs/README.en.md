<a name="start"></a>
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



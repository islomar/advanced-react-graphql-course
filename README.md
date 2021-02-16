# Course "Fullstack Advanced React & GraphQL"

- By Wes Bos
-
- https://advancedreact.com/
- https://courses.wesbos.com/account/access/6023ec322a34157df9eda237
- Bookmark: 8 / 70, minute 5

## Module 1: Introduction and Setup

### Tooling and Starter Files Setup

- Last version of node
- He uses Firefox
  - https://syntax.fm/show/213/hasty-treat-a-month-on-firefox
- MongoDB Compass (to visualize the database)
  - https://www.mongodb.com/products/compass
- VS Code
  - Theme: [Cobalt2](https://marketplace.visualstudio.com/items?itemName=wesbos.theme-cobalt2)
  - Font:
    - Operator Mono
    - Inconsolata
    - I will use "Fira Code"
  - Change the title bars for "backend" and "frontend":
    - `window.titleBarStyle = 'custom'`
    - https://medium.com/@camdenb/colorful-vscode-titlebars-for-better-productivity-b05a619defed
  - https://code.visualstudio.com/api/references/theme-color
- Download "Starter files" from the course and create a new repo with them ("sick-fits").
- Browser extensions:
  - React dev tools
  - Apollo client dev tools
- Terminal:
  - https://hyper.is/
  - iTerm (Mac)
  - zsh (he uses that one)

### The Tech Stack Explained

- **Front-end**

  - React
  - Next.js:
    - React framework
    - It is server rendered
  - Apollo Client
  - Styled Components

- **Backend**
  - Keystone.js: Headless CMS
    - Node
    - MongoDB (you can use PostgreSQL or Prisma as well)

## Module 2: Learning Next.js

### An intro to Next

- Autocomplete HTML inside a React component: https://code.visualstudio.com/docs/editor/emmet#_emmet-abbreviations-in-other-file-types
- New pages created are automatically routed (because of Next), e.g. http://localhost:7777/account
- Next.js is **server rendered**.
  - In production, you can see all the HTML sent from the Next server when inspecting the source in a web browser. React rehydrates it in the frontend.
  - Good for SEO.
  - It gets rendered even if a client has the JavaScript disabled.
  - When the HTML arrives to the browser, Next converts it to a React application, so for example you can still navigate between pages without the pages being reloaded, like an SPA.
  - But you can also use Next for **statically rendered** content: at build time, you can pre-render some pages, so that they load really really quickly.

### Creating a Page Layout Component

- Use `triggerSuggest` from VSCode for the automatic import.
- `Warning: Failed prop type: Invalid prop `children`of type`object`supplied to`Page`, expected an array.`
  - It expected an array, it is solved using `PropTypes.any` as the type for the children in the Page.
- Next.js requires having a `page` folder. If you want further control for the pages, you need to create an `_app.js` file.
  - https://nextjs.org/docs/advanced-features/custom-app
- Ghost tags: `<> xxx </>`
- `_component.js`: another special element from Next.js
  - https://nextjs.org/docs/advanced-features/custom-document
  - used to augment your application's <html> and <body> tags. This is necessary because Next.js pages skip the definition of the surrounding document's markup.

### Creating our Header and Nav components

- Use `<Link>` for navigating inside your app.
- Use `<a link="">` to navigate out of your app.

## Module 3: CSS and Styled Components

### An intro to Styled Components and CSS

- Advantages of defining the CSS in the components itself:
  - You can scope the CSS in a very easy way.
  - You can use JS values inside CSS.
- Wes Bos opinion: he leaves the style inside the same file until either the file grows too much or it needs to be reused.

### Global Styles

Sometimes you need to declare styles just once in order to be reduced, not once and again in several components. For that, you can use the Global Styles.

### Visualizing Route changes

- Sometimes navigating between links inside your apply might be slow. In that case, it is good to give the user any kind of feedback, so that they know that something is happening.
- For that, we can use a packaged called _NProgress_ and show a nice upper bar which changes as it navigates: https://ricostacruz.com/nprogress/

## Module 4: Server Side GraphQL Development

TBD

## Module 5: Client Side React + GraphQL Development

TBD

## Module 6: Working with Mutations

TBD

## Module 7: Pagination

TBD

## Module 8: User Registration + Authentication

TBD

## Module 9: Shopping Cart Development

TBD

## Module 10.1: Search

TBD

## Module 10.2: Order Creation and Checkout

TBD

## Module 11.1: Frontend Order Displaying

TBD

## Module 11.2: Roles, Permissions and Restricting Access

TBD

## Other links

- Wes Bos' tools and setup: https://wesbos.com/uses
- https://github.com/wesbos/dotfiles
- [ESLint and Prettier configuration](https://github.com/wesbos/eslint-config-wesbos)
  - [Video](https://www.youtube.com/watch?v=lHAeK8t94as)
- [VS Code extensions used by Wes Bos](https://github.com/wesbos/dotfiles/blob/master/vs-code-extensions-i-use.md)
  - https://github.com/Microsoft/vscode-eslint
  - https://github.com/prettier/prettier-vscode
- Dockerization
  - https://medium.com/@francoisromain/getting-started-with-docker-for-local-node-js-development-192ceca18781
- Next.js SSR:
  - https://flaviocopes.com/nextjs-ssr/

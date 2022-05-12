# Tag You're It

<!-- REMOVE UNNECESSARY LINKS -->

- [Overview](#overview)
- [MVP](#mvp)
  - [Goals](#goals)
  - [Libraries and Dependencies](#libraries-and-dependencies)
  - [Client (Front End)](#client-front-end)
    - [Wireframes](#wireframes)
    - [Component Tree](#component-tree)
    - [Component Architecture](#component-architecture)
    - [Time Estimates](#time-estimates)
  - [Server (Back End)](#server-back-end)
    - [ERD Model](#erd-model)
- [Post-MVP](#post-mvp)
- [Code Showcase](#code-showcase)
- [Code Issues & Resolutions](#code-issues--resolutions)

<br>

## Overview

<!-- This build is an image-based social media platform in the style of Instagram, as an effort to challenge myself with duplicating an existing social media platform with the technologies currently in my tool belt. -->

<!-- Deployed site: https://finstagram-ph.netlify.app/ -->

<br>

## MVP

<!-- _The **Finstagram** MVP will allow users to share and explore personal images. Upon log in, they will be displayed current posts from all users and have the ability to contribute their own images._ -->

<br>

### Goals

<!-- - _User will be able to create account._
- _User will be able to create, update, and delete their user-specific posts._
- _User will be able to scroll through posts from all users._
- _User will be able to view their own profiles and the profiles of others._ -->

<br>

### Libraries and Dependencies

<!-- |     Library      | Description                                                                                         |
| :--------------: | :-------------------------------------------------------------------------------------------------- |
|      React       | Front-end JavaScript library for building UIs based on components.                                  |
| React-Router-Dom | Declarative routing for React.                                                                      |
|      Axios       | Provides full CRUD capabilites using XMLHttpRequests.                                               |
|  Ruby on Rails   | Server-side web application framework written in Ruby.                                              |
|    Rack-CORS     | Ruby on Rails Cross-Origin Resource Sharing (CORS).                                                 |
|      Bcrypt      | Secure hashing algorithm for safely handling passwords.                                             |
|       JWT        | Compact URL-safe means of representing claims to be transferred between two parties.                |
|    Pry Rails     | An alternative Rails Console bringing REPL-driven programming to Ruby.                              |
|  Awesome Print   | Pretty prints Ruby objects in full color exposing their internal structure with proper indentation. | -->

<br>

### Client (Front End)

#### Wireframes

[Figma Wireframes](https://www.figma.com/file/t8gNGkPZr4gTZqviFi4dFb/Tag-UR-it--Wireframes_Low_Fidelity)

<!-- - Main Feed

![Main Feed](https://i.imgur.com/p915BlE.png)

- User Profile

![User Profile](https://i.imgur.com/QWFHG58.png) -->

#### Component Tree

<!-- [Whimsical Component Tree](https://whimsical.com/finstagram-component-tree-NJ1ZJ787D9M3mingenii6N) -->

<!-- ![Component Tree](https://i.imgur.com/Vtt4Pjq.png) -->

#### Component Architecture

```structure

src
|__ assets/
    |__ fonts ??
    |__ graphics ??
    |__ icons ??
    |__ images ??
|__ components/
    |__ CenterPanel
        |__ CenterPanel.css
        |__ CenterPanel.jsx
        |__ components
            |__ CreatePostBanner
                |__ CreatePostBanner.css
                |__ CreatePostBanner.jsx
            |__ CreatePostModal
                |__ CreatePostModal.css
                |__ CreatePostModal.jsx
            |__ ExploreCard
                |__ ExploreCard.css
                |__ ExploreCard.jsx
            |__ ExploreContainer
                |__ ExploreContainer.css
                |__ ExploreContainer.jsx
            |__ Feed
                |__ Feed.css
                |__ Feed.jsx
            |__ PostCard
                |__ PostCard.css
                |__ PostCard.jsx
            |__ PostDetail -- dependent on modal or expandable
                |__ PostDetail.css
                |__ PostDetail.jsx
    |__ LeftPanel
        |__ LeftPanel.css
        |__ LeftPanel.jsx
        |__ components
            |__ Nav
                |__ Nav.css
                |__ Nav.jsx
            |__ UserCard
                |__ UserCard.css
                |__ UserCard.jsx
            |__ DO WE NEED NAV BOXES?
                |__ .css
                |__ .jsx
    |__ RightPanel
        |__ RightPanel.css
        |__ RightPanel.jsx
        |__ components
            |__
                |__ .css
                |__ .jsx
    |__ TopBanner
        |__ TopBanner.css
        |__ TopBanner.jsx
        |__ components
            |__ SearchBar
                |__ SearchBar.css
                |__ SearchBar.jsx
            |__ TagLogo
                |__ TagLogo.css
                |__ TagLogo.jsx
            |__ Thumbnail
                |__ Thumbnail.css
                |__ Thumbnail.jsx
            |__
                |__ .css
                |__ .jsx

<!-- Need tutorial/walkthrough, DM -->
<!-- NEED TO ADD COMPONENTS FOR AUTH -->

|__ containers/
    |__ MainContainer.jsx
|__ layout/
    |__ Layout.css
    |__ Layout.jsx
    <!-- Need to confirm single or double layouts depending on state -->
|__ screens/
    |__ LandingPage/
        |__ LandingPage.css
        |__ LandingPage.jsx
    <!-- |__ UserProfile/
        |__ UserProfile.css
        |__ UserProfile.jsx --> Will this just be a component?
|__ services/
    |__ apiConfig.js
    <!-- |__ auth.js -->
    <!-- |__ posts.js -->
|__ App.css
|__ App.js
|__ index.css
|__ index.js

```

<br>

### Server (Back End)

#### ERD Model

[ERD](https://www.figma.com/file/ChJ8sxIqChBpFkH7SafXZr/ERDs%2FComponent-Trees?node-id=0%3A1)
<br>

---

## Post-MVP

---

## Code Showcase

```

```

## Code Issues & Resolutions

## Contributors

| Name            | Role                            | Github                           | Portfolio                                      | LinkedIn                                                   |
| :-------------- | :------------------------------ | :------------------------------- | :--------------------------------------------- | :--------------------------------------------------------- |
| Johnny Domingo  | Full Stack Engineer             | https://github.com/johnnydomingo | https://www.jdomingo.dev/                      | https://www.linkedin.com/in/johnnydomingo/                 |
| Julia Dwyer     | Full Stack Engineer             | https://github.com/gooliajulia   | https://juliadwyer.com/       | https://www.linkedin.com/in/julia-dwyer-software-engineer/ |
| David Gurule    | Full Stack Engineer             | https://github.com/darclay       | https://david-gurule-jr-portfolio.netlify.app/ | https://www.linkedin.com/in/david-gurule-865624212/        |
| Paige Hoeppner  | Full Stack Engineer             | https://github.com/thepaiger     | https://www.paigehoeppner.com/                 | https://www.linkedin.com/in/paige-hoeppner/                |
| Lance Simmons   | Launch Consultant (Engineering) | https://github.com/lancehsimmons | https://lancesimmons.dev/                      | https://www.linkedin.com/in/lance-simmons/                 |
| Stephen Dunford | UX Designer/Researcher          |                                  |                                                |                                                            |
| Aja Hall        | UX Designer/Researcher          |                                  |                                                |                                                            |

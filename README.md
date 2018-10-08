# erik-ekberg-dot-info

> Personal website for Erik Ekberg built on Nuxt

## Style guide

### HTML

[GoCardless HTML Style Guide](https://github.com/gocardless/html-style-guide).

### HTML Classes

This Tachyons design pattern allows developers to see which elements are being changed from mobile (small screens) to larger screens.
``` HTML
<div class='[ small screen ][ not-small screen ][ medium screen ][ large screen ]'></div>
<div class='[ w-100 pa2 ][ w-50-ns pa0-ns ph1-ns ][][ w-10-l ]'></div>
```

Additionally, to easily read what has changed for each screen size, it is recommended to order class names by their purpose, going form structural elements to cosmetic, and then class names relevant to child elements.
``` HTML
<div class='[ fixed left-0 top-0 vw-100 pa1 white bg-black flex flex-row items-centered ]'></div>
```

## Build Setup

``` bash
# install dependencies
$ docker-compose run client yarn install

# serve with hot reload at localhost:3000
$ docker-compose up

# generate static project
$ docker-compose run client generate
```

For detailed explanation on how things work, checkout [Nuxt.js docs](https://nuxtjs.org).

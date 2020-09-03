# pivotal-bookbinder-dev

This repository contains Docker resource for [Bookbinder](https://github.com/pivotal-cf/bookbinder) development
environment.

### How to use

1. Make sure that you doc-app has the following directory structure. 
```
.
├── docs-book
│   ├── bin
│   ├── final_app
│   │   └── lib
│   │       └── search
│   ├── master_middleman
│   │   └── source
│   │       ├── images
│   │       ├── javascripts
│   │       ├── layouts
│   │       ├── sass
│   │       │   └── partials
│   │       ├── stylesheets
│   │       │   └── partials
│   │       └── subnavs
│   └── output
│       ├── master_middleman
│       │   └── source
│       │       ├── archive_menus
│       │       ├── fonts
│       │       ├── images
│       │       ├── javascripts
│       │       │   ├── page_initializers
│       │       │   ├── src
│       │       │   └── vendor
│       │       ├── layouts
│       │       ├── sass
│       │       │   └── partials
│       │       ├── style_guide
│       │       ├── stylesheets
│       │       │   ├── partials
│       │       │   └── vendor
│       │       └── subnavs
│       └── preprocessing
│           └── sections
├── docs-content
│   └── images
└── docs-layout
    └── source
        ├── archive_menus
        ├── fonts
        ├── images
        ├── javascripts
        │   ├── page_initializers
        │   ├── src
        │   └── vendor
        ├── layouts
        ├── style_guide
        └── stylesheets
            ├── partials
            └── vendor
```

2. Create directory to persist Ruby bundles

```
mkdir /tmp/bundle-cache
```

3. Run the following command to build and expose the doc-app.

```
docker run -v /tmp/bundle-cache:/bundle-path -v <PATH_DOC_APP>:/book -p 4567:4567 maanadev/pivotal-bookbinder-dev:latest
```

4. Access the doc HTML pages with your favourite browser.

```
http://localhost:4567
```

# jekyll-docskimmer-theme

jekyll-docskimmer-theme is the official port of [docSkimmer theme](https://github.com/hfagerlund/mkdocs-docskimmer/) from [MkDocs](https://github.com/mkdocs/mkdocs/) to [Jekyll](https://github.com/jekyll/jekyll/).

[[Demo of Jekyll docSkimmer theme on GitHub Pages](https://hfagerlund.github.io/jekyll-docskimmer-theme)]

## Features

* accessible;
* responsive;
* valid HTML5 + CSS3;
* no fonts (refer to [Customizing Styles](https://github.com/hfagerlund/jekyll-docskimmer-theme#customizing-styles) section below);
* includes search;
* supports `google_analytics` (refer to [Configuration](https://github.com/hfagerlund/jekyll-docskimmer-theme#configuration) section below).

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-docskimmer-theme", :path => 'jekyll-docskimmer-theme'
```

And then execute:

```bash
    $ bundle install #(re-)generates Gemfile.lock file
```

Add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-docskimmer-theme
```

And then execute:

```bash
    $ bundle exec jekyll serve #run Jekyll using only gems in Gemfile
```

(Not on RubyGems yet.)

## Usage

### Configuration

The following are **docSkimmer** theme-specific settings in `_config.yml`:

| Parameter | Format | Description |
| --- | --- | --- |
| **author** | text<br>*example: Your Name* | This name is displayed in 'author' meta tag |
| **copyright** | text<br>*example: Copyright &copy; YYYY Your Name* | Any text here is displayed in the footer wrapped in <p></p> tags |
| **google_analytics** | tracking ID<br>*example: UA-00000000-0* | *(OPTIONAL)* Replace numeric placeholders with a Google Analytics property ID to use client-side tracking, or leave blank |
| **tagline** | text<br>*example: Your tagline text* | *(OPTIONAL)* Displayed in: (1.) 'description' meta tag (after colon) if no 'description' site setting is provided, and/or (2.) as a heading in the main header of the site (note: if no tagline is provided, the site description is displayed as the heading instead) |

The following are theme-specific settings that must be included in the front-matter of each `.md` file located in the `_<your-collection>` directory:

| Parameter | Format | Description |
| --- | --- | --- |
| **title** | text<br>*example: Your Page Title* | This text is displayed as the content of the <h1></h1> tag |
| **description** | text<br>*example: A short descriptive paragraph about the page goes here* | This text is displayed as (1.) the 'blurb' for the listing on the homepage/'table of contents' page |
| **img** | relative URL<br>*example: /assets/img/<your-collection-name-without-leading-underscore>/<your-page-name>/<your-image-name>.<png|jpg|jpeg|gif>* | *(OPTIONAL)* May be used to display, for example, a screenshot of the project on its inner details page. **MUST** follow the __naming conventions__ shown in the example - eg. for an image to be displayed on a project page, first: create a directory in the root of your Jekyll site under /assets/img/ that has the __same name as your collection__ (without the `_` in front of it); next: create a sub-directory __with the same name__ as the `.md` page for the project, and place your image in it. The theme will *automatically* display the image on the correct page. |
| **img_alt** | text<br>*example: Your image caption text* | *(REQUIRED if using 'img')* Displayed as `alt` attribute value if an `img` is provided |
| **docs_url** | absolute URL<br>*example: https://<path-to-documentation-site>/* | *(OPTIONAL)* Links to accompanying documentation site on (1.) the homepage/'table of contents' page blurb, and (2.) on the inner details page for the item |
| **repo_url** | absolute URL<br>*example: https://<path-to-repository>/* | *(OPTIONAL)* Links to accompanying repository on (1.) the homepage/'table of contents' page blurb, and (2.) on the inner details page for the item |
| **related:**<br>**- title** | text<br>*example: Title of related project* | *(OPTIONAL)* Appears as link text under 'Related' heading at the bottom of an inner details page for an item |
| **related:**<br>**- description** | text<br>*example: Description of related project* | *(OPTIONAL)* Use for brief description displayed as list item text under 'Related' heading at the bottom of an inner details page for an item |
| **related:**<br>**- url** | relative URL<br>*example: /<your-collection-name-without-leading-underscore>/<your-related-page-name>.html* | *(REQUIRED if using 'title')* Used as `href` attribute value for link under 'Related' heading at the bottom of an inner details page for an item |

### Layouts

Edit the front-matter of the following files to use the layouts indicated (refer to the table below):

| File(s) | Layout |
| --- | --- |
| index.md<br>404.html | **default** |
| search.md | **search**<br>*(__only__ use for Search Results page)* |
| *(OPTIONAL)* all `.md` files located in the `_<your-collection>` directory<br>(NOTE: set this in `_config.yml` **not** in front-matter) | **page** |

#### Example:

```
---
layout: default
---
```

### Customizing Styles

Add custom stylesheets to the `/assets/css` directory in the root of the Jekyll site (not in the theme directory).

### Demo

Demo of [Jekyll docSkimmer theme on GitHub Pages](https://hfagerlund.github.io/)

## Changelog

### Note re: version numbers

The features of __corresponding version numbers__ of **jekyll-docskimmer-theme** and **mkdocs-docskimmer** are *almost* identical, with a few exceptions (see notes under 'REMOVED' and 'ADDED' below):

* 0.1.1 - November 30, 2017. Initial port of [mkdocs-docskimmer](https://github.com/hfagerlund/mkdocs-docskimmer) (v.0.1.1/latest release) to Jekyll.
 * **REMOVED**: Menu panel-related styles and script (not required since collapsable 'On this Page' panel in mkdocs-docskimmer is replaced by the 'table of contents'-style homepage in jekyll-docskimmer-theme); styles related to the second-level top navigation bar.
 * **ADDED**: Style customizations required by new jekyll-docskimmer-theme layouts. (These are located in the main theme stylesheet `jekyll-docskimmer-theme.scss`.)


## License

Copyright (c) 2017 Heini Fagerlund. Licensed under the [Simplified BSD License](https://opensource.org/licenses/BSD-2-Clause).
(See [LICENSE](https://github.com/hfagerlund/jekyll-docskimmer-theme/blob/master/LICENSE).)


This theme includes the following files which are the properties of their respective owners:

* assets/js/analytics.js - [Google Analytics](https://developers.google.com/analytics/devguides/collection/analyticsjs/)
* assets/js/lunr.min.js - [Lunr](https://github.com/olivernn/lunr.js)
* assets/js/mustache.min.js - [Mustache](https://github.com/janl/mustache.js/)
* assets/js/require.js - [RequireJS](http://github.com/jrburke/requirejs)
* assets/js/search.js - [MkDocs](https://github.com/mkdocs/mkdocs/) 
* assets/js/text.js - [RequireJS text](http://github.com/requirejs/text)


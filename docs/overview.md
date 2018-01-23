# OpenLMIS-UI Overview
The OpenLMIS-UI is a single page application that communicates with OpenLMIS Services to provide a user interface for interacting with OpenLMIS. This UI aims to be modular, extendable, and provide a consistent user experience.

At a high level, the OpenLMIS-UI uses Javascript to create an application that runs in a user's web browser. After the OpenLMIS-UI has been loaded into a user's web browser, The OpenLMIS-UI is designed to be used while offline. Supported web browsers are Google Chrome and Firefox.

The OpenLMIS-UI is state driven, meaning the browser's URL determines what is displayed on the screen. Once the application starts, the browser's current URL is parsed and used to retrive data from OpenLMIS Services. All retrived data populates HTML-based views, which are displayed in the user's browser and styled by CSS.

The primary libraries that are used by the OpenLMIS-UI are:
* [Grunt](https://gruntjs.com/) orchestrates the application build process
* [AngularJS v1](https://angularjs.org/) is the application framework
* [Angular UI-Router](https://github.com/angular-ui/ui-router) provides URL routing
* [PouchDB]() stores data for offline functionality
* [Sass](http://sass-lang.com/) is used to generate CSS

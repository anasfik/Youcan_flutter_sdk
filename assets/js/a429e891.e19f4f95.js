"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[104],{3905:(e,t,r)=>{r.d(t,{Zo:()=>l,kt:()=>g});var n=r(7294);function a(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function i(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function o(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?i(Object(r),!0).forEach((function(t){a(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):i(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function s(e,t){if(null==e)return{};var r,n,a=function(e,t){if(null==e)return{};var r,n,a={},i=Object.keys(e);for(n=0;n<i.length;n++)r=i[n],t.indexOf(r)>=0||(a[r]=e[r]);return a}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(n=0;n<i.length;n++)r=i[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(a[r]=e[r])}return a}var u=n.createContext({}),c=function(e){var t=n.useContext(u),r=t;return e&&(r="function"==typeof e?e(t):o(o({},t),e)),r},l=function(e){var t=c(e.components);return n.createElement(u.Provider,{value:t},e.children)},p="mdxType",d={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},h=n.forwardRef((function(e,t){var r=e.components,a=e.mdxType,i=e.originalType,u=e.parentName,l=s(e,["components","mdxType","originalType","parentName"]),p=c(r),h=a,g=p["".concat(u,".").concat(h)]||p[h]||d[h]||i;return r?n.createElement(g,o(o({ref:t},l),{},{components:r})):n.createElement(g,o({ref:t},l))}));function g(e,t){var r=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var i=r.length,o=new Array(i);o[0]=h;var s={};for(var u in t)hasOwnProperty.call(t,u)&&(s[u]=t[u]);s.originalType=e,s[p]="string"==typeof e?e:a,o[1]=s;for(var c=2;c<i;c++)o[c]=r[c];return n.createElement.apply(null,o)}return n.createElement.apply(null,r)}h.displayName="MDXCreateElement"},3890:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>u,contentTitle:()=>o,default:()=>p,frontMatter:()=>i,metadata:()=>s,toc:()=>c});var n=r(7462),a=(r(7294),r(3905));const i={sidebar_position:5},o="Querying With Search",s={unversionedId:"usage/products/search",id:"usage/products/search",title:"Querying With Search",description:"You can get a list of products with a search query using the search() method which is a Future>, and you can use it like this:",source:"@site/docs/usage/products/search.mdx",sourceDirName:"usage/products",slug:"/usage/products/search",permalink:"/usage/products/search",draft:!1,editUrl:"https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/docs/usage/products/search.mdx",tags:[],version:"current",sidebarPosition:5,frontMatter:{sidebar_position:5},sidebar:"tutorialSidebar",previous:{title:"Querying By Categories",permalink:"/usage/products/categories"},next:{title:"Querying With Limits",permalink:"/usage/products/limit"}},u={},c=[{value:"Using <code>await</code>/<code>async</code> :",id:"using-awaitasync-",level:4},{value:"Using A <code>FutureBuilder</code> :",id:"using-a-futurebuilder-",level:4}],l={toc:c};function p(e){let{components:t,...r}=e;return(0,a.kt)("wrapper",(0,n.Z)({},l,r,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"querying-with-search"},"Querying With Search"),(0,a.kt)("p",null,"You can get a list of products with a search query using the ",(0,a.kt)("inlineCode",{parentName:"p"},"search()")," method which is a ",(0,a.kt)("inlineCode",{parentName:"p"},"Future<List<Product>>"),", and you can use it like this:"),(0,a.kt)("h4",{id:"using-awaitasync-"},"Using ",(0,a.kt)("inlineCode",{parentName:"h4"},"await"),"/",(0,a.kt)("inlineCode",{parentName:"h4"},"async")," :"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},'YouCan.instance.products.search("SEARCH TEXT HERE");\n')),(0,a.kt)("h4",{id:"using-a-futurebuilder-"},"Using A ",(0,a.kt)("inlineCode",{parentName:"h4"},"FutureBuilder")," :"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},'FutureBuilder<List<Product>>(\n    future: YouCan.instance.products.search("SEARCH TEXT HERE").all(),\n    builder: (context, snapshot) {\n      if (snapshot.hasData) {\n        return Text(snapshot.data);\n      } else if (snapshot.hasError) {\n        return Text("Error: ${snapshot.error}");\n      } else {\n        return CircularProgressIndicator();\n      }\n    },\n  ),\n\n')))}p.isMDXComponent=!0}}]);
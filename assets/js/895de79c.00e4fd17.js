"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[538],{3905:(e,t,r)=>{r.d(t,{Zo:()=>c,kt:()=>g});var n=r(7294);function a(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function i(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function o(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?i(Object(r),!0).forEach((function(t){a(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):i(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function s(e,t){if(null==e)return{};var r,n,a=function(e,t){if(null==e)return{};var r,n,a={},i=Object.keys(e);for(n=0;n<i.length;n++)r=i[n],t.indexOf(r)>=0||(a[r]=e[r]);return a}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(n=0;n<i.length;n++)r=i[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(a[r]=e[r])}return a}var u=n.createContext({}),l=function(e){var t=n.useContext(u),r=t;return e&&(r="function"==typeof e?e(t):o(o({},t),e)),r},c=function(e){var t=l(e.components);return n.createElement(u.Provider,{value:t},e.children)},p="mdxType",m={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},d=n.forwardRef((function(e,t){var r=e.components,a=e.mdxType,i=e.originalType,u=e.parentName,c=s(e,["components","mdxType","originalType","parentName"]),p=l(r),d=a,g=p["".concat(u,".").concat(d)]||p[d]||m[d]||i;return r?n.createElement(g,o(o({ref:t},c),{},{components:r})):n.createElement(g,o({ref:t},c))}));function g(e,t){var r=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var i=r.length,o=new Array(i);o[0]=d;var s={};for(var u in t)hasOwnProperty.call(t,u)&&(s[u]=t[u]);s.originalType=e,s[p]="string"==typeof e?e:a,o[1]=s;for(var l=2;l<i;l++)o[l]=r[l];return n.createElement.apply(null,o)}return n.createElement.apply(null,r)}d.displayName="MDXCreateElement"},2618:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>u,contentTitle:()=>o,default:()=>p,frontMatter:()=>i,metadata:()=>s,toc:()=>l});var n=r(7462),a=(r(7294),r(3905));const i={sidebar_position:3},o="Querying With Limits",s={unversionedId:"usage/pages/limit",id:"usage/pages/limit",title:"Querying With Limits",description:"This is a internal query method in the library that limits the number of pages retrieved from another query like this :",source:"@site/docs/usage/pages/limit.mdx",sourceDirName:"usage/pages",slug:"/usage/pages/limit",permalink:"/Youcan_Flutter_SDK/usage/pages/limit",draft:!1,editUrl:"https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/docs/usage/pages/limit.mdx",tags:[],version:"current",sidebarPosition:3,frontMatter:{sidebar_position:3},sidebar:"tutorialSidebar",previous:{title:"Querying With Search",permalink:"/Youcan_Flutter_SDK/usage/pages/search"},next:{title:"Error Handling",permalink:"/Youcan_Flutter_SDK/usage/error"}},u={},l=[{value:"Using <code>await</code>/<code>async</code> :",id:"using-awaitasync-",level:4},{value:"Using A <code>FutureBuilder</code> :",id:"using-a-futurebuilder-",level:4}],c={toc:l};function p(e){let{components:t,...r}=e;return(0,a.kt)("wrapper",(0,n.Z)({},c,r,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"querying-with-limits"},"Querying With Limits"),(0,a.kt)("p",null,"This is a internal query method in the library that limits the number of pages retrieved from another query like this :"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"YouCan.instance.pages.limit(2);\n")),(0,a.kt)("p",null,"Now you can fetch for this specific query using the ",(0,a.kt)("inlineCode",{parentName:"p"},"all()"),", in this example, let's say we want to get only 2 pages from all owr store's pages :"),(0,a.kt)("h4",{id:"using-awaitasync-"},"Using ",(0,a.kt)("inlineCode",{parentName:"h4"},"await"),"/",(0,a.kt)("inlineCode",{parentName:"h4"},"async")," :"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"List<Page> twoPages = await YouCan.instance.pages.limit(2).all();\n")),(0,a.kt)("h4",{id:"using-a-futurebuilder-"},"Using A ",(0,a.kt)("inlineCode",{parentName:"h4"},"FutureBuilder")," :"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},'FutureBuilder<List<Page>>(\n    future: YouCan.instance.pages.limit(2).all(),\n    builder: (context, snapshot) {\n      if (snapshot.hasData) {\n        return Text(snapshot.data);\n      } else if (snapshot.hasError) {\n        return Text("Error: ${snapshot.error}");\n      } else {\n        return CircularProgressIndicator();\n      }\n    },\n  ),\n\n')))}p.isMDXComponent=!0}}]);
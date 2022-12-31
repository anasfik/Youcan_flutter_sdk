"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[931],{3905:(e,t,n)=>{n.d(t,{Zo:()=>u,kt:()=>m});var r=n(7294);function o(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){o(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,o=function(e,t){if(null==e)return{};var n,r,o={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(o[n]=e[n]);return o}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(o[n]=e[n])}return o}var c=r.createContext({}),s=function(e){var t=r.useContext(c),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},u=function(e){var t=s(e.components);return r.createElement(c.Provider,{value:t},e.children)},p="mdxType",d={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},h=r.forwardRef((function(e,t){var n=e.components,o=e.mdxType,a=e.originalType,c=e.parentName,u=l(e,["components","mdxType","originalType","parentName"]),p=s(n),h=o,m=p["".concat(c,".").concat(h)]||p[h]||d[h]||a;return n?r.createElement(m,i(i({ref:t},u),{},{components:n})):r.createElement(m,i({ref:t},u))}));function m(e,t){var n=arguments,o=t&&t.mdxType;if("string"==typeof e||o){var a=n.length,i=new Array(a);i[0]=h;var l={};for(var c in t)hasOwnProperty.call(t,c)&&(l[c]=t[c]);l.originalType=e,l[p]="string"==typeof e?e:o,i[1]=l;for(var s=2;s<a;s++)i[s]=n[s];return r.createElement.apply(null,i)}return r.createElement.apply(null,n)}h.displayName="MDXCreateElement"},7962:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>c,contentTitle:()=>i,default:()=>p,frontMatter:()=>a,metadata:()=>l,toc:()=>s});var r=n(7462),o=(n(7294),n(3905));const a={sidebar_position:8},i="Error Handling",l={unversionedId:"usage/products/error",id:"usage/products/error",title:"Error Handling",description:"Well, there is some points that you should know and be aware of when using this library",source:"@site/docs/usage/products/error.mdx",sourceDirName:"usage/products",slug:"/usage/products/error",permalink:"/usage/products/error",draft:!1,editUrl:"https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/docs/usage/products/error.mdx",tags:[],version:"current",sidebarPosition:8,frontMatter:{sidebar_position:8},sidebar:"tutorialSidebar",previous:{title:"Combining Multiple Querying Methods",permalink:"/usage/products/combining"}},c={},s=[{value:"Exception when calling the <code>all()</code> and <code>one()</code> methods",id:"exception-when-calling-the-all-and-one-methods",level:3},{value:"NotFoundException",id:"notfoundexception",level:4},{value:"ServiceNotAvailable",id:"servicenotavailable",level:4}],u={toc:s};function p(e){let{components:t,...n}=e;return(0,o.kt)("wrapper",(0,r.Z)({},u,n,{components:t,mdxType:"MDXLayout"}),(0,o.kt)("h1",{id:"error-handling"},"Error Handling"),(0,o.kt)("p",null,"Well, there is some points that you should know and be aware of when using this library"),(0,o.kt)("h3",{id:"exception-when-calling-the-all-and-one-methods"},"Exception when calling the ",(0,o.kt)("inlineCode",{parentName:"h3"},"all()")," and ",(0,o.kt)("inlineCode",{parentName:"h3"},"one()")," methods"),(0,o.kt)("p",null,"There is two exceptions that you can catch when using the ",(0,o.kt)("inlineCode",{parentName:"p"},"all()")," and ",(0,o.kt)("inlineCode",{parentName:"p"},"one()")," :"),(0,o.kt)("h4",{id:"notfoundexception"},"NotFoundException"),(0,o.kt)("p",null,"Will be throw if the target query response don't exists, not found ( when a ",(0,o.kt)("strong",{parentName:"p"},"400")," status code is got )"),(0,o.kt)("h4",{id:"servicenotavailable"},"ServiceNotAvailable"),(0,o.kt)("p",null,"Will be thrown when the YouCan service is unavailable ( when a ",(0,o.kt)("strong",{parentName:"p"},"500")," status code is got )"),(0,o.kt)("br",null),(0,o.kt)("p",null,"You can catch them using ",(0,o.kt)("inlineCode",{parentName:"p"},"try catch")," like this:"),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre",className:"language-dart"},"try {\n  final response = await YouCan.instance.products.all();\n} on NotFoundException catch(e) {\n  /*...*/\n} on ServiceNotAvailable catch(e) {\n  /*...*/\n} catch(e) {\n  /*...*/\n}\n")))}p.isMDXComponent=!0}}]);
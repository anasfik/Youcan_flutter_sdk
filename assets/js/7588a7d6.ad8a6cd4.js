"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[649],{3905:(e,t,r)=>{r.d(t,{Zo:()=>c,kt:()=>g});var n=r(7294);function i(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function a(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function o(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?a(Object(r),!0).forEach((function(t){i(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):a(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function s(e,t){if(null==e)return{};var r,n,i=function(e,t){if(null==e)return{};var r,n,i={},a=Object.keys(e);for(n=0;n<a.length;n++)r=a[n],t.indexOf(r)>=0||(i[r]=e[r]);return i}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(n=0;n<a.length;n++)r=a[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(i[r]=e[r])}return i}var l=n.createContext({}),u=function(e){var t=n.useContext(l),r=t;return e&&(r="function"==typeof e?e(t):o(o({},t),e)),r},c=function(e){var t=u(e.components);return n.createElement(l.Provider,{value:t},e.children)},p="mdxType",d={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},m=n.forwardRef((function(e,t){var r=e.components,i=e.mdxType,a=e.originalType,l=e.parentName,c=s(e,["components","mdxType","originalType","parentName"]),p=u(r),m=i,g=p["".concat(l,".").concat(m)]||p[m]||d[m]||a;return r?n.createElement(g,o(o({ref:t},c),{},{components:r})):n.createElement(g,o({ref:t},c))}));function g(e,t){var r=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var a=r.length,o=new Array(a);o[0]=m;var s={};for(var l in t)hasOwnProperty.call(t,l)&&(s[l]=t[l]);s.originalType=e,s[p]="string"==typeof e?e:i,o[1]=s;for(var u=2;u<a;u++)o[u]=r[u];return n.createElement.apply(null,o)}return n.createElement.apply(null,r)}m.displayName="MDXCreateElement"},6741:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>l,contentTitle:()=>o,default:()=>p,frontMatter:()=>a,metadata:()=>s,toc:()=>u});var n=r(7462),i=(r(7294),r(3905));const a={sidebar_position:2},o="Querying by limit",s={unversionedId:"usage/reviews/limit",id:"usage/reviews/limit",title:"Querying by limit",description:"Like you saw and used in the limit() method of the products, There is a limit() method that belongs to the reviews, and you can call it simply, in this example, this will limit the reviews obtained to 10 as maximum :",source:"@site/docs/usage/reviews/limit.mdx",sourceDirName:"usage/reviews",slug:"/usage/reviews/limit",permalink:"/Youcan_Flutter_SDK/usage/reviews/limit",draft:!1,editUrl:"https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/docs/usage/reviews/limit.mdx",tags:[],version:"current",sidebarPosition:2,frontMatter:{sidebar_position:2},sidebar:"tutorialSidebar",previous:{title:"Get Reviews",permalink:"/Youcan_Flutter_SDK/usage/reviews/"},next:{title:"Pages",permalink:"/Youcan_Flutter_SDK/usage/pages/"}},l={},u=[{value:"Using <code>await</code>/<code>async</code> :",id:"using-awaitasync-",level:4},{value:"Using A <code>FutureBuilder</code> :",id:"using-a-futurebuilder-",level:4}],c={toc:u};function p(e){let{components:t,...r}=e;return(0,i.kt)("wrapper",(0,n.Z)({},c,r,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"querying-by-limit"},"Querying by limit"),(0,i.kt)("p",null,"Like you saw and used in the ",(0,i.kt)("inlineCode",{parentName:"p"},"limit()")," method of the products, There is a ",(0,i.kt)("inlineCode",{parentName:"p"},"limit()")," method that belongs to the reviews, and you can call it simply, in this example, this will limit the reviews obtained to 10 as maximum :"),(0,i.kt)("h4",{id:"using-awaitasync-"},"Using ",(0,i.kt)("inlineCode",{parentName:"h4"},"await"),"/",(0,i.kt)("inlineCode",{parentName:"h4"},"async")," :"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-dart"},"// we get by this all store's products\nList<Product> allProducts = await YouCan.instance.products.all(); //\n\n// we take the first one as example\nProduct singleProduct = allProducts.first;\n\n// then we get it's reviews\n// highlight-next-line\nList<Review> singleProductReviews = await singleProduct.limit(10).reviews();\n")),(0,i.kt)("h4",{id:"using-a-futurebuilder-"},"Using A ",(0,i.kt)("inlineCode",{parentName:"h4"},"FutureBuilder")," :"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-dart"},'FutureBuilder<List<Review>>(\n    future: singleProduct.limit(10).reviews(),\n    builder: (context, snapshot) {\n      if (snapshot.hasData) {\n        return Text(snapshot.data);\n      } else if (snapshot.hasError) {\n        return Text("Error: ${snapshot.error}");\n      } else {\n        return CircularProgressIndicator();\n      }\n    },\n  ),\n\n')))}p.isMDXComponent=!0}}]);
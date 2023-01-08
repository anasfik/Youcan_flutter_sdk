"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[40],{3905:(e,t,n)=>{n.d(t,{Zo:()=>u,kt:()=>m});var r=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var c=r.createContext({}),s=function(e){var t=r.useContext(c),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},u=function(e){var t=s(e.components);return r.createElement(c.Provider,{value:t},e.children)},p="mdxType",d={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},h=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,o=e.originalType,c=e.parentName,u=l(e,["components","mdxType","originalType","parentName"]),p=s(n),h=a,m=p["".concat(c,".").concat(h)]||p[h]||d[h]||o;return n?r.createElement(m,i(i({ref:t},u),{},{components:n})):r.createElement(m,i({ref:t},u))}));function m(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var o=n.length,i=new Array(o);i[0]=h;var l={};for(var c in t)hasOwnProperty.call(t,c)&&(l[c]=t[c]);l.originalType=e,l[p]="string"==typeof e?e:a,i[1]=l;for(var s=2;s<o;s++)i[s]=n[s];return r.createElement.apply(null,i)}return r.createElement.apply(null,n)}h.displayName="MDXCreateElement"},3017:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>c,contentTitle:()=>i,default:()=>p,frontMatter:()=>o,metadata:()=>l,toc:()=>s});var r=n(7462),a=(n(7294),n(3905));const o={sidebar_position:1},i="Error Handling",l={unversionedId:"error/error_handling",id:"error/error_handling",title:"Error Handling",description:"Making all() and one() requests",source:"@site/docs/error/error_handling.mdx",sourceDirName:"error",slug:"/error/error_handling",permalink:"/Youcan_flutter_sdk/error/error_handling",draft:!1,editUrl:"https://github.com/anasfik/Youcan_flutter_sdk/tree/main/docs/my-website/docs/error/error_handling.mdx",tags:[],version:"current",sidebarPosition:1,frontMatter:{sidebar_position:1},sidebar:"tutorialSidebar",previous:{title:"Error Handling & Debugging",permalink:"/Youcan_flutter_sdk/error/"},next:{title:"Debugging",permalink:"/Youcan_flutter_sdk/error/debugging"}},c={},s=[{value:"Making all() and one() requests",id:"making-all-and-one-requests",level:2},{value:"NotFoundException",id:"notfoundexception",level:3},{value:"ServiceNotAvailable",id:"servicenotavailable",level:3},{value:"InvalidDataException",id:"invaliddataexception",level:3}],u={toc:s};function p(e){let{components:t,...n}=e;return(0,a.kt)("wrapper",(0,r.Z)({},u,n,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"error-handling"},"Error Handling"),(0,a.kt)("h2",{id:"making-all-and-one-requests"},"Making all() and one() requests"),(0,a.kt)("p",null,"There is two exceptions that you can catch when using the ",(0,a.kt)("inlineCode",{parentName:"p"},"all()")," and ",(0,a.kt)("inlineCode",{parentName:"p"},"one()")," :"),(0,a.kt)("h3",{id:"notfoundexception"},"NotFoundException"),(0,a.kt)("p",null,"Will be throw if the target query response don't exists, not found ( when a ",(0,a.kt)("strong",{parentName:"p"},"400")," status code is got )\nExample:"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre"},'try {\n  List<Products> categoryProducts = await YouCan.instance.categories.category("WRONG CATEGORY ID").products.all();\n} on NotFoundException catch (e) {\n  print(e.message);\n} catch (e){\n  print(e);\n}\n')),(0,a.kt)("p",null,"In this example, we've put a wrong category id in the ",(0,a.kt)("inlineCode",{parentName:"p"},"category()"),"method, this will lead directly to throw an ",(0,a.kt)("inlineCode",{parentName:"p"},"NotFoundException")," since there is category found with that id,and you can catch this easily with a ",(0,a.kt)("inlineCode",{parentName:"p"},"try catch")," like above."),(0,a.kt)("h3",{id:"servicenotavailable"},"ServiceNotAvailable"),(0,a.kt)("p",null,"Will be thrown when the YouCan service is unavailable ( when a ",(0,a.kt)("strong",{parentName:"p"},"500")," status code is got )"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre"},"try {\n  List<Products> categoryProducts = await YouCan.instance.products.all();\n} on ServiceNotAvailable catch (e) {\n  print(e.message);\n} catch (e){\n  print(e);\n}\n")),(0,a.kt)("p",null,"We don't own and we don't have any kind of access to the YouCan server, if the server goes down as example and you tried to make a request, it will fail and a ",(0,a.kt)("inlineCode",{parentName:"p"},"ServiceNotAvailable")," will be thrown, which you can catch like above."),(0,a.kt)("br",null),(0,a.kt)("p",null,"You can use this snippet to make request and handle possible exceptions :"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"try {\n  final response = await YouCan.instance.products.all();\n} on NotFoundException catch(e) {\n  /*...*/\n} on ServiceNotAvailable catch(e) {\n  /*...*/\n} catch(e) {\n  /*...*/\n}\n")),(0,a.kt)("br",null),"## Making request methods that requires inputs",(0,a.kt)("p",null,"On the other hands, when you call methods that takes arguments and behave to update, add something to your store such as the ",(0,a.kt)("inlineCode",{parentName:"p"},"login()"),", ",(0,a.kt)("inlineCode",{parentName:"p"},"createCustomer()"),", ",(0,a.kt)("inlineCode",{parentName:"p"},"updateCustomerAccount()"),"..., there is some exceptions that you might want to aware of:"),(0,a.kt)("h3",{id:"invaliddataexception"},"InvalidDataException"),(0,a.kt)("p",null,"Will be thrown when a field value is invalid to be used to complete the request, as example if wa wanted to update the customer account, we will use the ",(0,a.kt)("inlineCode",{parentName:"p"},"updateCustomerAccount()"),", right? :"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre"},'try {\n  List<Products> categoryProducts = await YouCan.instance.customers.updateCustomerAccount(\n    userTokeb: "CORRECT USER TOKEN",\n    newUserData: NewUserData(\n       email: "Text@", // not valid email\n      ),\n    );\n} on InvalidDataException catch (e) {\n  print(e.message);\n  print(e.reason); //\n} catch (e){\n  print(e);\n}\n')),(0,a.kt)("p",null,"Now with this, when the code is executed, the ",(0,a.kt)("inlineCode",{parentName:"p"},"InvalidDataException")," will be thrown because the email we put is invalid, you can catch it and get the reason exactly why it's thrown to fix it."))}p.isMDXComponent=!0}}]);
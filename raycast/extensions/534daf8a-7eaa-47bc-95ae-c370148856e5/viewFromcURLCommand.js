"use strict";var F=Object.create;var v=Object.defineProperty;var L=Object.getOwnPropertyDescriptor;var U=Object.getOwnPropertyNames;var K=Object.getPrototypeOf,T=Object.prototype.hasOwnProperty;var E=(t,n)=>()=>(n||t((n={exports:{}}).exports,n),n.exports),I=(t,n)=>{for(var r in n)v(t,r,{get:n[r],enumerable:!0})},j=(t,n,r,a)=>{if(n&&typeof n=="object"||typeof n=="function")for(let e of U(n))!T.call(t,e)&&e!==r&&v(t,e,{get:()=>n[e],enumerable:!(a=L(n,e))||a.enumerable});return t};var M=(t,n,r)=>(r=t!=null?F(K(t)):{},j(n||!t||!t.__esModule?v(r,"default",{value:t,enumerable:!0}):r,t)),$=t=>j(v({},"__esModule",{value:!0}),t);var R=E(m=>{"use strict";var A=m&&m.__assign||function(){return A=Object.assign||function(t){for(var n,r=1,a=arguments.length;r<a;r++){n=arguments[r];for(var e in n)Object.prototype.hasOwnProperty.call(n,e)&&(t[e]=n[e])}return t},A.apply(this,arguments)},B=m&&m.__importStar||function(t){if(t&&t.__esModule)return t;var n={};if(t!=null)for(var r in t)Object.hasOwnProperty.call(t,r)&&(n[r]=t[r]);return n.default=t,n};Object.defineProperty(m,"__esModule",{value:!0});var V=B(require("child_process"));function x(t){return Array.isArray(t)&&Object.prototype.hasOwnProperty.call(t,"raw")}function W(t,n){for(var r="",a=t.length,e=0;e<a;e++){var o=e<a-1?n[e]:"";r+=t[e]+o}return r.trim()}function h(t,n,r){return r===void 0&&(r={}),process.platform!=="darwin"?Promise.reject(new Error("osascript-tag requires macOS")):new Promise(function(a,e){var o=r.argv||[],l=[],i=W(t,n),O="AppleScript";r.language==="JavaScript"&&(O=r.language,i="(function(...argv){"+i+"})("+o.map(function(c){return JSON.stringify(c)})+")"),r.parse&&(l=["-s","s"]),typeof r.flags=="string"&&(l=["-s",r.flags]);var d=V.spawn("osascript",["-l",O].concat(l,["-e",i])),S="";d.stderr.on("data",function(c){S+=c.toString()});var y="";d.stdout.on("data",function(c){y+=c.toString()}),d.on("close",function(){if(S)e(S);else{var c=y;if(r.parse)try{c=JSON.parse(y)}catch(N){e(N)}a(c)}}),d.on("error",function(c){e(c)})})}function J(t){for(var n=[],r=1;r<arguments.length;r++)n[r-1]=arguments[r];return x(t)?h(t,n,{}):function(a){for(var e=[],o=1;o<arguments.length;o++)e[o-1]=arguments[o];return h(a,e,t)}}function C(t){for(var n=[],r=1;r<arguments.length;r++)n[r-1]=arguments[r];return x(t)?h(t,n,{language:"JavaScript"}):function(a){for(var e=[],o=1;o<arguments.length;o++)e[o-1]=arguments[o];return h(a,e,A({language:"JavaScript"},t))}}J.jxa=C;m.jxa=C;m.default=J});var z={};I(z,{default:()=>b});module.exports=$(z);var s=require("@raycast/api");var u=require("@raycast/api");async function q(){return(await(0,u.getApplications)()).some(({bundleId:r})=>r==="net.shinystone.OKJSON")}async function w(){return await q()?Promise.resolve(!0):(await(0,u.confirmAlert)({title:"OK JSON is not installed.",message:"Do you want to install it right now?",primaryAction:{title:"Install",onAction:async()=>{(0,u.open)("https://apps.apple.com/app/ok-json-offline-private/id1576121509?mt=12"),await(0,u.popToRoot)({clearSearchBar:!1})}},dismissAction:{title:"Cancel",onAction:async()=>{await(0,u.popToRoot)({clearSearchBar:!1})}}}),Promise.resolve(!1))}var p=require("@raycast/api"),k=M(R()),X=async(t,n)=>{try{return await k.default.jxa({parse:!0,argv:n})`${t}`}catch(r){if(typeof r=="string"){let a=r.replace("execution error: Error: ","");a.match(/Application can't be found/)?(0,p.showToast)({style:p.Toast.Style.Failure,title:"Application not found",message:"Things must be running"}):(0,p.showToast)({style:p.Toast.Style.Failure,title:"Something went wrong",message:a})}}};var P=t=>X(`
		const okjson = Application('net.shinystone.OKJSON');
    const text = argv[0]
		okjson.runCURLCommand(text)
	`,[t]);var g=require("react"),f=require("react/jsx-runtime");function b(){let[t,n]=(0,g.useState)(""),[r,a]=(0,g.useState)(),e="Please provide the cURL command.";function o(l){let i=l;a(void 0),n(i)}return(0,g.useEffect)(()=>{w().then(l=>{l&&s.Clipboard.readText().then(i=>{i&&i.startsWith("curl ")&&n(i)})})},[]),(0,f.jsx)(s.Form,{actions:(0,f.jsx)(s.ActionPanel,{children:(0,f.jsx)(s.Action.SubmitForm,{onSubmit:l=>{let i=l.command;i&&i.startsWith("curl ")?(P(i),(0,s.popToRoot)()):a(i?"cURL command should start with \u201Ccurl\u201D.":e)}})}),children:(0,f.jsx)(s.Form.TextArea,{id:"command",value:t,error:r,onChange:o,title:"cURL",placeholder:"Run cURL command in OK JSON"})})}
"use strict";var f=Object.defineProperty;var b=Object.getOwnPropertyDescriptor;var P=Object.getOwnPropertyNames;var y=Object.prototype.hasOwnProperty;var C=(o,n)=>{for(var i in n)f(o,i,{get:n[i],enumerable:!0})},g=(o,n,i,a)=>{if(n&&typeof n=="object"||typeof n=="function")for(let e of P(n))!y.call(o,e)&&e!==i&&f(o,e,{get:()=>n[e],enumerable:!(a=b(n,e))||a.enumerable});return o};var h=o=>g(f({},"__esModule",{value:!0}),o);var V={};C(V,{default:()=>w});module.exports=h(V);var p=require("@raycast/api"),l=require("crypto");async function w(){let o=x();await p.Clipboard.copy(o,{transient:!0}),await(0,p.showHUD)("Password copied to clipboard")}function x(){let o="bcdfghjkmnpqrstvwxz".split(""),n="BCDFGHJKLMNPQRSTVWXZ".split(""),i="aeiouy".split(""),a="AEUY".split(""),e={1:1,2:7,3:13,4:6,5:12,6:18},m=(0,l.randomInt)(2,7),d=e[m],r=(0,l.randomInt)(1,19);if(r===m){let t=(0,l.randomInt)(1,10);r>9?r-=t:r+=t}let u=1,s="";for(let t=1;t<=18;t++)u+=1,d===t?(d<4&&(u-=1),s+=(0,l.randomInt)(1,10)):u%3===0?r===t?s+=c(a):s+=c(i):r===t?s+=c(n):s+=c(o),t!==18&&t%6===0&&(s+="-");return s}function c(o){return o[(0,l.randomInt)(1,o.length)]}0&&(module.exports={});
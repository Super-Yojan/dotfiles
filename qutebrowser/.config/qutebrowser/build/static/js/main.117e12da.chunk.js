(this.webpackJsonpstartpage=this.webpackJsonpstartpage||[]).push([[0],{36:function(e,n,t){"use strict";t.r(n);var r,c,a,i,o,s,j,b,l,d,h,f,u,x,p,O,m,g,v,y,w,k=t(1),z=t.n(k),B=t(13),C=t.n(B),M=t(3),S=t(6),E=t(4),G=t.n(E),F=t(9),J=function(){var e=Object(F.a)(G.a.mark((function e(n){var t,r,c,a;return G.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return"Chantilly","71cb357129ca30601a98ad62c885cc06",t="https://api.openweathermap.org/data/2.5/weather?q=".concat("Chantilly","&units=").concat(n,"&appid=").concat("71cb357129ca30601a98ad62c885cc06"),e.next=5,fetch(t);case 5:if(200===(r=e.sent).status){e.next=8;break}throw new Error("Could not fetch weather data");case 8:return e.next=10,r.json();case 10:return c=e.sent,a=q(c),e.abrupt("return",a);case 13:case"end":return e.stop()}}),e)})));return function(n){return e.apply(this,arguments)}}(),q=function(e){return{min:"".concat(Math.round(e.main.temp_min)),max:"".concat(Math.round(e.main.temp_max)),type:e.weather[0].description}},D=function(){var e=Object(F.a)(G.a.mark((function e(){var n,t;return G.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,fetch("https://api.quotable.io/random");case 2:return n=e.sent,e.next=5,n.json();case 5:return t=e.sent,e.abrupt("return",t);case 7:case"end":return e.stop()}}),e)})));return function(){return e.apply(this,arguments)}}(),I=t(5),V=t.n(I),A=t(2),H=A.b.div(r||(r=Object(M.a)(["\n    font-size: var(--fontVeryBig);\n    font-weight: bold;\n    color: #e06c75;\n    margin: 0;\n"]))),K=A.b.div(c||(c=Object(M.a)(["\n    font-size: var(--fontBig);\n    color: var(--lightGray);\n"]))),T=A.b.div(a||(a=Object(M.a)(['\n    font-family: "fira sans", sans-serif;\n']))),_=t(0),L=function(){return Object(_.jsxs)(T,{children:[Object(_.jsx)(H,{children:Object(_.jsx)(V.a,{format:"HH:mm",ticking:!0})}),Object(_.jsxs)(K,{children:[Object(_.jsx)(V.a,{format:"ddd"})," | ",Object(_.jsx)(V.a,{format:"Do"})," |"," ",Object(_.jsx)(V.a,{format:"MMMM"})]})]})},R=function(e){return"".concat("metric"===e?"\xb0C":"\xb0F")},U=A.b.div(i||(i=Object(M.a)(['\n    font-family: "Fira Sans", sans-serif;\n    color: var(--lightGray);\n    text-align: right;\n']))),W=A.b.div(o||(o=Object(M.a)(["\n    display: flex;\n    height: 60px;\n    align-items: center;\n    justify-content: flex-end;\n"]))),N=A.b.div(s||(s=Object(M.a)(["\n    font-weight: bold;\n    font-size: var(--fontBig);\n"]))),P=A.b.div(j||(j=Object(M.a)(["\n    font-size: var(--fontBig);\n"]))),Q=A.b.span(b||(b=Object(M.a)(["\n    color: var(--red);\n"]))),X=A.b.span(l||(l=Object(M.a)(["\n    color: var(--blue);\n"]))),Y=function(e){var n=e.min,t=e.max,r=e.weatherType,c=e.unit;return Object(_.jsxs)(U,{children:[Object(_.jsx)(W,{children:Object(_.jsxs)(N,{children:[Object(_.jsx)(X,{children:"\u2193"}),n," \u2002 ",Object(_.jsx)(Q,{children:"\u2191"}),t," ",R(c)]})}),Object(_.jsx)(P,{children:r})]})},Z=A.b.div(d||(d=Object(M.a)(["\n    display: flex;\n    justify-content: space-between;\n"]))),$=function(e){var n=e.weatherState,t=e.unit;return Object(_.jsxs)(Z,{children:[Object(_.jsx)(L,{}),!!n&&Object(_.jsx)(Y,{min:n.min,max:n.max,weatherType:n.type,unit:t})]})},ee=A.b.div(h||(h=Object(M.a)(["\n    display: flex;\n    flex-direction: column;\n    align-items: left;\n"]))),ne=A.b.div(f||(f=Object(M.a)(["\n    font-size: var(--fontMed);\n    font-style: italic;\n    color: var(--lightGray);\n"]))),te=A.b.div(u||(u=Object(M.a)(["\n    font-size: var(--fontSmall);\n    color: var(--darkGray);\n"]))),re=function(e){var n=e.content,t=e.author;return Object(_.jsxs)(ee,{children:[Object(_.jsxs)(ne,{children:['"',n,'"']}),Object(_.jsxs)(te,{children:["- ",t]})]})},ce=t.p+"static/media/artwork.892f4fd2.jpg",ae=A.b.div(x||(x=Object(M.a)(["\n    flex: 1;\n    background: url(",");\n    margin-right: 8rem;\n    background-position: center;\n    border: solid 3px var(--lightGray);\n"])),ce),ie=function(){return Object(_.jsx)(ae,{})},oe=Object(A.a)(p||(p=Object(M.a)(["\n  :root {\n    --maxWidth: 1280px;\n    --bg-color: #282C34;\n    --white: #fff;\n    --lightGray: #dadbdb;\n    --darkGray: #ABB2BF;\n    --red: #E06C75;\n    --green: #98C379;\n    --yellow: #E5C07B;\n    --blue: #61AFEF;\n    --purple: #C678DD;\n\n    --fontVeryBig: 3.125rem; \n    --fontBig: 1.625rem;\n    --fontMed: 1.1rem;\n    --fontSmall: 0.9rem;\n  }\n\n  * {\n    box-sizing: border-box;\n    font-family: 'Fira sans', sans-serif;\n  }\n\n  body {\n    margin: 0;\n    padding: 0;\n\n    h1 {\n      font-size: 2rem;\n      font-weight: 600;\n      color: var(--white);\n    }\n    \n    h3 {\n      font-size: 1.1rem;\n      font-weight: 600;\n    }\n\n    p {\n      font-size: 1rem;\n      color: var(--white);\n    }\n  }\n\n"]))),se=A.b.div(O||(O=Object(M.a)(["\n    /* margin-top: 80px; */\n    display: flex;\n    justify-content: space-between;\n"]))),je=A.b.div(m||(m=Object(M.a)(["\n    display: flex;\n    flex-direction: column;\n    align-items: left;\n    justify-content: center;\n"]))),be=A.b.h1(g||(g=Object(M.a)(["\n    font-size: var(--fontBig);\n    color: var(--",");\n"])),(function(e){return e.color})),le=A.b.a(v||(v=Object(M.a)(["\n    font-size: var(--fontMed);\n    padding: 0.5rem;\n    text-decoration: none;\n    color: var(--white);\n\n    :hover {\n        text-decoration: underline;\n    }\n"]))),de=function(){return Object(_.jsxs)(se,{children:[Object(_.jsxs)(je,{children:[Object(_.jsx)(be,{color:"blue",children:"~/uni"}),Object(_.jsx)(le,{href:"https://chalmers.instructure.com/courses/15898",children:"linalg"}),Object(_.jsx)(le,{href:"https://chalmers.instructure.com/courses/16011",children:"grudat"}),Object(_.jsx)(le,{href:"https://calendar.google.com",children:"calendar"}),Object(_.jsx)(le,{href:"https://gmail.com",children:"gmail"}),Object(_.jsx)(le,{href:"https://drive.google.com/drive/u/0/folders/1zKyJSIlqU5ad7IGzLdo3FEOCVBxtKJ2g",children:"drive"})]}),Object(_.jsxs)(je,{children:[Object(_.jsx)(be,{color:"purple",children:"~/dev"}),Object(_.jsx)(le,{href:"https://github.com/",children:"github"}),Object(_.jsx)(le,{href:"https://gitlab.com/R-Jin",children:"gitlab"}),Object(_.jsx)(le,{href:"https://stackoverflow.com/",children:"stackoverflow"}),Object(_.jsx)(le,{href:"https://wiki.archlinux.org/",children:"archwiki"}),Object(_.jsx)(le,{href:"https://www.figma.com",children:"figma"})]}),Object(_.jsxs)(je,{children:[Object(_.jsx)(be,{color:"green",children:"~/fun"}),Object(_.jsx)(le,{href:"https://www.youtube.com",children:"youtube"}),Object(_.jsx)(le,{href:"https://odysee.com/",children:"odysee"}),Object(_.jsx)(le,{href:"https://monkeytype.com/",children:"monkeytype"}),Object(_.jsx)(le,{href:"https://play.typeracer.com/",children:"typeracer"}),Object(_.jsx)(le,{href:"https://www.reddit.com/",children:"reddit"})]})]})},he=function(){var e=Object(k.useState)(),n=Object(S.a)(e,2),t=n[0],r=n[1],c=Object(k.useState)("metric"),a=Object(S.a)(c,2),i=a[0],o=(a[1],Object(k.useState)()),s=Object(S.a)(o,2),j=s[0],b=s[1];return Object(k.useEffect)((function(){J(i).then((function(e){return r(e)}))}),[i]),Object(k.useEffect)((function(){D().then((function(e){return b(e)}))}),[]),Object(_.jsxs)(fe,{children:[Object(_.jsx)(oe,{}),Object(_.jsx)(ie,{}),Object(_.jsxs)(ue,{children:[Object(_.jsx)($,{weatherState:t,unit:i}),Object(_.jsx)(de,{}),j&&Object(_.jsx)(re,{content:j.content,author:j.author})]})]})},fe=A.b.div(y||(y=Object(M.a)(["\n    padding: 10rem;\n    display: flex;\n    justify-content: space-between;\n    background-color: var(--bg-color);\n    height: 100vh;\n    padding: 12rem 20rem;\n"]))),ue=A.b.div(w||(w=Object(M.a)(["\n    display: flex;\n    flex: 2;\n    flex-direction: column;\n    justify-content: space-between;\n"])));C.a.render(Object(_.jsx)(z.a.StrictMode,{children:Object(_.jsx)(he,{})}),document.getElementById("root"))}},[[36,1,2]]]);
//# sourceMappingURL=main.117e12da.chunk.js.map
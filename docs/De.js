var svg = d3.select("#svg"),
    defs = svg.append("defs");

var dat = [
    [8, 6, 3, 0, 0, 0, 0],
    [4, 7, 5, 3, 2, 7, 1],
    [0, 5, 9, 0, 2, 0, 2],
    [1, 1, 6, 5, 0, 4, 5],
    [4, 4, 9, 4, 0, 0, 7]
];

var w = 60, W = 7*w, dw=2*w,
    h = 60, H = 5*h, dh=2*h,
    x0=230, x1=x0+320+W,
    y0=  4, y1=y0+ 90+H;

var keep = "#a8f0b0",
    bound= "#444",
    label= [
        '<tspan class="Type">+</tspan><tspan class="PreProc">⌿</tspan><tspan class="Operator">⍤</tspan><tspan class="Constant">2</tspan><tspan class="Type">⊢</tspan><tspan class="Normal">A</tspan>',
        '<tspan class="Type">+</tspan><tspan class="PreProc">⌿</tspan><tspan class="Operator">⍤</tspan><tspan class="Constant">1</tspan><tspan class="Type">⊢</tspan><tspan class="Normal">A</tspan>',
        '<tspan class="Constant">2</tspan><tspan class="Type">↓</tspan><tspan class="Operator">⍤</tspan><tspan class="Constant">2</tspan><tspan class="Type">⊢</tspan><tspan class="Normal">A</tspan>',
        '<tspan class="Constant">2</tspan><tspan class="Type">↓</tspan><tspan class="Operator">⍤</tspan><tspan class="Constant">1</tspan><tspan class="Type">⊢</tspan><tspan class="Normal">A</tspan>'
    ];

var boxes = svg.selectAll().data([[0,0],[0,1],[1,0],[1,1]]).enter()
    .append("g").attr("transform",d=>"translate("+[x0,x1][d[0]]+","+[y0,y1][d[1]]+")");
var arrs = boxes.append("g").datum(d=>d[1]);
arrs.filter(d=>d).attr("clip-path", "url(#row-clip)");

arrs.append("rect").attrs({width:W, height:H, fill:keep});
arrs.filter((_,i)=>i>=2).append("rect").attrs(d=>({width:d?dw+3:W, height:d?H:dh+3, fill:"url(#edge"+d+")"}));
boxes.append("rect").attrs({width:W, height:H, fill:"none", "stroke-width":d=>d[1]?1:4, stroke:"black"});

boxes.append("text").attrs({x:-30, y:H/2+17, "font-size":50, "font":"monospace", "letter-spacing":"-2px", "text-anchor":"end"})
    .html((_,i)=>label[i]);

var rows = boxes.selectAll().data(dat).enter()
    .append("g").attr("class","tr")
    .attr("transform",(_,i)=>"translate(0,"+i*h+")");
rows.selectAll().data(r=>r).enter()
    .append("text").attrs({x:(_,j)=>(j+1/2)*w, y:h/2+17, "font-size":46, "text-anchor":"middle"})
    .text(n=>n);
function cut_t(e) { e.attr("opacity", (_,i)=>i<2?0.3:1); }
cut_t(boxes.filter(d=>d[0]&&!d[1]).selectAll(".tr")                  );
cut_t(boxes.filter(d=>d[0]&& d[1]).selectAll(".tr").selectAll("text"));

function rectRows(e) {
    var t=4;
    return e.selectAll().data(dat).enter().append("rect").attrs((_,i)=>({
        y:i*h+t, height:h-2*t, x:t, width:W-2*t
    }));
}
rectRows(defs.append("clipPath").attr("id","row-clip"));
rectRows(arrs.filter(d=>d)).attrs({
    fill:"none", "stroke-width":6, stroke:"black"
});

var row_lines = [0,1,2,3,4]    .map(i=>({x1:w/4,x2:W-w/4,y1:(i+.5)*h,y2:(i+.5)*h})),
    col_lines = [0,1,2,3,4,5,6].map(i=>({y1:h/4,y2:H-h/4,x1:(i+.5)*w,x2:(i+.5)*w}));
boxes.filter(d=>d[0]===0)
    .selectAll().data(d=>d[1]?row_lines:col_lines).enter()
    .append("line").attrs(d=>d)
    .attrs({stroke:"#cc081b", "stroke-width":7, "opacity":0.6, "stroke-linecap":"round"});

defs.selectAll().data([0,1]).enter()
    .append("linearGradient").attrs(i=>({id:"edge"+i, x2:i, y2:1-i}))
    .selectAll().data([[0.7,"#ebe9e8"],[0.92,"#cccbca"],[0.98,"#888786"],[1,"#454444"]]).enter().append("stop")
    .attrs(d=>({offset:d[0], "stop-color": d[1]}));

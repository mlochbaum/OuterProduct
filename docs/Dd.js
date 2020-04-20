var svg = d3.select("#svg"),
    defs = svg.append("defs");

var w = 60, W = 320,
    h = 60;

var back = "#f8f8f8",
    shape= "#dedad6",
    rank = "#2bb33b",
    axis = "#82aed9",
    arr  = "#5c5654",
    rev  = "#6598c9";

var g = svg.selectAll().data([0,1]).enter()
    .selectAll().data(i=>[3,2,1].map(j=>[i,j])).enter()
    .append("g").attr("transform",d=>"translate("+(30+(380+W)*d[0])+","+(10+210*(3-d[1]))+")")
    .attrs({"font-size":50, "font":"monospace", "text-anchor":"middle"});

function rxMid(xm, y, w, h) { return {x:xm-w/2, y:y, width:w, height:h}; }
function rMid(xm, ym, w, h) { return rxMid(xm, ym-h/2, w, h); }

var ym = 42;
g.append("rect").attrs(  rxMid(W/2                    , 0 , W     , 160)).attr("fill",back);
g.append("rect").attrs(   rMid(W/2                    , ym, 210   , h  )).attr("fill",shape);
g.append("rect").attrs(d=>rMid(W/2+w/2*(3-d[1])       , ym, w*d[1], h+10)).attrs({fill:"none", stroke:rank, "stroke-width":4});
g.append("rect").attrs(d=>rMid(W/2+w*(2-(d[0]?d[1]:1)), ym, w-4   , h+4)).attr("fill",axis);

g.append("text").attrs({x:W/2, y: 60, "letter-spacing":"6px" })
    .html('<tspan class="Result">2 3 6</tspan>');

g.append("text").attrs({x:W/2, y:140, "letter-spacing":"-2px" })
    .html(d=>
            '<tspan class="Type">'+['⌽','⊖'][d[0]]+'</tspan>'
          + '<tspan class="Operator">⍤</tspan>'
          + '<tspan class="Constant">'+d[1]+'</tspan>'
    );

var blur = defs.append("filter").attrs({id:"blur", x:-0.5, y:-0.5, width:2, height:2});
blur.append("feOffset").attrs({result:"offOut", "in":"SourceAlpha", dx:-1, dy:-1});
blur.append("feGaussianBlur").attrs({result:"blurOut", "in":"offOut", stdDeviation:5});
blur.append("feColorMatrix").attrs({result:"invBlur", "in":"blurOut", type:"matrix",
    values : "-1 0 0 0 1 "
           + "0 -1 0 0 1 "
           + "0 0 -1 0 1 "
           + "0 0 0  1 0"
});
blur.append("feBlend").attrs({"in":"SourceGraphic", in2:"invBlur"});


var xa = W+54,
    ya =   26;

g.selectAll().data([0,1]).enter()
    .append("rect")
    .attrs(i=>({x:xa+14*i,y:ya+34*i,width:140,height:70,fill:arr,filter:"url(#blur)",
                "stroke-width":0.4, "stroke":"black"}));

defs.selectAll().data(["M0 0L7 2.5L0 5L1 2.5","M7 0L0 2.5L7 5L6 2.5"]).enter()
    .append("marker").attrs({
        viewBox:"0 0 7 5", markerWidth:4, markerHeight:4,
        orient:"auto", refX:3.5, refY:2.5, fill:rev, id:(_,i)=>"arrow"+i
    })
    .append("path").attr("d",p=>p);

g.append("line")
    .attrs({"stroke":rev, "stroke-width":5, "marker-start":"url(#arrow1)", "marker-end":"url(#arrow0)"})
    .attrs(d => {
        var s = 3-(d[0]?d[1]:1),
            e = [[14,36],[0,70],[140,0]][s],
            a = e[0], b = e[1],
            r = a+b,
            q = (s===0?4:9)/r,
            x = xa,
            y = ya;
        if (s===2) y-=10; else { x-=12; if (s===0) y+=20; }
        return {x1:x+a*q,y1:y+b*q, x2:x+a*(1-q),y2:y+b*(1-q)};
    });
